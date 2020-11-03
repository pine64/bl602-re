;;; Segment .text (23000300)

l23070304:
	addi	a5,zero,+00000000

l23070308:
	addi	a4,zero,+000007FF
	jal	zero,0000000023070328

l23070310:
	addi	a5,zero,-00000001
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	addi	a6,zero,+00000000
	jal	zero,000000002306FD0C

l23070324:
	addi	a7,zero,+00000000

l23070328:
	addi	s1,zero,+00000000
	jal	zero,0000000023070110

l23070330:
	addi	a7,zero,+00000000
	jal	zero,0000000023070308

l23070338:
	addi	a5,t3,+00000000

l2307033C:
	addi	a4,zero,+000007FF
	jal	zero,000000002306FCD0

l23070344:
	addi	a5,zero,+00000000
	jal	zero,0000000023070110

l2307034C:
	addi	a5,zero,+00000000
	addi	s2,a3,+00000000
	jal	zero,0000000023070110

l23070358:
	addi	a5,zero,+00000000
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,0000000023070328

l23070368:
	addi	a4,zero,+000007FF
	addi	s2,a3,+00000000
	jal	zero,000000002306FCD0

l23070374:
	addi	a7,zero,+00000000
	addi	s2,zero,+00000000
	lui	a5,00000400
	addi	a4,zero,+000007FF
	addi	s1,zero,+00000010
	jal	zero,0000000023070110

l2307038C:
	addi	a7,t1,+00000000
	jal	zero,000000002306FCD0

l23070394:
	addi	a7,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,0000000023070328

l230703A0:
	bne	s2,zero,00000000230703B0

l230703A4:
	addi	a3,a7,+00000008
	jal	zero,000000002306FD38

l230703AC:
	bne	s2,zero,00000000230703A4

l230703B0:
	bne	a6,zero,000000002306FC44

l230703B4:
	jal	zero,0000000023070110

l230703B8:
	addi	a7,zero,+00000000
	beq	s3,zero,00000000230703E4

l230703C0:
	addi	a5,zero,+00000003
	bne	s3,a5,00000000230703D8

l230703C8:
	beq	s2,zero,00000000230703E4

l230703CC:
	addi	a7,zero,-00000001
	addi	a4,zero,+000007FE
	jal	zero,00000000230703E4

l230703D8:
	addi	a5,zero,+00000002
	bne	s3,a5,00000000230703CC

l230703E0:
	beq	s2,zero,00000000230703CC

l230703E4:
	ori	s1,s1,+00000005
	addi	a5,a7,+00000000
	jal	zero,0000000023070130

l230703F0:
	beq	a6,s1,00000000230700F4

l230703F4:
	addi	s1,zero,+00000000
	jal	zero,00000000230700DC

l230703FC:
	bne	a3,zero,000000002306FC98

l23070400:
	addi	a7,t1,+00000000
	jal	zero,00000000230700E8

l23070408:
	beq	a6,s1,000000002306FCA0

l2307040C:
	addi	a7,t1,+00000000
	jal	zero,000000002307033C

;; __fixdfsi: 23070414
;;   Called from:
;;     23014C0E (in trpc_get_power_idx)
;;     2301578A (in rfc_config_channel)
;;     23017B80 (in rf_pri_get_vco_freq_cw)
;;     23017BCA (in rf_pri_get_vco_idac_cw)
;;     23018E64 (in phyif_utils_decode)
;;     230249F8 (in tcpip_stack_input)
;;     23051618 (in cvt)
;;     230516F2 (in cvt)
__fixdfsi proc
	csrrs	a5,frm,sp
	lui	a5,00000100
	srli	a3,a1,00000014
	addi	a2,a5,-00000001
	andi	a3,a3,+000007FF
	addi	a4,zero,+000003FE
	and	a2,a2,a1
	srli	a1,a1,0000001F
	blt	a4,a3,000000002307044C

l23070438:
	bne	a3,zero,00000000230704FC

l2307043C:
	or	a5,a2,a0
	bne	a5,zero,00000000230704FC

l23070444:
	addi	a0,a5,+00000000
	jalr	zero,ra,+00000000

l2307044C:
	addi	a4,zero,+0000041D
	bge	a4,a3,0000000023070490

l23070454:
	lui	a4,00080000
	xori	a4,a4,-00000001
	add	a5,a1,a4
	beq	a1,zero,0000000023070508

l23070464:
	addi	a6,zero,+0000041E
	addi	a4,zero,+00000010
	bne	a3,a6,00000000230704C8

l23070470:
	slli	a2,a2,0000000B
	srli	a3,a0,00000015
	or	a2,a2,a3
	bne	a2,zero,00000000230704C8

l23070480:
	slli	a4,a0,0000000B
	beq	a4,zero,0000000023070444

l23070488:
	addi	a4,a1,+00000000
	jal	zero,00000000230704C8

l23070490:
	or	a5,a2,a5
	addi	a2,zero,+00000433
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,00000000230704D0

l230704A4:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a5,a5,a0

l230704BC:
	beq	a1,zero,00000000230704C4

l230704C0:
	sub	a5,zero,a5

l230704C4:
	beq	a4,zero,0000000023070444

l230704C8:
	csrrs	zero,fflags,ra
	jal	zero,0000000023070444

l230704D0:
	addi	a6,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a6,00000000230704E4

l230704DC:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l230704E4:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a3,a0,a3
	sltu	a4,zero,a4
	srl	a5,a5,a3
	jal	zero,00000000230704BC

l230704FC:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,00000000230704C8

l23070508:
	addi	a4,zero,+00000010
	jal	zero,00000000230704C8

;; __fixunsdfsi: 23070510
;;   Called from:
;;     230151AC (in rfc_init)
;;     230151EA (in rfc_init)
;;     23015226 (in rfc_init)
;;     23016712 (in rf_pri_rccal_iq)
__fixunsdfsi proc
	csrrs	a5,frm,sp
	lui	a4,00000100
	srli	a3,a1,00000014
	addi	a5,a4,-00000001
	andi	a3,a3,+000007FF
	addi	a2,zero,+000003FE
	and	a5,a5,a1
	srli	a1,a1,0000001F
	blt	a2,a3,0000000023070544

l23070534:
	bne	a3,zero,00000000230705B4

l23070538:
	or	a0,a5,a0
	bne	a0,zero,00000000230705B4

l23070540:
	jalr	zero,ra,+00000000

l23070544:
	bne	a1,zero,00000000230705C0

l23070548:
	addi	a2,zero,+0000041E
	blt	a2,a3,00000000230705CC

l23070550:
	addi	a2,zero,+00000433
	or	a5,a5,a4
	sub	a2,a2,a3
	addi	a4,zero,+0000001F
	blt	a4,a2,0000000023070588

l23070564:
	addi	a3,a3,-00000413
	sll	a4,a0,a3
	sll	a5,a5,a3
	srl	a0,a0,a2
	sltu	a4,zero,a4
	or	a0,a5,a0

l2307057C:
	beq	a4,zero,00000000230705D4

l23070580:
	csrrs	zero,fflags,ra
	jalr	zero,ra,+00000000

l23070588:
	addi	a1,zero,+00000020
	addi	a4,zero,+00000000
	beq	a2,a1,000000002307059C

l23070594:
	addi	a4,a3,-000003F3
	sll	a4,a5,a4

l2307059C:
	or	a4,a4,a0
	addi	a0,zero,+00000413
	sub	a0,a0,a3
	sltu	a4,zero,a4
	srl	a0,a5,a0
	jal	zero,000000002307057C

l230705B4:
	addi	a0,zero,+00000000
	addi	a4,zero,+00000001
	jal	zero,0000000023070580

l230705C0:
	addi	a0,zero,+00000000

l230705C4:
	addi	a4,zero,+00000010
	jal	zero,0000000023070580

l230705CC:
	addi	a0,zero,-00000001
	jal	zero,00000000230705C4

l230705D4:
	jalr	zero,ra,+00000000

;; __floatsidf: 230705D8
;;   Called from:
;;     230146E4 (in pa_input)
;;     2301474E (in pa_input)
;;     23014BFA (in trpc_get_power_idx)
;;     23015756 (in rfc_config_channel)
;;     23018E50 (in phyif_utils_decode)
;;     230249E4 (in tcpip_stack_input)
;;     23052C34 (in ADC_Parse_Result)
;;     23052D28 (in ADC_Parse_Result)
;;     23052D7C (in ADC_Parse_Result)
;;     23052DA2 (in ADC_Parse_Result)
;;     23052DCE (in ADC_Parse_Result)
;;     23052DF6 (in ADC_Parse_Result)
__floatsidf proc
	addi	sp,sp,-00000010
	sw	ra,sp,+0000000C
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	beq	a0,zero,0000000023070678

l230705EC:
	srai	a5,a0,0000001F
	xor	s0,a5,a0
	sub	s0,s0,a5
	srli	s1,a0,0000001F
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,0000000023070664

l23070614:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0
	addi	a0,s1,+00000000

l2307062C:
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

l23070664:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	a0,s1,+00000000

l23070670:
	addi	s0,zero,+00000000
	jal	zero,000000002307062C

l23070678:
	addi	a4,zero,+00000000
	addi	a5,zero,+00000000
	jal	zero,0000000023070670

;; __floatunsidf: 23070684
;;   Called from:
;;     23015114 (in rfc_init)
;;     230166FE (in rf_pri_rccal_iq)
;;     23017B6C (in rf_pri_get_vco_freq_cw)
;;     23017BB6 (in rf_pri_get_vco_idac_cw)
;;     2306C940 (in __floatundisf)
;;     2306C964 (in __floatundisf)
__floatunsidf proc
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	ra,sp,+0000000C
	addi	s0,a0,+00000000
	beq	a0,zero,00000000230706FC

l23070698:
	jal	ra,000000002306C8C0
	addi	a4,zero,+0000041E
	addi	a5,zero,+0000000A
	sub	a4,a4,a0
	blt	a5,a0,00000000230706EC

l230706AC:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a0,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a0

l230706C0:
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

l230706EC:
	addi	a0,a0,-0000000B
	sll	a5,s0,a0
	addi	s0,zero,+00000000
	jal	zero,00000000230706C0

l230706FC:
	addi	a5,zero,+00000000
	addi	a4,zero,+00000000
	jal	zero,00000000230706C0

;; __extendsfdf2: 23070708
;;   Called from:
;;     23014836 (in pa_adapt)
;;     23014854 (in pa_adapt)
;;     230149F2 (in pa_adapt)
;;     2301519C (in rfc_init)
;;     230151DA (in rfc_init)
;;     23015214 (in rfc_init)
;;     230248A4 (in tcpip_stack_input)
;;     230249A6 (in tcpip_stack_input)
;;     23024A1C (in tcpip_stack_input)
;;     23038E56 (in bl_tsen_adc_get)
;;     230488DE (in iperf_server_udp_recv_fn)
;;     230488EA (in iperf_server_udp_recv_fn)
;;     230488F8 (in iperf_server_udp_recv_fn)
;;     23048904 (in iperf_server_udp_recv_fn)
;;     23048B3C (in iperf_client_udp)
;;     23048B48 (in iperf_client_udp)
;;     23048B54 (in iperf_client_udp)
;;     23048B60 (in iperf_client_udp)
;;     23048DD8 (in iperf_server)
;;     23048DE4 (in iperf_server)
;;     23048DF0 (in iperf_server)
;;     23048DFC (in iperf_server)
;;     23048FEE (in iperf_client_tcp)
;;     23048FFA (in iperf_client_tcp)
;;     23049006 (in iperf_client_tcp)
;;     23049012 (in iperf_client_tcp)
;;     2304DBBC (in convertDataToString)
;;     23052C48 (in ADC_Parse_Result)
;;     23052D3C (in ADC_Parse_Result)
;;     23052FDA (in TSEN_Get_Temp)
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
	beq	s1,zero,0000000023070798

l23070744:
	srli	a5,s0,00000003
	addi	a0,a0,+00000380
	slli	s0,s0,0000001D
	addi	s1,zero,+00000000

l23070754:
	slli	a5,a5,0000000C
	andi	a0,a0,+000007FF
	slli	a0,a0,00000014
	srli	a5,a5,0000000C
	or	a5,a5,a0
	slli	s2,s2,0000001F
	or	a4,a5,s2
	addi	a0,s0,+00000000
	addi	a1,a4,+00000000
	beq	s1,zero,0000000023070780

l2307077C:
	csrrs	zero,fflags,ra

l23070780:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	lw	s1,sp,+00000004
	lw	s2,sp,+00000000
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l23070798:
	bne	a0,zero,00000000230707E0

l2307079C:
	beq	s0,zero,000000002307080C

l230707A0:
	addi	a0,s0,+00000000
	jal	ra,000000002306C8C0
	addi	a5,zero,+0000000A
	blt	a5,a0,00000000230707D0

l230707B0:
	addi	a5,zero,+0000000B
	sub	a5,a5,a0
	addi	a4,a0,+00000015
	srl	a5,s0,a5
	sll	s0,s0,a4

l230707C4:
	addi	a4,zero,+00000389
	sub	a0,a4,a0
	jal	zero,0000000023070754

l230707D0:
	addi	a5,a0,-0000000B
	sll	a5,s0,a5
	addi	s0,zero,+00000000
	jal	zero,00000000230707C4

l230707E0:
	addi	a5,zero,+00000000
	beq	s0,zero,0000000023070804

l230707E8:
	slli	a5,s0,00000009
	blt	a5,zero,00000000230707F4

l230707F0:
	addi	s1,zero,+00000010

l230707F4:
	srli	a5,s0,00000003
	lui	a4,00000080
	slli	s0,s0,0000001D
	or	a5,a5,a4

l23070804:
	addi	a0,zero,+000007FF
	jal	zero,0000000023070754

l2307080C:
	addi	a5,zero,+00000000
	addi	a0,zero,+00000000
	jal	zero,0000000023070754

;; __truncdfsf2: 23070818
;;   Called from:
;;     230146F8 (in pa_input)
;;     2301487C (in pa_adapt)
;;     23052C58 (in ADC_Parse_Result)
;;     23052D4C (in ADC_Parse_Result)
;;     23052FEA (in TSEN_Get_Temp)
;;     2306C974 (in __floatundisf)
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
	beq	a4,zero,0000000023070A1C

l2307084C:
	addi	a6,t1,-00000380
	addi	a4,zero,+000000FE
	bge	a4,a6,0000000023070928

l23070858:
	beq	a7,zero,00000000230708B8

l2307085C:
	addi	a5,zero,+00000003
	bne	a7,a5,00000000230708AC

l23070864:
	beq	a1,zero,00000000230708B8

l23070868:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	addi	a4,zero,+00000000
	addi	a2,zero,+00000005

l23070878:
	addi	a3,zero,+00000002
	ori	a2,a2,+00000001
	beq	a7,a3,0000000023070AB4

l23070884:
	addi	a3,zero,+00000003
	beq	a7,a3,0000000023070AA8

l2307088C:
	bne	a7,zero,00000000230708A0

l23070890:
	andi	a3,a5,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,00000000230708A0

l2307089C:
	addi	a5,a5,+00000004

l230708A0:
	beq	a4,zero,00000000230708C4

l230708A4:
	ori	a2,a2,+00000002
	jal	zero,00000000230708C4

l230708AC:
	addi	a5,zero,+00000002
	bne	a7,a5,0000000023070868

l230708B4:
	beq	a1,zero,0000000023070868

l230708B8:
	addi	a5,zero,+00000000
	addi	a6,zero,+000000FF
	addi	a2,zero,+00000005

l230708C4:
	slli	a4,a5,00000005
	bge	a4,zero,00000000230708E4

l230708CC:
	addi	a6,a6,+00000001
	addi	a4,zero,+000000FF
	beq	a6,a4,0000000023070ABC

l230708D8:
	lui	a4,000FC000
	addi	a4,a4,-00000001
	and	a5,a5,a4

l230708E4:
	addi	a4,zero,+000000FF
	srli	a5,a5,00000003
	bne	a6,a4,00000000230708FC

l230708F0:
	beq	a5,zero,00000000230708FC

l230708F4:
	lui	a5,00000400
	addi	a1,zero,+00000000

l230708FC:
	slli	a5,a5,00000009
	andi	a6,a6,+000000FF
	slli	a6,a6,00000017
	srli	a5,a5,00000009
	slli	a1,a1,0000001F
	or	a5,a5,a6
	or	a5,a5,a1
	beq	a2,zero,0000000023070920

l2307091C:
	csrrs	zero,fflags,ra

l23070920:
	fmv.w.x	fa0,a5
	jalr	zero,ra,+00000000

l23070928:
	blt	zero,a6,00000000230709E8

l2307092C:
	addi	a4,zero,-00000017
	blt	a6,a4,0000000023070A60

l23070934:
	lui	a4,00000800
	addi	a2,zero,+0000001E
	or	a3,a3,a4
	sub	a2,a2,a6
	addi	a4,zero,+0000001F
	blt	a4,a2,00000000230709B8

l2307094C:
	addi	t1,t1,-0000037E
	srl	a2,a5,a2
	sll	a5,a5,t1
	sltu	a5,zero,a5
	sll	a3,a3,t1
	or	a3,a5,a3
	or	a5,a2,a3

l23070968:
	beq	a5,zero,0000000023070A9C

l2307096C:
	slli	a4,a5,00000001
	andi	a3,a4,+00000007
	addi	a2,zero,+00000000
	beq	a3,zero,00000000230709A4

l2307097C:
	addi	a3,zero,+00000002
	beq	a7,a3,0000000023070A7C

l23070984:
	addi	a3,zero,+00000003
	beq	a7,a3,0000000023070A68

l2307098C:
	addi	a2,zero,+00000001
	bne	a7,zero,00000000230709A4

l23070994:
	andi	a3,a4,+0000000F
	addi	a0,zero,+00000004
	beq	a3,a0,00000000230709A4

l230709A0:
	addi	a4,a4,+00000004

l230709A4:
	srli	a4,a4,0000001B
	xori	a4,a4,+00000001
	andi	a4,a4,+00000001
	addi	a6,zero,+00000000
	jal	zero,0000000023070A08

l230709B8:
	addi	a4,zero,-00000002
	sub	a6,a4,a6
	addi	a0,zero,+00000020
	srl	a6,a3,a6
	addi	a4,zero,+00000000
	beq	a2,a0,00000000230709D8

l230709D0:
	addi	t1,t1,-0000035E
	sll	a4,a3,t1

l230709D8:
	or	a5,a4,a5
	sltu	a5,zero,a5
	or	a5,a6,a5
	jal	zero,0000000023070968

l230709E8:
	slli	a0,a0,00000006
	sltu	a0,zero,a0
	slli	a3,a3,00000003
	srli	a5,a5,0000001D
	or	a3,a0,a3
	or	a5,a3,a5
	addi	a4,zero,+00000000
	addi	a2,zero,+00000000

l23070A08:
	andi	a3,a5,+00000007
	bne	a3,zero,0000000023070878

l23070A10:
	beq	a4,zero,00000000230708C4

l23070A14:
	andi	a4,a2,+00000001
	jal	zero,00000000230708A0

l23070A1C:
	or	a5,a3,a5
	bne	t1,zero,0000000023070A2C

l23070A24:
	sltu	a5,zero,a5
	jal	zero,0000000023070968

l23070A2C:
	beq	a5,zero,0000000023070A90

l23070A30:
	addi	a5,zero,+000007FF
	addi	a2,zero,+00000000
	bne	t1,a5,0000000023070A4C

l23070A3C:
	lui	a2,00000400
	and	a2,a3,a2
	sltiu	a2,a2,+00000001
	slli	a2,a2,00000004

l23070A4C:
	slli	a3,a3,00000003
	lui	a5,00002000
	or	a5,a3,a5
	addi	a6,zero,+000000FF
	jal	zero,0000000023070A08

l23070A60:
	addi	a5,zero,+00000001
	jal	zero,000000002307096C

l23070A68:
	addi	a2,a1,+00000000
	bne	a1,zero,00000000230709A4

l23070A70:
	addi	a4,a4,+00000008
	addi	a2,zero,+00000001
	jal	zero,00000000230709A4

l23070A7C:
	addi	a2,zero,+00000001
	beq	a1,zero,00000000230709A4

l23070A84:
	addi	a4,a4,+00000008
	addi	a2,a1,+00000000
	jal	zero,00000000230709A4

l23070A90:
	addi	a2,zero,+00000000
	addi	a6,zero,+000000FF
	jal	zero,00000000230708C4

l23070A9C:
	addi	a6,zero,+00000000
	addi	a2,zero,+00000000
	jal	zero,00000000230708C4

l23070AA8:
	bne	a1,zero,00000000230708A0

l23070AAC:
	addi	a5,a5,+00000008
	jal	zero,00000000230708A0

l23070AB4:
	beq	a1,zero,00000000230708A0

l23070AB8:
	jal	zero,0000000023070AAC

l23070ABC:
	addi	a5,zero,+00000000
	beq	a7,zero,0000000023070AE8

l23070AC4:
	addi	a4,zero,+00000003
	bne	a7,a4,0000000023070ADC

l23070ACC:
	beq	a1,zero,0000000023070AE8

l23070AD0:
	addi	a5,zero,-00000001
	addi	a6,zero,+000000FE
	jal	zero,0000000023070AE8

l23070ADC:
	addi	a4,zero,+00000002
	bne	a7,a4,0000000023070AD0

l23070AE4:
	beq	a1,zero,0000000023070AD0

l23070AE8:
	ori	a2,a2,+00000005
	jal	zero,00000000230708E4

;; atoi: 23070AF0
;;   Called from:
;;     2300159A (in aws_main_entry)
;;     230278BC (in cmd_wifi_cfg)
;;     230278D2 (in cmd_wifi_cfg)
;;     23027910 (in cmd_wifi_cfg)
;;     2302791A (in cmd_wifi_cfg)
;;     23027A6C (in cmd_wifi_ap_start)
;;     23027D1E (in cmd_wifi_ap_conf_max_sta)
;;     23027D7E (in wifi_rc_fixed_enable)
;;     23027D8A (in wifi_rc_fixed_enable)
;;     23027D96 (in wifi_rc_fixed_enable)
;;     23027FD4 (in wifi_capcode_cmd)
;;     23034876 (in cmd_gpio_get)
;;     23034984 (in cmd_gpio_set)
;;     2303498C (in cmd_gpio_set)
;;     23034AEA (in cmd_gpio_func)
;;     23034AF4 (in cmd_gpio_func)
;;     23034AFE (in cmd_gpio_func)
;;     23034B08 (in cmd_gpio_func)
;;     23035946 (in cmd_wdt_init)
;;     2303969E (in httpc_tcp_recv)
;;     2303973A (in httpc_tcp_recv)
;;     2303A4AE (in lwip_getaddrinfo)
;;     230406C4 (in netif_find)
;;     230481E0 (in TCP_Server)
;;     23048288 (in TCP_Server)
;;     2304834E (in TCP_Server)
;;     230483B2 (in TCP_Server)
;;     2304840A (in TCP_Server)
;;     230484AA (in TCP_Server)
;;     2304967E (in ping_cmd)
;;     2304968E (in ping_cmd)
;;     2304969E (in ping_cmd)
;;     230496A8 (in ping_cmd)
atoi proc
	addi	a2,zero,+0000000A
	addi	a1,zero,+00000000
	jal	zero,0000000023071EDC

;; _atoi_r: 23070AFC
_atoi_r proc
	addi	a3,zero,+0000000A
	addi	a2,zero,+00000000
	jal	zero,0000000023071EBC

;; __errno: 23070B08
;;   Called from:
;;     2304CFB0 (in aos_loop_run)
;;     23071FD4 (in _stat)
__errno proc
	auipc	a5,0001EF9D
	addi	a5,a5,-00000174
	lw	a0,a5,+00000000
	jalr	zero,ra,+00000000

;; memchr: 23070B18
;;   Called from:
;;     2302944A (in fdt_get_string)
;;     23029586 (in fdt_subnode_offset_namelen)
;;     23029ECA (in tc_blfdtdump)
memchr proc
	andi	a5,a0,+00000003
	andi	a6,a1,+000000FF
	beq	a5,zero,0000000023070BEC

l23070B24:
	addi	a5,a2,-00000001
	beq	a2,zero,0000000023070B84

l23070B2C:
	lbu	a4,a0,+00000000
	beq	a4,a6,0000000023070B88

l23070B34:
	addi	a3,zero,-00000001
	jal	zero,0000000023070B4C

l23070B3C:
	addi	a5,a5,-00000001
	beq	a5,a3,0000000023070B84

l23070B44:
	lbu	a4,a0,+00000000
	beq	a4,a6,0000000023070B88

l23070B4C:
	addi	a0,a0,+00000001
	andi	a4,a0,+00000003
	bne	a4,zero,0000000023070B3C

l23070B58:
	addi	a4,zero,+00000003
	bltu	a4,a5,0000000023070B8C

l23070B60:
	beq	a5,zero,0000000023070B84

l23070B64:
	lbu	a4,a0,+00000000
	beq	a4,a6,0000000023070B88

l23070B6C:
	add	a5,a0,a5
	jal	zero,0000000023070B7C

l23070B74:
	lbu	a4,a0,+00000000
	beq	a4,a6,0000000023070B88

l23070B7C:
	addi	a0,a0,+00000001
	bne	a5,a0,0000000023070B74

l23070B84:
	addi	a0,zero,+00000000

l23070B88:
	jalr	zero,ra,+00000000

l23070B8C:
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

l23070BC0:
	lw	a4,a0,+00000000
	xor	a4,a7,a4
	add	a3,a4,a1
	xori	a4,a4,-00000001
	and	a4,a3,a4
	and	a4,a4,a2
	bne	a4,zero,0000000023070B64

l23070BDC:
	addi	a5,a5,-00000004
	addi	a0,a0,+00000004
	bltu	t1,a5,0000000023070BC0

l23070BE8:
	jal	zero,0000000023070B60

l23070BEC:
	addi	a5,a2,+00000000
	jal	zero,0000000023070B58

;; memcmp: 23070BF4
;;   Called from:
;;     2300A0E4 (in rxu_cntrl_frame_handle)
;;     2300A2AC (in rxu_cntrl_frame_handle)
;;     2300A588 (in rxu_cntrl_frame_handle)
;;     2300A65A (in rxu_cntrl_frame_handle)
;;     2300AB2C (in scanu_frame_handler)
;;     2300B18E (in scanu_search_by_ssid)
;;     2300B202 (in scanu_rm_exist_ssid)
;;     2300CFB8 (in _aid_list_delete)
;;     2300DA36 (in apm_probe_req_handler)
;;     2300DC84 (in apm_assoc_req_handler)
;;     2300DED0 (in apm_assoc_req_handler)
;;     23010102 (in process_rsn_ie)
;;     2301016E (in process_rsn_ie)
;;     230101EA (in process_rsn_ie)
;;     23010208 (in process_rsn_ie)
;;     23010256 (in process_rsn_ie)
;;     23010276 (in process_rsn_ie)
;;     230102A0 (in process_rsn_ie)
;;     230102BC (in process_rsn_ie)
;;     230102D8 (in process_rsn_ie)
;;     230102F4 (in process_rsn_ie)
;;     23010350 (in process_wpa_ie)
;;     23010374 (in process_wpa_ie)
;;     23010392 (in process_wpa_ie)
;;     230103CC (in process_wpa_ie)
;;     230103E8 (in process_wpa_ie)
;;     23010404 (in process_wpa_ie)
;;     23010420 (in process_wpa_ie)
;;     2301088A (in IsEAPOL_MICValid)
;;     23010A16 (in parseKeyKDE)
;;     23010D16 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23010EBC (in supplicantAkmIsWpaWpa2)
;;     23010EDE (in supplicantAkmIsWpaWpa2)
;;     23010F3E (in supplicantAkmIsWpa2)
;;     230110B0 (in supplicantConstructContext)
;;     230110D4 (in supplicantConstructContext)
;;     23011D5E (in pmkCacheFindPSKElement)
;;     23019F90 (in chan_ctxt_add)
;;     23024AD4 (in bl_utils_idx_lookup)
;;     2302578C (in stateGlobalGuard_scan_beacon)
;;     23029570 (in fdt_subnode_offset_namelen)
;;     2302968E (in fdt_get_property_namelen_)
;;     2302B21A (in ota_tcp_cmd.part.0)
;;     2302B98E (in ls_cmd)
;;     2302E59A (in psm_test_cmd)
;;     23035F3A (in vfs_uart_init)
;;     23036392 (in vfs_uart_init)
;;     230367FC (in hal_gpio_init_from_dts)
;;     230368DA (in hal_gpio_init_from_dts)
;;     23036910 (in hal_gpio_init_from_dts)
;;     23036948 (in hal_gpio_init_from_dts)
;;     230369FA (in hal_gpio_init_from_dts)
;;     23036A46 (in hal_gpio_init_from_dts)
;;     23045B9C (in ethernet_input)
;;     2304793C (in dhcp_server_recv)
;;     23047ACC (in dhcp_server_recv)
;;     23047B80 (in dhcp_server_recv)
;;     23047BAA (in dhcp_server_recv)
;;     230498C6 (in file_info)
;;     23049920 (in file_info)
;;     23049BD8 (in dirent_file)
;;     2304A224 (in romfs_register)
;;     2305848C (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230585A4 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     23058658 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
;;     2305BAFE (in mbedtls_ssl_prepare_handshake_record)
;;     2305BB0E (in mbedtls_ssl_prepare_handshake_record)
;;     2305BC2E (in mbedtls_ssl_prepare_handshake_record)
;;     2305D2DC (in mbedtls_ssl_parse_certificate)
;;     2305DB08 (in x509_name_cmp)
;;     2305DB46 (in x509_name_cmp)
;;     2305E43E (in x509_crt_check_parent)
;;     2305E52E (in x509_crt_verify_top.isra.7)
;;     2305E5D0 (in x509_crt_verify_top.isra.7)
;;     2305E87E (in mbedtls_x509_crt_check_extended_key_usage)
;;     2305E8A4 (in mbedtls_x509_crt_check_extended_key_usage)
;;     2305E95C (in mbedtls_x509_crt_verify_with_profile)
;;     2305E9BC (in mbedtls_x509_crt_verify_with_profile)
;;     2305E9EA (in mbedtls_x509_crt_verify_with_profile)
;;     2305F18A (in mbedtls_x509_crt_parse_der)
;;     2305F1A0 (in mbedtls_x509_crt_parse_der)
;;     23065B3E (in oid_sig_alg_from_asn1.part.0)
;;     23065B78 (in mbedtls_oid_get_attr_short_name)
;;     23065BC6 (in mbedtls_oid_get_x509_ext_type)
;;     23065C14 (in mbedtls_oid_get_extended_key_usage)
;;     23065CC8 (in mbedtls_oid_get_pk_alg)
;;     23065D18 (in mbedtls_oid_get_ec_grp)
;;     23065D68 (in mbedtls_oid_get_md_alg)
;;     23065FC6 (in mbedtls_pem_read_buffer)
;;     23066014 (in mbedtls_pem_read_buffer)
;;     2306602C (in mbedtls_pem_read_buffer)
;;     23066040 (in mbedtls_pem_read_buffer)
;;     23066054 (in mbedtls_pem_read_buffer)
;;     2306A83C (in mbedtls_ssl_handshake_server_step)
;;     2306B07E (in mbedtls_ssl_handshake_server_step)
;;     23071760 (in two_way_long_needle)
;;     23071BA0 (in strstr)
memcmp proc
	addi	a5,zero,+00000003
	bgeu	a5,a2,0000000023070C28

l23070BFC:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	addi	a3,zero,+00000003
	bne	a5,zero,0000000023070C6C

l23070C0C:
	lw	a4,a0,+00000000
	lw	a5,a1,+00000000
	bne	a4,a5,0000000023070C6C

l23070C18:
	addi	a2,a2,-00000004
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	a3,a2,0000000023070C0C

l23070C28:
	addi	a5,a2,-00000001
	beq	a2,zero,0000000023070C64

l23070C30:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	bne	a4,a3,0000000023070C74

l23070C3C:
	addi	a4,a5,+00000001
	addi	a5,a0,+00000001
	add	a0,a0,a4
	jal	zero,0000000023070C5C

l23070C4C:
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	addi	a5,a5,+00000001
	bne	a4,a3,0000000023070C74

l23070C5C:
	addi	a1,a1,+00000001
	bne	a5,a0,0000000023070C4C

l23070C64:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l23070C6C:
	addi	a5,a2,-00000001
	jal	zero,0000000023070C30

l23070C74:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

;; memcpy: 23070C7C
;;   Called from:
;;     230006A8 (in client_demo.constprop.3)
;;     230012F8 (in aws_main_entry)
;;     23001308 (in aws_main_entry)
;;     23001510 (in aws_main_entry)
;;     23001582 (in aws_main_entry)
;;     2300167E (in aws_main_entry)
;;     23001728 (in aws_main_entry)
;;     230026E6 (in mm_sta_add)
;;     23002DBE (in mm_get_rsn_wpa_ie)
;;     230035FA (in mm_bcn_update)
;;     23003AA2 (in ps_send_pspoll)
;;     23003AB0 (in ps_send_pspoll)
;;     23004D82 (in scan_probe_req_tx)
;;     23004D8E (in scan_probe_req_tx)
;;     23004D9C (in scan_probe_req_tx)
;;     23004FA8 (in sta_mgmt_register)
;;     23006430 (in txl_frame_get)
;;     230066D2 (in txl_frame_send_null_frame)
;;     230066E0 (in txl_frame_send_null_frame)
;;     230066EC (in txl_frame_send_null_frame)
;;     230067DE (in txl_frame_send_qosnull_frame)
;;     230067EE (in txl_frame_send_qosnull_frame)
;;     2300680A (in txl_frame_send_qosnull_frame)
;;     23006ABA (in txl_frame_send_eapol_frame)
;;     23006B88 (in txl_frame_send_eapol_frame)
;;     23006CB6 (in txl_frame_send_eapol_frame)
;;     23006CDC (in txl_frame_send_eapol_frame)
;;     23006E88 (in vif_mgmt_register)
;;     23008AB6 (in rc_update_stats)
;;     23008F30 (in rc_init)
;;     2300A0A6 (in rxu_cntrl_frame_handle)
;;     2300A4CC (in rxu_cntrl_frame_handle)
;;     2300ABF4 (in scanu_frame_handler)
;;     2300AECC (in scanu_frame_handler)
;;     2300AF88 (in scanu_frame_handler)
;;     2300B06C (in scanu_frame_handler)
;;     2300B474 (in scanu_scan_next)
;;     2300B48C (in scanu_scan_next)
;;     2300B7F0 (in sm_scan_bss)
;;     2300B80E (in sm_scan_bss)
;;     2300B81A (in sm_scan_bss)
;;     2300B89E (in sm_scan_bss)
;;     2300B8EC (in sm_join_bss)
;;     2300B8FE (in sm_join_bss)
;;     2300B91E (in sm_join_bss)
;;     2300BAA6 (in sm_set_bss_param)
;;     2300BCA4 (in sm_disconnect)
;;     2300BCB2 (in sm_disconnect)
;;     2300BCBE (in sm_disconnect)
;;     2300BD98 (in sm_connect_ind)
;;     2300BF64 (in sm_auth_send)
;;     2300BF72 (in sm_auth_send)
;;     2300BF7E (in sm_auth_send)
;;     2300C106 (in sm_assoc_req_send)
;;     2300C11E (in sm_assoc_req_send)
;;     2300C12A (in sm_assoc_req_send)
;;     2300C5E8 (in sm_handle_supplicant_result)
;;     2300C5F6 (in sm_handle_supplicant_result)
;;     2300C602 (in sm_handle_supplicant_result)
;;     2300C82A (in txu_cntrl_sechdr_len_compute)
;;     2300C860 (in txu_cntrl_sechdr_len_compute)
;;     2300D1C6 (in apm_start_cfm)
;;     2300D322 (in apm_set_bss_param)
;;     2300D770 (in apm_sta_add)
;;     2300D804 (in apm_send_mlme)
;;     2300D814 (in apm_send_mlme)
;;     2300D820 (in apm_send_mlme)
;;     2300D9AC (in apm_bcn_set)
;;     2300D9DA (in apm_bcn_set)
;;     2300DBAE (in apm_assoc_req_handler)
;;     2300DF1E (in apm_assoc_req_handler)
;;     2300F178 (in keyMgmtSta_StartSession)
;;     2300F186 (in keyMgmtSta_StartSession)
;;     2300F2F8 (in supplicantInitSession)
;;     2300F450 (in supplicantEnable)
;;     2300F45E (in supplicantEnable)
;;     2300F47E (in supplicantEnable)
;;     2300F4D8 (in supplicantEnable)
;;     2300F4E6 (in supplicantEnable)
;;     2300F946 (in add_key_to_mac)
;;     2300FC46 (in add_mfp_key_to_mac)
;;     2300FCD6 (in keyMgmtPlumbPairwiseKey)
;;     2301010E (in process_rsn_ie)
;;     2301011A (in process_rsn_ie)
;;     23010126 (in process_rsn_ie)
;;     23010156 (in process_rsn_ie)
;;     2301017C (in process_rsn_ie)
;;     23010188 (in process_rsn_ie)
;;     230101D0 (in process_rsn_ie)
;;     2301035C (in process_wpa_ie)
;;     23010368 (in process_wpa_ie)
;;     2301061A (in isApReplayCounterFresh)
;;     23010626 (in isApReplayCounterFresh)
;;     230106FC (in updateApReplayCounter)
;;     23010708 (in updateApReplayCounter)
;;     230107C4 (in formEAPOLEthHdr)
;;     230107D0 (in formEAPOLEthHdr)
;;     2301084E (in IsEAPOL_MICValid)
;;     23010B28 (in parseKeyDataGTK)
;;     23010B40 (in parseKeyDataGTK)
;;     23010B4C (in parseKeyDataGTK)
;;     23010B56 (in parseKeyDataGTK)
;;     23010E38 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     230110BE (in supplicantConstructContext)
;;     230110C8 (in supplicantConstructContext)
;;     230110EC (in supplicantConstructContext)
;;     230110F8 (in supplicantConstructContext)
;;     23011132 (in supplicantConstructContext)
;;     23011140 (in supplicantConstructContext)
;;     2301129E (in KeyMgmtSta_DeriveKeys)
;;     230112A8 (in KeyMgmtSta_DeriveKeys)
;;     230112B2 (in KeyMgmtSta_DeriveKeys)
;;     230112BE (in KeyMgmtSta_DeriveKeys)
;;     230112CA (in KeyMgmtSta_DeriveKeys)
;;     230113DC (in GetKeyMsgNonceFromEAPOL)
;;     2301159E (in ProcessRxEAPOL_GrpMsg1)
;;     230115AC (in ProcessRxEAPOL_GrpMsg1)
;;     230115BA (in ProcessRxEAPOL_GrpMsg1)
;;     230115C4 (in ProcessRxEAPOL_GrpMsg1)
;;     23011874 (in bl_sha256_crypto_kdf)
;;     230119C6 (in pmkCacheSetPassphrase)
;;     23011DC4 (in pmkCacheAddPSK)
;;     23011DDA (in pmkCacheAddPSK)
;;     230120F4 (in RC4_Encrypt)
;;     23012100 (in RC4_Encrypt)
;;     23012158 (in sha256_compress)
;;     230124DA (in sha256_vector)
;;     23012592 (in hmac_sha256_vector)
;;     230125F2 (in hmac_sha256_vector)
;;     23012AC2 (in ProcessKeyMgmtDataAp)
;;     23012ACE (in ProcessKeyMgmtDataAp)
;;     23012C26 (in GenerateGTK_internal)
;;     23012C34 (in GenerateGTK_internal)
;;     23012C4C (in GenerateGTK_internal)
;;     23012C82 (in GenerateGTK_internal)
;;     23012C8E (in GenerateGTK_internal)
;;     23012C9A (in GenerateGTK_internal)
;;     23012D92 (in PopulateKeyMsg)
;;     23012E22 (in prepareKDE)
;;     23012E42 (in prepareKDE)
;;     23012E50 (in prepareKDE)
;;     23012F16 (in Encrypt_keyData)
;;     23012F5C (in Encrypt_keyData)
;;     23012F94 (in KeyMgmtAp_DerivePTK)
;;     23012FA0 (in KeyMgmtAp_DerivePTK)
;;     23012FAA (in KeyMgmtAp_DerivePTK)
;;     23012FD4 (in KeyData_CopyWPAWP2)
;;     2301303A (in InitKeyMgmtInfo)
;;     23013046 (in InitKeyMgmtInfo)
;;     2301314A (in cm_InitConnection)
;;     23013176 (in cm_InitConnection)
;;     23013182 (in cm_InitConnection)
;;     230131DC (in cm_SetPeerAddr)
;;     230131F2 (in cm_SetPeerAddr)
;;     23013220 (in cm_SetComData)
;;     23014AA0 (in trpc_power_get)
;;     23016C00 (in rf_pri_update_tx_power_offset)
;;     2301A70C (in hal_dma_push)
;;     2301B9FC (in mm_hw_config_handler)
;;     2301D62E (in me_build_beacon)
;;     2301D63A (in me_build_beacon)
;;     2301D646 (in me_build_beacon)
;;     2301D772 (in me_build_beacon)
;;     2301DE3E (in me_rc_stats_req_handler)
;;     2301DE4E (in me_rc_stats_req_handler)
;;     2301E07A (in me_chan_config_req_handler)
;;     2301E18C (in me_config_req_handler)
;;     2301E3F6 (in me_sta_add_req_handler)
;;     2301E460 (in me_sta_add_req_handler)
;;     2301E5C6 (in me_sta_add_req_handler)
;;     2301E634 (in scanu_raw_send_req_handler)
;;     2301E958 (in scanu_join_cfm_handler)
;;     2301EB1E (in sm_connect_req_handler)
;;     2301EE66 (in mm_sta_add_cfm_handler)
;;     2301EEB2 (in mm_sta_add_cfm_handler)
;;     2301F4EE (in apm_start_req_handler)
;;     2301F512 (in apm_start_req_handler)
;;     2301FF92 (in Bl_hmac_md5)
;;     2301FFEA (in Bl_hmac_md5)
;;     230200BE (in Bl_hmac_sha1)
;;     2302011C (in Bl_hmac_sha1)
;;     2302016A (in Bl_hmac_sha1)
;;     230201FA (in Bl_PRF)
;;     23020212 (in Bl_PRF)
;;     23020266 (in Bl_PRF)
;;     23020BDC (in wpa_MD5Update)
;;     23020C18 (in wpa_MD5Update)
;;     23020C22 (in wpa_MD5Update)
;;     23020C4A (in wpa_MD5Final)
;;     23020C84 (in wpa_MD5Final)
;;     23021E18 (in ap_setpsk)
;;     23021E38 (in ap_setpsk)
;;     23021E7C (in ap_resetConfiguration)
;;     230221F2 (in ipc_host_init)
;;     2302273E (in bl_main_apm_sta_info_get)
;;     23023174 (in bl_send_start)
;;     230231D8 (in bl_send_add_if)
;;     23023466 (in bl_send_sm_connect_req)
;;     23023542 (in bl_send_sm_connect_req)
;;     23023594 (in bl_send_sm_connect_req)
;;     230235A6 (in bl_send_sm_connect_req)
;;     230236CC (in bl_send_apm_start_req)
;;     23023776 (in bl_send_apm_start_req)
;;     23023788 (in bl_send_apm_start_req)
;;     230237A4 (in bl_send_apm_start_req)
;;     23023AF4 (in bl_rx_apm_sta_add_ind)
;;     23023F9C (in bl_rx_scanu_result_ind)
;;     23024012 (in bl_rx_scanu_result_ind)
;;     2302405A (in bl_rx_scanu_result_ind)
;;     23024580 (in bl_output)
;;     2302458E (in bl_output)
;;     2302573A (in stateGlobalGuard_scan_beacon)
;;     2302642C (in wifi_mgmr_ap_sta_info_get_internal)
;;     230264F6 (in wifi_mgmr_api_connect)
;;     2302651A (in wifi_mgmr_api_connect)
;;     2302657E (in wifi_mgmr_api_connect)
;;     230265A0 (in wifi_mgmr_api_connect)
;;     230266CC (in wifi_mgmr_api_cfg_req)
;;     23026C80 (in wifi_mgmr_api_scan_item_beacon)
;;     23026CAC (in wifi_mgmr_api_scan_item_beacon)
;;     23026F6A (in wifi_mgmr_api_ap_start)
;;     23026F9A (in wifi_mgmr_api_ap_start)
;;     2302721A (in cmd_wifi_power_table_update)
;;     23028222 (in wifi_mgmr_sta_enable)
;;     23028264 (in wifi_mgmr_sta_enable)
;;     230283D8 (in wifi_mgmr_sta_ssid_set)
;;     2302840A (in wifi_mgmr_sta_psk_set)
;;     2302848A (in wifi_mgmr_ap_enable)
;;     230284CE (in wifi_mgmr_ap_enable)
;;     230285A2 (in wifi_mgmr_ap_sta_info_get)
;;     230287BE (in wifi_mgmr_profile_add)
;;     230287CE (in wifi_mgmr_profile_add)
;;     230287DE (in wifi_mgmr_profile_add)
;;     230287EC (in wifi_mgmr_profile_add)
;;     230288C2 (in wifi_mgmr_profile_get)
;;     230288D4 (in wifi_mgmr_profile_get)
;;     230288E6 (in wifi_mgmr_profile_get)
;;     230288F6 (in wifi_mgmr_profile_get)
;;     23028CC8 (in cmd_mgr_msgind)
;;     2302A29E (in tc_fdt_wifi_module)
;;     2302A300 (in tc_fdt_wifi_module)
;;     2302A548 (in tc_fdt_wifi_module)
;;     2302A760 (in tc_fdt_wifi_module)
;;     2302A7F4 (in tc_fdt_wifi_module)
;;     2302A888 (in tc_fdt_wifi_module)
;;     2302A91A (in tc_fdt_wifi_module)
;;     2302B01C (in ota_tcp_cmd.part.0)
;;     2302B046 (in ota_tcp_cmd.part.0)
;;     2302B07C (in ota_tcp_cmd.part.0)
;;     2302B096 (in ota_tcp_cmd.part.0)
;;     2302B0C0 (in ota_tcp_cmd.part.0)
;;     2302B0EE (in ota_tcp_cmd.part.0)
;;     2302B12E (in ota_tcp_cmd.part.0)
;;     2302C4BA (in cli_main_input)
;;     2302C780 (in cli_main_input)
;;     2302E46A (in psm_test_cmd)
;;     2302E978 (in prvCopyDataToQueue)
;;     2302E9A2 (in prvCopyDataToQueue)
;;     2302EA02 (in prvCopyDataFromQueue)
;;     2302F4B0 (in prvWriteBytesToBuffer)
;;     2302F4C8 (in prvWriteBytesToBuffer)
;;     2302F512 (in prvWriteBytesToBuffer)
;;     2302F52E (in prvWriteBytesToBuffer)
;;     2302F576 (in prvReadBytesFromBuffer)
;;     2302F58C (in prvReadBytesFromBuffer)
;;     23032532 (in bl_uart_init)
;;     2303273A (in bl_uart_setconfig)
;;     230328A2 (in bl_chip_info)
;;     230328B4 (in bl_chip_info)
;;     23032900 (in bl_chip_info)
;;     2303403A (in bl_rand_stream)
;;     2303477E (in bl_timer_tick_enable)
;;     2303579A (in bl_wifi_sta_mac_addr_set)
;;     230357B6 (in bl_wifi_ap_mac_addr_set)
;;     230357D0 (in bl_wifi_mac_addr_get)
;;     23035818 (in bl_wifi_ap_info_set)
;;     2303582A (in bl_wifi_ap_info_set)
;;     23035882 (in bl_wifi_sta_info_set)
;;     23035894 (in bl_wifi_sta_info_set)
;;     230358D0 (in bl_wifi_sta_info_get)
;;     23035E02 (in vfs_uart_init)
;;     230373B0 (in hal_board_cfg)
;;     2303779C (in hal_board_cfg)
;;     2303788C (in hal_board_cfg)
;;     23037EFC (in hal_board_cfg)
;;     2303800A (in hal_board_cfg)
;;     230380D8 (in hal_board_cfg)
;;     23038B76 (in hal_board_cfg)
;;     23038BFE (in hal_board_cfg)
;;     23038CE0 (in hal_board_cfg)
;;     23038D68 (in hal_board_cfg)
;;     23038DCA (in bl_tsen_adc_get)
;;     23038FE6 (in PtTable_Update_Entry)
;;     2303900A (in PtTable_Update_Entry)
;;     230390BE (in PtTable_Get_Active_Entries)
;;     2303A58E (in lwip_getaddrinfo)
;;     2303AA7A (in lwip_sock_make_addr.isra.3)
;;     2303B2E2 (in lwip_accept)
;;     2303B6AE (in lwip_sendto)
;;     2303CBCE (in dns_gethostbyname_addrtype)
;;     2303CF52 (in lwip_chksum_copy)
;;     2303E750 (in etharp_raw)
;;     2303E75C (in etharp_raw)
;;     2303E768 (in etharp_raw)
;;     2303E774 (in etharp_raw)
;;     2303E8A2 (in etharp_input)
;;     2303E8AE (in etharp_input)
;;     2303E912 (in etharp_input)
;;     2303F874 (in ip4_output_if_opt_src)
;;     23040BE2 (in pbuf_copy)
;;     23040CBA (in pbuf_copy_partial)
;;     23040D12 (in pbuf_take)
;;     23040D74 (in pbuf_take_at)
;;     23041770 (in tcp_seg_copy)
;;     23045C1C (in ethernet_output)
;;     23045C28 (in ethernet_output)
;;     230475A0 (in icmp_input)
;;     2304771E (in icmp_dest_unreach)
;;     230477D2 (in dhcp_client_find_by_ip.isra.0)
;;     2304795C (in dhcp_server_recv)
;;     23047998 (in dhcp_server_recv)
;;     230479CA (in dhcp_server_recv)
;;     230479F8 (in dhcp_server_recv)
;;     23047A18 (in dhcp_server_recv)
;;     23047A2E (in dhcp_server_recv)
;;     23047A46 (in dhcp_server_recv)
;;     23047A5E (in dhcp_server_recv)
;;     23047AFC (in dhcp_server_recv)
;;     23047B5C (in dhcp_server_recv)
;;     23047BFA (in dhcp_server_recv)
;;     23047C2C (in dhcp_server_recv)
;;     23047D8A (in dhcpd_start)
;;     230493E2 (in ping_recv)
;;     23049824 (in romfs_read)
;;     2304984E (in romfs_read)
;;     23049D56 (in dirent_file)
;;     2304B50A (in utils_sha256_update.part.0)
;;     2304B56C (in utils_sha256_update.part.0)
;;     2304BD6C (in Bl_F_fast.constprop.0)
;;     2304BDA2 (in Bl_F_fast.constprop.0)
;;     2304BDC4 (in Bl_F_fast.constprop.0)
;;     2304BE46 (in utils_wifi_psk_cal_fast_bin)
;;     2304C058 (in utils_hmac_sha1_fast)
;;     2304C0B8 (in utils_hmac_sha1_fast)
;;     2304C108 (in utils_hmac_sha1_fast)
;;     2304C7D0 (in inode_reserve)
;;     2304CE72 (in aos_poll_read_fd)
;;     2304CE86 (in aos_poll_read_fd)
;;     2304D55C (in _event_write.isra.0)
;;     2304D684 (in event_read)
;;     2304D844 (in aws_iot_shadow_init)
;;     2304D8C6 (in aws_iot_shadow_connect)
;;     2304DF04 (in isJsonKeyMatchingAndUpdateValue)
;;     2304DF1E (in isJsonKeyMatchingAndUpdateValue)
;;     2304E184 (in shadow_delta_callback)
;;     2304E46E (in AckStatusCallback)
;;     2304EA12 (in addToAckWaitList)
;;     2304EA20 (in addToAckWaitList)
;;     2304F476 (in aws_iot_mqtt_init)
;;     2304FC90 (in aws_iot_mqtt_publish)
;;     23050E58 (in aws_iot_mqtt_internal_write_utf8_string)
;;     23054E54 (in mfg_flash_read_macaddr)
;;     23054E98 (in Bl_F)
;;     23054ED6 (in Bl_F)
;;     23054F14 (in Bl_F)
;;     23054F80 (in Bl_PasswordHash)
;;     23055230 (in bl_mtd_write)
;;     23055E94 (in block_cipher_df)
;;     23055F24 (in block_cipher_df)
;;     23055F5C (in block_cipher_df)
;;     2305602E (in ctr_drbg_update_internal)
;;     230560E6 (in mbedtls_ctr_drbg_reseed)
;;     2305626A (in mbedtls_ctr_drbg_random_with_add)
;;     2305646A (in mbedtls_entropy_func)
;;     230579C2 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057AA8 (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     23057D36 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057E66 (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     23057FFA (in mbedtls_rsa_rsassa_pss_sign)
;;     23058184 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230581D4 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2305825A (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058722 (in mbedtls_sha256_clone)
;;     23059486 (in mbedtls_sha256_update.part.0)
;;     230594E8 (in mbedtls_sha256_update.part.0)
;;     2305975E (in ssl_swap_epochs)
;;     2305976E (in ssl_swap_epochs)
;;     2305977C (in ssl_swap_epochs)
;;     23059AA2 (in tls_prf_sha256)
;;     23059AB2 (in tls_prf_sha256)
;;     23059D62 (in mbedtls_ssl_derive_keys)
;;     23059D6E (in mbedtls_ssl_derive_keys)
;;     23059D7C (in mbedtls_ssl_derive_keys)
;;     23059F22 (in mbedtls_ssl_derive_keys)
;;     23059F30 (in mbedtls_ssl_derive_keys)
;;     23059FC4 (in mbedtls_ssl_derive_keys)
;;     23059FD2 (in mbedtls_ssl_derive_keys)
;;     2305A420 (in mbedtls_ssl_set_hostname)
;;     2305AEAA (in mbedtls_ssl_write_record)
;;     2305AF7A (in mbedtls_ssl_write_record)
;;     2305B118 (in mbedtls_ssl_write_record)
;;     2305B196 (in mbedtls_ssl_write_record)
;;     2305B1A4 (in mbedtls_ssl_write_record)
;;     2305B376 (in mbedtls_ssl_write_record)
;;     2305B55C (in mbedtls_ssl_resend)
;;     2305BBA8 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BBC6 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BCA8 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BE14 (in mbedtls_ssl_prepare_handshake_record)
;;     2305C2B6 (in mbedtls_ssl_write_certificate)
;;     2305C440 (in mbedtls_ssl_write_finished)
;;     2305C648 (in mbedtls_ssl_write)
;;     2305CAF4 (in mbedtls_ssl_read_record_layer)
;;     2305CB4C (in mbedtls_ssl_read_record_layer)
;;     2305CC4E (in mbedtls_ssl_read_record_layer)
;;     2305DA0E (in mbedtls_ssl_read)
;;     2305EC6A (in mbedtls_x509_crt_parse_der)
;;     23060666 (in mbedtls_aes_crypt_cbc)
;;     2306069A (in mbedtls_aes_crypt_cbc)
;;     230606D6 (in mbedtls_aes_crypt_cbc)
;;     2306109A (in mbedtls_mpi_grow)
;;     230610FA (in mbedtls_mpi_shrink)
;;     2306119E (in mbedtls_mpi_copy)
;;     23061668 (in mpi_montmul)
;;     23062022 (in mbedtls_mpi_exp_mod)
;;     2306288E (in mbedtls_cipher_set_iv)
;;     230629BC (in mbedtls_cipher_update)
;;     230629EA (in mbedtls_cipher_update)
;;     23062A46 (in mbedtls_cipher_update)
;;     2306349A (in mbedtls_debug_print_crt)
;;     23064C8A (in ecp_mod_koblitz.constprop.0)
;;     23064CD6 (in ecp_mod_koblitz.constprop.0)
;;     2306527A (in mbedtls_gcm_starts)
;;     230654FC (in mbedtls_gcm_finish)
;;     23065E1E (in pem_aes_decrypt)
;;     23065E80 (in pem_aes_decrypt)
;;     23065EC0 (in pem_aes_decrypt)
;;     23066240 (in mbedtls_md5_clone)
;;     23066E9E (in mbedtls_md5_update.part.0)
;;     23066F00 (in mbedtls_md5_update.part.0)
;;     23067058 (in mbedtls_sha1_clone)
;;     230686BE (in mbedtls_sha1_update.part.0)
;;     23068720 (in mbedtls_sha1_update.part.0)
;;     23068B5C (in mbedtls_ssl_handshake_client_step)
;;     23068E62 (in mbedtls_ssl_handshake_client_step)
;;     23068F1A (in mbedtls_ssl_handshake_client_step)
;;     2306919E (in mbedtls_ssl_handshake_client_step)
;;     230691F8 (in mbedtls_ssl_handshake_client_step)
;;     2306A65E (in mbedtls_ssl_handshake_server_step)
;;     2306A94E (in mbedtls_ssl_handshake_server_step)
;;     2306A9BA (in mbedtls_ssl_handshake_server_step)
;;     2306AFF8 (in mbedtls_ssl_handshake_server_step)
;;     2306B00E (in mbedtls_ssl_handshake_server_step)
memcpy proc
	xor	a5,a1,a0
	andi	a5,a5,+00000003
	add	a7,a0,a2
	bne	a5,zero,0000000023070CEC

l23070C8C:
	addi	a5,zero,+00000003
	bgeu	a5,a2,0000000023070CEC

l23070C94:
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,0000000023070D0C

l23070CA0:
	andi	a2,a7,-00000004
	addi	a5,a2,-00000020
	bltu	a4,a5,0000000023070D40

l23070CAC:
	bgeu	a4,a2,0000000023070CE4

l23070CB0:
	addi	a3,a1,+00000000
	addi	a5,a4,+00000000

l23070CB8:
	lw	a6,a3,+00000000
	addi	a5,a5,+00000004
	addi	a3,a3,+00000004
	sw	a6,a5,+00000FFC
	bltu	a5,a2,0000000023070CB8

l23070CCC:
	addi	a5,a2,-00000001
	sub	a5,a5,a4
	andi	a5,a5,-00000004
	addi	a5,a5,+00000004
	add	a4,a4,a5
	add	a1,a1,a5

l23070CE4:
	bltu	a4,a7,0000000023070CF4

l23070CE8:
	jalr	zero,ra,+00000000

l23070CEC:
	addi	a4,a0,+00000000
	bgeu	a0,a7,0000000023070CE8

l23070CF4:
	lbu	a5,a1,+00000000
	addi	a4,a4,+00000001
	addi	a1,a1,+00000001
	sb	a5,a4,+00000FFF
	bltu	a4,a7,0000000023070CF4

l23070D08:
	jalr	zero,ra,+00000000

l23070D0C:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	beq	a5,zero,0000000023070CA0

l23070D24:
	lbu	a3,a1,+00000000
	addi	a4,a4,+00000001
	andi	a5,a4,+00000003
	sb	a3,a4,+00000FFF
	addi	a1,a1,+00000001
	bne	a5,zero,0000000023070D0C

l23070D3C:
	jal	zero,0000000023070CA0

l23070D40:
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
	bltu	a4,a5,0000000023070D40

l23070D94:
	jal	zero,0000000023070CAC

;; memmove: 23070D98
;;   Called from:
;;     2300833E (in rc_sort_samples_tp)
;;     23008348 (in rc_sort_samples_tp)
;;     23008352 (in rc_sort_samples_tp)
;;     2305AE5E (in mbedtls_ssl_write_record)
;;     2305B6F6 (in mbedtls_ssl_fetch_input)
;;     2305BE06 (in mbedtls_ssl_prepare_handshake_record)
;;     2305C6DC (in mbedtls_ssl_read_record_layer)
memmove proc
	bgeu	a1,a0,0000000023070DC4

l23070D9C:
	add	a5,a1,a2
	bgeu	a0,a5,0000000023070DC4

l23070DA4:
	add	a4,a0,a2
	beq	a2,zero,0000000023070E9C

l23070DAC:
	addi	a5,a5,-00000001
	lbu	a3,a5,+00000000
	addi	a4,a4,-00000001
	sb	a3,a4,+00000000
	bne	a1,a5,0000000023070DAC

l23070DC0:
	jalr	zero,ra,+00000000

l23070DC4:
	addi	a5,zero,+0000000F
	bltu	a5,a2,0000000023070DF8

l23070DCC:
	addi	a5,a0,+00000000

l23070DD0:
	addi	a3,a2,-00000001
	beq	a2,zero,0000000023070EAC

l23070DD8:
	addi	a3,a3,+00000001
	add	a3,a5,a3

l23070DE0:
	addi	a1,a1,+00000001
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	bne	a5,a3,0000000023070DE0

l23070DF4:
	jalr	zero,ra,+00000000

l23070DF8:
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,0000000023070EA0

l23070E04:
	addi	a7,a2,-00000010
	andi	a7,a7,-00000010
	addi	a7,a7,+00000010
	add	a6,a0,a7
	addi	a4,a1,+00000000
	addi	a5,a0,+00000000

l23070E1C:
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
	bne	a6,a5,0000000023070E1C

l23070E48:
	andi	a4,a2,+0000000C
	add	a1,a1,a7
	andi	a6,a2,+0000000F
	beq	a4,zero,0000000023070EB0

l23070E58:
	addi	a4,a1,+00000000
	addi	a7,a5,+00000000
	addi	t3,zero,+00000003

l23070E64:
	addi	a4,a4,+00000004
	lw	t1,a4,-00000004
	addi	a7,a7,+00000004
	sub	a3,a6,a4
	sw	t1,a7,+00000FFC
	add	a3,a1,a3
	bltu	t3,a3,0000000023070E64

l23070E80:
	addi	a4,a6,-00000004
	andi	a4,a4,-00000004
	addi	a4,a4,+00000004
	andi	a2,a2,+00000003
	add	a5,a5,a4
	add	a1,a1,a4
	jal	zero,0000000023070DD0

l23070E9C:
	jalr	zero,ra,+00000000

l23070EA0:
	addi	a3,a2,-00000001
	addi	a5,a0,+00000000
	jal	zero,0000000023070DD8

l23070EAC:
	jalr	zero,ra,+00000000

l23070EB0:
	addi	a2,a6,+00000000
	jal	zero,0000000023070DD0

;; memset: 23070EB8
;;   Called from:
;;     23000508 (in cmd_httpc_test)
;;     23000642 (in client_demo.constprop.3)
;;     23000696 (in client_demo.constprop.3)
;;     230009B6 (in _connect_wifi)
;;     230009C2 (in _connect_wifi)
;;     230009CE (in _connect_wifi)
;;     230009DE (in _connect_wifi)
;;     230009E8 (in _connect_wifi)
;;     230009F2 (in _connect_wifi)
;;     230009FE (in _connect_wifi)
;;     23000A36 (in _connect_wifi)
;;     23000A68 (in _connect_wifi)
;;     23000AE0 (in _connect_wifi)
;;     23000B0C (in _connect_wifi)
;;     23001CF8 (in mm_env_init)
;;     23002698 (in mm_sta_add)
;;     2300282E (in mm_sta_del)
;;     2300308E (in mm_bcn_init)
;;     230031D4 (in mm_bcn_init_vif)
;;     23003B06 (in ps_init)
;;     23004B90 (in scan_init)
;;     23004E64 (in sta_mgmt_entry_init)
;;     2300518C (in sta_mgmt_add_key)
;;     230053E0 (in td_reset)
;;     23005738 (in txl_cntrl_init)
;;     230060C4 (in txl_reset)
;;     2300617E (in txl_frame_init_desc)
;;     2300624E (in txl_frame_init)
;;     23006DA2 (in vif_mgmt_init)
;;     23006DC8 (in vif_mgmt_init)
;;     23006E0A (in vif_mgmt_init)
;;     23007078 (in vif_mgmt_unregister)
;;     2300712E (in vif_mgmt_add_key)
;;     230074AA (in me_init)
;;     23008C0C (in rc_update_stats)
;;     23008EAE (in rc_init)
;;     2300A754 (in rxu_swdesc_upload_evt)
;;     2300A8A8 (in scanu_init)
;;     2300AE50 (in scanu_frame_handler)
;;     2300AE68 (in scanu_frame_handler)
;;     2300AE72 (in scanu_frame_handler)
;;     2300AE84 (in scanu_frame_handler)
;;     2300AE96 (in scanu_frame_handler)
;;     2300B21C (in scanu_rm_exist_ssid)
;;     2300CFC6 (in _aid_list_delete)
;;     2300D0EE (in apm_init)
;;     2300DBA4 (in apm_assoc_req_handler)
;;     2300DD96 (in apm_assoc_req_handler)
;;     2300DDA0 (in apm_assoc_req_handler)
;;     2300E7BE (in ke_msg_alloc)
;;     2300EFBA (in GetTxEAPOLBuffer)
;;     2300F1FE (in init_customApp_mibs)
;;     2300F20A (in init_customApp_mibs)
;;     2300F7AC (in supplicantInit)
;;     2300F7B8 (in supplicantInit)
;;     2300F916 (in add_key_to_mac)
;;     2300FC14 (in add_mfp_key_to_mac)
;;     23010858 (in IsEAPOL_MICValid)
;;     23010D6C (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23011776 (in set_psk)
;;     23011A56 (in pmkCacheInit)
;;     23011A68 (in pmkCacheInit)
;;     23011BD8 (in pmkCacheNewElement)
;;     23011E4E (in pmkCacheDeletePSK)
;;     23012588 (in hmac_sha256_vector)
;;     230125E8 (in hmac_sha256_vector)
;;     23012700 (in PrepDefaultEapolMsg)
;;     23012B62 (in InitStaKeyInfo)
;;     23012E94 (in prepareKDE)
;;     23013112 (in cm_InitConnection)
;;     23013158 (in cm_InitConnection)
;;     23013166 (in cm_InitConnection)
;;     23013568 (in ipc_emb_init)
;;     2301378A (in ipc_emb_tx_evt)
;;     23014CDC (in phy_tcal_reset)
;;     23019CA2 (in chan_init)
;;     23019CBE (in chan_init)
;;     2301A09C (in chan_ctxt_del)
;;     2301B304 (in mm_monitor_enable_req_handler)
;;     2301BEF4 (in bl_init)
;;     2301C51C (in txl_cfm_init)
;;     2301D0D4 (in me_build_associate_req)
;;     2301D7DA (in me_build_beacon)
;;     2301DA2E (in me_build_probe_rsp)
;;     2301DC1C (in me_build_associate_rsp)
;;     2301F8A8 (in dbg_init)
;;     2301FAF8 (in generate_subkey)
;;     2301FBE8 (in bl_aes_cmac)
;;     2301FF88 (in Bl_hmac_md5)
;;     2301FFE0 (in Bl_hmac_md5)
;;     230200B4 (in Bl_hmac_sha1)
;;     23020112 (in Bl_hmac_sha1)
;;     230201EC (in Bl_PRF)
;;     23020B58 (in wpa_MD5Transform)
;;     23020C90 (in wpa_MD5Final)
;;     23021C56 (in Bl_SHA1Final)
;;     23021E90 (in ap_resetConfiguration)
;;     230221E4 (in ipc_host_init)
;;     23022236 (in ipc_host_init)
;;     2302242C (in bl_main_monitor)
;;     23022602 (in bl_main_apm_start)
;;     23022782 (in bl_main_apm_sta_delete)
;;     230227B8 (in bl_main_apm_sta_delete)
;;     230228B0 (in bl_main_connect)
;;     23022CD8 (in bl_send_msg)
;;     23022D74 (in bl_msg_zalloc.constprop.3)
;;     23023B68 (in notify_event_scan_done)
;;     23023B72 (in notify_event_scan_done)
;;     23023BD6 (in bl_rx_chan_switch_ind)
;;     23023BE0 (in bl_rx_chan_switch_ind)
;;     23023D80 (in bl_rx_sm_connect_ind)
;;     23023EB2 (in bl_rx_sm_disconnect_ind)
;;     23023F3E (in bl_rx_scanu_result_ind)
;;     23023F6A (in bl_rx_scanu_result_ind)
;;     23024572 (in bl_output)
;;     230248DA (in tcpip_stack_input)
;;     23024A58 (in tcpip_stack_input)
;;     23024AFE (in bl_ipc_init)
;;     230256D0 (in stateGlobalGuard_scan_beacon)
;;     23025708 (in stateGlobalGuard_scan_beacon)
;;     230263FA (in wifi_mgmr_ap_sta_info_get_internal)
;;     23026480 (in wifi_mgmr_api_connect)
;;     230265D2 (in wifi_mgmr_api_cfg_req)
;;     2302670A (in wifi_mgmr_api_ip_got)
;;     2302680C (in wifi_mgmr_api_ip_update)
;;     2302687E (in wifi_mgmr_api_reconnect)
;;     230268F0 (in wifi_mgmr_api_disable_autoreconnect)
;;     23026962 (in wifi_mgmr_api_enable_autoreconnect)
;;     230269D4 (in wifi_mgmr_api_disconnect)
;;     23026A4A (in wifi_mgmr_api_rate_config)
;;     23026AB6 (in wifi_mgmr_api_conf_max_sta)
;;     23026B1C (in wifi_mgmr_api_ifaceup)
;;     23026B8E (in wifi_mgmr_api_sniffer_enable)
;;     23026C1A (in wifi_mgmr_api_scan_item_beacon)
;;     23026CF0 (in wifi_mgmr_api_fw_disconnect)
;;     23026D62 (in wifi_mgmr_api_fw_tsen_reload)
;;     23026DD2 (in wifi_mgmr_api_fw_scan)
;;     23026E48 (in wifi_mgmr_api_fw_powersaving)
;;     23026ED2 (in wifi_mgmr_api_ap_start)
;;     23026FD4 (in wifi_mgmr_api_ap_stop)
;;     23027046 (in wifi_mgmr_api_idle)
;;     230270B6 (in wifi_mgmr_api_denoise_enable)
;;     2302711C (in wifi_mgmr_api_denoise_disable)
;;     23027188 (in wifi_mgmr_api_raw_send)
;;     23027586 (in wifi_ap_sta_list_get_cmd)
;;     23027754 (in wifi_ap_sta_delete_cmd)
;;     23027A0C (in cmd_wifi_ap_start)
;;     23027A1E (in cmd_wifi_ap_start)
;;     23028570 (in wifi_mgmr_ap_sta_info_get)
;;     23028748 (in wifi_mgmr_profile_add)
;;     23028844 (in wifi_mgmr_profile_get)
;;     23028998 (in cb_disconnect_ind)
;;     23028A30 (in cb_connect_ind)
;;     230292C8 (in bl606a0_wifi_init)
;;     23029318 (in bl606a0_wifi_init)
;;     2302AA12 (in cmd_blog_info_dump)
;;     2302AAD6 (in cmd_blog_info_dump)
;;     2302AE62 (in ota_tcp_cmd.part.0)
;;     2302AF76 (in ota_tcp_cmd.part.0)
;;     2302B56A (in hexdump_cmd)
;;     2302B5BC (in aos_cli_init)
;;     2302B70E (in aos_cli_printf)
;;     2302B7FA (in proc_onecmd)
;;     2302B8AA (in ls_cmd)
;;     2302B8B6 (in ls_cmd)
;;     2302B9DE (in ls_cmd)
;;     2302C02E (in cli_getchar)
;;     2302C0F0 (in cli_main_input)
;;     2302C0FA (in cli_main_input)
;;     2302C104 (in cli_main_input)
;;     2302C918 (in get_dns_request)
;;     2302CAAA (in dns_server_init)
;;     2302CDB4 (in write_status)
;;     2302CFBC (in format_sector.constprop.16)
;;     2302CFC8 (in format_sector.constprop.16)
;;     2302CFDA (in format_sector.constprop.16)
;;     2302D8B4 (in move_env)
;;     2302DB54 (in create_env_blob)
;;     2302DC02 (in create_env_blob)
;;     2302DC4C (in create_env_blob)
;;     2302E398 (in ef_port_init)
;;     2302E514 (in psm_test_cmd)
;;     2302E51E (in psm_test_cmd)
;;     2302F448 (in prvInitialiseNewStreamBuffer)
;;     2302F45C (in prvInitialiseNewStreamBuffer)
;;     2302F718 (in vStreamBufferDelete)
;;     2302F742 (in vStreamBufferDelete)
;;     2302FB7E (in prvInitialiseNewTask.isra.2)
;;     23032F14 (in bl_cks_test)
;;     23032F1E (in bl_cks_test)
;;     23032F28 (in bl_cks_test)
;;     2303389A (in bl_dma_test)
;;     230338A6 (in bl_dma_test)
;;     230338B4 (in bl_dma_test)
;;     23034EAA (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23035112 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035376 (in Sec_Eng_AES_Link_Case_ECB_128)
;;     2303562C (in sha256_test_case0)
;;     2303580C (in bl_wifi_ap_info_set)
;;     23035876 (in bl_wifi_sta_info_set)
;;     23035B50 (in dev_uart_init)
;;     23035BAE (in dev_uart_init)
;;     2303675A (in hal_gpio_init_from_dts)
;;     23037F52 (in hal_board_cfg)
;;     23037F5C (in hal_board_cfg)
;;     23039682 (in httpc_tcp_recv)
;;     23039718 (in httpc_tcp_recv)
;;     230399B2 (in httpc_init_connection_common.constprop.5)
;;     2303A03A (in loopset_led_trigger)
;;     2303A554 (in lwip_getaddrinfo)
;;     2303AA5A (in lwip_sock_make_addr.isra.3)
;;     2303B2C6 (in lwip_accept)
;;     2303B87E (in lwip_select)
;;     2303BF0C (in altcp_alloc)
;;     2303C488 (in dns_send)
;;     2303D094 (in dhcp_create_msg)
;;     2303DA66 (in dhcp_recv)
;;     2303E26A (in dhcp_start)
;;     2303F888 (in ip4_output_if_opt_src)
;;     2304047C (in netif_add)
;;     23041220 (in raw_new)
;;     230412A0 (in stats_netstat)
;;     23041D6A (in tcp_alloc)
;;     23045A88 (in udp_new)
;;     23047B2C (in dhcp_server_recv)
;;     23047CA2 (in dhcp_server_start)
;;     23047F56 (in tcpc_entry)
;;     230480AE (in TCP_Server)
;;     230480B8 (in TCP_Server)
;;     230480C2 (in TCP_Server)
;;     230480CC (in TCP_Server)
;;     230480D6 (in TCP_Server)
;;     2304831E (in TCP_Server)
;;     23048676 (in iperf_server_udp)
;;     230486E0 (in iperf_server_udp_recv_fn)
;;     2304899A (in iperf_client_udp)
;;     23048A1A (in iperf_client_udp)
;;     23048A76 (in iperf_client_udp)
;;     23048C16 (in iperf_server)
;;     23048CA2 (in iperf_server)
;;     23048E6E (in iperf_client_tcp)
;;     23049D4A (in dirent_file)
;;     23049E3C (in romfs_opendir)
;;     2304A1CA (in romfs_register)
;;     2304A5A6 (in sntp_send_request)
;;     2304A7E8 (in utils_sha256_init)
;;     2304C04E (in utils_hmac_sha1_fast)
;;     2304C0AE (in utils_hmac_sha1_fast)
;;     2304C65A (in inode_init)
;;     2304C864 (in aos_register_driver)
;;     2304C8EA (in aos_register_fs)
;;     2304CD90 (in aos_loop_init)
;;     2304D1F8 (in aos_task_new)
;;     2304D204 (in aos_task_new)
;;     2304D4EA (in event_open)
;;     230532C4 (in Sec_Eng_SHA256_Init)
;;     23053538 (in Sec_Eng_SHA256_Link_Init)
;;     230549C8 (in mfg_efuse_read_poweroffset)
;;     23054CE4 (in mfg_flash_read_poweroffset)
;;     23054FDA (in bl_mtd_open)
;;     23055280 (in bloop_init)
;;     230552FA (in bloop_timer_init)
;;     23055E66 (in block_cipher_df)
;;     23055ED4 (in block_cipher_df)
;;     23055FB8 (in ctr_drbg_update_internal)
;;     2305604E (in mbedtls_ctr_drbg_init)
;;     230560BE (in mbedtls_ctr_drbg_reseed)
;;     2305614A (in mbedtls_ctr_drbg_seed_entropy_len)
;;     230561D0 (in mbedtls_ctr_drbg_random_with_add)
;;     23056364 (in mbedtls_entropy_init)
;;     23056422 (in mbedtls_entropy_func)
;;     23056436 (in mbedtls_entropy_func)
;;     23056AE6 (in pk_get_pk_alg)
;;     230572C2 (in mgf_mask)
;;     230572CC (in mgf_mask)
;;     2305735E (in mbedtls_rsa_init)
;;     23057974 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057FBC (in mbedtls_rsa_rsassa_pss_sign)
;;     2305816E (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058396 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058702 (in mbedtls_sha256_init)
;;     2305A388 (in mbedtls_ssl_session_init)
;;     2305A392 (in mbedtls_ssl_init)
;;     2305A916 (in ssl_handshake_init)
;;     2305A944 (in ssl_handshake_init)
;;     2305AB6A (in mbedtls_ssl_config_init)
;;     2305AE9A (in mbedtls_ssl_write_record)
;;     2305BBB6 (in mbedtls_ssl_prepare_handshake_record)
;;     2305BD88 (in mbedtls_ssl_prepare_handshake_record)
;;     2305C44E (in mbedtls_ssl_write_finished)
;;     2305C4B4 (in mbedtls_ssl_write_finished)
;;     2305D6B8 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305EAA2 (in mbedtls_x509_crt_init)
;;     2305EBE6 (in mbedtls_x509_crt_parse_der)
;;     2305EBF0 (in mbedtls_x509_crt_parse_der)
;;     2305EBFA (in mbedtls_x509_crt_parse_der)
;;     2305F38E (in mbedtls_net_connect)
;;     2305F694 (in mycalloc)
;;     2305F99C (in mbedtls_aes_init)
;;     23061190 (in mbedtls_mpi_copy)
;;     23061258 (in mbedtls_mpi_lset)
;;     230613DA (in mbedtls_mpi_write_binary)
;;     23061638 (in mpi_montmul)
;;     23061F56 (in mbedtls_mpi_exp_mod)
;;     230627E6 (in mbedtls_cipher_init)
;;     23062C5A (in mbedtls_cipher_setup)
;;     23063160 (in mbedtls_debug_print_buf)
;;     23063236 (in mbedtls_debug_print_buf)
;;     23063432 (in mbedtls_debug_print_crt)
;;     23063E9C (in mbedtls_ecp_group_init)
;;     23064660 (in ecp_mul_comb)
;;     23064BE8 (in mbedtls_ecp_check_pub_priv)
;;     23064C78 (in ecp_mod_koblitz.constprop.0)
;;     23064CC8 (in ecp_mod_koblitz.constprop.0)
;;     2306503C (in mbedtls_gcm_init)
;;     23065094 (in mbedtls_gcm_setkey)
;;     23065248 (in mbedtls_gcm_starts)
;;     23065252 (in mbedtls_gcm_starts)
;;     230652C6 (in mbedtls_gcm_starts)
;;     23065530 (in mbedtls_gcm_finish)
;;     2306571C (in mbedtls_md_init)
;;     2306589C (in mbedtls_md_hmac_starts)
;;     230658AA (in mbedtls_md_hmac_starts)
;;     23065EE2 (in mbedtls_pem_init)
;;     23066078 (in mbedtls_pem_read_buffer)
;;     23066220 (in mbedtls_md5_init)
;;     23067038 (in mbedtls_sha1_init)
;;     2306A9AC (in mbedtls_ssl_handshake_server_step)
;;     2306C382 (in mbedtls_x509_dn_gets)
;;     23071B0C (in strstr)
memset proc
	addi	t1,zero,+0000000F
	addi	a4,a0,+00000000
	bgeu	t1,a2,0000000023070EFC

l23070EC4:
	andi	a5,a4,+0000000F
	bne	a5,zero,0000000023070F68

l23070ECC:
	bne	a1,zero,0000000023070F50

l23070ED0:
	andi	a3,a2,-00000010
	andi	a2,a2,+0000000F
	add	a3,a3,a4

l23070EDC:
	sw	a1,a4,+00000000
	sw	a1,a4,+00000004
	sw	a1,a4,+00000008
	sw	a1,a4,+0000000C
	addi	a4,a4,+00000010
	bltu	a4,a3,0000000023070EDC

l23070EF4:
	bne	a2,zero,0000000023070EFC

l23070EF8:
	jalr	zero,ra,+00000000

l23070EFC:
	sub	a3,t1,a2
	slli	a3,a3,00000002
	auipc	t0,00000000
	add	a3,a3,t0

;; fn23070F0C: 23070F0C
;;   Called from:
;;     23070F74 (in memset)
fn23070F0C proc
	jalr	zero,a3,+0000000C

;; fn23070F10: 23070F10
;;   Called from:
;;     23070F74 (in memset)
fn23070F10 proc
	sb	a1,a4,+0000000E

;; fn23070F14: 23070F14
;;   Called from:
;;     23070F74 (in memset)
fn23070F14 proc
	sb	a1,a4,+0000000D

;; fn23070F18: 23070F18
;;   Called from:
;;     23070F74 (in memset)
fn23070F18 proc
	sb	a1,a4,+0000000C

;; fn23070F1C: 23070F1C
;;   Called from:
;;     23070F74 (in memset)
fn23070F1C proc
	sb	a1,a4,+0000000B

;; fn23070F20: 23070F20
;;   Called from:
;;     23070F74 (in memset)
fn23070F20 proc
	sb	a1,a4,+0000000A

;; fn23070F24: 23070F24
;;   Called from:
;;     23070F74 (in memset)
fn23070F24 proc
	sb	a1,a4,+00000009

;; fn23070F28: 23070F28
;;   Called from:
;;     23070F74 (in memset)
fn23070F28 proc
	sb	a1,a4,+00000008

;; fn23070F2C: 23070F2C
;;   Called from:
;;     23070F74 (in memset)
fn23070F2C proc
	sb	a1,a4,+00000007

;; fn23070F30: 23070F30
;;   Called from:
;;     23070F74 (in memset)
fn23070F30 proc
	sb	a1,a4,+00000006

;; fn23070F34: 23070F34
;;   Called from:
;;     23070F74 (in memset)
fn23070F34 proc
	sb	a1,a4,+00000005

;; fn23070F38: 23070F38
;;   Called from:
;;     23070F74 (in memset)
fn23070F38 proc
	sb	a1,a4,+00000004

;; fn23070F3C: 23070F3C
;;   Called from:
;;     23070F74 (in memset)
fn23070F3C proc
	sb	a1,a4,+00000003

;; fn23070F40: 23070F40
;;   Called from:
;;     23070F74 (in memset)
fn23070F40 proc
	sb	a1,a4,+00000002

;; fn23070F44: 23070F44
;;   Called from:
;;     23070F74 (in memset)
fn23070F44 proc
	sb	a1,a4,+00000001

;; fn23070F48: 23070F48
;;   Called from:
;;     23070F74 (in memset)
fn23070F48 proc
	sb	a1,a4,+00000000
	jalr	zero,ra,+00000000

l23070F50:
	andi	a1,a1,+000000FF
	slli	a3,a1,00000008
	or	a1,a1,a3
	slli	a3,a1,00000010
	or	a1,a1,a3
	jal	zero,0000000023070ED0

l23070F68:
	slli	a3,a5,00000002
	auipc	t0,00000000
	add	a3,a3,t0
	addi	t0,ra,+00000000
	jalr	ra,a3,-00000060
	addi	ra,t0,+00000000
	addi	a5,a5,-00000010
	sub	a4,a4,a5
	add	a2,a2,a5
	bgeu	t1,a2,0000000023070EFC

l23070F90:
	jal	zero,0000000023070ECC

;; strchr: 23070F94
;;   Called from:
;;     23000BF4 (in _connect_wifi)
;;     2302B7A4 (in proc_onecmd)
;;     23047DA0 (in dhcpd_start)
;;     23047DC8 (in dhcpd_start)
;;     23047DD4 (in dhcpd_start)
;;     23049C94 (in dirent_file)
;;     230715EC (in strrchr)
;;     2307160C (in strrchr)
;;     23071C60 (in strstr)
strchr proc
	andi	a3,a1,+000000FF
	andi	a5,a0,+00000003
	beq	a3,zero,0000000023071074

l23070FA0:
	beq	a5,zero,0000000023070FCC

l23070FA4:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002307106C

l23070FAC:
	bne	a3,a5,0000000023070FC0

l23070FB0:
	jal	zero,00000000230710FC

l23070FB4:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002307106C

l23070FBC:
	beq	a5,a3,0000000023071070

l23070FC0:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,0000000023070FB4

l23070FCC:
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
	bne	a5,zero,000000002307104C

l2307101C:
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
	beq	a5,zero,000000002307101C

l2307104C:
	lbu	a5,a0,+00000000
	beq	a5,zero,000000002307106C

l23071054:
	bne	a3,a5,0000000023071060

l23071058:
	jal	zero,0000000023071070

l2307105C:
	beq	a5,a3,00000000230710F4

l23071060:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,000000002307105C

l2307106C:
	addi	a0,zero,+00000000

l23071070:
	jalr	zero,ra,+00000000

l23071074:
	beq	a5,zero,0000000023071098

l23071078:
	lbu	a5,a0,+00000000
	bne	a5,zero,000000002307108C

l23071080:
	jal	zero,00000000230710F8

l23071084:
	lbu	a5,a0,+00000000
	beq	a5,zero,0000000023071070

l2307108C:
	addi	a0,a0,+00000001
	andi	a5,a0,+00000003
	bne	a5,zero,0000000023071084

l23071098:
	lw	a4,a0,+00000000
	lui	a2,000FEFF0
	addi	a2,a2,-00000101
	add	a5,a4,a2
	lui	a3,00080808
	xori	a4,a4,-00000001
	and	a5,a5,a4
	addi	a3,a3,+00000080
	and	a5,a5,a3
	bne	a5,zero,00000000230710DC

l230710C0:
	addi	a0,a0,+00000004
	lw	a4,a0,+00000000
	add	a5,a4,a2
	xori	a4,a4,-00000001
	and	a5,a5,a4
	and	a5,a5,a3
	beq	a5,zero,00000000230710C0

l230710DC:
	lbu	a5,a0,+00000000
	beq	a5,zero,0000000023071070

l230710E4:
	addi	a0,a0,+00000001
	lbu	a5,a0,+00000000
	bne	a5,zero,00000000230710E4

l230710F0:
	jalr	zero,ra,+00000000

l230710F4:
	jalr	zero,ra,+00000000

l230710F8:
	jalr	zero,ra,+00000000

l230710FC:
	jalr	zero,ra,+00000000

;; strcmp: 23071100
;;   Called from:
;;     23022DB6 (in bl_msg_update_channel_cfg)
;;     2302579A (in stateGlobalGuard_scan_beacon)
;;     230278E0 (in cmd_wifi_cfg)
;;     230278EC (in cmd_wifi_cfg)
;;     230278F8 (in cmd_wifi_cfg)
;;     23027904 (in cmd_wifi_cfg)
;;     2302AAC0 (in cmd_blog_info_dump)
;;     2302AB18 (in cmd_blog_info_dump)
;;     2302ABAC (in cmd_blog_set_level)
;;     2302ABBC (in cmd_blog_set_level)
;;     2302ABCE (in cmd_blog_set_level)
;;     2302ABE0 (in cmd_blog_set_level)
;;     2302ABF2 (in cmd_blog_set_level)
;;     2302AC04 (in cmd_blog_set_level)
;;     2302AC16 (in cmd_blog_set_level)
;;     2302ACD0 (in cmd_blog_set_level)
;;     2302B7EE (in proc_onecmd)
;;     2302B8CC (in ls_cmd)
;;     2302BA78 (in ls_cmd)
;;     2302BCAE (in echo_cmd)
;;     2302BCE0 (in echo_cmd)
;;     23036CF6 (in hal_boot2_partition_bus_addr)
;;     23036D6C (in hal_boot2_partition_bus_addr)
;;     23036EDC (in hal_boot2_partition_addr)
;;     2304C6DE (in inode_open)
;;     2304E24E (in findIndexOfSubscriptionList)
;;     2304E4FC (in AckStatusCallback)
;;     2304E710 (in isSubscriptionPresent)
;;     2304E71A (in isSubscriptionPresent)
;;     2304E926 (in incrementSubscriptionCnt)
;;     2304E952 (in incrementSubscriptionCnt)
;;     2305014A (in aws_iot_mqtt_unsubscribe)
;;     23050212 (in aws_iot_mqtt_unsubscribe)
strcmp proc
	or	a4,a0,a1
	addi	t2,zero,-00000001
	andi	a4,a4,+00000003
	bne	a4,zero,000000002307120C

l23071110:
	lui	a5,0007F7F8
	addi	a5,a5,-00000081

l23071118:
	lw	a2,a0,+00000000
	lw	a3,a1,+00000000
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,0000000023071234

l23071134:
	bne	a2,a3,00000000230711C0

l23071138:
	lw	a2,a0,+00000004
	lw	a3,a1,+00000004
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,000000002307122C

l23071154:
	bne	a2,a3,00000000230711C0

l23071158:
	lw	a2,a0,+00000008
	lw	a3,a1,+00000008
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,0000000023071240

l23071174:
	bne	a2,a3,00000000230711C0

l23071178:
	lw	a2,a0,+0000000C
	lw	a3,a1,+0000000C
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,0000000023071254

l23071194:
	bne	a2,a3,00000000230711C0

l23071198:
	lw	a2,a0,+00000010
	lw	a3,a1,+00000010
	and	t0,a2,a5
	or	t1,a2,a5
	add	t0,t0,a5
	or	t0,t0,t1
	bne	t0,t2,0000000023071268

l230711B4:
	addi	a0,a0,+00000014
	addi	a1,a1,+00000014
	beq	a2,a3,0000000023071118

l230711C0:
	slli	a4,a2,00000010
	slli	a5,a3,00000010
	bne	a4,a5,00000000230711E4

l230711CC:
	srli	a4,a2,00000010
	srli	a5,a3,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,00000000230711FC

l230711E0:
	jalr	zero,ra,+00000000

l230711E4:
	srli	a4,a4,00000010
	srli	a5,a5,00000010
	sub	a0,a4,a5
	andi	a1,a0,+000000FF
	bne	a1,zero,00000000230711FC

l230711F8:
	jalr	zero,ra,+00000000

l230711FC:
	andi	a4,a4,+000000FF
	andi	a5,a5,+000000FF
	sub	a0,a4,a5
	jalr	zero,ra,+00000000

l2307120C:
	lbu	a2,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a0,a0,+00000001
	addi	a1,a1,+00000001
	bne	a2,a3,0000000023071224

l23071220:
	bne	a2,zero,000000002307120C

l23071224:
	sub	a0,a2,a3
	jalr	zero,ra,+00000000

l2307122C:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004

l23071234:
	bne	a2,a3,000000002307120C

l23071238:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l23071240:
	addi	a0,a0,+00000008
	addi	a1,a1,+00000008
	bne	a2,a3,000000002307120C

l2307124C:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l23071254:
	addi	a0,a0,+0000000C
	addi	a1,a1,+0000000C
	bne	a2,a3,000000002307120C

l23071260:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l23071268:
	addi	a0,a0,+00000010
	addi	a1,a1,+00000010
	bne	a2,a3,000000002307120C

l23071274:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

;; strcpy: 2307127C
;;   Called from:
;;     2302AAF8 (in cmd_blog_info_dump)
;;     2302B66A (in ps_cmd)
;;     2302B69A (in ps_cmd)
;;     2302B728 (in aos_cli_printf)
;;     230310B2 (in vTaskList)
;;     2303295C (in bl_chip_memory_ram)
;;     23032982 (in bl_chip_memory_ram)
;;     230329A6 (in bl_chip_memory_ram)
;;     23048034 (in tcpclient_cmd)
;;     23048546 (in iperf_server_udp_entry)
;;     2304857A (in iperf_client_udp_entry)
;;     230485AE (in iperf_server_entry)
;;     230485E2 (in iperf_client_tcp_entry)
;;     2305516A (in bl_mtd_info)
strcpy proc
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,0000000023071308

l23071288:
	lw	a4,a1,+00000000
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	addi	a2,zero,-00000001
	bne	a5,a2,0000000023071324

l230712AC:
	addi	a2,a0,+00000000
	addi	a6,zero,-00000001

l230712B4:
	addi	a2,a2,+00000004
	addi	a1,a1,+00000004
	sw	a4,a2,+00000FFC
	lw	a4,a1,+00000000
	and	a5,a4,a3
	add	a5,a5,a3
	or	a5,a5,a4
	or	a5,a5,a3
	beq	a5,a6,00000000230712B4

l230712D8:
	lbu	a5,a1,+00000000
	lbu	a4,a1,+00000001
	lbu	a3,a1,+00000002
	sb	a5,a2,+00000000
	beq	a5,zero,00000000230712FC

l230712EC:
	sb	a4,a2,+00000001
	beq	a4,zero,00000000230712FC

l230712F4:
	sb	a3,a2,+00000002
	bne	a3,zero,0000000023071300

l230712FC:
	jalr	zero,ra,+00000000

l23071300:
	sb	zero,a2,+00000003
	jalr	zero,ra,+00000000

l23071308:
	addi	a5,a0,+00000000

l2307130C:
	lbu	a4,a1,+00000000
	addi	a5,a5,+00000001
	addi	a1,a1,+00000001
	sb	a4,a5,+00000FFF
	bne	a4,zero,000000002307130C

l23071320:
	jalr	zero,ra,+00000000

l23071324:
	addi	a2,a0,+00000000
	jal	zero,00000000230712D8

;; strlen: 2307132C
;;   Called from:
;;     23000ABA (in _connect_wifi)
;;     23000B44 (in _connect_wifi)
;;     23000B92 (in _connect_wifi)
;;     23000B9A (in _connect_wifi)
;;     23000C10 (in _connect_wifi)
;;     23000C18 (in _connect_wifi)
;;     23001416 (in aws_main_entry)
;;     23001422 (in aws_main_entry)
;;     230016A6 (in aws_main_entry)
;;     23002676 (in mm_sta_add)
;;     230026B4 (in mm_sta_add)
;;     2301177C (in set_psk)
;;     23011960 (in pmkCacheFindPSK)
;;     230126A2 (in KeyMgmtInit)
;;     23012C5C (in GenerateGTK_internal)
;;     2301320E (in cm_SetComData)
;;     23021E06 (in ap_setpsk)
;;     23021E1E (in ap_setpsk)
;;     23021E68 (in ap_resetConfiguration)
;;     23023756 (in bl_send_apm_start_req)
;;     2302376A (in bl_send_apm_start_req)
;;     2302377C (in bl_send_apm_start_req)
;;     2302378E (in bl_send_apm_start_req)
;;     23025724 (in stateGlobalGuard_scan_beacon)
;;     230264DE (in wifi_mgmr_api_connect)
;;     23026552 (in wifi_mgmr_api_connect)
;;     23026586 (in wifi_mgmr_api_connect)
;;     23026ED8 (in wifi_mgmr_api_ap_start)
;;     23026F76 (in wifi_mgmr_api_ap_start)
;;     230276A6 (in wifi_ap_sta_delete_cmd)
;;     230283BA (in wifi_mgmr_sta_ssid_set)
;;     230283C2 (in wifi_mgmr_sta_ssid_set)
;;     230283EC (in wifi_mgmr_sta_psk_set)
;;     230283F4 (in wifi_mgmr_sta_psk_set)
;;     230294FE (in fdt_get_name)
;;     230295CA (in fdt_subnode_offset)
;;     23029710 (in fdt_getprop)
;;     23029BE6 (in utilfdt_print_data)
;;     23029FD6 (in tc_blfdtdump)
;;     2302AA88 (in cmd_blog_info_dump)
;;     2302AACC (in cmd_blog_info_dump)
;;     2302AC34 (in cmd_blog_set_level)
;;     2302B614 (in cli_putstr)
;;     2302B670 (in ps_cmd)
;;     2302B67C (in ps_cmd)
;;     2302B6A2 (in ps_cmd)
;;     2302B730 (in aos_cli_printf)
;;     2302B982 (in ls_cmd)
;;     2302B9F6 (in ls_cmd)
;;     2302BA08 (in ls_cmd)
;;     2302BA16 (in ls_cmd)
;;     2302BA1E (in ls_cmd)
;;     2302C0D2 (in cli_main_input)
;;     2302C310 (in cli_main_input)
;;     2302C49C (in cli_main_input)
;;     2302C5CE (in cli_main_input)
;;     2302C772 (in cli_main_input)
;;     2302CCA4 (in find_env_cb)
;;     2302D6C0 (in find_env)
;;     2302D842 (in del_env)
;;     2302DB1A (in create_env_blob)
;;     2302DB64 (in create_env_blob)
;;     2302DD18 (in ef_get_env_blob)
;;     2302DD36 (in ef_get_env_blob)
;;     2302DDCA (in ef_del_env)
;;     2302DE9C (in ef_set_env_blob)
;;     2302DEBA (in ef_set_env_blob)
;;     2302DF34 (in ef_set_env_blob)
;;     2302DFB8 (in ef_set_env)
;;     2302E0AA (in ef_env_set_default)
;;     230310B8 (in vTaskList)
;;     230310F2 (in vTaskList)
;;     23037400 (in hal_board_cfg)
;;     230377B4 (in hal_board_cfg)
;;     23037F62 (in hal_board_cfg)
;;     2303990A (in httpc_create_request_string.constprop.6)
;;     2303A4DC (in lwip_getaddrinfo)
;;     2303C464 (in dns_send)
;;     2303CB04 (in dns_gethostbyname_addrtype)
;;     2303D4E4 (in dhcp_option_hostname.isra.0)
;;     23048016 (in tcpclient_cmd)
;;     23048538 (in iperf_server_udp_entry)
;;     2304856C (in iperf_client_udp_entry)
;;     230485A0 (in iperf_server_entry)
;;     230485D4 (in iperf_client_tcp_entry)
;;     230497AC (in romfs_ioctl)
;;     230497F4 (in romfs_read)
;;     2304987C (in file_info)
;;     2304989C (in file_info)
;;     230498BA (in file_info)
;;     230498D0 (in file_info)
;;     23049914 (in file_info)
;;     23049928 (in file_info)
;;     23049BB6 (in dirent_file)
;;     23049BC0 (in dirent_file)
;;     23049BCC (in dirent_file)
;;     23049C1C (in dirent_file)
;;     23049CB8 (in dirent_file)
;;     23049E5A (in romfs_opendir)
;;     23049FD8 (in romfs_open)
;;     23049FE2 (in romfs_open)
;;     2304A218 (in romfs_register)
;;     2304BD56 (in Bl_F_fast.constprop.0)
;;     2304BE16 (in utils_wifi_psk_cal_fast_bin)
;;     2304C1AC (in aos_open)
;;     2304C6E8 (in inode_open)
;;     2304C6FA (in inode_open)
;;     2304C7BA (in inode_reserve)
;;     2304D95C (in aws_iot_shadow_connect)
;;     2304D9FE (in aws_iot_shadow_update)
;;     2304DCA8 (in aws_iot_shadow_add_reported)
;;     2304DCBE (in aws_iot_shadow_add_reported)
;;     2304DCEC (in aws_iot_shadow_add_reported)
;;     2304DD16 (in aws_iot_shadow_add_reported)
;;     2304DD30 (in aws_iot_shadow_add_reported)
;;     2304DD54 (in aws_iot_shadow_add_reported)
;;     2304DDAC (in aws_iot_finalize_json_document)
;;     2304DDD0 (in aws_iot_finalize_json_document)
;;     2304DDF8 (in aws_iot_finalize_json_document)
;;     2304DE06 (in aws_iot_finalize_json_document)
;;     2304DE1C (in aws_iot_finalize_json_document)
;;     2304DE28 (in aws_iot_finalize_json_document)
;;     2304E39A (in unsubscribeFromAcceptedAndRejected)
;;     2304E3EC (in unsubscribeFromAcceptedAndRejected)
;;     2304E61E (in registerJsonTokenOnDelta)
;;     2304E7E6 (in subscribeToShadowActionAcks)
;;     2304E820 (in subscribeToShadowActionAcks)
;;     2304E8BE (in subscribeToShadowActionAcks)
;;     2304E97C (in publishToShadowAction)
;;     2304E98E (in publishToShadowAction)
;;     2304EFD6 (in jsoneq)
;;     2304F3C2 (in aws_iot_mqtt_set_connect_params)
;;     2304F3EC (in aws_iot_mqtt_set_connect_params)
;;     2305051C (in iot_tls_connect)
;;     230505CA (in iot_tls_connect)
;;     23050634 (in iot_tls_connect)
;;     23050698 (in iot_tls_connect)
;;     2305479C (in bflb_platform_printf)
;;     23054E82 (in Bl_F)
;;     23054F4E (in Bl_PasswordHash)
;;     230570F0 (in mbedtls_pk_parse_keyfile)
;;     23059A7E (in tls_prf_sha256)
;;     23059A90 (in tls_prf_sha256)
;;     2305A3FE (in mbedtls_ssl_set_hostname)
;;     2305A46E (in mbedtls_ssl_conf_alpn_protocols)
;;     2305AB20 (in mbedtls_ssl_free)
;;     2305DB6E (in x509_check_wildcard)
;;     2305E8EA (in mbedtls_x509_crt_verify_with_profile)
;;     23065F4A (in mbedtls_pem_read_buffer)
;;     23065F76 (in mbedtls_pem_read_buffer)
;;     23068D14 (in mbedtls_ssl_handshake_client_step)
;;     23069132 (in mbedtls_ssl_handshake_client_step)
;;     2306918A (in mbedtls_ssl_handshake_client_step)
;;     2306B04C (in mbedtls_ssl_handshake_server_step)
;;     23071AD8 (in strstr)
strlen proc
	andi	a5,a0,+00000003
	addi	a4,a0,+00000000
	bne	a5,zero,000000002307138C

l23071338:
	lui	a3,0007F7F8
	addi	a3,a3,-00000081
	addi	a1,zero,-00000001

l23071344:
	addi	a4,a4,+00000004
	lw	a2,a4,-00000004
	and	a5,a2,a3
	add	a5,a5,a3
	or	a5,a5,a2
	or	a5,a5,a3
	beq	a5,a1,0000000023071344

l23071360:
	lbu	a3,a4,-00000004
	sub	a5,a4,a0
	lbu	a2,a4,-00000003
	lbu	a0,a4,-00000002
	beq	a3,zero,00000000230713B0

l23071374:
	beq	a2,zero,00000000230713A8

l23071378:
	sltu	a0,zero,a0
	add	a0,a0,a5
	addi	a0,a0,-00000002
	jalr	zero,ra,+00000000

l23071388:
	beq	a3,zero,0000000023071338

l2307138C:
	lbu	a5,a4,+00000000
	addi	a4,a4,+00000001
	andi	a3,a4,+00000003
	bne	a5,zero,0000000023071388

l2307139C:
	sub	a4,a4,a0
	addi	a0,a4,-00000001
	jalr	zero,ra,+00000000

l230713A8:
	addi	a0,a5,-00000003
	jalr	zero,ra,+00000000

l230713B0:
	addi	a0,a5,-00000004
	jalr	zero,ra,+00000000

;; strncmp: 230713B8
;;   Called from:
;;     2302B7E0 (in proc_onecmd)
;;     2302C50C (in cli_main_input)
;;     2302CCD6 (in find_env_cb)
;;     2302D708 (in find_env)
;;     23049FEE (in romfs_open)
;;     2304C6F2 (in inode_open)
;;     2304EFEA (in jsoneq)
;;     2304F28C (in parseBooleanValue)
;;     2304F2A8 (in parseBooleanValue)
;;     23051188 (in aws_iot_mqtt_internal_cycle_read)
strncmp proc
	beq	a2,zero,000000002307148C

l230713BC:
	or	a5,a0,a1
	andi	a5,a5,+00000003
	bne	a5,zero,0000000023071444

l230713C8:
	addi	a5,zero,+00000003
	bgeu	a5,a2,0000000023071444

l230713D0:
	lw	a5,a0,+00000000
	lw	a4,a1,+00000000
	bne	a5,a4,0000000023071494

l230713DC:
	addi	a2,a2,-00000004
	beq	a2,zero,000000002307148C

l230713E4:
	lui	t1,000FEFF0
	addi	t1,t1,-00000101
	add	a4,a5,t1
	lui	a7,00080808
	xori	a5,a5,-00000001
	and	a5,a4,a5
	addi	a7,a7,+00000080
	and	a5,a5,a7
	bne	a5,zero,000000002307148C

l23071408:
	addi	t3,zero,+00000003
	jal	zero,0000000023071438

l23071410:
	lw	a4,a0,+00000000
	lw	a3,a1,+00000000
	add	a5,a4,t1
	xori	a6,a4,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a4,a3,0000000023071494

l2307142C:
	addi	a2,a2,-00000004
	beq	a2,zero,000000002307148C

l23071434:
	bne	a5,zero,000000002307148C

l23071438:
	addi	a0,a0,+00000004
	addi	a1,a1,+00000004
	bltu	t3,a2,0000000023071410

l23071444:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	bne	a3,a4,0000000023071484

l23071454:
	beq	a2,zero,000000002307148C

l23071458:
	beq	a4,zero,000000002307148C

l2307145C:
	addi	a5,a0,+00000001
	add	a2,a0,a2
	jal	zero,0000000023071474

l23071468:
	beq	a2,a5,000000002307148C

l2307146C:
	addi	a5,a5,+00000001
	beq	a4,zero,000000002307148C

l23071474:
	addi	a1,a1,+00000001
	lbu	a4,a5,+00000000
	lbu	a3,a1,+00000000
	beq	a4,a3,0000000023071468

l23071484:
	sub	a0,a4,a3
	jalr	zero,ra,+00000000

l2307148C:
	addi	a0,zero,+00000000
	jalr	zero,ra,+00000000

l23071494:
	lbu	a4,a0,+00000000
	lbu	a3,a1,+00000000
	addi	a2,a2,-00000001
	beq	a3,a4,0000000023071458

l230714A4:
	jal	zero,0000000023071484

;; strncpy: 230714A8
;;   Called from:
;;     23000928 (in check_dts_config)
;;     2300093A (in check_dts_config)
;;     23000A2A (in _connect_wifi)
;;     23000A5C (in _connect_wifi)
;;     23000A8E (in _connect_wifi)
;;     23000B30 (in _connect_wifi)
;;     23000BDC (in _connect_wifi)
;;     2302571A (in stateGlobalGuard_scan_beacon)
;;     230263BA (in wifi_mgmr_set_country_code_internal)
;;     2302C600 (in cli_main_input)
;;     2302C642 (in cli_main_input)
;;     2302D8C0 (in move_env)
;;     2303A418 (in lwip_gethostbyname)
;;     23049B08 (in romfs_readdir)
;;     2304D218 (in aos_task_new)
;;     2304E0E6 (in extractClientToken)
;;     2304E298 (in topicNameFromThingAndAction)
;;     2304E2AC (in topicNameFromThingAndAction)
;;     2304F2E4 (in parseStringValue)
;;     23054FE4 (in bl_mtd_open)
strncpy proc
	or	a5,a1,a0
	andi	a5,a5,+00000003
	bne	a5,zero,0000000023071524

l230714B4:
	addi	a5,zero,+00000003
	addi	a4,a0,+00000000
	bltu	a5,a2,000000002307152C

l230714C0:
	beq	a2,zero,0000000023071520

l230714C4:
	lbu	a6,a1,+00000000
	addi	a3,a2,-00000001
	addi	a1,a1,+00000001
	sb	a6,a4,+00000000
	addi	a5,a4,+00000001
	beq	a6,zero,0000000023071508

l230714DC:
	add	a2,a4,a2
	add	a3,a4,a3
	jal	zero,00000000230714F8

l230714E8:
	lbu	a4,a1,-00000001
	addi	a5,a5,+00000001
	sb	a4,a5,+00000FFF
	beq	a4,zero,000000002307150C

l230714F8:
	addi	a1,a1,+00000001
	sub	a6,a3,a5
	bne	a5,a2,00000000230714E8

l23071504:
	jalr	zero,ra,+00000000

l23071508:
	addi	a6,a3,+00000000

l2307150C:
	add	a4,a5,a6
	beq	a6,zero,0000000023071570

l23071514:
	addi	a5,a5,+00000001
	sb	zero,a5,+00000FFF
	bne	a5,a4,0000000023071514

l23071520:
	jalr	zero,ra,+00000000

l23071524:
	addi	a4,a0,+00000000
	jal	zero,00000000230714C0

l2307152C:
	lui	t1,000FEFF0
	lui	a7,00080808
	addi	t1,t1,-00000101
	addi	a7,a7,+00000080
	addi	t3,zero,+00000003

l23071540:
	lw	a3,a1,+00000000
	add	a5,a3,t1
	xori	a6,a3,-00000001
	and	a5,a5,a6
	and	a5,a5,a7
	bne	a5,zero,00000000230714C4

l23071558:
	addi	a4,a4,+00000004
	addi	a2,a2,-00000004
	sw	a3,a4,+00000FFC
	addi	a1,a1,+00000004
	bltu	t3,a2,0000000023071540

l2307156C:
	jal	zero,00000000230714C0

l23071570:
	jalr	zero,ra,+00000000

;; strnlen: 23071574
;;   Called from:
;;     2302975C (in fdt_stringlist_count)
;;     230297BA (in fdt_stringlist_get)
;;     23051A6A (in flt)
;;     23051B9A (in flt)
;;     230717DC (in two_way_long_needle)
;;     23071980 (in two_way_long_needle)
;;     23071AE8 (in strstr)
;;     23071CCC (in strstr)
strnlen proc
	beq	a1,zero,000000002307159C

l23071578:
	lbu	a5,a0,+00000000
	beq	a5,zero,00000000230715B0

l23071580:
	add	a3,a0,a1
	addi	a5,a0,+00000000
	jal	zero,0000000023071594

l2307158C:
	lbu	a4,a5,+00000000
	beq	a4,zero,00000000230715A4

l23071594:
	addi	a5,a5,+00000001
	bne	a5,a3,000000002307158C

l2307159C:
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230715A4:
	sub	a1,a5,a0
	addi	a0,a1,+00000000
	jalr	zero,ra,+00000000

l230715B0:
	addi	a1,zero,+00000000
	jal	zero,000000002307159C

;; strrchr: 230715B8
;;   Called from:
;;     230294EE (in fdt_get_name)
strrchr proc
	beq	a1,zero,000000002307160C

l230715BC:
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	sw	s1,sp,+00000004
	sw	ra,sp,+0000000C
	addi	s0,a1,+00000000
	addi	a5,a0,+00000000
	addi	s1,zero,+00000000
	jal	zero,00000000230715E4

l230715DC:
	addi	a5,a0,+00000001
	addi	s1,a0,+00000000

l230715E4:
	addi	a0,a5,+00000000
	addi	a1,s0,+00000000
	jal	ra,0000000023070F94
	bne	a0,zero,00000000230715DC

l230715F4:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	a0,s1,+00000000
	lw	s1,sp,+00000004
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l2307160C:
	jal	zero,0000000023070F94

;; two_way_long_needle: 23071610
;;   Called from:
;;     23071CF8 (in strstr)
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

l23071668:
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bgeu	a5,s9,00000000230716A8

l2307167C:
	lbu	a1,a1,+00000000
	lbu	a4,a4,+00000000
	bgeu	a1,a4,0000000023071874

l23071688:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	s7,a5,s11
	add	a5,s1,s11
	add	a4,a5,a3
	add	a5,a3,a2
	add	a1,s1,a5
	bltu	a5,s9,000000002307167C

l230716A8:
	addi	a7,zero,+00000001
	addi	a3,zero,+00000001
	addi	a2,zero,+00000000
	addi	a1,zero,-00000001

l230716B8:
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bgeu	a5,s9,00000000230716F8

l230716CC:
	lbu	a0,a0,+00000000
	lbu	a4,a4,+00000000
	bgeu	a4,a0,000000002307188C

l230716D8:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	sub	a7,a5,a1
	add	a5,s1,a1
	add	a4,a5,a3
	add	a5,a3,a2
	add	a0,s1,a5
	bltu	a5,s9,00000000230716CC

l230716F8:
	addi	a1,a1,+00000001
	addi	s11,s11,+00000001
	bltu	a1,s11,000000002307170C

l23071704:
	addi	s7,a7,+00000000
	addi	s11,a1,+00000000

l2307170C:
	addi	a5,sp,+00000010
	addi	a4,sp,+00000410

l23071714:
	sw	s9,a5,+00000000
	addi	a5,a5,+00000004
	bne	a4,a5,0000000023071714

l23071720:
	addi	s2,s9,-00000001
	add	a1,s1,s9
	addi	a4,s1,+00000000
	add	a2,s1,s2
	beq	s9,zero,0000000023071754

l23071734:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000410
	sub	a3,a2,a4
	slli	a5,a5,00000002
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sw	a3,a5,+00000C00
	bne	a4,a1,0000000023071734

l23071754:
	addi	a2,s11,+00000000
	add	a1,s1,s7
	addi	a0,s1,+00000000
	jal	ra,0000000023070BF4
	bne	a0,zero,0000000023071918

l23071768:
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

l23071798:
	add	a2,s0,s8
	add	a5,a2,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,000000002307182C

l230717B8:
	beq	s6,zero,00000000230717C4

l230717BC:
	bgeu	a5,s7,00000000230717C4

l230717C0:
	sub	a5,s9,s7

l230717C4:
	add	s8,s8,a5
	addi	s6,zero,+00000000

l230717CC:
	sub	a5,s10,s9
	bgeu	a5,s8,0000000023071798

l230717D4:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,0000000023071574
	add	s10,s10,a0
	sub	a5,s10,s9
	bgeu	a5,s8,0000000023071798

l230717EC:
	addi	a0,zero,+00000000

l230717F0:
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

l2307182C:
	addi	a5,s6,+00000000
	bgeu	s6,s11,0000000023071838

l23071834:
	addi	a5,s11,+00000000

l23071838:
	bgeu	a5,s2,00000000230718A4

l2307183C:
	add	a3,s0,a5
	add	a3,a3,s8
	add	a4,s1,a5
	jal	zero,0000000023071860

l2307184C:
	addi	a5,a5,+00000001
	add	a4,a5,s8
	add	a3,s1,a5
	add	a4,s0,a4
	bgeu	a5,s2,00000000230718A4

l23071860:
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	beq	a3,a4,000000002307184C

l2307186C:
	add	s8,s4,s8
	jal	zero,00000000230717C4

l23071874:
	beq	a1,a4,0000000023071900

l23071878:
	addi	s11,a2,+00000000
	addi	s7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,0000000023071668

l2307188C:
	beq	a0,a4,000000002307190C

l23071890:
	addi	a1,a2,+00000000
	addi	a7,zero,+00000001
	addi	a2,a2,+00000001
	addi	a3,zero,+00000001
	jal	zero,00000000230716B8

l230718A4:
	addi	a3,s5,+00000000
	bgeu	s6,s11,0000000023071A68

l230718AC:
	lw	a5,sp,+00000008
	add	a5,a5,s8
	lbu	a4,a5,+00000000
	lw	a5,sp,+0000000C
	lbu	a5,a5,+00000000
	beq	a4,a5,00000000230718D8

l230718C4:
	jal	zero,0000000023071A68

l230718C8:
	lbu	a1,a1,+00000000
	lbu	a5,a5,+00000000
	bne	a1,a5,00000000230718EC

l230718D4:
	addi	a3,a4,+00000000

l230718D8:
	addi	a4,a3,-00000001
	add	a5,a4,s8
	add	a1,s1,a4
	add	a5,s0,a5
	bne	s6,a3,00000000230718C8

l230718EC:
	addi	a7,s6,+00000001
	bltu	a3,a7,0000000023071A74

l230718F4:
	add	s8,s8,s7
	sub	s6,s9,s7
	jal	zero,00000000230717CC

l23071900:
	beq	a3,s7,0000000023071A5C

l23071904:
	addi	a3,a3,+00000001
	jal	zero,0000000023071668

l2307190C:
	beq	a3,a7,0000000023071A50

l23071910:
	addi	a3,a3,+00000001
	jal	zero,00000000230716B8

l23071918:
	sub	s7,s9,s11
	bltu	s7,s11,0000000023071A48

l23071920:
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

l2307194C:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	beq	a5,zero,00000000230719B0

l2307196C:
	add	s8,s8,a5

l23071970:
	sub	a5,s10,s9
	bgeu	a5,s8,000000002307194C

l23071978:
	add	a0,s0,s10
	addi	a1,s3,+00000000
	jal	ra,0000000023071574
	add	s10,s10,a0
	sub	a5,s10,s9
	bltu	a5,s8,00000000230717EC

l23071990:
	add	a1,s0,s8
	add	a5,a1,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000410
	slli	a5,a5,00000002
	add	a5,a4,a5
	lw	a5,a5,-00000400
	bne	a5,zero,000000002307196C

l230719B0:
	bgeu	s11,s2,00000000230719F0

l230719B4:
	add	a4,a1,s11
	add	a5,s1,s11
	lbu	a2,a4,+00000000
	lbu	a4,a5,+00000000
	addi	a5,s11,+00000000
	beq	a2,a4,00000000230719DC

l230719CC:
	jal	zero,0000000023071A3C

l230719D0:
	lbu	a2,a2,+00000000
	lbu	a4,a4,+00000000
	bne	a2,a4,0000000023071A3C

l230719DC:
	addi	a5,a5,+00000001
	add	a4,s8,a5
	add	a2,s1,a5
	add	a4,s0,a4
	bltu	a5,s2,00000000230719D0

l230719F0:
	addi	a5,zero,-00000001
	beq	s5,a5,0000000023071A7C

l230719F8:
	add	a5,a1,s5
	lbu	a4,a5,+00000000
	lw	a5,sp,+00000008
	lbu	a5,a5,+00000000
	bne	a4,a5,0000000023071A34

l23071A0C:
	add	a4,s8,s6
	add	a5,s1,s6
	add	a4,s0,a4
	addi	a6,s1,-00000001

l23071A1C:
	beq	a5,a6,0000000023071A7C

l23071A20:
	lbu	a0,a5,+00000000
	lbu	a2,a4,+00000000
	addi	a5,a5,-00000001
	addi	a4,a4,-00000001
	beq	a0,a2,0000000023071A1C

l23071A34:
	add	s8,s8,s7
	jal	zero,0000000023071970

l23071A3C:
	add	a3,s4,s8
	add	s8,a3,a5
	jal	zero,0000000023071970

l23071A48:
	addi	s7,s11,+00000000
	jal	zero,0000000023071920

l23071A50:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,00000000230716B8

l23071A5C:
	addi	a2,a5,+00000000
	addi	a3,zero,+00000001
	jal	zero,0000000023071668

l23071A68:
	addi	a3,s11,+00000000
	addi	a7,s6,+00000001
	bgeu	a3,a7,00000000230718F4

l23071A74:
	addi	a0,a2,+00000000
	jal	zero,00000000230717F0

l23071A7C:
	addi	a0,a1,+00000000
	jal	zero,00000000230717F0

;; strstr: 23071A84
;;   Called from:
;;     2302AB04 (in cmd_blog_info_dump)
;;     2302AB3C (in cmd_blog_info_dump)
;;     2302B06E (in ota_tcp_cmd.part.0)
;;     2304E49A (in AckStatusCallback)
;;     2304E4AA (in AckStatusCallback)
;;     2304E50C (in AckStatusCallback)
;;     2304E51E (in AckStatusCallback)
;;     2304E580 (in AckStatusCallback)
;;     23056D2E (in mbedtls_pk_load_file)
;;     2305F234 (in mbedtls_x509_crt_parse)
;;     23065F10 (in mbedtls_pem_read_buffer)
;;     23065F3C (in mbedtls_pem_read_buffer)
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
	beq	a1,zero,0000000023071BA8

l23071AB4:
	lbu	a3,s1,+00000001
	beq	a3,zero,0000000023071C60

l23071ABC:
	lbu	a2,s1,+00000002
	beq	a2,zero,0000000023071BD0

l23071AC4:
	lbu	a4,s1,+00000003
	beq	a4,zero,0000000023071C6C

l23071ACC:
	lbu	a5,s1,+00000004
	beq	a5,zero,0000000023071C10

l23071AD4:
	addi	a0,s1,+00000000
	jal	ra,000000002307132C
	addi	s2,a0,+00000000
	ori	a1,a0,+00000200
	addi	a0,s0,+00000000
	jal	ra,0000000023071574
	bltu	a0,s2,0000000023071C58

l23071AF0:
	addi	a5,zero,+000000FE
	bltu	a5,s2,0000000023071CE8

l23071AF8:
	sub	s3,a0,s2
	addi	a2,zero,+00000040
	addi	a1,s2,+00000001
	addi	a0,sp,+00000000
	add	s3,s0,s3
	jal	ra,0000000023070EB8
	beq	s2,zero,0000000023071B44

l23071B14:
	andi	a2,s2,+000000FF
	addi	a4,s1,+00000000
	add	a1,s2,s1
	add	a2,s1,a2

l23071B24:
	lbu	a5,a4,+00000000
	addi	a0,sp,+00000040
	sub	a3,a2,a4
	andi	a5,a5,+0000003F
	add	a5,a0,a5
	addi	a4,a4,+00000001
	sb	a3,a5,+00000FC0
	bne	a1,a4,0000000023071B24

l23071B44:
	lui	s5,00000001
	addi	s5,s5,-00000800

l23071B4C:
	addi	s0,s0,-00000001
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	lbu	a5,a5,-00000040
	add	s0,s0,a5
	bgeu	s3,s0,0000000023071B7C

l23071B70:
	jal	zero,0000000023071CBC

l23071B74:
	add	s0,s0,s4
	bltu	s3,s0,0000000023071CBC

l23071B7C:
	add	a5,s0,s2
	lbu	a5,a5,+00000000
	addi	a4,sp,+00000040
	addi	a0,s0,+00000000
	andi	a5,a5,+0000003F
	add	a5,a4,a5
	addi	a2,s2,+00000000
	addi	a1,s1,+00000000
	lbu	s4,a5,-00000040
	jal	ra,0000000023070BF4
	bne	a0,zero,0000000023071B74

l23071BA8:
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

l23071BD0:
	lbu	a5,a0,+00000000
	slli	a1,a1,00000010
	or	a1,a1,a3
	beq	a5,zero,0000000023071C58

l23071BE0:
	addi	a3,a0,+00000001
	lbu	a4,a0,+00000001
	jal	zero,0000000023071BF0

l23071BEC:
	addi	a3,a2,+00000000

l23071BF0:
	slli	a5,a5,00000010
	or	a5,a4,a5
	beq	a4,zero,0000000023071C58

l23071BFC:
	addi	a2,a3,+00000001
	lbu	a4,a3,+00000001
	bne	a1,a5,0000000023071BEC

l23071C08:
	addi	s0,a3,-00000001
	jal	zero,0000000023071BA8

l23071C10:
	slli	a5,a3,00000010
	slli	a1,a1,00000018
	lbu	a3,a0,+00000000
	or	a5,a1,a5
	or	a5,a5,a4
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a3,zero,0000000023071C58

l23071C30:
	addi	a4,zero,+00000000
	jal	zero,0000000023071C40

l23071C38:
	beq	a5,a4,0000000023071CE0

l23071C3C:
	addi	s0,a2,+00000000

l23071C40:
	slli	a4,a4,00000008
	or	a4,a3,a4
	lbu	a3,s0,+00000001
	addi	a2,s0,+00000001
	bne	a3,zero,0000000023071C38

l23071C54:
	beq	a5,a4,0000000023071CE0

l23071C58:
	addi	s0,zero,+00000000
	jal	zero,0000000023071BA8

l23071C60:
	jal	ra,0000000023070F94
	addi	s0,a0,+00000000
	jal	zero,0000000023071BA8

l23071C6C:
	lbu	a4,a0,+00000000
	slli	a5,a1,00000018
	slli	a1,a3,00000010
	or	a5,a5,a1
	slli	a2,a2,00000008
	or	a5,a5,a2
	beq	a4,zero,0000000023071C58

l23071C88:
	slli	a4,a4,00000008
	addi	a2,a0,+00000001
	lbu	a3,a0,+00000001
	jal	zero,0000000023071C9C

l23071C98:
	addi	a2,a1,+00000000

l23071C9C:
	or	a4,a3,a4
	slli	a4,a4,00000008
	beq	a3,zero,0000000023071C58

l23071CA8:
	addi	a1,a2,+00000001
	lbu	a3,a2,+00000001
	bne	a5,a4,0000000023071C98

l23071CB4:
	addi	s0,a2,-00000002
	jal	zero,0000000023071BA8

l23071CBC:
	add	a0,s3,s2
	lbu	a5,a0,+00000000
	beq	a5,zero,0000000023071C58

l23071CC8:
	addi	a1,s5,+00000000
	jal	ra,0000000023071574
	add	s3,s3,a0
	bgeu	s3,s0,0000000023071B4C

l23071CD8:
	addi	s0,zero,+00000000
	jal	zero,0000000023071BA8

l23071CE0:
	addi	s0,s0,-00000003
	jal	zero,0000000023071BA8

l23071CE8:
	addi	a1,a0,+00000000
	addi	a3,s2,+00000000
	addi	a0,s0,+00000000
	addi	a2,s1,+00000000
	jal	ra,0000000023071610
	addi	s0,a0,+00000000
	jal	zero,0000000023071BA8

;; _strtol_l.isra.0: 23071D04
;;   Called from:
;;     23071EBC (in _strtol_r)
;;     23071ED8 (in strtol_l)
;;     23071EF4 (in strtol)
_strtol_l.isra.0 proc
	addi	sp,sp,-00000010
	sw	s0,sp,+0000000C
	sw	s1,sp,+00000008
	addi	t2,a0,+00000000
	addi	t1,a1,+00000000
	auipc	t3,0000001C
	addi	t3,t3,-000000AB
	jal	zero,0000000023071D28

l23071D24:
	addi	t1,a4,+00000000

l23071D28:
	addi	a4,t1,+00000001
	lbu	a5,a4,-00000001
	add	a6,t3,a5
	lbu	a7,a6,+00000000
	andi	a7,a7,+00000008
	bne	a7,zero,0000000023071D24

l23071D40:
	addi	a0,zero,+0000002D
	beq	a5,a0,0000000023071E54

l23071D48:
	addi	a0,zero,+0000002B
	beq	a5,a0,0000000023071DD0

l23071D50:
	addi	a6,a5,+00000000
	addi	s0,zero,+00000000

l23071D58:
	beq	a3,zero,0000000023071DE0

l23071D5C:
	addi	a5,zero,+00000010
	addi	t6,a3,+00000000
	beq	a3,a5,0000000023071E6C

l23071D68:
	lui	t0,00080000
	bne	s0,zero,0000000023071D74

l23071D70:
	xori	t0,t0,-00000001

l23071D74:
	and	s1,t0,t6
	addi	a7,zero,+00000000
	addi	a0,zero,+00000000
	addi	t1,zero,+00000009
	addi	t5,zero,+00000019
	addi	t3,zero,-00000001
	srl	t4,t0,t6

l23071D90:
	addi	a5,a6,-00000030
	bgeu	t1,a5,0000000023071DA4

l23071D98:
	addi	a5,a6,-00000041
	bltu	t5,a5,0000000023071DF4

l23071DA0:
	addi	a5,a6,-00000037

l23071DA4:
	bge	a5,a3,0000000023071E04

l23071DA8:
	beq	a7,t3,0000000023071DC4

l23071DAC:
	addi	a7,zero,-00000001
	bltu	t4,a0,0000000023071DC4

l23071DB4:
	beq	t4,a0,0000000023071E30

l23071DB8:
	addi	a7,zero,+00000001
	add	a6,t6,a0
	add	a0,a5,a6

l23071DC4:
	addi	a4,a4,+00000001
	lbu	a6,a4,-00000001
	jal	zero,0000000023071D90

l23071DD0:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000000
	addi	a4,t1,+00000002
	bne	a3,zero,0000000023071D5C

l23071DE0:
	addi	a5,zero,+00000030
	beq	a6,a5,0000000023071EA0

l23071DE8:
	addi	t6,zero,+0000000A
	addi	a3,zero,+0000000A
	jal	zero,0000000023071D68

l23071DF4:
	addi	a5,a6,-00000061
	bltu	t5,a5,0000000023071E04

l23071DFC:
	addi	a5,a6,-00000057
	blt	a5,a3,0000000023071DA8

l23071E04:
	addi	a5,zero,-00000001
	beq	a7,a5,0000000023071E38

l23071E0C:
	beq	s0,zero,0000000023071E14

l23071E10:
	sub	a0,zero,a0

l23071E14:
	beq	a2,zero,0000000023071E20

l23071E18:
	bne	a7,zero,0000000023071E64

l23071E1C:
	sw	a1,a2,+00000000

l23071E20:
	lw	s0,sp,+0000000C
	lw	s1,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l23071E30:
	blt	s1,a5,0000000023071DC4

l23071E34:
	jal	zero,0000000023071DB8

l23071E38:
	addi	a5,zero,+00000022
	sw	a5,t2,+00000000
	addi	a0,t0,+00000000
	beq	a2,zero,0000000023071E20

l23071E48:
	addi	a1,a4,-00000001
	addi	a0,t0,+00000000
	jal	zero,0000000023071E1C

l23071E54:
	lbu	a6,a4,+00000000
	addi	s0,zero,+00000001
	addi	a4,t1,+00000002
	jal	zero,0000000023071D58

l23071E64:
	addi	t0,a0,+00000000
	jal	zero,0000000023071E48

l23071E6C:
	addi	a5,zero,+00000030
	bne	a6,a5,0000000023071E84

l23071E74:
	lbu	a5,a4,+00000000
	addi	a0,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a0,0000000023071E8C

l23071E84:
	addi	t6,zero,+00000010
	jal	zero,0000000023071D68

l23071E8C:
	lbu	a6,a4,+00000001
	addi	t6,zero,+00000010
	addi	a4,a4,+00000002
	addi	a3,zero,+00000010
	jal	zero,0000000023071D68

l23071EA0:
	lbu	a5,a4,+00000000
	addi	a3,zero,+00000058
	andi	a5,a5,+000000DF
	beq	a5,a3,0000000023071E8C

l23071EB0:
	addi	t6,zero,+00000008
	addi	a3,zero,+00000008
	jal	zero,0000000023071D68

;; _strtol_r: 23071EBC
;;   Called from:
;;     23070B04 (in _atoi_r)
_strtol_r proc
	jal	zero,0000000023071D04

;; strtol_l: 23071EC0
strtol_l proc
	auipc	a5,0001EF9C
	addi	a5,a5,-0000052C
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,0000000023071D04

;; strtol: 23071EDC
;;   Called from:
;;     2302BD28 (in mmem_cmd)
;;     2302BD36 (in mmem_cmd)
;;     2302BD44 (in mmem_cmd)
;;     2302BDFC (in pmem_cmd)
;;     2302BE38 (in pmem_cmd)
;;     2302BE46 (in pmem_cmd)
;;     23070AF8 (in atoi)
strtol proc
	auipc	a5,0001EF9C
	addi	a5,a5,-00000548
	addi	a3,a2,+00000000
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,0000000023071D04

;; stat: 23071EF8
stat proc
	auipc	a5,0001EF9C
	addi	a5,a5,-00000564
	addi	a2,a1,+00000000
	addi	a1,a0,+00000000
	lw	a0,a5,+00000000
	jal	zero,0000000023071F10

;; _stat_r: 23071F10
;;   Called from:
;;     23071F0C (in stat)
_stat_r proc
	addi	a5,a1,+00000000
	addi	sp,sp,-00000010
	sw	s0,sp,+00000008
	addi	a1,a2,+00000000
	addi	s0,a0,+00000000
	addi	a0,a5,+00000000
	sw	ra,sp,+0000000C
	auipc	a5,0001EFAE
	sw	zero,a5,+00000E24
	jal	ra,0000000023071F74
	addi	a5,zero,-00000001
	beq	a0,a5,0000000023071F50

l23071F40:
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

l23071F50:
	auipc	a5,0001EFAE
	addi	a5,a5,-00000200
	lw	a5,a5,+00000000
	beq	a5,zero,0000000023071F40

l23071F60:
	sw	a5,s0,+00000000
	lw	ra,sp,+0000000C
	lw	s0,sp,+00000008
	addi	sp,sp,+00000010
	jalr	zero,ra,+00000000

;; _stat: 23071F74
;;   Called from:
;;     23071F34 (in _stat_r)
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
	blt	a0,zero,0000000023071FD0

l23071FAC:
	addi	a0,s1,+00000000
	addi	a1,sp,+00000000
	jal	ra,0000000023071FE4
	addi	a0,s0,+00000000
	lw	ra,sp,+0000008C
	lw	s0,sp,+00000088
	lw	s1,sp,+00000084
	addi	sp,sp,+00000090
	jalr	zero,ra,+00000000

l23071FD0:
	sub	s0,zero,s0
	jal	ra,0000000023070B08
	sw	s0,a0,+00000000
	addi	s0,zero,-00000001
	jal	zero,0000000023071FAC

;; _conv_stat: 23071FE4
;;   Called from:
;;     23071FB4 (in _stat)
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
