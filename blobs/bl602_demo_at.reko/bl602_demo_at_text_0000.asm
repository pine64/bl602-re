;;; Segment .text (23000300)

;; cmd_free_mem: 23000300
cmd_free_mem proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023064A04
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,000230AA
	addi	a0,a0,-000006C4
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; cmd_stack_ble: 2300031A
cmd_stack_ble proc
	jal	zero,0000000023000F1C

;; cmd_stack_wifi: 2300031E
;;   Called from:
;;     23000B5A (in aos_loop_proc)
cmd_stack_wifi proc
	lui	a5,0004200F
	addi	a5,a5,+00000259
	lbu	a3,a5,+00000000
	c.li	a4,00000001
	bne	a3,a4,000000002300033C

l23000330:
	lui	a0,000230AA
	addi	a0,a0,-000006B0
	jal	zero,000000002308234C

l2300033C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	sb	a4,a5,+00000000
	jal	ra,0000000023069962
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002307C270

;; scan_complete_cb: 23000356
scan_complete_cb proc
	lui	a2,00023000
	c.mv	a1,a0
	addi	a2,a2,+00000366
	c.li	a0,00000000
	jal	zero,0000000023028082

;; scan_item_cb: 23000366
scan_item_cb proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	lb	a5,a2,+00000030
	lhu	a4,a2,+0000002E
	c.mv	s0,a2
	sb	a5,sp,+0000002C
	c.lw	a2,36(a5)
	c.mv	s1,a1
	addi	a2,zero,+00000020
	c.mv	a1,s0
	c.mv	a0,sp
	sh	a4,sp,+0000002A
	c.swsp	a5,00000010
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s0,+00000028
	c.addi4spn	a0,00000024
	jal	ra,00000000230A382C
	c.beqz	s1,00000000230003A4

l230003A0:
	c.mv	a0,sp
	c.jalr	s1

l230003A4:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; wifiprov_wifi_state_get: 230003AE
wifiprov_wifi_state_get proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	addi	a2,zero,+00000058
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	sw	ra,sp,+0000012C
	jal	ra,00000000230A3A68
	addi	a2,zero,+000000AE
	c.li	a1,00000000
	c.addi4spn	a0,00000070
	jal	ra,00000000230A3A68
	c.addi4spn	a0,00000008
	jal	ra,0000000023027FC2
	c.addi4spn	a2,00000014
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	jal	ra,0000000023027B0A
	c.addi4spn	a0,00000070
	jal	ra,0000000023027BF8
	c.lwsp	s0,000000E4
	c.addi4spn	a0,0000000C
	sb	a5,sp,+0000006F
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000018
	jal	ra,00000000230A4170
	c.addi4spn	a0,00000014
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000038
	jal	ra,00000000230A4170
	c.addi4spn	a0,00000010
	jal	ra,000000002306F586
	c.mv	a1,a0
	c.addi4spn	a0,00000028
	jal	ra,00000000230A4170
	addi	a2,zero,+00000020
	addi	a1,sp,+00000073
	c.addi4spn	a0,00000048
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.addi4spn	a1,00000114
	addi	a0,sp,+00000069
	jal	ra,00000000230A382C
	lui	a0,000230AA
	c.addi4spn	a1,00000018
	addi	a0,a0,-00000158
	sb	zero,sp,+00000068
	jal	ra,0000000023082388
	lui	a0,000230AA
	c.addi4spn	a1,00000028
	addi	a0,a0,-0000014C
	jal	ra,0000000023082388
	lui	a0,000230AA
	c.addi4spn	a1,00000038
	addi	a0,a0,-00000140
	jal	ra,0000000023082388
	c.beqz	s0,0000000023000466

l23000462:
	c.addi4spn	a0,00000018
	c.jalr	s0

l23000466:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	c.addi16sp	00000130
	c.jr	ra

;; char_to_hex: 23000472
;;   Called from:
;;     23000744 (in event_cb_wifi_event)
;;     23000776 (in event_cb_wifi_event)
char_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,0000000023000498

l23000482:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,000000002300049A

l23000490:
	addi	a5,a5,-00000057

l23000494:
	andi	a0,a5,+000000FF

l23000498:
	c.jr	ra

l2300049A:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,0000000023000498

l230004A8:
	addi	a5,a5,-00000037
	c.j	0000000023000494

;; event_cb_wifi_event: 230004AE
event_cb_wifi_event proc
	c.addi16sp	FFFFFEC0
	sw	ra,sp,+0000013C
	sw	s0,sp,+00000138
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	lhu	s1,a0,+00000006
	c.li	a4,00000012
	addi	a5,s1,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,0000000023000992

l230004EA:
	lui	a4,000230A9
	c.slli	a5,02
	addi	a4,a4,+000006B0
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.jr	a5

l230004FC:
	jal	ra,000000002307BF00
	c.mv	a2,a0
	lui	a0,000230AA
	c.mv	a3,a1
	addi	a0,a0,-00000664
	jal	ra,0000000023082388
	lui	a0,0004200F
	addi	a0,a0,-00000514
	jal	ra,00000000230259C2

l2300051C:
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

l23000548:
	jal	ra,000000002307BF00
	c.mv	a2,a0
	lui	a0,000230AA
	c.mv	a3,a1
	addi	a0,a0,-00000644
	jal	ra,0000000023082388
	lui	a0,000230AA
	c.addi4spn	a1,00000028
	addi	a0,a0,-00000624
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,000000002307C632
	c.lwsp	s0,00000178
	c.li	a5,00000001
	bne	s3,a5,000000002300051C

l23000576:
	lui	a0,000230AA
	c.addi4spn	a1,0000002C
	addi	a0,a0,-00000618
	jal	ra,000000002307C632
	c.lwsp	a2,000001F4
	c.beqz	a5,000000002300051C

l23000588:
	jal	ra,00000000230279FC
	lui	s2,0004200F
	sw	a0,s2,+0000025C
	addi	a2,zero,+00000021
	c.li	a1,00000000
	c.addi4spn	a0,00000064
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,00000088
	jal	ra,00000000230A3A68
	addi	s6,sp,+00000044
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,00000000230A3A68
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,00000000230A3A68
	c.li	a2,0000000A
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000CC
	jal	ra,00000000230A3A68
	lui	a0,000230AA
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,000000CC
	addi	a0,a0,-0000060C
	jal	ra,00000000230602FA
	lbu	a5,sp,+000000CC
	addi	s2,s2,+0000025C
	beq	a5,zero,00000000230006C8

l230005FC:
	addi	a2,zero,+00000020
	c.addi4spn	a1,000000CC
	c.addi4spn	a0,00000064
	jal	ra,00000000230A439C
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000CC
	jal	ra,00000000230A3A68
	lui	a0,000230AA
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,000000CC
	addi	a0,a0,-00000600
	jal	ra,00000000230602FA
	lbu	a5,sp,+000000CC
	c.beqz	a5,000000002300063A

l2300062E:
	addi	a2,zero,+00000041
	c.addi4spn	a1,000000CC
	c.addi4spn	a0,00000088
	jal	ra,00000000230A439C

l2300063A:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000CC
	jal	ra,00000000230A3A68
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000CC
	jal	ra,00000000230A3A68
	lui	a0,000230AA
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,000000CC
	addi	a0,a0,-000004EC
	jal	ra,00000000230602FA
	lbu	a5,sp,+000000CC
	c.bnez	a5,0000000023000712

l2300066C:
	c.li	s1,00000000
	c.li	s4,00000000

l23000670:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000CC
	jal	ra,00000000230A3A68
	jal	ra,000000002307BF00
	c.swsp	a0,0000000C
	c.addi4spn	a0,00000064
	c.swsp	a1,0000008C
	jal	ra,00000000230A4220
	c.swsp	a0,00000008
	c.addi4spn	a0,00000088
	jal	ra,00000000230A4220
	c.lwsp	a6,000000E4
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4
	c.mv	a7,a0
	lui	a0,000230AA
	addi	a6,sp,+00000088
	c.addi4spn	a4,00000064
	c.swsp	s1,00000004
	c.swsp	s4,00000080
	c.swsp	s6,00000000
	addi	a0,a0,-000004C0
	jal	ra,0000000023082388
	lw	a0,s2,+00000000
	c.mv	a6,s1
	c.mv	a5,s4
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000088
	c.addi4spn	a1,00000064
	jal	ra,0000000023027D50
	c.j	000000002300051C

l230006C8:
	lui	a0,000230AA
	addi	a0,a0,-000005F4
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000005DC
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000590
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-0000054C
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000530
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000514
	jal	ra,000000002308234C
	c.j	000000002300051C

l23000712:
	c.li	a2,00000009
	c.addi4spn	a1,000000CC
	c.addi4spn	a0,00000038
	jal	ra,00000000230A439C
	lui	a0,000230AA
	c.addi4spn	a1,00000038
	addi	a0,a0,-000004DC
	jal	ra,0000000023082388
	addi	a1,zero,+0000007C
	c.addi4spn	a0,00000038
	jal	ra,00000000230A3E88
	addi	s1,a0,+00000001
	beq	s1,zero,000000002300066C

l2300073C:
	lbu	a0,a0,+00000001
	c.li	s5,00000000
	c.li	s8,0000000A
	c.jal	0000000023000472
	c.mv	s4,a0
	c.addi4spn	a0,00000038
	jal	ra,00000000230A4220
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.sub	s0,a0
	addi	s7,s0,-00000001
	c.addi4spn	a5,00000110
	c.add	a5,s7
	sb	zero,a5,+00000F28
	c.addi4spn	a5,00000038
	c.add	s0,a5
	c.li	s1,00000000

l2300076A:
	c.addi	s0,FFFFFFFF
	bge	s5,s7,0000000023000670

l23000770:
	lbu	a0,s0,-00000001
	c.addi	s5,00000001
	c.jal	0000000023000472
	add	a0,a0,s3
	c.add	s1,a0
	c.slli	s1,10
	c.srli	s1,00000010
	add	s3,s3,s8
	c.j	000000002300076A
23000788                         EF B0 87 77 1C 44 2A 86         ...w.D*.
23000790 AE 86 91 CF 37 A7 0A 23 13 07 87 98 37 A5 0A 23 ....7..#....7..#
230007A0 13 05 85 BF EF 10 58 3E EF 70 42 02 85 BB 37 37 ......X>.pB...77
230007B0 0B 23 13 07 47 30 DD B7 EF B0 87 74 2A C8 03 55 .#..G0.....t*..U
230007C0 84 00 2E CA EF 70 32 22 42 46 D2 46 2A 87 37 A5 .....p2"BF.F*.7.
230007D0 0A 23 13 05 85 C2 EF 10 38 3B E8 01 EF 70 62 7E .#......8;...pb~
230007E0 3E 47 A1 47 63 15 F7 00 0D 45 EF C0 E7 48 3E 47 >G.Gc....E...H>G
230007F0 A5 47 63 15 F7 00 11 45 EF C0 07 48 15 45 EF C0 .Gc....E...H.E..
23000800 A7 47 29 BB EF B0 C7 6F 2A 86 37 A5 0A 23 AE 86 .G)....o*.7..#..
23000810 13 05 45 C5 EF 10 58 37 11 B3 EF B0 67 6E 2A 86 ..E...X7....gn*.
23000820 37 A5 0A 23 AE 86 13 05 45 C7 ED B7 EF B0 47 6D 7..#....E.....Gm
23000830 2A 86 37 A5 0A 23 AE 86 13 05 45 C9 EF 10 D8 34 *.7..#....E....4
23000840 05 45 75 BF EF B0 C7 6B 2A 86 37 A5 0A 23 AE 86 .Eu....k*.7..#..
23000850 13 05 45 C9 C1 B7 EF B0 A7 6A 2A 86 37 A5 0A 23 ..E......j*.7..#
23000860 AE 86 13 05 45 CB EF 10 38 32 EF 40 A6 19 AA 85 ....E...82.@....
23000870 37 A5 0A 23 13 05 05 CD EF 10 18 31 25 45 41 B7 7..#.......1%EA.
23000880 EF B0 07 68 18 44 2A 86 AE 86 09 E7 37 A7 0A 23 ...h.D*.....7..#
23000890 13 07 47 99 37 A5 0A 23 13 05 05 CF EF 10 D8 2E ..G.7..#........
230008A0 08 44 E3 0D 05 C6 EF 40 C6 0C 8D B9 EF B0 47 65 .D.....@......Ge
230008B0 2A 86 37 A5 0A 23 AE 86 13 05 85 D1 EF 10 D8 2C *.7..#.........,
230008C0 00 44 37 A5 0A 23 13 05 45 9F A2 85 EF B0 D7 41 .D7..#..E......A
230008D0 93 04 14 02 37 A5 0A 23 A6 85 13 05 05 A0 EF B0 ....7..#........
230008E0 B7 40 01 46 81 45 19 45 EF C0 27 34 B7 F7 00 42 .@.F.E.E..'4...B
230008F0 83 C7 87 25 E3 84 07 C2 82 C7 EF 70 22 10 81 47 ...%.......p"..G
23000900 01 48 01 47 81 46 26 86 A2 85 EF 70 62 44 37 A5 .H.G.F&....pbD7.
23000910 0A 23 EC 01 13 05 85 9E EF B0 B7 51 BE 47 81 C7 .#.........Q.G..
23000920 EF 70 82 2B E5 BE EF 70 22 2C CD BE EF B0 47 5D .p.+...p",....G]
23000930 2A 86 37 A5 0A 23 AE 86 13 05 C5 D3 EF 10 D8 24 *.7..#.........$
23000940 EF 70 82 25 13 05 80 3E EF 20 C6 37 01 45 EF 70 .p.%...>. .7.E.p
23000950 C2 1A E9 B6 EF B0 C7 5A 2A 86 37 A5 0A 23 AE 86 .......Z*.7..#..
23000960 13 05 45 D6 EF 10 58 22 08 44 B7 05 00 23 93 85 ..E...X".D...#..
23000970 65 35 EF 70 E2 67 5D B6 EF B0 87 58 2A 86 37 A5 e5.p.g]....X*.7.
23000980 0A 23 AE 86 13 05 85 D8 EF 10 18 20 08 44 05 34 .#......... .D.4
23000990 71 B6                                           q.             

l23000992:
	jal	ra,000000002307BF00
	c.mv	a2,a0
	lui	a0,000230AA
	c.mv	a3,a1
	addi	a0,a0,-00000254
	c.mv	a1,s1
	jal	ra,0000000023082388
	c.j	000000002300051C

;; event_cb_cli: 230009AA
event_cb_cli proc
	lhu	a5,a0,+00000006
	c.li	a4,00000001
	beq	a5,a4,00000000230009BC

l230009B4:
	c.li	a4,00000002
	beq	a5,a4,00000000230009CE

l230009BA:
	c.jr	ra

l230009BC:
	c.lw	a0,8(a5)
	lui	a4,0004200F
	sltu	a5,zero,a5
	sb	a5,a4,+00000258
	jal	zero,000000002300106E

l230009CE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230010F6
	c.lwsp	a2,00000020
	lui	a0,000230AA
	addi	a0,a0,-0000068C
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; get_dts_addr.part.2: 230009E6
;;   Called from:
;;     23000A80 (in aos_loop_proc)
;;     23000AB0 (in aos_loop_proc)
get_dts_addr.part.2 proc
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a5,0000000023000A2A

l230009F8:
	jal	ra,00000000230629C6

l230009FC:
	c.mv	a1,a0
	lui	a3,000230AA
	lui	a2,000230AA
	lui	a0,000230AA
	c.mv	a5,s0
	addi	a0,a0,-00000218
	addi	a4,zero,+00000262
	addi	a3,a3,-00000230
	addi	a2,a2,-00000228
	jal	ra,000000002307A208
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

l23000A2A:
	jal	ra,00000000230629A4
	c.j	00000000230009FC

;; aos_loop_proc: 23000A30
aos_loop_proc proc
	lui	a2,00042011
	lui	a0,00042010
	c.addi	sp,FFFFFFE0
	addi	a2,a2,-00000068
	addi	a1,zero,+00000200
	addi	a0,a0,+00000798
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023069FFE
	jal	ra,000000002306A3FE
	jal	ra,000000002305F136
	jal	ra,000000002307AC46
	jal	ra,000000002307C18E
	jal	ra,0000000023067B46
	lui	s2,000230C2
	addi	a2,s2,-0000034C
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002305912A
	c.mv	s0,a0
	c.bnez	a0,0000000023000A88

l23000A7C:
	addi	a0,s2,-0000034C
	c.jal	00000000230009E6
	c.li	s2,00000000
	c.bnez	a0,0000000023000A94

l23000A86:
	c.li	s1,00000000

l23000A88:
	c.mv	a1,s0
	c.mv	a0,s1
	c.mv	s2,s0
	jal	ra,00000000230667DA
	c.mv	s0,s1

l23000A94:
	jal	ra,0000000023067B46
	lui	s3,000230C2
	c.li	a1,00000000
	addi	a2,s3,+00000250
	c.mv	s1,a0
	jal	ra,000000002305912A
	c.mv	a1,a0
	c.bnez	a0,0000000023000AB8

l23000AAC:
	addi	a0,s3,+00000250
	c.jal	00000000230009E6
	c.bnez	a0,0000000023000ABE

l23000AB4:
	c.mv	a1,s2
	c.mv	s1,s0

l23000AB8:
	c.mv	a0,s1
	jal	ra,000000002306702C

l23000ABE:
	jal	ra,0000000023078C82
	jal	ra,000000002307B810
	lui	a0,000230A9
	c.li	a1,00000000
	addi	a0,a0,+000006FC
	jal	ra,000000002307AC90
	c.mv	s0,a0
	blt	a0,zero,0000000023000B2C

l23000ADA:
	lui	a0,000230A9
	addi	a0,a0,+00000708
	jal	ra,0000000023082388
	c.li	a0,00000000
	jal	ra,000000002305DBEE
	jal	ra,000000002305DC50
	lui	a2,00012345
	c.mv	a1,a0
	addi	a2,a2,+00000678
	c.mv	a0,s0
	jal	ra,000000002307B88C
	jal	ra,0000000023001118
	jal	ra,0000000023060D08
	jal	ra,000000002307820E
	jal	ra,0000000023078EC0
	jal	ra,000000002305C312
	jal	ra,000000002305AFE6
	jal	ra,000000002305935E
	jal	ra,00000000230278FA
	jal	ra,00000000230663CC
	jal	ra,0000000023066130
	jal	ra,000000002306A1B4

l23000B2C:
	lui	a1,00023000
	c.li	a2,00000000
	addi	a1,a1,+000004AE
	c.li	a0,00000002
	jal	ra,000000002307C2A4
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-00000656
	c.li	a0,00000005
	jal	ra,000000002307C2A4
	jal	ra,000000002307CA5E
	c.jal	0000000023000EF6
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002300031E
	c.jal	0000000023000F1C
	jal	ra,000000002307B9F6
	lui	a0,000230C3
	addi	a0,a0,+000001AC
	jal	ra,000000002308234C
	lui	a0,000230A9
	addi	a0,a0,+00000728
	jal	ra,000000002308234C
	lui	a0,000230A9
	addi	a0,a0,+00000758
	jal	ra,000000002308234C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023062720

;; vApplicationStackOverflowHook: 23000B9A
;;   Called from:
;;     23062D5E (in vTaskSwitchContext)
vApplicationStackOverflowHook proc
	lui	a0,000230AA
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000174
	c.swsp	ra,00000084
	jal	ra,000000002308234C

l23000BAA:
	c.j	0000000023000BAA

;; vApplicationMallocFailedHook: 23000BAC
;;   Called from:
;;     230648BE (in pvPortMalloc)
vApplicationMallocFailedHook proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023064A04
	c.mv	a1,a0
	lui	a0,000230AA
	addi	a0,a0,-000001AC
	jal	ra,0000000023082388

l23000BC2:
	c.j	0000000023000BC2

;; vApplicationIdleHook: 23000BC4
;;   Called from:
;;     230625FE (in prvIdleTask)
vApplicationIdleHook proc
	wfi
	c.jr	ra

;; vApplicationGetIdleTaskMemory: 23000BCA
;;   Called from:
;;     2306292E (in vTaskStartScheduler)
vApplicationGetIdleTaskMemory proc
	lui	a5,00042011
	addi	a5,a5,+000007B8
	c.sw	a0,0(a5)
	lui	a5,00042011
	addi	a5,a5,-00000008
	c.sw	a1,0(a5)
	addi	a5,zero,+00000060
	c.sw	a2,0(a5)
	c.jr	ra

;; vApplicationGetTimerTaskMemory: 23000BE6
;;   Called from:
;;     23063DA0 (in xTimerCreateTimerTask)
vApplicationGetTimerTaskMemory proc
	lui	a5,00042012
	addi	a5,a5,-000007E8
	c.sw	a0,0(a5)
	lui	a5,00042011
	addi	a5,a5,+00000178
	c.sw	a1,0(a5)
	addi	a5,zero,+00000190
	c.sw	a2,0(a5)
	c.jr	ra

;; user_vAssertCalled: 23000C02
;;   Called from:
;;     23048A54 (in k_queue_init)
;;     23048A80 (in k_queue_insert)
;;     23048C78 (in k_timer_init)
;;     23048CA2 (in k_timer_init)
;;     23048CB6 (in k_timer_stop)
;;     23048CD4 (in k_timer_stop)
;;     23048CE6 (in k_timer_delete)
;;     23048D04 (in k_timer_delete)
;;     23048D4A (in k_timer_start)
;;     23048D6A (in k_timer_start)
;;     23048D8C (in k_timer_start)
;;     23048DB2 (in k_timer_start)
;;     23049908 (in k_delayed_work_submit)
;;     2304998A (in work_timeout)
;;     2304B5BA (in bt_conn_process_tx)
;;     2304E864 (in bt_hci_cmd_send_sync)
;;     2304FDB6 (in hci_tx_thread)
;;     2304FE08 (in hci_tx_thread)
;;     2304FECA (in bt_recv)
;;     2304FF66 (in bt_recv)
;;     2304FF8E (in bt_recv)
;;     2304FFD2 (in bt_recv_prio)
;;     2304FFE0 (in bt_recv_prio)
;;     23050008 (in bt_recv_prio)
;;     23060D3C (in xEventGroupCreateStatic)
;;     23060D42 (in xEventGroupCreateStatic)
;;     23060D52 (in xEventGroupCreateStatic)
;;     23060DBC (in xEventGroupWaitBits)
;;     23060E08 (in xEventGroupWaitBits)
;;     23060E2C (in xEventGroupWaitBits)
;;     23060F04 (in xEventGroupSetBits)
;;     23060F0A (in xEventGroupSetBits)
;;     23060F3A (in vEventGroupDelete)
;;     23061206 (in xQueueGenericReset)
;;     2306123A (in xQueueGenericCreateStatic)
;;     23061276 (in xQueueGenericCreateStatic)
;;     23061280 (in xQueueGenericCreateStatic)
;;     23061286 (in xQueueGenericCreateStatic)
;;     230612F4 (in xQueueGenericCreate)
;;     23061330 (in xQueueCreateCountingSemaphore)
;;     2306133C (in xQueueCreateCountingSemaphore)
;;     23061468 (in xQueueGenericSend)
;;     23061474 (in xQueueGenericSend)
;;     23061490 (in xQueueGenericSend)
;;     23061496 (in xQueueGenericSend)
;;     23061516 (in xQueueGiveMutexRecursive)
;;     2306158C (in xQueueGenericSendFromISR)
;;     230615CC (in xQueueGenericSendFromISR)
;;     230615EA (in xQueueGenericSendFromISR)
;;     23061654 (in xQueueGiveFromISR)
;;     23061660 (in xQueueGiveFromISR)
;;     23061666 (in xQueueGiveFromISR)
;;     230617A8 (in xQueueReceive)
;;     230617B4 (in xQueueReceive)
;;     230617BA (in xQueueReceive)
;;     230618E8 (in xQueueSemaphoreTake)
;;     230618EE (in xQueueSemaphoreTake)
;;     23061914 (in xQueueSemaphoreTake)
;;     2306194A (in xQueueSemaphoreTake)
;;     230619A2 (in xQueueTakeMutexRecursive)
;;     230619C6 (in uxQueueMessagesWaiting)
;;     23061A0C (in vQueueDelete)
;;     23061B0C (in prvInitialiseNewStreamBuffer)
;;     23061BB4 (in prvWriteBytesToBuffer)
;;     23061BBA (in prvWriteBytesToBuffer)
;;     23061BDE (in prvWriteBytesToBuffer)
;;     23061C7C (in prvReadBytesFromBuffer)
;;     23061C8A (in prvReadBytesFromBuffer)
;;     23061C90 (in prvReadBytesFromBuffer)
;;     23061CE6 (in xStreamBufferGenericCreate)
;;     23061CEE (in xStreamBufferGenericCreate)
;;     23061D02 (in xStreamBufferGenericCreate)
;;     23061D88 (in xStreamBufferGenericCreateStatic)
;;     23061D98 (in xStreamBufferGenericCreateStatic)
;;     23061DA4 (in xStreamBufferGenericCreateStatic)
;;     23061DAE (in xStreamBufferGenericCreateStatic)
;;     23061DB8 (in xStreamBufferGenericCreateStatic)
;;     23061DDE (in vStreamBufferDelete)
;;     23061E22 (in xStreamBufferSpacesAvailable)
;;     23061E86 (in xStreamBufferSend)
;;     23061F4A (in xStreamBufferSend)
;;     23061F52 (in xStreamBufferSend)
;;     23061F58 (in xStreamBufferSend)
;;     2306200A (in xStreamBufferSendFromISR)
;;     23062010 (in xStreamBufferSendFromISR)
;;     230620BC (in xStreamBufferReceive)
;;     230620C2 (in xStreamBufferReceive)
;;     230620F4 (in xStreamBufferReceive)
;;     23062198 (in xStreamBufferReceiveFromISR)
;;     2306219E (in xStreamBufferReceiveFromISR)
;;     230621DE (in xStreamBufferIsEmpty)
;;     230622EE (in prvDeleteTCB)
;;     23062654 (in xTaskCreateStatic)
;;     23062670 (in xTaskCreateStatic)
;;     23062680 (in xTaskCreateStatic)
;;     23062690 (in xTaskCreateStatic)
;;     23062848 (in vTaskDelete)
;;     230628FE (in eTaskGetState)
;;     2306298A (in vTaskStartScheduler)
;;     23062B6A (in xTaskIncrementTick)
;;     23062CB0 (in xTaskResumeAll)
;;     23062CFE (in vTaskDelay)
;;     23062DC4 (in vTaskSwitchContext)
;;     23062DF8 (in vTaskPlaceOnEventList)
;;     23062E44 (in vTaskPlaceOnUnorderedEventList)
;;     23062E4E (in vTaskPlaceOnUnorderedEventList)
;;     23062E88 (in vTaskPlaceOnEventListRestricted)
;;     23062F22 (in xTaskRemoveFromEventList)
;;     23062FAC (in vTaskRemoveFromUnorderedEventList)
;;     23062FC2 (in vTaskRemoveFromUnorderedEventList)
;;     23063024 (in vTaskSetTimeOutState)
;;     230630E4 (in xTaskCheckForTimeOut)
;;     230630EC (in xTaskCheckForTimeOut)
;;     23063492 (in xTaskPriorityDisinherit)
;;     230634B4 (in xTaskPriorityDisinherit)
;;     23063592 (in vTaskPriorityDisinheritAfterTimeout)
;;     2306361A (in vTaskPriorityDisinheritAfterTimeout)
;;     230639A2 (in xTaskGenericNotify)
;;     23063A1C (in xTaskGenericNotify)
;;     23063A68 (in xTaskGenericNotify)
;;     23063AB0 (in xTaskGenericNotifyFromISR)
;;     23063ACC (in xTaskGenericNotifyFromISR)
;;     23063B28 (in xTaskGenericNotifyFromISR)
;;     23063BC0 (in vTaskNotifyGiveFromISR)
;;     23063C44 (in vTaskNotifyGiveFromISR)
;;     23063DD4 (in xTimerCreateTimerTask)
;;     23063E4A (in xTimerCreate)
;;     23063E78 (in xTimerCreateStatic)
;;     23063EC6 (in xTimerCreateStatic)
;;     23063ECC (in xTimerCreateStatic)
;;     23063F42 (in xTimerGenericCommand)
;;     23063FEA (in prvSwitchTimerLists)
;;     230641DC (in prvTimerTask)
;;     23064200 (in pvTimerGetTimerID)
;;     2306428A (in xPortStartScheduler)
;;     2306496C (in pvPortMalloc)
;;     23064998 (in vPortFree)
;;     230649B8 (in vPortFree)
;;     23064A32 (in vPortDefineHeapRegions)
;;     23064AE4 (in vPortDefineHeapRegions)
;;     23064AEE (in vPortDefineHeapRegions)
;;     23064B0C (in vPortDefineHeapRegions)
;;     230776BC (in iperf_server_udp)
user_vAssertCalled proc
	c.addi	sp,FFFFFFF0
	c.swsp	zero,00000084
	csrrci	zero,mstatus,00000008
	c.li	a5,00000001

l23000C0C:
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023000C16

l23000C12:
	c.addi	sp,00000010
	c.jr	ra

l23000C16:
	c.nop
	c.j	0000000023000C0C

;; bfl_main: 23000C1A
;;   Called from:
;;     230000F4 (in bl602_start)
bfl_main proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	jal	ra,000000002306511E
	lui	a5,000001E8
	addi	a5,a5,+00000480
	addi	a4,zero,+000000FF
	addi	a3,zero,+000000FF
	c.li	a2,00000007
	c.li	a1,00000010
	c.li	a0,00000000
	jal	ra,0000000023064C10
	lui	a0,000230A9
	addi	a0,a0,+00000788
	jal	ra,000000002308234C
	jal	ra,000000002306513C
	lui	a0,000230A9
	addi	a0,a0,+000007A4
	jal	ra,000000002308234C
	c.addi4spn	a0,00000004
	jal	ra,0000000023065012
	c.bnez	a0,0000000023000C6E

l23000C68:
	c.lwsp	tp,00000044
	jal	ra,000000002308234C

l23000C6E:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	s1,000230B4
	addi	a0,s1,+00000414
	jal	ra,000000002308234C
	lui	a0,000230A9
	addi	a0,a0,+000007BC
	jal	ra,000000002308234C
	c.addi4spn	a0,00000008
	jal	ra,0000000023064F68
	c.addi4spn	a0,00000008
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	s3,000230A9
	addi	a0,s3,+000007D4
	jal	ra,000000002308234C
	lui	s2,000230A9
	addi	a0,s2,+000007E4
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	addi	a0,s3,+000007D4
	jal	ra,000000002308234C
	addi	a0,s2,+000007E4
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007F0
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007E0
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007C8
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007B8
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007B0
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-000007A0
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000794
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000784
	jal	ra,000000002308234C
	addi	a0,s0,-00000700
	jal	ra,000000002308234C
	addi	a0,s1,+00000414
	jal	ra,000000002308234C
	lui	a0,0004200D
	addi	a0,a0,-00000124
	jal	ra,0000000023064A0E
	lui	a4,00042049
	c.lui	a3,00001000
	lui	a2,00042028
	c.lui	a1,00017000
	lui	a0,000230AA
	addi	a4,a4,+000007A0
	addi	a3,a3,-000007A0
	addi	a2,a2,+000000F3
	addi	a1,a1,+0000070D
	addi	a0,a0,-00000778
	jal	ra,0000000023082388
	jal	ra,000000002305AA80
	jal	ra,000000002306595A
	jal	ra,0000000023065C5A
	jal	ra,0000000023065CA0
	jal	ra,0000000023065422
	jal	ra,0000000023067A2C
	c.li	a0,00000000
	jal	ra,0000000023067B50
	lui	a0,000230AA
	addi	a0,a0,-00000764
	jal	ra,000000002308234C
	lui	a0,000230AA
	addi	a0,a0,-00000738
	jal	ra,000000002308234C
	lui	a6,00042010
	lui	a5,0004200F
	lui	a1,000230AA
	lui	a0,00023001
	addi	a6,a6,+00000738
	addi	a5,a5,+00000738
	c.li	a4,0000000F
	c.li	a3,00000000
	addi	a2,zero,+00000400
	addi	a1,a1,-00000710
	addi	a0,a0,-000005D0
	jal	ra,0000000023062604
	lui	a0,000230AA
	addi	a0,a0,-00000704
	jal	ra,000000002308234C
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002306BBC0
	lui	a0,000230AA
	addi	a0,a0,-000006E4
	jal	ra,000000002308234C
	jal	ra,0000000023062920
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

;; __usr_at_cmd_demo: 23000E36
__usr_at_cmd_demo proc
	c.addi16sp	FFFFFF90
	c.addi4spn	a5,0000001C
	c.swsp	s1,000000B0
	addi	a2,zero,+00000044
	c.mv	s1,a0
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	s2,00000030
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	jal	ra,00000000230A3A68
	c.li	a4,00000003
	c.lui	a5,00001000
	sb	a4,sp,+00000004
	addi	a4,a5,-000003FC
	addi	a5,a5,-000003C0
	c.swsp	a5,0000000C
	c.lw	s1,0(a5)
	addi	s2,sp,+00000020
	c.swsp	a0,00000004
	c.swsp	a4,00000084
	sb	zero,sp,+00000010
	c.swsp	s2,00000088
	lbu	a4,a5,+00000000
	addi	a3,zero,+0000003F
	bne	a4,a3,0000000023000EAE

l23000E7E:
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230AA
	addi	a0,a0,-00000134
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	s0,00000000

l23000EA0:
	c.mv	a0,s0
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.addi16sp	00000070
	c.jr	ra

l23000EAE:
	addi	a3,zero,+0000003D
	c.li	s0,00000000
	bne	a4,a3,0000000023000EA0

l23000EB8:
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.mv	a3,sp
	c.li	a2,00000002
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002307F78E
	c.mv	s0,a0
	c.bnez	a0,0000000023000EF2

l23000ECC:
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lwsp	t3,00000064
	lui	a0,000230AA
	c.mv	a2,s2
	addi	a0,a0,-0000011C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.j	0000000023000EA0

l23000EF2:
	c.li	s0,00000004
	c.j	0000000023000EA0

;; usr_at_cmd_register: 23000EF6
;;   Called from:
;;     23000B50 (in aos_loop_proc)
usr_at_cmd_register proc
	lui	a0,000230AA
	c.li	a1,00000001
	addi	a0,a0,-00000100
	jal	zero,000000002307E450

;; bt_enable_cb: 23000F04
bt_enable_cb proc
	c.bnez	a0,0000000023000F1A

l23000F06:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023056D38
	jal	ra,000000002303AF78
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023056F2E

l23000F1A:
	c.jr	ra

;; ble_stack_start: 23000F1C
;;   Called from:
;;     2300031A (in cmd_stack_ble)
;;     23000B5E (in aos_loop_proc)
ble_stack_start proc
	c.addi	sp,FFFFFFF0
	c.li	a0,0000001F
	c.swsp	ra,00000084
	jal	ra,000000002302912A
	jal	ra,000000002304A1B2
	c.lwsp	a2,00000020
	lui	a0,00023001
	addi	a0,a0,-000000FC
	c.addi	sp,00000010
	jal	zero,000000002305021A

;; blesync_complete_cb: 23000F3A
blesync_complete_cb proc
	c.jr	ra

;; app_delayed_action_bleadv: 23000F3C
app_delayed_action_bleadv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230AA
	addi	a0,s0,-000000B4
	c.swsp	ra,00000084
	jal	ra,00000000230A4220
	c.mv	a1,a0
	addi	a0,s0,-000000B4
	jal	ra,000000002305EEAC
	lui	s0,000230AA
	addi	a0,s0,-000000A8
	jal	ra,00000000230A4220
	c.mv	a1,a0
	addi	a0,s0,-000000A8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305EEAC

;; wifiprov_api_state_get: 23000F74
wifiprov_api_state_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230AA
	addi	a0,a0,-00000040
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	00000000230011BE

;; wifiprov_wifi_scan: 23000F92
wifiprov_wifi_scan proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230AA
	addi	a0,a0,+0000003C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001188

;; wifiprov_disc_from_ap_ind: 23000FB0
wifiprov_disc_from_ap_ind proc
	lui	a0,000230AA
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000010
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001152

;; wifiprov_connect_ap_ind: 23000FC6
wifiprov_connect_ap_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023025A3A
	lui	a0,000230AA
	addi	a0,a0,-00000018
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	000000002300111C

;; blsync_disconnected: 23000FE8
blsync_disconnected proc
	lui	a0,000230AA
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000005C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000008
	c.addi	sp,00000010
	jal	zero,000000002307CC2A

;; blsync_connected: 23001006
blsync_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304AF52
	addi	a1,a0,+00000001
	c.li	a2,00000006
	c.li	a0,00000007
	jal	ra,000000002307CC2A
	c.lwsp	a2,00000020
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a1,a1,-000000C8
	addi	a0,a0,-000004B4
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; app_delayed_action_bleadvstop: 23001032
app_delayed_action_bleadvstop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,000230AA
	addi	a0,s0,-00000088
	c.swsp	ra,00000084
	jal	ra,00000000230A4220
	c.mv	a1,a0
	addi	a0,s0,-00000088
	lui	s0,0004200F
	jal	ra,000000002305EEAC
	addi	s0,s0,+00000260
	c.lw	s0,0(a0)
	jal	ra,000000002305BB0E
	c.lw	s0,0(a0)
	jal	ra,0000000023064972
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; blsync_ble_start: 2300106E
;;   Called from:
;;     230009CA (in event_cb_cli)
blsync_ble_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a5,a5,+00000264
	lbu	a4,a5,+00000000
	c.bnez	a4,0000000023001094

l23001082:
	lui	a0,0004200D
	c.li	a4,00000001
	addi	a0,a0,-000000F4
	sb	a4,a5,+00000000
	jal	ra,000000002304A716

l23001094:
	lui	s0,0004200F
	addi	s0,s0,+00000260
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230010B2

l230010A0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,000230AA
	addi	a0,a0,-00000078
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230010B2:
	c.lui	a0,00002000
	addi	a0,a0,-000006F8
	jal	ra,000000002306488A
	c.sw	s0,0(a0)
	c.mv	a3,a0
	c.beqz	a0,00000000230010EE

l230010C2:
	lui	a2,00023001
	lui	a1,0004200D
	addi	a2,a2,-000000C6
	addi	a1,a1,-00000104
	jal	ra,000000002305BA14
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-000000C4
	addi	a0,zero,+000001F4
	c.addi	sp,00000010
	jal	zero,000000002307B972

l230010EE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; blsync_ble_stop: 230010F6
;;   Called from:
;;     230009D2 (in event_cb_cli)
blsync_ble_stop proc
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,+00000032
	addi	a0,zero,+00000064
	jal	zero,000000002307B972

;; cmd_coex_dump: 23001108
cmd_coex_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	0000000023001238
	c.jal	0000000023001240
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023028E7A

;; codex_debug_cli_init: 23001118
;;   Called from:
;;     23000B00 (in aos_loop_proc)
codex_debug_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; wifi_prov_api_event_trigger_connect: 2300111C
;;   Called from:
;;     23000FE6 (in wifiprov_connect_ap_ind)
wifi_prov_api_event_trigger_connect proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000010
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002307C270
	blt	a0,zero,0000000023001142

l2300112E:
	lui	a0,000230AA
	addi	a0,a0,+00000078
	jal	ra,000000002308234C
	c.li	a0,00000000

l2300113C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23001142:
	lui	a0,000230AA
	addi	a0,a0,+000000A0
	jal	ra,000000002308234C
	c.li	a0,FFFFFFFF
	c.j	000000002300113C

;; wifi_prov_api_event_trigger_disconnect: 23001152
;;   Called from:
;;     23000FC4 (in wifiprov_disc_from_ap_ind)
wifi_prov_api_event_trigger_disconnect proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000011
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002307C270
	blt	a0,zero,0000000023001178

l23001164:
	lui	a0,000230AA
	addi	a0,a0,+000000CC
	jal	ra,000000002308234C
	c.li	a0,00000000

l23001172:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23001178:
	lui	a0,000230AA
	addi	a0,a0,+000000F8
	jal	ra,000000002308234C
	c.li	a0,FFFFFFFF
	c.j	0000000023001172

;; wifi_prov_api_event_trigger_scan: 23001188
;;   Called from:
;;     23000FAE (in wifiprov_wifi_scan)
wifi_prov_api_event_trigger_scan proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000012
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002307C270
	blt	a0,zero,00000000230011AE

l2300119A:
	lui	a0,000230AA
	addi	a0,a0,+00000128
	jal	ra,000000002308234C
	c.li	a0,00000000

l230011A8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230011AE:
	lui	a0,000230AA
	addi	a0,a0,+00000150
	jal	ra,000000002308234C
	c.li	a0,FFFFFFFF
	c.j	00000000230011A8

;; wifi_prov_api_event_state_get: 230011BE
;;   Called from:
;;     23000F90 (in wifiprov_api_state_get)
wifi_prov_api_event_state_get proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000013
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002307C270
	blt	a0,zero,00000000230011E4

l230011D0:
	lui	a0,000230AA
	addi	a0,a0,+00000128
	jal	ra,000000002308234C
	c.li	a0,00000000

l230011DE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230011E4:
	lui	a0,000230AA
	addi	a0,a0,+00000150
	jal	ra,000000002308234C
	c.li	a0,FFFFFFFF
	c.j	00000000230011DE

;; assert_rec: 230011F4
;;   Called from:
;;     23007250 (in hal_machw_idle_req)
;;     2300792E (in hal_machw_gen_handler)
;;     23007984 (in hal_machw_gen_handler)
;;     230079A2 (in hal_machw_gen_handler)
;;     230079C8 (in hal_machw_gen_handler)
;;     23007D82 (in hal_machw_rx_duration)
;;     2300A1C4 (in rxl_mpdu_transfer)
;;     2300A286 (in rxl_timer_int_handler)
;;     2300A370 (in rxl_mpdu_free)
;;     2300A440 (in rxl_cntrl_evt)
;;     2300BDFC (in txl_payload_handle_backup)
;;     2300C5DA (in txl_frame_get)
;;     2301063A (in rxu_cntrl_frame_handle)
assert_rec proc
	lui	a5,0004200F
	lbu	a4,a5,+00000324
	c.li	a5,00000001
	bne	a4,a5,0000000023001232

l23001202:
	csrrci	zero,mstatus,00000008
	lui	a5,00042021
	lw	a5,a5,+000007C8
	blt	a5,zero,000000002300122C

l23001212:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230076F4
	lui	a0,00080000
	jal	ra,00000000230146D6
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2300122C:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l23001232:
	c.jr	ra

;; assert_err: 23001234
;;   Called from:
;;     230014AA (in ipc_emb_notify)
;;     23001554 (in ipc_emb_init)
;;     230018AE (in ipc_emb_msg_evt)
;;     23001908 (in ipc_emb_msg_evt)
;;     23001918 (in ipc_emb_msg_evt)
;;     2300198E (in mdm_txcbwmax_setf)
;;     23001F78 (in phy_hw_set_channel)
;;     23001F94 (in phy_hw_set_channel)
;;     230021D4 (in phy_init)
;;     2300221A (in phy_init)
;;     230022DC (in phy_init)
;;     23002322 (in phy_init)
;;     230070A4 (in intc_spurious)
;;     23007198 (in mac_irq)
;;     230071E8 (in blmac_soft_reset_getf)
;;     23007360 (in hal_machw_init)
;;     2300741A (in hal_machw_init)
;;     230074F2 (in hal_machw_init)
;;     2300754C (in hal_machw_init)
;;     230075A2 (in hal_machw_init)
;;     230075F4 (in hal_machw_init)
;;     230076BC (in hal_machw_init)
;;     230078BA (in hal_machw_sleep_check)
;;     23007C86 (in blmac_encr_cntrl_pack.constprop.8)
;;     23007CA8 (in blmac_encr_cntrl_pack.constprop.8)
;;     23007D2C (in hal_machw_rx_duration)
;;     23007F58 (in mm_tbtt_evt)
;;     2300812E (in mm_sec_machwkey_wr)
;;     23008186 (in mm_sec_machwkey_wr)
;;     230083C0 (in mm_back_to_host_idle)
;;     23009138 (in mm_bcn_transmit)
;;     23009526 (in mm_bcn_transmitted)
;;     2300974A (in mm_timer_schedule)
;;     2300AA82 (in rxl_hd_append)
;;     2300AAFA (in rxl_pd_append)
;;     2300B740 (in txl_cfm_evt)
;;     2300B8C8 (in blmac_abs_timer_set)
;;     2300BA68 (in txl_cntrl_halt_ac)
;;     2300C10C (in txl_transmit_trigger)
;;     2300C6D8 (in txl_frame_push)
;;     2300C740 (in txl_frame_push_force)
;;     2300CBC8 (in txl_frame_send_eapol_frame)
;;     2300D994 (in me_mic_end)
;;     2300DC32 (in me_init_bcmc_rate)
;;     2300E03C (in me_beacon_check)
;;     2300E10C (in me_sta_bw_nss_max_upd)
;;     2300E876 (in rc_update_counters)
;;     2300E8D8 (in rc_update_counters)
;;     2300EA2E (in rc_update_bw_nss_max)
;;     2300EA62 (in rc_update_bw_nss_max)
;;     2300EA86 (in rc_update_bw_nss_max)
;;     2300F08C (in rc_init)
;;     2300F12A (in rc_init)
;;     2300F17A (in rc_init)
;;     2300F1B0 (in rc_init)
;;     2300F21E (in rc_init)
;;     2300F262 (in rc_init)
;;     2300F28A (in rc_init)
;;     2300F2F2 (in rc_init)
;;     2300F328 (in rc_init)
;;     2300F35C (in rc_init)
;;     2300F40A (in rc_init)
;;     2300F656 (in rc_check)
;;     23011BF4 (in sm_send_next_bss_param)
;;     230130D8 (in txu_cntrl_cfm)
;;     2301347A (in apm_send_next_bss_param)
;;     230144B4 (in co_list_push_back)
;;     230144F6 (in co_list_push_front)
;;     2301453C (in co_list_extract)
;;     23014612 (in co_list_remove)
;;     23014632 (in co_list_remove)
;;     23014660 (in co_list_remove)
;;     230147D4 (in ke_evt_schedule)
;;     2301486A (in ke_malloc)
;;     23014896 (in ke_malloc)
;;     23014908 (in ke_free)
;;     23014970 (in ke_free)
;;     230149D8 (in ke_msg_alloc)
;;     23014A3A (in ke_msg_send)
;;     23014ACC (in ke_task_local)
;;     23014B28 (in ke_handler_search)
;;     23014B70 (in ke_state_set)
;;     23014B90 (in ke_state_set)
;;     23014BC0 (in ke_state_set)
;;     23014BE4 (in ke_state_set)
;;     23014C68 (in ke_state_get)
;;     23014C88 (in ke_state_get)
;;     23014CB8 (in ke_state_get)
;;     23014D24 (in ke_task_schedule)
;;     23014D44 (in ke_task_schedule)
;;     23014D74 (in ke_task_schedule)
;;     23014D90 (in ke_task_schedule)
;;     23014E18 (in ke_task_schedule)
;;     23014EEC (in ke_timer_set)
;;     23014F54 (in ke_timer_set)
;;     2301504E (in ke_timer_clear)
;;     23015C50 (in add_key_to_mac)
;;     2301987A (in blmac_pwr_mgt_setf)
;;     23019916 (in chan_get_next_chan)
;;     230199A2 (in chan_get_next_chan)
;;     23019AAC (in chan_tbtt_insert)
;;     23019B12 (in chan_tbtt_insert)
;;     23019CCA (in chan_conn_less_delay_evt)
;;     23019D10 (in chan_conn_less_delay_evt)
;;     2301A392 (in chan_tx_cfm)
;;     2301A612 (in chan_scan_req)
;;     2301A8F4 (in chan_ctxt_del)
;;     2301A91C (in chan_ctxt_del)
;;     2301AB38 (in chan_bcn_detect_start)
;;     2301AD2E (in chan_ctxt_link)
;;     2301AD5C (in chan_ctxt_link)
;;     2301AE36 (in chan_ctxt_unlink)
;;     2301B206 (in mm_cfg_rssi_req_handler)
;;     2301B27E (in mm_set_ps_options_req_handler)
;;     2301B3C2 (in mm_key_del_req_handler)
;;     2301B41E (in mm_key_add_req_handler)
;;     2301B442 (in mm_key_add_req_handler)
;;     2301B464 (in mm_key_add_req_handler)
;;     2301B56C (in mm_set_idle_req_handler)
;;     2301B644 (in mm_start_req_handler)
;;     2301B752 (in mm_force_idle_req_handler)
;;     2301B7BA (in mm_hw_config_handler)
;;     2301B7FA (in mm_hw_config_handler)
;;     2301B952 (in mm_hw_config_handler)
;;     2301BB36 (in mm_hw_config_handler)
;;     2301BE48 (in scan_start_req_handler)
;;     2301BEAE (in mm_scan_channel_end_ind_handler)
;;     2301BF70 (in mm_scan_channel_start_ind_handler)
;;     2301CE9E (in me_extract_rate_set)
;;     2301D898 (in me_rc_set_rate_req_handler)
;;     2301DC00 (in mm_set_ps_mode_cfm_handler)
;;     2301DC5A (in mm_set_idle_cfm_handler)
;;     2301E21E (in scanu_join_req_handler)
;;     2301E2DA (in me_set_ps_disable_cfm_handler)
;;     2301E31A (in mm_bss_param_setting_handler)
;;     2301E37E (in scanu_start_cfm_handler)
;;     2301E438 (in scanu_join_cfm_handler)
;;     2301E5E4 (in sm_connect_req_handler)
;;     2301E602 (in sm_connect_req_handler)
;;     2301E6C4 (in sm_connect_req_handler)
;;     2301E6EE (in sm_connect_req_handler)
;;     2301E8D4 (in me_set_active_cfm_handler)
;;     2301E95E (in mm_sta_add_cfm_handler)
;;     2301ED70 (in me_set_ps_disable_cfm_handler)
;;     2301EDB0 (in mm_bss_param_setting_handler)
;;     2301EDE4 (in mm_bcn_change_cfm_handler)
;;     2301EF1A (in apm_start_req_handler)
;;     2301F216 (in me_set_active_cfm_handler)
;;     2301F244 (in me_set_active_cfm_handler)
;;     2301F47A (in dbg_test_print)
assert_err proc
	c.j	0000000023001234

;; assert_warn: 23001236
;;   Called from:
;;     2300DBA4 (in me_legacy_rate_bitfield_build)
;;     2300FABA (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2300FF2C (in rxu_mgt_frame_check)
;;     230124FC (in sm_auth_handler)
;;     230137D8 (in apm_tx_int_ps_get_postpone)
;;     23019F66 (in chan_cde_evt)
;;     2301C3B4 (in bam_send_air_action_frame)
assert_warn proc
	c.jr	ra

;; coex_dump_pta: 23001238
;;   Called from:
;;     2300110C (in cmd_coex_dump)
coex_dump_pta proc
	lui	a5,00044920
	c.lw	a5,4(a5)
	c.jr	ra

;; coex_dump_wifi: 23001240
;;   Called from:
;;     2300110E (in cmd_coex_dump)
coex_dump_wifi proc
	lui	a5,00044B00
	lw	a4,a5,+00000400
	lw	a4,a5,+00000404
	lw	a5,a5,+00000408
	c.jr	ra

;; coex_wifi_rf_forece_enable: 23001252
;;   Called from:
;;     23026F92 (in cmd_wifi_coex_rf_force_off)
;;     23026F98 (in cmd_wifi_coex_rf_force_on)
coex_wifi_rf_forece_enable proc
	c.li	a1,00000000
	c.beqz	a0,0000000023001258

l23001256:
	c.li	a0,00000001

l23001258:
	jal	zero,00000000230038B6

;; coex_wifi_pti_forece_enable: 2300125C
;;   Called from:
;;     23026F86 (in cmd_wifi_coex_pti_force_off)
;;     23026F8C (in cmd_wifi_coex_pti_force_on)
coex_wifi_pti_forece_enable proc
	lui	a5,00044B00
	lw	a4,a5,+00000400
	c.beqz	a0,000000002300129C

l23001266:
	lui	a3,000F0000
	c.or	a4,a3
	sw	a4,a5,+00000400
	lw	a4,a5,+00000400
	ori	a4,a4,+00000010

l23001278:
	sw	a4,a5,+00000400
	lw	a2,a5,+00000400
	lui	a4,000FC000
	addi	a3,a4,-00000001
	slli	a4,a2,00000004
	bge	a4,zero,00000000230012A0

l23001290:
	lw	a4,a5,+00000400
	c.and	a4,a3

l23001296:
	sw	a4,a5,+00000400
	c.jr	ra

l2300129C:
	c.andi	a4,FFFFFFEF
	c.j	0000000023001278

l230012A0:
	lw	a4,a5,+00000400
	c.and	a4,a3
	lui	a3,00004000
	c.or	a4,a3
	c.j	0000000023001296

;; coex_wifi_pta_forece_enable: 230012AE
;;   Called from:
;;     23001476 (in wifi_main)
;;     23026F7A (in cmd_wifi_coex_pta_force_off)
;;     23026F80 (in cmd_wifi_coex_pta_force_on)
coex_wifi_pta_forece_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	lw	a5,s1,-0000050C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,a0,00000000230012F8

l230012C8:
	lui	s0,0004200F
	addi	s1,s1,-0000050C
	c.mv	s2,a0
	addi	s0,s0,+00000274
	c.bnez	a5,0000000023001308

l230012D8:
	jal	ra,00000000230629A4
	lui	a4,0004200F
	addi	a4,a4,+0000026C
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)

l230012EE:
	sw	s2,s1,+00000000
	jal	ra,00000000230629A4
	c.sw	s0,0(a0)

l230012F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23001308:
	c.li	a4,00000001
	bne	a5,a4,00000000230012EE

l2300130E:
	jal	ra,00000000230629A4
	lui	a4,0004200F
	addi	a4,a4,+00000270
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300A0D0
	c.mv	s4,a0
	csrrsi	zero,mstatus,00000008
	addi	s3,zero,+000003E8
	bgeu	s3,a0,00000000230012EE

l2300133A:
	auipc	ra,0001F00B
	jalr	ra,ra,+000001AE
	srl	a0,s4,s3
	jal	ra,0000000023062CC4
	auipc	ra,0001F00B
	jalr	ra,ra,+000001A8
	c.j	00000000230012EE

;; wifi_main: 23001354
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
	jal	ra,0000000023003140
	lw	a5,s0,+00000400
	lui	s2,00044B00
	lui	s3,00042021
	ori	a5,a5,+00000001
	sw	a5,s0,+00000400
	jal	ra,0000000023002672
	jal	ra,0000000023007070
	jal	ra,00000000230070BE
	c.jal	00000000230014FA
	jal	ra,0000000023009FDC
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
	lui	s4,0004200F
	andi	a5,a5,-00000021
	sw	a5,s0,+00000400
	lui	a5,00050100
	c.addi	a5,0000001F
	c.sw	a4,4(a5)
	lui	s0,00044900
	lui	s5,00040007
	lui	s1,00040000
	lui	s6,000005C2

l230013E6:
	lw	a5,s2,+00000120
	slli	a4,a5,0000000C
	lw	a5,s0,+00000084
	bge	a4,zero,000000002300147A

l230013F6:
	ori	a5,a5,+00000001

l230013FA:
	sw	a5,s0,+00000084
	addi	a5,s3,+000007C8
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023001408

l23001406:
	c.jal	00000000230014DA

l23001408:
	addi	a4,s4,+00000268
	c.lw	a4,0(a5)
	addi	a3,a5,+00000001
	c.sw	a4,0(a3)
	c.andi	a5,0000000F
	c.bnez	a5,000000002300146A

l23001418:
	lw	a5,s5,+00000018
	c.srli	a5,00000018
	andi	a4,a5,+00000007
	c.beqz	a4,000000002300144C

l23001424:
	c.li	a3,00000003
	beq	a4,a3,0000000023001434

l2300142A:
	c.lw	s1,20(a3)
	lui	a2,00000040
	c.or	a3,a2
	c.sw	s1,20(a3)

l23001434:
	c.beqz	a4,000000002300144C

l23001436:
	c.li	a3,00000003
	beq	a4,a3,000000002300144C

l2300143C:
	lui	a4,00040002
	c.lw	a4,64(a3)
	c.andi	a3,FFFFFFFC
	c.sw	a4,64(a3)
	c.lw	a4,68(a3)
	c.andi	a3,FFFFFFFE
	c.sw	a4,68(a3)

l2300144C:
	c.andi	a5,00000004
	c.beqz	a5,000000002300146A

l23001450:
	c.lw	s1,20(a5)
	lui	a4,00040010
	or	a5,a5,s6
	c.sw	s1,20(a5)
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sw	a5,a4,+0000090C

l2300146A:
	jal	ra,0000000023014768
	jal	ra,000000002300A06E
	c.beqz	a0,000000002300147E

l23001474:
	c.li	a0,00000000

l23001476:
	c.jal	00000000230012AE
	c.j	00000000230013E6

l2300147A:
	c.andi	a5,FFFFFFFE
	c.j	00000000230013FA

l2300147E:
	c.li	a0,00000001
	c.j	0000000023001476

;; ipc_emb_notify: 23001482
;;   Called from:
;;     230071A4 (in mac_irq)
;;     230071BE (in bl_irq_handler)
ipc_emb_notify proc
	lui	a5,0004200F
	lw	a4,a5,+00000278
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	s0,a5,+00000278
	c.bnez	a4,00000000230014AC

l23001496:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000093
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000214
	c.jal	0000000023001234

l230014AC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.lw	s0,0(a0)
	c.beqz	a5,00000000230014CE

l230014B8:
	c.addi4spn	a1,0000000C
	jal	ra,0000000023063B8A
	c.lwsp	a2,000000E4
	c.beqz	a5,00000000230014C6

l230014C2:
	jal	ra,0000000023062D06

l230014C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230014CE:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,0000000023063940
	c.j	00000000230014C6

;; ipc_emb_wait: 230014DA
;;   Called from:
;;     23001406 (in wifi_main)
ipc_emb_wait proc
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230637BA
	lui	a4,0004201F
	lw	a5,a4,-000006B4
	c.lwsp	a2,00000020
	c.addi	a5,00000001
	sw	a5,a4,+0000094C
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_init: 230014FA
;;   Called from:
;;     23001396 (in wifi_main)
ipc_emb_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023063372
	lui	a5,0004200F
	lui	s0,0004201F
	sw	a0,a5,+00000278
	addi	a2,zero,+00000020
	addi	a0,s0,-000006B0
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	lui	a5,00042040
	addi	a5,a5,+00000204
	addi	s0,s0,-000006B0
	c.sw	s0,28(a5)
	lui	a5,00044800
	lw	a4,a5,+00000140
	lui	a5,00049504
	addi	a5,a5,+00000332
	beq	a4,a5,0000000023001556

l23001540:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+000000BB
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000190
	c.jal	0000000023001234

l23001556:
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

;; ipc_emb_tx_irq: 23001632
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
	c.beqz	s0,000000002300165C

l2300164C:
	srli	a0,s0,00000001
	jal	ra,00000000230146D6
	sw	s0,s1,+00000110
	sw	s0,s1,+00000108

l2300165C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_tx_evt: 23001666
ipc_emb_tx_evt proc
	lui	a5,000230AA
	c.slli	a0,02
	addi	a5,a5,+0000017C
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
	lui	s8,0004201F
	c.swsp	s9,00000080
	jal	ra,00000000230146EE
	addi	a5,s8,-000006B0
	c.lw	a5,24(s0)
	lw	s4,a5,+0000001C
	addi	a5,zero,+00000330
	c.andi	s0,00000003
	add	s0,s0,a5
	c.lui	s1,00001000
	addi	s1,s1,-00000800
	lui	s3,00000441
	addi	s8,s8,-000006B0
	c.li	s5,FFFFFFFF
	and	s1,s2,s1
	lui	s6,00042021
	addi	s3,s3,-00000800
	lui	s7,00044800
	c.add	s0,s4

l230016CE:
	c.lw	s0,0(a5)
	beq	a5,s5,00000000230016FA

l230016D4:
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

l230016FA:
	c.bnez	s1,0000000023001726

l230016FC:
	addi	a5,s6,+000007C8
	c.lw	a5,0(a5)
	and	a5,a5,s3
	c.beqz	a5,0000000023001726

l23001708:
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
	jal	zero,00000000230146D6

l23001726:
	addi	a5,zero,+00000100
	addi	s9,s0,+00000054
	sw	a5,s7,+00000108
	addi	a2,zero,+000002CC
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,00000000230A3A68
	addi	a5,s0,+0000010C
	sw	a5,s0,+000000C4
	addi	a5,s0,+000000C4
	sw	a5,s0,+000000C0
	addi	a5,s0,+00000004

l23001752:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.sw	a5,80(a4)
	bne	s9,a5,0000000023001752

l2300175C:
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
	jal	ra,0000000023012D96
	c.li	a5,00000001
	c.sw	s0,0(a5)
	lw	s0,s8,+00000018
	addi	a5,zero,+00000330
	c.addi	s0,00000001
	sw	s0,s8,+00000018
	c.andi	s0,00000003
	add	s0,s0,a5
	c.add	s0,s4
	c.j	00000000230016CE

;; ipc_emb_cfmback_irq: 2300179E
ipc_emb_cfmback_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044800
	lw	s0,a5,+0000011C
	andi	a4,s0,+00000020
	c.beqz	a4,00000000230017C6

l230017B2:
	addi	a4,zero,+00000020
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	lui	a0,00000040
	jal	ra,00000000230146D6

l230017C6:
	c.andi	s0,00000010
	c.beqz	s0,00000000230017E6

l230017CA:
	lui	a5,00044800
	c.li	a4,00000010
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00000080
	c.addi	sp,00000010
	jal	zero,00000000230146D6

l230017E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_txcfm_ind: 230017EE
;;   Called from:
;;     2300B77C (in txl_cfm_evt)
;;     2300B812 (in txl_cfm_flush)
ipc_emb_txcfm_ind proc
	c.slli	a0,07
	lui	a5,00044800
	sw	a0,a5,+00000100
	c.jr	ra

;; ipc_emb_msg_irq: 230017FA
ipc_emb_msg_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00044800
	lw	a5,s0,+0000011C
	c.andi	a5,00000002
	c.beqz	a5,000000002300181A

l2300180C:
	lui	a0,00002000
	jal	ra,00000000230146D6
	c.li	a5,00000002
	sw	a5,s0,+00000110

l2300181A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_msg_evt: 23001822
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
	lui	s1,00042040
	lui	s2,0004201F
	addi	s1,s1,+00000000
	lui	s3,000230AA
	lui	s4,000230AA
	addi	s2,s2,-000006B0
	lui	s5,000230AA
	lui	s6,000230AA

l2300185E:
	c.andi	a5,00000002
	c.bnez	a5,000000002300188A

l23001862:
	lui	a0,00002000
	jal	ra,00000000230146EE
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

l2300188A:
	lui	a5,00044800
	c.li	a4,00000002
	sw	a4,a5,+00000108
	lhu	a0,s1,+0000000A
	c.addi	a0,0000000C
	jal	ra,000000002301483C
	c.mv	s0,a0
	c.bnez	a0,00000000230018B2

l230018A2:
	addi	a2,zero,+000001D9
	addi	a1,s3,+0000020C
	addi	a0,s4,+000001C4
	jal	ra,0000000023001234

l230018B2:
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

l230018D6:
	lhu	a3,s0,+0000000A
	addi	a4,a5,-0000000C
	blt	a4,a3,000000002300191E

l230018E2:
	lbu	a5,s2,+00000015
	addi	a4,a5,+00000001
	sb	a4,s2,+00000015
	sh	a5,s1,+00000008
	lhu	a5,s0,+00000006
	c.li	a4,0000000E
	bgeu	a4,a5,000000002300192E

l230018FC:
	addi	a2,zero,+000000B6
	addi	a1,s3,+0000020C
	addi	a0,s6,+000001D8
	jal	ra,0000000023001234

l2300190C:
	addi	a2,zero,+000001ED
	addi	a1,s3,+0000020C
	addi	a0,s5,+000001E8
	jal	ra,0000000023001234
	c.j	0000000023001934

l2300191E:
	add	a4,s1,a5
	c.lw	a4,0(a3)
	add	a4,s0,a5
	c.addi	a5,00000004
	c.sw	a4,0(a3)
	c.j	00000000230018D6

l2300192E:
	c.li	a4,0000000C
	bltu	a4,a5,000000002300190C

l23001934:
	c.li	a5,00000004
	lui	s7,00044800
	sw	a5,s7,+00000100
	addi	a0,s0,+0000000C
	jal	ra,0000000023014A0E
	lw	a5,s7,+00000104
	c.j	000000002300185E

;; ipc_emb_msg_dma_int_handler: 2300194C
ipc_emb_msg_dma_int_handler proc
	c.jr	ra

;; ipc_emb_dbg_dma_int_handler: 2300194E
ipc_emb_dbg_dma_int_handler proc
	lui	a5,00044A00
	addi	a4,zero,+00000080
	c.sw	a5,32(a4)
	lui	a5,00044800
	c.li	a4,00000001
	sw	a4,a5,+00000100
	c.jr	ra

;; ipc_emb_dump: 23001964
;;   Called from:
;;     23014736 (in bl_fw_statistic_dump)
ipc_emb_dump proc
	c.jr	ra

;; mdm_txcbwmax_setf: 23001966
;;   Called from:
;;     23002038 (in phy_hw_set_channel)
;;     23002346 (in phy_init)
mdm_txcbwmax_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a5,000FC000
	slli	s0,a0,00000018
	c.swsp	ra,00000084
	c.and	a5,s0
	c.beqz	a5,0000000023001992

l23001978:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,a2,-000004A8
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000022C
	jal	ra,0000000023001234

l23001992:
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

;; phy_config_rxgain: 230019B0
;;   Called from:
;;     23001E26 (in agc_config)
;;     23002E04 (in phy_tcal_handle)
phy_config_rxgain proc
	lui	a4,0004200F
	addi	a4,a4,-00000504
	lb	a5,a4,+00000000
	beq	a5,a0,0000000023001ACC

l230019C0:
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

l23001ACC:
	c.jr	ra

;; agc_config: 23001ACE
;;   Called from:
;;     23002464 (in phy_init)
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
	jal	ra,00000000230019B0
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

;; mdm_reset: 23001F12
;;   Called from:
;;     23001FBC (in phy_hw_set_channel)
;;     2300219C (in phy_init)
;;     23002688 (in phy_rc_isr)
mdm_reset proc
	c.lui	a5,00001000
	lui	a4,00044C01
	addi	a5,a5,+00000111
	sw	a5,a4,+00000888
	sw	zero,a4,+00000888
	c.jr	ra

;; phy_powroffset_set: 23001F26
;;   Called from:
;;     23069294 (in hal_board_cfg)
phy_powroffset_set proc
	lui	a4,00042012
	c.li	a5,00000000
	addi	a4,a4,-00000788
	c.li	a3,0000000E

l23001F32:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023001F32

l23001F48:
	c.jr	ra

;; phy_hw_set_channel: 23001F4A
;;   Called from:
;;     23002138 (in phy_set_channel)
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
	c.beqz	a3,0000000023001F7C

l23001F64:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000144
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000268
	jal	ra,0000000023001234

l23001F7C:
	beq	s4,zero,0000000023001F98

l23001F80:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000145
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000284
	jal	ra,0000000023001234

l23001F98:
	lui	s2,00044C0B
	lw	a5,s2,+00000390
	lui	s0,00044C01
	andi	a5,a5,-00000101
	sw	a5,s2,+00000390
	lw	a5,s0,-000007E0
	ori	a5,a5,+00000001
	sw	a5,s0,+00000820
	sw	zero,s0,+00000800
	c.jal	0000000023001F12
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
	jal	ra,0000000023001966
	lw	a5,s2,+00000000
	slli	a4,a5,0000000A
	bge	a4,zero,000000002300204E

l23002048:
	c.li	a5,00000001
	sw	a5,s2,+00000118

l2300204E:
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,0000000023019528
	bne	s4,zero,00000000230020B2

l2300205A:
	c.lui	a5,FFFFF000
	addi	a4,a5,+00000694
	c.add	a4,s1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a0,00000000
	bltu	a3,a4,0000000023002088

l23002070:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a0,0000000E
	beq	s1,a4,0000000023002088

l2300207C:
	addi	a0,a5,+00000699

l23002080:
	c.add	s1,a0
	c.li	a0,00000005
	xor	a0,s1,a0

l23002088:
	lui	a1,00042012
	andi	a0,a0,+000000FF
	addi	a1,a1,-00000788
	jal	ra,0000000023003B3C
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
	jal	zero,0000000023002CD8

l230020B2:
	c.li	a5,00000001
	c.li	a0,00000000
	bne	s4,a5,0000000023002088

l230020BA:
	c.lui	a4,FFFFF000
	addi	a5,a4,-0000038D
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a3,zero,+00000334
	bltu	a3,a5,0000000023002088

l230020CE:
	addi	a0,a4,-00000388
	c.j	0000000023002080

;; phy_get_channel: 230020D4
;;   Called from:
;;     2300990E (in ps_send_pspoll)
;;     2300A178 (in rxl_mpdu_transfer)
;;     2300C88E (in txl_frame_send_null_frame)
;;     2300C99A (in txl_frame_send_qosnull_frame)
;;     2300CAC6 (in txl_frame_send_eapol_frame)
;;     2300FF0A (in rxu_mgt_frame_check)
;;     2301C2A8 (in bam_send_air_action_frame)
phy_get_channel proc
	lui	a5,0004201F
	addi	a5,a5,-00000690
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

;; phy_set_channel: 23002102
;;   Called from:
;;     2301A144 (in chan_pre_switch_channel)
;;     2301A9DC (in chan_ctxt_update)
;;     2301B0EE (in mm_monitor_channel_req_handler)
;;     2301B1A6 (in mm_monitor_enable_req_handler)
;;     2301B65E (in mm_start_req_handler)
;;     2301B83C (in mm_hw_config_handler)
phy_set_channel proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+00000048
	bgeu	a4,a5,0000000023002118

l23002116:
	c.beqz	a0,0000000023002160

l23002118:
	c.li	a5,00000001
	bltu	a5,a0,0000000023002160

l2300211E:
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
	c.jal	0000000023001F4A
	lui	a5,0004201F
	addi	a5,a5,-00000690
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

l23002160:
	c.jr	ra

;; phy_get_version: 23002162
;;   Called from:
;;     2301B5FC (in mm_version_req_handler)
phy_get_version proc
	lui	a5,00044C00
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	sw	zero,a1,+00000000
	c.jr	ra

;; phy_vht_supported: 23002170
;;   Called from:
;;     2300224C (in phy_init)
;;     23002360 (in phy_init)
phy_vht_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a4)
	c.li	a0,00000001
	slli	a3,a4,00000009
	blt	a3,zero,0000000023002186

l23002180:
	c.lw	a5,0(a0)
	c.srli	a0,00000019
	c.andi	a0,00000001

l23002186:
	c.jr	ra

;; phy_init: 23002188
;;   Called from:
;;     2301B192 (in mm_monitor_enable_req_handler)
;;     2301B64A (in mm_start_req_handler)
phy_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,00044C01
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	sw	zero,s0,+00000800
	c.mv	s2,a0
	c.jal	0000000023001F12
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
	c.beqz	a5,00000000230021D8

l230021BE:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,a2,-000005F7
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000029C
	jal	ra,0000000023001234

l230021D8:
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
	c.beqz	a5,000000002300221E

l23002204:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,a2,-00000679
	addi	a1,a1,+0000020C
	addi	a0,a0,+000002D8
	jal	ra,0000000023001234

l2300221E:
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
	c.jal	0000000023002170
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
	c.beqz	a5,00000000230022E0

l230022C6:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,a2,-000003F2
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000318
	jal	ra,0000000023001234

l230022E0:
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
	c.beqz	a5,0000000023002326

l2300230C:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,a2,-0000048E
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000354
	jal	ra,0000000023001234

l23002326:
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
	jal	ra,0000000023001966
	c.lw	s1,0(a5)
	lw	a4,s0,-000007DC
	c.srli	a5,00000012
	andi	a4,a4,-00000101
	andi	a5,a5,+00000100
	c.or	a5,a4
	sw	a5,s0,+00000824
	c.jal	0000000023002170
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
	bge	a3,zero,0000000023002436

l2300240A:
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

l23002436:
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
	jal	ra,0000000023001ACE
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
	lui	a5,000230AA
	lui	a3,00054C0B
	addi	a5,a5,+000003D0
	lui	a4,00054C0A
	addi	a3,a3,-00000800

l230024A8:
	c.lw	a5,0(a2)
	c.addi	a4,00000004
	c.addi	a5,00000004
	sw	a2,a4,+00000FFC
	bne	a4,a3,00000000230024A8

l230024B6:
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
	lui	a5,0004201F
	addi	a5,a5,-00000690
	c.sw	a5,0(a4)
	lui	a4,00000FF0
	addi	a4,a4,+000000FF
	c.sw	a5,4(a4)
	lui	a4,00005000
	addi	a4,a4,+000000FF
	c.sw	a5,8(a4)
	c.jal	0000000023002B76
	c.jal	000000002300268E
	jal	ra,0000000023002D2C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023002D64

;; phy_get_nss: 2300252A
;;   Called from:
;;     2301DCE8 (in me_config_req_handler)
phy_get_nss proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000008
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_get_ntx: 2300253C
;;   Called from:
;;     23007696 (in hal_machw_init)
;;     2300C4D2 (in txl_frame_init)
;;     2300C4DA (in txl_frame_init)
;;     2300C52A (in txl_frame_init)
;;     2300C532 (in txl_frame_init)
;;     2300F0AE (in rc_init)
;;     2300F4F4 (in rc_init)
;;     2301C012 (in txl_buffer_init)
;;     2301C01A (in txl_buffer_init)
;;     2301C0A8 (in txl_buffer_init)
;;     2301C0B0 (in txl_buffer_init)
phy_get_ntx proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000004
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_stop: 2300254E
;;   Called from:
;;     2301B5A4 (in mm_reset_req_handler)
phy_stop proc
	c.jr	ra

;; phy_ldpc_tx_supported: 23002550
;;   Called from:
;;     2300F1CA (in rc_init)
phy_ldpc_tx_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,0000001A
	c.andi	a0,00000001
	c.jr	ra

;; phy_get_mac_freq: 2300255C
;;   Called from:
;;     23007304 (in hal_machw_init)
phy_get_mac_freq proc
	addi	a0,zero,+00000028
	c.jr	ra

;; phy_get_rf_gain_idx: 23002562
;;   Called from:
;;     2300B5AC (in tpc_update_vif_tx_power)
;;     2300B5C8 (in tpc_update_vif_tx_power)
phy_get_rf_gain_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	lb	a1,a0,+00000000
	c.li	a5,0000000A
	c.li	a0,00000002
	add	a1,a1,a5
	jal	ra,0000000023003A8C
	sb	a0,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_get_rf_gain_capab: 23002586
;;   Called from:
;;     2301CB3E (in me_build_associate_req)
phy_get_rf_gain_capab proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.jal	0000000023002BB2
	sb	a0,s0,+00000000
	c.jal	0000000023002BBC
	c.lwsp	a2,00000064
	sb	a0,a1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bz_phy_reset: 230025A6
;;   Called from:
;;     2302C454 (in rf_reset)
bz_phy_reset proc
	lui	a5,00040003
	lw	a3,a5,-000007F8
	lui	a4,000FF800
	addi	a1,a4,-00000001
	lui	a0,00000800
	c.and	a3,a1
	c.or	a3,a0
	sw	a3,a5,+00000808
	lw	a2,a5,-000007F8
	lui	a4,00001000
	addi	a3,a4,-00000001
	c.and	a2,a3
	lui	a4,00008000
	c.or	a2,a4
	sw	a2,a5,+00000808
	lw	a4,a5,-000007F4
	lui	a2,00004000
	c.and	a4,a1
	c.or	a4,a0
	sw	a4,a5,+0000080C
	lw	a4,a5,-000007F4
	c.and	a4,a3
	c.or	a4,a2
	sw	a4,a5,+0000080C
	lw	a4,a5,-000007F4
	c.lui	a2,FFFF0000
	addi	a2,a2,+000000FF
	andi	a4,a4,-00000100
	sw	a4,a5,+0000080C
	lw	a4,a5,-000007AC
	c.and	a4,a2
	c.lui	a2,00002000
	c.or	a4,a2
	sw	a4,a5,+00000854
	lw	a4,a5,-000007AC
	c.and	a4,a3
	lui	a3,0001E000
	c.or	a4,a3
	sw	a4,a5,+00000854
	lw	a4,a5,-000007AC
	lui	a3,000FF010
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	lui	a3,000000A0
	c.or	a4,a3
	sw	a4,a5,+00000854
	lw	a4,a5,-000007AC
	andi	a4,a4,-00000100
	ori	a4,a4,+0000001E
	sw	a4,a5,+00000854
	lw	a4,a5,-000007F0
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+00000810
	lw	a4,a5,-000007F0
	ori	a4,a4,+00000002
	sw	a4,a5,+00000810
	lw	a4,a5,-00000354
	c.andi	a4,FFFFFFE0
	ori	a4,a4,+00000004
	sw	a4,a5,+00000CAC
	c.jr	ra

;; mpif_clk_init: 23002672
;;   Called from:
;;     2300138A (in wifi_main)
mpif_clk_init proc
	c.jr	ra

;; phy_mdm_isr: 23002674
phy_mdm_isr proc
	c.jr	ra

;; phy_rc_isr: 23002676
phy_rc_isr proc
	lui	a4,00044C0B
	lw	a5,a4,+0000041C
	sw	a5,a4,+00000420
	andi	a5,a5,+00000100
	c.beqz	a5,000000002300268C

l23002688:
	jal	zero,0000000023001F12

l2300268C:
	c.jr	ra

;; pa_init: 2300268E
;;   Called from:
;;     23002516 (in phy_init)
pa_init proc
	lui	a5,00042012
	addi	a5,a5,-00000778
	addi	a2,a5,+00000230

l2300269A:
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

l230026BE:
	sb	zero,a4,+00000010
	sb	zero,a4,+00000008
	sb	zero,a4,+00000009
	sw	zero,a4,+0000000C
	c.addi	a3,FFFFFFFF
	c.addi	a4,0000000C
	c.bnez	a3,00000000230026BE

l230026D4:
	addi	a5,a5,+0000008C
	bne	a5,a2,000000002300269A

l230026DC:
	c.jr	ra

;; pa_input: 230026DE
;;   Called from:
;;     2300A57A (in rxl_cntrl_evt)
pa_input proc
	c.li	a2,00000003
	bltu	a2,a0,00000000230027DE

l230026E4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a4,zero,+0000008C
	c.mv	s0,a0
	add	a3,s0,a4
	c.swsp	s1,00000080
	lui	s1,00042012
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	addi	a5,s1,-00000778
	c.lw	a1,32(a0)
	addi	s1,s1,-00000778
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
	c.bnez	a5,00000000230027A4

l2300273C:
	c.lw	a1,40(a5)
	lbu	a0,a1,+0000003B
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	bltu	a2,a5,00000000230027A4

l2300274A:
	c.slli	a0,18
	c.srai	a0,00000018
	jal	ra,00000000230A307C
	lui	a5,000230AA
	lw	a2,a5,+000003B0
	lw	a3,a5,+000003B4
	jal	ra,00000000230A1B50

l23002762:
	jal	ra,00000000230A32BC
	c.li	a5,0000000C
	addi	a4,zero,+0000008C
	add	a4,s0,a4
	add	a5,s2,a5
	c.add	a5,a4
	c.add	a5,s1
	c.fsw	a5,12(a0)
	c.li	a4,00000007
	c.li	a5,00000000
	beq	s2,a4,000000002300278A

l23002782:
	c.addi	s2,00000001
	slli	a5,s2,00000018
	c.srai	a5,00000018

l2300278A:
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

l230027A4:
	lbu	a0,a1,+0000003C
	lbu	a5,a1,+0000003B
	c.slli	a0,08
	c.add	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	sub	a0,zero,a0
	jal	ra,00000000230A307C
	lui	a5,000230AA
	lw	a2,a5,+000003B8
	lw	a3,a5,+000003BC
	jal	ra,00000000230A1B50
	lui	a5,000230AA
	lw	a2,a5,+000003C0
	lw	a3,a5,+000003C4
	jal	ra,00000000230A1004
	c.j	0000000023002762

l230027DE:
	c.jr	ra

;; pa_adapt: 230027E0
;;   Called from:
;;     2300A580 (in rxl_cntrl_evt)
pa_adapt proc
	c.li	a5,00000003
	bltu	a5,a0,0000000023002A80

l230027E6:
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000084
	c.swsp	s5,00000004
	c.swsp	s6,00000080
	c.swsp	s7,00000000
	addi	a5,a5,+0000027C
	c.lw	a5,0(a2)
	lui	s0,00042012
	addi	a4,s0,-00000778
	c.addi	a2,00000001
	c.sw	a5,0(a2)
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	addi	s0,s0,-00000778
	c.add	a4,a5
	lb	t3,a4,+00000068
	bne	t3,zero,000000002300298A

l23002824:
	addi	a4,a5,+0000005C
	c.add	a4,s0

l2300282A:
	lbu	a5,a4,+00000008
	beq	a5,zero,0000000023002976

l23002832:
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	lb	s2,a4,+00000000
	add	a5,s0,a3
	lb	a1,a5,+00000073
	beq	a1,zero,00000000230029D2

l2300284A:
	lbu	a1,a5,+00000074
	c.li	a3,00000004
	bgeu	a3,a1,000000002300299E

l23002854:
	sb	zero,a5,+00000074
	sb	zero,a5,+00000073
	sw	zero,a5,+00000078

l23002860:
	c.andi	a2,0000000F
	c.li	a5,0000000F
	bne	a2,a5,0000000023002976

l23002868:
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	c.li	a3,00000014
	c.mv	s1,a0
	c.add	a5,s0
	lb	a5,a5,+00000070
	sub	a5,s2,a5
	c.addi	a5,0000000A
	bltu	a3,a5,00000000230028EE

l23002884:
	c.flw	fa4,4(a0)
	fmv.w.x	fa5,zero
	fle.s	a5,fa5,fa0
	beq	a5,zero,0000000023002A40

l23002892:
	lui	a5,000230AA
	flw	fa5,912(a5)
	flt.s	a5,fa5,fa0

l2300289E:
	c.beqz	a5,00000000230028EE

l230028A0:
	jal	ra,00000000230A31AC
	addi	a5,zero,-00000055
	c.mv	s4,a0
	c.mv	s5,a1
	bge	s2,a5,0000000023002A4E

l230028B0:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,00000000230A31AC
	lui	a5,000230AA
	lw	a2,a5,+000003A0
	lw	a3,a5,+000003A4
	c.mv	s6,a0
	c.mv	s7,a1

l230028D2:
	c.mv	a0,s4
	c.mv	a1,s5
	jal	ra,00000000230A1B50
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s6
	c.mv	a1,s7
	jal	ra,00000000230A04B4
	jal	ra,00000000230A32BC
	fsw	fa0,512(a0)

l230028EE:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	fle.s	a5,fa4,fa5
	beq	a5,zero,0000000023002A72

l23002908:
	lui	a5,000230AA
	flw	fa4,920(a5)
	flt.s	a5,fa5,fa4

l23002914:
	c.bnez	a5,0000000023002976

l23002916:
	csrrci	zero,mstatus,00000008
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa4,fa5
	c.beqz	a5,000000002300293C

l23002932:
	c.jal	0000000023002A82
	c.beqz	a0,000000002300293C

l23002936:
	c.jal	0000000023002A82
	c.addi	a0,FFFFFFFF
	c.jal	0000000023002A92

l2300293C:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa5,fa4
	c.beqz	a5,0000000023002964

l23002954:
	c.jal	0000000023002A82
	addi	a5,zero,+0000003E
	bltu	a5,a0,0000000023002964

l2300295E:
	c.jal	0000000023002A82
	c.addi	a0,00000001
	c.jal	0000000023002A92

l23002964:
	addi	a0,zero,+0000008C
	add	s1,s1,a0
	c.add	s0,s1
	sw	zero,s0,+00000080
	csrrsi	zero,mstatus,00000008

l23002976:
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

l2300298A:
	addi	a4,t3,-00000001
	c.li	a3,0000000C
	add	a4,a4,a3
	c.addi	a5,00000008
	c.add	a5,a4
	add	a4,s0,a5
	c.j	000000002300282A

l2300299E:
	addi	a3,s2,+00000064
	addi	a6,zero,+00000064
	bltu	a6,a3,0000000023002860

l230029AA:
	lb	a6,a5,+00000070
	c.li	a7,00000014
	sub	a3,s2,a6
	addi	t1,a3,+0000000A
	bgeu	a7,t1,00000000230029C4

l230029BC:
	c.addi	a1,00000001
	sb	a1,a5,+00000074
	c.j	0000000023002860

l230029C4:
	c.srai	a3,00000002
	c.add	a3,a6
	sb	zero,a5,+00000074
	sb	a3,a5,+00000070
	c.j	0000000023002860

l230029D2:
	c.lw	a5,120(a1)
	c.li	a6,00000006
	bgeu	a6,a1,0000000023002A3A

l230029DA:
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

l230029F4:
	sub	a3,t3,a6
	or	a3,a3,t5
	add	a3,a3,t6
	c.add	a3,a1
	c.add	a3,s0
	lb	a3,a3,+00000008
	c.add	a5,a3
	bge	t1,a3,0000000023002A10

l23002A0E:
	c.mv	t1,a3

l23002A10:
	bge	a3,a7,0000000023002A16

l23002A14:
	c.mv	a7,a3

l23002A16:
	c.addi	a6,00000001
	bne	a6,t4,00000000230029F4

l23002A1C:
	sub	a5,a5,t1
	sub	a5,a5,a7
	c.li	a1,00000004
	xor	a5,a5,a1
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	c.add	a3,s0
	sb	a5,a3,+00000070
	c.j	0000000023002860

l23002A3A:
	c.addi	a1,00000001
	c.sw	a5,120(a1)
	c.j	0000000023002860

l23002A40:
	lui	a5,000230AA
	flw	fa5,916(a5)
	flt.s	a5,fa0,fa5
	c.j	000000002300289E

l23002A4E:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,00000000230A31AC
	lui	a5,000230AA
	c.mv	s6,a0
	c.mv	s7,a1
	lw	a2,a5,+000003A8
	lw	a3,a5,+000003AC
	c.j	00000000230028D2

l23002A72:
	lui	a5,000230AA
	flw	fa4,924(a5)
	flt.s	a5,fa4,fa5
	c.j	0000000023002914

l23002A80:
	c.jr	ra

;; hal_get_capcode: 23002A82
;;   Called from:
;;     23002932 (in pa_adapt)
;;     23002936 (in pa_adapt)
;;     23002954 (in pa_adapt)
;;     2300295E (in pa_adapt)
hal_get_capcode proc
	lui	a5,00040010
	lw	a0,a5,-0000077C
	c.srli	a0,00000016
	andi	a0,a0,+0000003F
	c.jr	ra

;; hal_set_capcode: 23002A92
;;   Called from:
;;     2300293A (in pa_adapt)
;;     23002962 (in pa_adapt)
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

;; hal_get_temperature: 23002AB2
;;   Called from:
;;     23002D98 (in phy_tcal_handle)
hal_get_temperature proc
	lui	a5,0004200F
	lhu	a5,a5,+00000280
	sh	a5,a0,+00000000
	c.li	a0,00000001
	c.jr	ra

;; hal_set_temperature: 23002AC2
;;   Called from:
;;     23002E3C (in phy_tcal_callback)
hal_set_temperature proc
	lui	a5,0004200F
	sh	a0,a5,+00000280
	c.jr	ra

;; trpc_update_power: 23002ACC
;;   Called from:
;;     2300B4E0 (in bl_tpc_update_power_table)
trpc_update_power proc
	lui	a5,0004200D
	addi	a5,a5,-000000E0
	c.li	a3,00000000
	c.li	a1,00000008
	c.li	a2,00000018

l23002ADA:
	add	t1,a0,a3
	c.li	a4,00000000

l23002AE0:
	add	a6,t1,a4
	lb	a7,a6,+00000000
	add	a6,a5,a4
	c.addi	a4,00000001
	sb	a7,a6,+00000000
	bne	a4,a1,0000000023002AE0

l23002AF6:
	c.addi	a3,00000008
	c.addi	a5,00000008
	bne	a3,a2,0000000023002ADA

l23002AFE:
	c.jr	ra

;; trpc_power_get: 23002B00
;;   Called from:
;;     2300B516 (in bl_tpc_power_table_get)
trpc_power_get proc
	lui	a1,0004200D
	c.li	a2,00000018
	addi	a1,a1,-000000E0
	jal	zero,00000000230A382C

;; trpc_update_power_11b: 23002B0E
;;   Called from:
;;     2300B536 (in bl_tpc_update_power_rate_11b)
trpc_update_power_11b proc
	lui	a4,0004200D
	c.li	a5,00000000
	addi	a4,a4,-000000E0
	c.li	a3,00000004

l23002B1A:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023002B1A

l23002B30:
	c.jr	ra

;; trpc_update_power_11g: 23002B32
;;   Called from:
;;     2300B53A (in bl_tpc_update_power_rate_11g)
trpc_update_power_11g proc
	lui	a5,0004200D
	addi	a5,a5,-000000E0
	c.li	a4,00000000
	c.li	a3,00000008

l23002B3E:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+00000007
	bne	a4,a3,0000000023002B3E

l23002B52:
	c.jr	ra

;; trpc_update_power_11n: 23002B54
;;   Called from:
;;     2300B53E (in bl_tpc_update_power_rate_11n)
trpc_update_power_11n proc
	lui	a5,0004200D
	addi	a5,a5,-000000E0
	c.li	a4,00000000
	c.li	a3,00000008

l23002B60:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+0000000F
	bne	a4,a3,0000000023002B60

l23002B74:
	c.jr	ra

;; trpc_init: 23002B76
;;   Called from:
;;     23002514 (in phy_init)
trpc_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a5,00001000
	lui	s0,0004201F
	addi	s0,s0,-00000684
	addi	a5,a5,-00000676
	c.swsp	ra,00000084
	sh	a5,s0,+00000004
	jal	ra,0000000023005E6A
	sb	a0,s0,+00000000
	jal	ra,0000000023005E88
	c.li	a5,0000001E
	sb	a5,s0,+00000002
	c.li	a5,00000019
	sb	a0,s0,+00000001
	sh	a5,s0,+00000006
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_rf_max_power: 23002BB2
;;   Called from:
;;     23002590 (in phy_get_rf_gain_capab)
trpc_get_rf_max_power proc
	lui	a5,0004201F
	lb	a0,a5,-00000684
	c.jr	ra

;; trpc_get_rf_min_power: 23002BBC
;;   Called from:
;;     23002596 (in phy_get_rf_gain_capab)
trpc_get_rf_min_power proc
	lui	a5,0004201F
	lb	a0,a5,-00000683
	c.jr	ra

;; trpc_get_power_idx: 23002BC6
;;   Called from:
;;     23002CD6 (in trpc_get_default_power_idx)
trpc_get_power_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a0
	c.li	a4,00000002
	bltu	a5,a0,0000000023002BDA

l23002BD6:
	andi	a4,a0,+000000FF

l23002BDA:
	c.li	a7,00000003
	c.beqz	s0,0000000023002BE0

l23002BDE:
	c.li	a7,00000007

l23002BE0:
	lui	a3,0004201F
	addi	a5,a3,-00000684
	lb	a0,a5,+00000000
	lbu	a5,a5,+00000002
	addi	a6,a3,-00000684
	slli	t1,a5,00000018
	srai	t1,t1,00000018
	bge	a0,t1,0000000023002C02

l23002C00:
	c.mv	a5,a0

l23002C02:
	slli	a3,a5,00000018
	c.srai	a3,00000018
	bge	a2,a3,0000000023002C0E

l23002C0C:
	c.mv	a5,a2

l23002C0E:
	c.slli	a5,18
	c.srai	a5,00000018
	bge	a7,a1,0000000023002C18

l23002C16:
	c.mv	a1,a7

l23002C18:
	slli	a3,a4,00000003
	lui	a4,0004200D
	addi	a4,a4,-000000E0
	c.add	a4,a3
	c.add	a1,a4
	lbu	a4,a1,+00000000
	slli	a3,a4,00000018
	c.srai	a3,00000018
	bge	a5,a3,0000000023002C38

l23002C36:
	c.mv	a4,a5

l23002C38:
	lbu	a5,a6,+00000001
	slli	a3,a4,00000018
	c.srai	a3,00000018
	slli	a2,a5,00000018
	c.srai	a2,00000018
	bge	a2,a3,0000000023002C4E

l23002C4C:
	c.mv	a5,a4

l23002C4E:
	c.slli	a5,18
	addi	a4,zero,-000001FE
	c.srai	a5,00000018
	add	a5,a5,a4
	c.add	a5,a0
	addi	a0,zero,+00000200
	xor	a0,a5,a0
	jal	ra,00000000230A307C
	lui	a5,000230AA
	lw	a2,a5,+000003C8
	lw	a3,a5,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2EB8
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	c.beqz	s0,0000000023002C86

l23002C84:
	c.li	a5,00000000

l23002C86:
	c.add	a5,a0
	andi	a5,a5,+000000FF
	c.li	a4,0000000F
	c.mv	a0,a5
	bgeu	a4,a5,0000000023002C96

l23002C94:
	c.li	a0,0000000F

l23002C96:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	a0,02
	andi	a0,a0,+000000FC
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_default_power_idx: 23002CA4
;;   Called from:
;;     2300B54C (in tpc_update_tx_power)
;;     2300B566 (in tpc_update_tx_power)
;;     2300B63C (in tpc_get_vif_tx_power_vs_rate)
trpc_get_default_power_idx proc
	c.li	a5,00000002
	andi	a4,a0,+000000FF
	bgeu	a5,a0,0000000023002CB0

l23002CAE:
	c.li	a4,00000002

l23002CB0:
	c.li	a5,00000003
	c.beqz	a0,0000000023002CB6

l23002CB4:
	c.li	a5,00000007

l23002CB6:
	bge	a5,a1,0000000023002CBC

l23002CBA:
	c.mv	a1,a5

l23002CBC:
	lui	a5,0004200D
	slli	a3,a4,00000003
	addi	a5,a5,-000000E0
	c.add	a5,a3
	c.add	a5,a1
	lb	a2,a5,+00000000
	andi	a1,a1,+000000FF
	c.mv	a0,a4
	c.j	0000000023002BC6

;; trpc_update_vs_channel: 23002CD8
;;   Called from:
;;     230020AE (in phy_hw_set_channel)
trpc_update_vs_channel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	s0,s0,-00000684
	c.swsp	ra,00000084
	sh	a0,s0,+00000004
	jal	ra,0000000023005E6A
	sb	a0,s0,+00000000
	jal	ra,0000000023005E88
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_update_vs_temperature: 23002D02
;;   Called from:
;;     23002D88 (in phy_tcal_txpwr)
trpc_update_vs_temperature proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	s0,s0,-00000684
	c.swsp	ra,00000084
	sb	a0,s0,+00000006
	jal	ra,0000000023005E6A
	sb	a0,s0,+00000000
	jal	ra,0000000023005E88
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_tcal_reset: 23002D2C
;;   Called from:
;;     23002518 (in phy_init)
phy_tcal_reset proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042012
	c.swsp	s0,00000004
	addi	a2,zero,+00000038
	addi	s0,a0,-00000548
	c.li	a1,00000000
	addi	a0,a0,-00000548
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
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

;; phy_tcal_start: 23002D64
;;   Called from:
;;     23002526 (in phy_init)
phy_tcal_start proc
	lui	a5,00042012
	c.li	a4,00000001
	sb	a4,a5,+00000AEC
	c.jr	ra

;; phy_tcal_txpwr: 23002D70
;;   Called from:
;;     23002DA2 (in phy_tcal_handle)
phy_tcal_txpwr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023005F30
	slli	a0,s0,00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.srai	a0,00000018
	c.addi	sp,00000010
	c.j	0000000023002D02

;; phy_tcal_handle: 23002D8A
;;   Called from:
;;     23002E4E (in phy_tcal_callback)
phy_tcal_handle proc
	c.addi	sp,FFFFFFE0
	addi	a0,sp,+0000000E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023002AB2
	c.beqz	a0,0000000023002E1A

l23002D9E:
	lh	a0,sp,+0000000E
	c.jal	0000000023002D70
	lhu	a5,sp,+0000000E
	addi	a4,zero,+0000007D
	slli	a3,a5,00000010
	c.srai	a3,00000010
	bge	a4,a3,0000000023002DBA

l23002DB6:
	addi	a5,zero,+0000007D

l23002DBA:
	slli	a4,a5,00000010
	c.srai	a4,00000010
	addi	a3,zero,-00000028
	bge	a4,a3,0000000023002DCC

l23002DC8:
	addi	a5,zero,-00000028

l23002DCC:
	slli	s2,a5,00000010
	sh	a5,sp,+0000000E
	c.addi	a5,FFFFFFE7
	c.slli	a5,10
	c.srai	a5,00000010
	srai	s2,s2,00000010
	blt	zero,a5,0000000023002E26

l23002DE2:
	c.li	s0,FFFFFFFA
	add	a5,a5,s0
	srai	s0,a5,00000008

l23002DEC:
	lui	s1,00042012
	addi	a5,s1,-00000548
	c.lw	a5,44(a5)
	addi	s1,s1,-00000548
	beq	s0,a5,0000000023002E12

l23002DFE:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s0
	jal	ra,00000000230019B0
	csrrsi	zero,mstatus,00000008
	sw	s2,s1,+0000001C
	c.sw	s1,44(s0)

l23002E12:
	lhu	a5,sp,+0000000E
	sh	a5,s1,+00000000

l23002E1A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23002E26:
	c.li	s0,00000006
	add	s0,a5,s0
	c.srai	s0,00000008
	sub	s0,zero,s0
	c.slli	s0,10
	c.srai	s0,00000010
	c.j	0000000023002DEC

;; phy_tcal_callback: 23002E38
;;   Called from:
;;     23025998 (in wifi_mgmr_start)
phy_tcal_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023002AC2
	lui	a5,00042012
	lbu	a5,a5,-00000514
	c.beqz	a5,0000000023002E50

l23002E4A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023002D8A

l23002E50:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rf_fsm_ctrl_en_setf: 23002E56
;;   Called from:
;;     23003646 (in rfc_init)
;;     230037E8 (in rfc_config_channel)
;;     230037F4 (in rfc_config_channel)
;;     230038C2 (in rfc_coex_force_to)
;;     23003912 (in rfc_coex_force_to)
rf_fsm_ctrl_en_setf proc
	lui	a4,00040001
	c.lw	a4,4(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,4(a0)
	c.jr	ra

;; rf_gc_tbb_setf: 23002E66
;;   Called from:
;;     2300394C (in rfc_config_power_ble)
;;     230039DC (in rfc_config_power_ble)
;;     23003A14 (in rfc_config_power_ble)
;;     23003A4C (in rfc_config_power_ble)
;;     23003A7A (in rfc_config_power_ble)
rf_gc_tbb_setf proc
	lui	a3,00040001
	c.lw	a3,72(a5)
	lui	a4,000FE100
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,14
	lui	a4,00001F00
	c.and	a0,a4
	c.or	a0,a5
	c.sw	a3,72(a0)
	c.jr	ra

;; rf_gc_tmx_setf: 23002E82
;;   Called from:
;;     23003954 (in rfc_config_power_ble)
;;     230039E4 (in rfc_config_power_ble)
;;     23003A1A (in rfc_config_power_ble)
;;     23003A52 (in rfc_config_power_ble)
;;     23003A80 (in rfc_config_power_ble)
rf_gc_tmx_setf proc
	lui	a3,00040001
	c.lw	a3,72(a5)
	lui	a4,000FFF90
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	lui	a4,00000070
	c.and	a0,a4
	c.or	a0,a5
	c.sw	a3,72(a0)
	c.jr	ra

;; rf_pa_ib_fix_setf: 23002E9E
;;   Called from:
;;     2300392C (in rfc_config_power_ble)
;;     230039BC (in rfc_config_power_ble)
;;     230039F4 (in rfc_config_power_ble)
;;     23003A2C (in rfc_config_power_ble)
;;     23003A5A (in rfc_config_power_ble)
rf_pa_ib_fix_setf proc
	lui	a3,00040001
	c.lw	a3,100(a5)
	c.lui	a4,FFFF0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,10
	c.or	a0,a5
	c.sw	a3,100(a0)
	c.jr	ra

;; rf_pa_vbcas_setf: 23002EB2
;;   Called from:
;;     23003936 (in rfc_config_power_ble)
;;     230039C6 (in rfc_config_power_ble)
;;     230039FE (in rfc_config_power_ble)
;;     23003A36 (in rfc_config_power_ble)
;;     23003A64 (in rfc_config_power_ble)
rf_pa_vbcas_setf proc
	lui	a3,00040001
	c.lw	a3,100(a5)
	c.lui	a4,FFFF9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,0C
	c.or	a0,a5
	c.sw	a3,100(a0)
	c.jr	ra

;; rf_pa_vbcore_setf: 23002EC6
;;   Called from:
;;     2300393C (in rfc_config_power_ble)
;;     230039CC (in rfc_config_power_ble)
;;     23003A04 (in rfc_config_power_ble)
;;     23003A3C (in rfc_config_power_ble)
;;     23003A6A (in rfc_config_power_ble)
rf_pa_vbcore_setf proc
	lui	a3,00040001
	c.lw	a3,100(a5)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.and	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.sw	a3,100(a0)
	c.jr	ra

;; rf_tmx_cs_setf: 23002EDC
;;   Called from:
;;     23003946 (in rfc_config_power_ble)
;;     230039D6 (in rfc_config_power_ble)
;;     23003A0E (in rfc_config_power_ble)
;;     23003A46 (in rfc_config_power_ble)
;;     23003A74 (in rfc_config_power_ble)
rf_tmx_cs_setf proc
	lui	a4,00040001
	c.lw	a4,108(a5)
	c.andi	a5,FFFFFFF8
	c.or	a0,a5
	c.sw	a4,108(a0)
	c.jr	ra

;; rf_fsm_st_dbg_en_setf: 23002EEA
;;   Called from:
;;     23003632 (in rfc_init)
;;     23003814 (in rfc_config_channel)
;;     23003836 (in rfc_config_channel)
rf_fsm_st_dbg_en_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000026C
	c.slli	a0,03
	c.andi	a5,FFFFFFF7
	c.or	a0,a5
	sw	a0,a4,+0000026C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc3_setf: 23002EFE
;;   Called from:
;;     23003454 (in rfc_init)
;;     23003AD2 (in rfc_apply_tx_dvga)
;;     23003C1C (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc2_setf: 23002F1E
;;   Called from:
;;     2300342E (in rfc_init)
;;     23003ACA (in rfc_apply_tx_dvga)
;;     23003BF6 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc1_setf: 23002F3E
;;   Called from:
;;     230033FA (in rfc_init)
;;     23003AC2 (in rfc_apply_tx_dvga)
;;     23003BC6 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc0_setf: 23002F60
;;   Called from:
;;     230033C0 (in rfc_init)
;;     23003ABA (in rfc_apply_tx_dvga)
;;     23003B8C (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc0_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000630
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc7_setf: 23002F78
;;   Called from:
;;     230034EA (in rfc_init)
;;     23003AF2 (in rfc_apply_tx_dvga)
;;     23003CB2 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc6_setf: 23002F98
;;   Called from:
;;     230034C6 (in rfc_init)
;;     23003AEA (in rfc_apply_tx_dvga)
;;     23003C8E (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc5_setf: 23002FB8
;;   Called from:
;;     230034A0 (in rfc_init)
;;     23003AE2 (in rfc_apply_tx_dvga)
;;     23003C68 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc4_setf: 23002FDA
;;   Called from:
;;     2300347A (in rfc_init)
;;     23003ADA (in rfc_apply_tx_dvga)
;;     23003C42 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc4_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000634
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc11_setf: 23002FF2
;;   Called from:
;;     23003580 (in rfc_init)
;;     23003B12 (in rfc_apply_tx_dvga)
;;     23003D48 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc10_setf: 23003012
;;   Called from:
;;     23003558 (in rfc_init)
;;     23003B0A (in rfc_apply_tx_dvga)
;;     23003D20 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc9_setf: 23003032
;;   Called from:
;;     23003532 (in rfc_init)
;;     23003B02 (in rfc_apply_tx_dvga)
;;     23003CFA (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc8_setf: 23003054
;;   Called from:
;;     2300350C (in rfc_init)
;;     23003AFA (in rfc_apply_tx_dvga)
;;     23003CD4 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc8_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000638
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc15_setf: 2300306C
;;   Called from:
;;     23003620 (in rfc_init)
;;     23003B38 (in rfc_apply_tx_dvga)
;;     23003DE6 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc14_setf: 2300308C
;;   Called from:
;;     230035F8 (in rfc_init)
;;     23003B2A (in rfc_apply_tx_dvga)
;;     23003DC0 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc13_setf: 230030AC
;;   Called from:
;;     230035D0 (in rfc_init)
;;     23003B22 (in rfc_apply_tx_dvga)
;;     23003D98 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc12_setf: 230030CE
;;   Called from:
;;     230035A8 (in rfc_init)
;;     23003B1A (in rfc_apply_tx_dvga)
;;     23003D70 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc12_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000063C
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+0000063C
	c.jr	ra

;; wait_us: 230030E6
;;   Called from:
;;     23003128 (in _print_channel_info)
;;     23003134 (in _print_channel_info)
;;     230036E2 (in rfc_init)
;;     230036F2 (in rfc_init)
;;     230037D2 (in rfc_config_channel)
;;     230037E2 (in rfc_config_channel)
;;     230037EE (in rfc_config_channel)
;;     230037FA (in rfc_config_channel)
;;     2300380E (in rfc_config_channel)
;;     2300381A (in rfc_config_channel)
;;     23003830 (in rfc_config_channel)
;;     2300383C (in rfc_config_channel)
;;     230038C8 (in rfc_coex_force_to)
;;     23003906 (in rfc_coex_force_to)
wait_us proc
	c.addi	sp,FFFFFFF0
	c.slli	a0,04
	c.swsp	a0,00000084

l230030EC:
	c.lwsp	a2,000000E4
	addi	a4,a5,-00000001
	c.swsp	a4,00000084
	c.bnez	a5,00000000230030EC

l230030F6:
	c.addi	sp,00000010
	c.jr	ra

;; rf_pa_etb_en_setf.constprop.16: 230030FA
;;   Called from:
;;     23003940 (in rfc_config_power_ble)
;;     230039D0 (in rfc_config_power_ble)
;;     23003A08 (in rfc_config_power_ble)
;;     23003A40 (in rfc_config_power_ble)
;;     23003A6E (in rfc_config_power_ble)
rf_pa_etb_en_setf.constprop.16 proc
	lui	a4,00040001
	c.lw	a4,100(a5)
	c.andi	a5,FFFFFFF7
	c.sw	a4,100(a5)
	c.jr	ra

;; rf_pa_half_on_setf.constprop.17: 23003106
;;   Called from:
;;     23003930 (in rfc_config_power_ble)
;;     230039C0 (in rfc_config_power_ble)
;;     230039F8 (in rfc_config_power_ble)
;;     23003A30 (in rfc_config_power_ble)
;;     23003A5E (in rfc_config_power_ble)
rf_pa_half_on_setf.constprop.17 proc
	lui	a3,00040001
	c.lw	a3,100(a5)
	c.lui	a4,FFFF8000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	a3,100(a5)
	c.jr	ra

;; _print_channel_info: 2300311A
;;   Called from:
;;     23003840 (in rfc_config_channel)
_print_channel_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000008

l23003122:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	c.jal	00000000230030E6
	c.bnez	s0,0000000023003122

l2300312C:
	c.li	s0,00000008

l2300312E:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	c.jal	00000000230030E6
	c.bnez	s0,000000002300312E

l23003138:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rfc_init: 23003140
;;   Called from:
;;     23001372 (in wifi_main)
;;     2302913C (in ble_controller_init)
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
	beq	a0,a5,00000000230031E2

l23003198:
	bltu	a5,a0,00000000230031BC

l2300319C:
	lui	a5,000016E3
	addi	a5,a5,+00000600
	c.li	a0,00000000
	beq	s1,a5,00000000230031E4

l230031AA:
	lui	a5,000018CC
	addi	a5,a5,-00000580
	c.li	a0,00000001
	beq	s1,a5,00000000230031E4

l230031B8:
	c.li	a0,00000004
	c.j	00000000230031E4

l230031BC:
	lui	a5,00002626
	addi	a5,a5,-00000600
	beq	a0,a5,00000000230031B8

l230031C8:
	lui	a5,00003197
	addi	a5,a5,+00000500
	c.li	a0,00000005
	beq	s1,a5,00000000230031E4

l230031D6:
	lui	a5,0000249F
	bne	s1,a5,00000000230031B8

l230031DE:
	c.li	a0,00000003
	c.j	00000000230031E4

l230031E2:
	c.li	a0,00000002

l230031E4:
	lui	s0,0004200F
	jal	ra,00000000230051B2
	addi	s0,s0,+00000284
	lbu	a0,s0,+00000000
	c.li	a1,00000001
	lui	s2,0004200F
	sltiu	a0,a0,+00000001
	jal	ra,0000000023006E38
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lui	s0,000000F4
	addi	s0,s0,+00000240
	srl	s0,s1,s0
	c.mv	a0,s0
	jal	ra,00000000230A3128
	lui	a5,00002626
	sw	a0,s2,+00000B00
	sw	a1,s2,+00000B04
	addi	a5,a5,-00000600
	beq	s1,a5,0000000023003724

l2300322E:
	lui	a5,000230AB
	flw	fa0,3044(a5)

l23003236:
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
	lui	a5,000230AB
	flw	fa5,3048(a5)
	lui	a5,000230AB
	lw	a0,s0,+000001C4
	fmul.s	fa0,fa0,fa5
	flw	fa5,3052(a5)
	lui	a5,000230AB
	flw	fs1,3056(a5)
	lui	s4,000230AA
	fdiv.s	fa0,fa0,fa5
	and	s2,a0,s2
	lui	s3,000FFF00
	addi	s1,s1,-0000069C
	c.mv	s7,s1
	addi	s0,s0,+0000013C
	fdiv.s	fa0,fa0,fs0
	fmul.s	fa0,fa0,fs1
	jal	ra,00000000230A31AC
	lw	a2,s4,+000003C8
	lw	a3,s4,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2FB4
	lui	a5,000230AB
	flw	fa0,3060(a5)
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
	jal	ra,00000000230A31AC
	lw	a2,s4,+000003C8
	lw	a3,s4,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2FB4
	lui	a5,000230AB
	flw	fa0,3064(a5)
	and	a0,a0,s2
	or	a0,a0,s5
	fdiv.s	fa0,fa0,fs0
	sw	a0,s0,+0000008C
	lw	a0,s0,+00000090
	c.li	s5,00000000
	and	s3,a0,s3
	fmul.s	fa0,fa0,fs1
	jal	ra,00000000230A31AC
	lw	a2,s4,+000003C8
	lw	a3,s4,+000003CC
	c.li	s4,00000000
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2FB4
	and	a0,a0,s2
	or	a0,a0,s3
	c.lui	s3,00001000
	sw	a0,s0,+00000090
	addi	s8,s3,-0000064C
	addi	s6,s3,-00000648

l23003342:
	c.mv	a0,s1
	jal	ra,0000000023005DD6
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023005E20
	bne	s1,s7,0000000023003356

l23003354:
	c.addi	s2,00000001

l23003356:
	c.slli	s2,08
	andi	a5,s4,+00000001
	or	a0,s2,a0
	beq	a5,zero,000000002300372E

l23003364:
	srai	a5,s4,00000001
	c.slli	a0,10
	c.slli	a5,02
	or	s5,s5,a0
	c.add	a5,s0
	sw	s5,a5,+00000000

l23003376:
	bne	s1,s8,0000000023003386

l2300337A:
	srai	a5,s4,00000001
	c.slli	a5,02
	c.add	a5,s0
	sw	s5,a5,+00000000

l23003386:
	c.addi	s1,00000004
	c.addi	s4,00000001
	bne	s1,s6,0000000023003342

l2300338E:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F60
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F3E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F1E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s11
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s10
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002EFE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s9
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s8
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002FDA
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s7
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s6
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002FB8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s5
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002F98
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023005EDE
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002F78
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003054
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000009
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000644
	andi	a4,a5,-00000071
	c.lwsp	s0,000000E4
	c.slli	a5,04
	andi	a5,a5,+00000070
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003032
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003012
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	and	s11,a2,s11
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s10
	or	a2,a2,s11
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023002FF2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	and	s9,a2,s9
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s8
	or	a2,a2,s9
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230030CE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023005EDE
	lw	a3,s0,+00000644
	and	s7,a3,s7
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s6
	or	a3,a3,s7
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230030AC
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023005EDE
	lw	a4,s0,+00000644
	and	s5,a4,s5
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s4
	or	a4,a4,s5
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002300308C
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	c.lui	s1,FFFF0000
	jal	ra,000000002300306C
	c.lw	s0,4(a5)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.sw	s0,4(a5)
	c.li	a0,00000000
	jal	ra,0000000023002EEA
	lw	a5,s0,+00000268
	c.li	a0,00000001
	c.and	a5,s1
	or	s3,a5,s3
	sw	s3,s0,+00000268
	jal	ra,0000000023002E56
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
	jal	ra,00000000230030E6
	c.lw	s0,4(a5)
	c.li	a0,00000001
	c.andi	a5,FFFFFFF3
	ori	a5,a5,+00000004
	c.sw	s0,4(a5)
	jal	ra,00000000230030E6
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

l23003724:
	lui	a5,000230AB
	flw	fa0,3040(a5)
	c.j	0000000023003236

l2300372E:
	c.mv	s5,a0
	c.j	0000000023003376

;; rfc_rxdfe_set_notch0: 23003732
;;   Called from:
;;     2300389C (in rfc_config_channel)
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

;; rfc_config_channel: 23003774
;;   Called from:
;;     2301952A (in rf_set_channel)
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
	jal	ra,00000000230030E6
	lw	a5,s0,+00000268
	c.li	a0,0000000A
	c.and	s1,a5
	sw	s1,s0,+00000268
	jal	ra,00000000230030E6
	c.li	a0,00000000
	jal	ra,0000000023002E56
	c.li	a0,0000000A
	jal	ra,00000000230030E6
	c.li	a0,00000001
	jal	ra,0000000023002E56
	c.li	a0,0000000A
	jal	ra,00000000230030E6
	lw	a5,s0,+0000026C
	c.li	a0,0000000A
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000001
	sw	a5,s0,+0000026C
	jal	ra,00000000230030E6
	c.li	a0,00000001
	jal	ra,0000000023002EEA
	c.li	a0,0000000A
	jal	ra,00000000230030E6
	lw	a5,s0,+0000026C
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000002
	sw	a5,s0,+0000026C
	jal	ra,00000000230030E6
	c.li	a0,00000000
	jal	ra,0000000023002EEA
	c.li	a0,0000000A
	jal	ra,00000000230030E6
	jal	ra,000000002300311A
	c.mv	a0,s2
	jal	ra,0000000023004EEE
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.mv	a0,s2
	jal	ra,0000000023004EBA
	c.lwsp	a2,00000044
	jal	ra,00000000230A307C
	lui	a5,000230AB
	lw	a2,a5,-00000430
	lw	a3,a5,-0000042C
	jal	ra,00000000230A1004
	lui	a5,000230AB
	lw	a2,a5,-00000428
	lw	a3,a5,-00000424
	jal	ra,00000000230A1B50
	lui	a5,000230AA
	lw	a2,a5,+000003C8
	lw	a3,a5,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2EB8
	slli	a2,a0,00000018
	lbu	a0,sp,+0000000B
	c.srai	a2,00000018
	c.li	a1,00000001
	jal	ra,0000000023003732
	lw	a5,s0,+00000228
	c.andi	a5,FFFFFFF7
	sw	a5,s0,+00000228
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; rfc_coex_force_to: 230038B6
;;   Called from:
;;     23001258 (in coex_wifi_rf_forece_enable)
rfc_coex_force_to proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023002E56
	c.li	a0,0000000A
	jal	ra,00000000230030E6
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
	jal	ra,00000000230030E6
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023002E56

;; rfc_config_power_ble: 23003916
;;   Called from:
;;     2302C346 (in rf_txpwr_dec)
;;     2302C382 (in rf_txpwr_inc)
;;     2302C3CA (in rf_txpwr_max_set)
;;     2302C3DC (in rf_txpwr_max_set)
;;     2302C492 (in ble_controller_set_tx_pwr)
;;     2302C4A4 (in ble_controller_set_tx_pwr)
rfc_config_power_ble proc
	c.li	a5,0000000F
	bltu	a5,a0,0000000023003A88

l2300391C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000003
	c.mv	s0,a0
	blt	a5,a0,00000000230039B4

l2300392A:
	c.li	a0,00000001
	jal	ra,0000000023002E9E
	jal	ra,0000000023003106
	c.li	a0,00000004
	jal	ra,0000000023002EB2
	c.li	a0,00000009
	jal	ra,0000000023002EC6
	jal	ra,00000000230030FA
	c.li	a0,00000005
	jal	ra,0000000023002EDC
	c.li	a0,00000002
	jal	ra,0000000023002E66
	c.li	a0,00000005
	c.slli	s0,02
	jal	ra,0000000023002E82
	c.addi	s0,FFFFFFEE

l2300395A:
	lui	a5,00040001
	lw	a4,a5,+00000648
	c.addi	s0,FFFFFFFF
	c.lui	a2,00008000
	andi	a3,a4,-00000080
	andi	a4,s0,+0000007F
	c.or	a4,a3
	sw	a4,a5,+00000648
	lw	a4,a5,+00000648
	c.lui	a3,FFFF8000
	addi	a3,a3,+000000FF
	c.and	a3,a4
	addi	a2,a2,-00000100
	slli	a4,s0,00000008
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,a5,+00000648
	lw	a4,a5,+00000648
	lui	a3,000FF810
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.slli	s0,10
	lui	a3,000007F0
	c.and	s0,a3
	c.or	s0,a4
	sw	s0,a5,+00000648
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230039B4:
	c.li	a5,00000006
	blt	a5,a0,00000000230039EC

l230039BA:
	c.li	a0,00000001
	jal	ra,0000000023002E9E
	jal	ra,0000000023003106
	c.li	a0,00000004
	jal	ra,0000000023002EB2
	c.li	a0,00000009
	jal	ra,0000000023002EC6
	jal	ra,00000000230030FA
	c.li	a0,00000005
	jal	ra,0000000023002EDC
	c.li	a0,00000002
	jal	ra,0000000023002E66
	c.li	a0,00000007
	c.slli	s0,02
	jal	ra,0000000023002E82
	c.addi	s0,FFFFFFE2
	c.j	000000002300395A

l230039EC:
	c.li	a5,00000009
	blt	a5,a0,0000000023003A24

l230039F2:
	c.li	a0,00000001
	jal	ra,0000000023002E9E
	jal	ra,0000000023003106
	c.li	a0,00000004
	jal	ra,0000000023002EB2
	c.li	a0,00000009
	jal	ra,0000000023002EC6
	jal	ra,00000000230030FA
	c.li	a0,00000005
	jal	ra,0000000023002EDC
	c.li	a0,00000003
	jal	ra,0000000023002E66
	c.li	a0,00000007
	jal	ra,0000000023002E82
	c.addi	s0,FFFFFFF6

l23003A20:
	c.slli	s0,02
	c.j	000000002300395A

l23003A24:
	c.li	a5,0000000B
	c.li	a0,00000001
	blt	a5,s0,0000000023003A5A

l23003A2C:
	jal	ra,0000000023002E9E
	jal	ra,0000000023003106
	c.li	a0,00000004
	jal	ra,0000000023002EB2
	c.li	a0,00000009
	jal	ra,0000000023002EC6
	jal	ra,00000000230030FA
	c.li	a0,00000005
	jal	ra,0000000023002EDC
	c.li	a0,00000004
	jal	ra,0000000023002E66
	c.li	a0,00000007
	jal	ra,0000000023002E82
	c.addi	s0,FFFFFFF4
	c.j	0000000023003A20

l23003A5A:
	jal	ra,0000000023002E9E
	jal	ra,0000000023003106
	c.li	a0,00000004
	jal	ra,0000000023002EB2
	c.li	a0,00000009
	jal	ra,0000000023002EC6
	jal	ra,00000000230030FA
	c.li	a0,00000005
	jal	ra,0000000023002EDC
	c.li	a0,00000006
	jal	ra,0000000023002E66
	c.li	a0,00000007
	jal	ra,0000000023002E82
	c.addi	s0,FFFFFFF1
	c.j	0000000023003A20

l23003A88:
	c.li	a0,00000000
	c.jr	ra

;; rfc_get_power_level: 23003A8C
;;   Called from:
;;     23002576 (in phy_get_rf_gain_idx)
rfc_get_power_level proc
	c.addi	sp,FFFFFFF0
	c.mv	a5,a0
	c.swsp	ra,00000084
	c.mv	a0,a1
	c.li	a1,00000000
	c.beqz	a5,0000000023003AA2

l23003A98:
	c.li	a4,00000001
	c.li	a1,00000001
	beq	a5,a4,0000000023003AA2

l23003AA0:
	c.li	a1,00000002

l23003AA2:
	jal	ra,0000000023005EA6
	c.lwsp	a2,00000020
	c.slli	a0,02
	c.addi	sp,00000010
	c.jr	ra

;; rfc_apply_tx_dvga: 23003AAE
;;   Called from:
;;     23005F86 (in rf_pri_tx_gain_comp)
rfc_apply_tx_dvga proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	lb	a0,a0,+00000000
	jal	ra,0000000023002F60
	lb	a0,s0,+00000001
	jal	ra,0000000023002F3E
	lb	a0,s0,+00000002
	jal	ra,0000000023002F1E
	lb	a0,s0,+00000003
	jal	ra,0000000023002EFE
	lb	a0,s0,+00000004
	jal	ra,0000000023002FDA
	lb	a0,s0,+00000005
	jal	ra,0000000023002FB8
	lb	a0,s0,+00000006
	jal	ra,0000000023002F98
	lb	a0,s0,+00000007
	jal	ra,0000000023002F78
	lb	a0,s0,+00000008
	jal	ra,0000000023003054
	lb	a0,s0,+00000009
	jal	ra,0000000023003032
	lb	a0,s0,+0000000A
	jal	ra,0000000023003012
	lb	a0,s0,+0000000B
	jal	ra,0000000023002FF2
	lb	a0,s0,+0000000C
	jal	ra,00000000230030CE
	lb	a0,s0,+0000000D
	jal	ra,00000000230030AC
	lb	a0,s0,+0000000E
	jal	ra,000000002300308C
	lb	a0,s0,+0000000F
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300306C

;; rfc_apply_tx_power_offset: 23003B3C
;;   Called from:
;;     23002094 (in phy_hw_set_channel)
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
	jal	ra,0000000023004E50
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F60
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F3E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023005EDE
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
	jal	ra,0000000023002F1E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s10
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s9
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002EFE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s8
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s7
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002FDA
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s6
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s5
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002FB8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000640
	and	a4,a5,s4
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s3
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002F98
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023005EDE
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023002F78
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003054
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,00000009
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	andi	a5,a2,-00000071
	c.lwsp	s0,00000084
	c.slli	a2,04
	andi	a2,a2,+00000070
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003032
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023003012
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	and	s10,a2,s10
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s9
	or	a2,a2,s10
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023002FF2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023005EDE
	lw	a2,s0,+00000644
	and	s8,a2,s8
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s7
	or	a2,a2,s8
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230030CE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023005EDE
	lw	a3,s0,+00000644
	and	s6,a3,s6
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s5
	or	a3,a3,s6
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230030AC
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023005EDE
	lw	a4,s0,+00000644
	and	s4,a4,s4
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s3
	or	a4,a4,s4
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002300308C
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023005EDE
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002300306C
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

;; rf_pri_set_gain_table_regs: 23003E06
;;   Called from:
;;     23004EB6 (in rf_pri_update_tx_power_offset)
;;     23007002 (in rf_pri_init)
rf_pri_set_gain_table_regs proc
	lui	a4,00040001
	lui	a5,00042012
	addi	a5,a5,-000003F0
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

;; rf_pri_manu_pu: 23003FD0
;;   Called from:
;;     230060B2 (in rf_pri_txcal)
;;     23006428 (in rf_pri_roscal)
;;     23006650 (in rf_pri_rccal)
;;     23006892 (in rf_pri_lo_acal)
;;     23006A0E (in rf_pri_fcal)
rf_pri_manu_pu proc
	lui	a5,00040001
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	sw	zero,a5,+0000000C
	c.li	a4,00000005
	beq	a0,a4,000000002300403E

l23003FE4:
	bltu	a4,a0,000000002300400C

l23003FE8:
	c.li	a4,00000004
	beq	a0,a4,0000000023004028

l23003FEE:
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

l2300400C:
	c.li	a4,00000007
	bltu	a4,a0,0000000023003FEE

l23004012:
	c.lw	a5,48(a4)
	lui	a3,00008F09
	addi	a3,a3,+000000FF
	c.and	a4,a3
	lui	a3,00000F00

l23004022:
	c.or	a4,a3
	c.sw	a5,48(a4)
	c.jr	ra

l23004028:
	c.lw	a5,48(a4)
	lui	a3,0002CF90
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,00024F87

l23004038:
	addi	a3,a3,-00000800
	c.j	0000000023004022

l2300403E:
	c.lw	a5,48(a4)
	lui	a3,000CF000
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,000C6FF7
	c.j	0000000023004038

;; rf_pri_save_state_for_cal: 23004050
;;   Called from:
;;     230060AC (in rf_pri_txcal)
;;     23006422 (in rf_pri_roscal)
;;     2300664A (in rf_pri_rccal)
;;     2300688A (in rf_pri_lo_acal)
;;     23006A08 (in rf_pri_fcal)
rf_pri_save_state_for_cal proc
	lui	a5,00040001
	c.lw	a5,4(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002C0
	c.lw	a5,12(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002CC
	c.lw	a5,28(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002C8
	c.lw	a5,48(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002B8
	lw	a3,a5,+000000B8
	lui	a4,0004200F
	sw	a3,a4,+000002B0
	lw	a3,a5,+000000C0
	lui	a4,0004200F
	sw	a3,a4,+000002D4
	lw	a3,a5,+000000C4
	lui	a4,0004200F
	sw	a3,a4,+000002D8
	lw	a3,a5,+00000084
	lui	a4,0004200F
	sw	a3,a4,+000002BC
	lw	a3,a5,+0000008C
	lui	a4,0004200F
	sw	a3,a4,+0000029C
	lw	a3,a5,+00000600
	lui	a4,0004200F
	sw	a3,a4,+000002A0
	lw	a3,a5,+0000060C
	lui	a4,0004200F
	sw	a3,a4,+000002A4
	lw	a3,a5,+00000618
	lui	a4,0004200F
	sw	a3,a4,+000002A8
	lw	a3,a5,+0000061C
	lui	a4,0004200F
	sw	a3,a4,+000002AC
	c.lw	a5,72(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002FC
	lw	a3,a5,+0000020C
	lui	a4,0004200F
	sw	a3,a4,+000002DC
	lw	a3,a5,+00000214
	lui	a4,0004200F
	sw	a3,a4,+000002E0
	lw	a3,a5,+00000218
	lui	a4,0004200F
	sw	a3,a4,+000002E4
	lw	a3,a5,+0000023C
	lui	a4,0004200F
	sw	a3,a4,+000002E8
	lw	a3,a5,+00000240
	lui	a4,0004200F
	sw	a3,a4,+000002EC
	lw	a3,a5,+00000244
	lui	a4,0004200F
	sw	a3,a4,+000002F0
	lw	a3,a5,+000000F0
	lui	a4,0004200F
	sw	a3,a4,+000002C4
	c.lw	a5,100(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002B4
	c.lw	a5,88(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002F8
	lw	a3,a5,+00000220
	lui	a4,0004200F
	sw	a3,a4,+000002D0
	c.lw	a5,112(a3)
	lui	a4,0004200F
	sw	a3,a4,+000002F4
	lw	a4,a5,+000000A4
	lui	a5,0004200F
	sw	a4,a5,+00000300
	c.jr	ra

;; rf_pri_restore_state_for_cal: 2300417E
;;   Called from:
;;     2300634E (in rf_pri_txcal)
;;     230065FE (in rf_pri_roscal)
;;     23006824 (in rf_pri_rccal)
;;     2300697A (in rf_pri_lo_acal)
;;     23006BF4 (in rf_pri_fcal)
rf_pri_restore_state_for_cal proc
	lui	a5,0004200F
	lw	a4,a5,+000002C0
	lui	a5,00040001
	c.sw	a5,4(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002CC
	c.sw	a5,12(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002C8
	c.sw	a5,28(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002B8
	c.sw	a5,48(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002B0
	sw	a4,a5,+000000B8
	lui	a4,0004200F
	lw	a4,a4,+000002D4
	sw	a4,a5,+000000C0
	lui	a4,0004200F
	lw	a4,a4,+000002D8
	sw	a4,a5,+000000C4
	lui	a4,0004200F
	lw	a4,a4,+000002BC
	sw	a4,a5,+00000084
	lui	a4,0004200F
	lw	a4,a4,+0000029C
	sw	a4,a5,+0000008C
	lui	a4,0004200F
	lw	a4,a4,+000002A0
	sw	a4,a5,+00000600
	lui	a4,0004200F
	lw	a4,a4,+000002A4
	sw	a4,a5,+0000060C
	lui	a4,0004200F
	lw	a4,a4,+000002A8
	sw	a4,a5,+00000618
	lui	a4,0004200F
	lw	a4,a4,+000002AC
	sw	a4,a5,+0000061C
	lui	a4,0004200F
	lw	a4,a4,+000002FC
	c.sw	a5,72(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002DC
	sw	a4,a5,+0000020C
	lui	a4,0004200F
	lw	a4,a4,+000002E0
	sw	a4,a5,+00000214
	lui	a4,0004200F
	lw	a4,a4,+000002E4
	sw	a4,a5,+00000218
	lui	a4,0004200F
	lw	a4,a4,+000002E8
	sw	a4,a5,+0000023C
	lui	a4,0004200F
	lw	a4,a4,+000002EC
	sw	a4,a5,+00000240
	lui	a4,0004200F
	lw	a4,a4,+000002F0
	sw	a4,a5,+00000244
	lui	a4,0004200F
	lw	a4,a4,+000002C4
	sw	a4,a5,+000000F0
	lui	a4,0004200F
	lw	a4,a4,+000002B4
	c.sw	a5,100(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002F8
	c.sw	a5,88(a4)
	lui	a4,0004200F
	lw	a4,a4,+000002D0
	sw	a4,a5,+00000220
	lui	a4,0004200F
	lw	a4,a4,+000002F4
	c.sw	a5,112(a4)
	lui	a4,0004200F
	lw	a4,a4,+00000300
	sw	a4,a5,+000000A4
	c.jr	ra

;; rf_pri_singen_start: 230042AC
;;   Called from:
;;     2300494C (in rf_pri_rccal_iq)
;;     230049A6 (in rf_pri_rccal_iq)
;;     230061AC (in rf_pri_txcal)
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

;; rf_pri_pm_pwr: 230042CE
;;   Called from:
;;     230047D6 (in rf_pri_txcal_search_core)
;;     23004820 (in rf_pri_txcal_search_core)
;;     2300483A (in rf_pri_txcal_search_core)
;;     23004972 (in rf_pri_rccal_iq)
;;     230049D8 (in rf_pri_rccal_iq)
;;     230049FA (in rf_pri_rccal_iq)
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

l230042F0:
	lw	a4,a5,+00000618
	addi	a2,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,00000000230042F0

l23004300:
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

;; rf_pri_start_txdfe: 23004328
;;   Called from:
;;     23004950 (in rf_pri_rccal_iq)
;;     230049AA (in rf_pri_rccal_iq)
;;     230061B0 (in rf_pri_txcal)
;;     23006C90 (in rf_pri_full_cal)
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

;; rf_pri_pm_pwr_avg: 2300435E
;;   Called from:
;;     2300496E (in rf_pri_rccal_iq)
;;     23004BDC (in rf_pri_roscal_iq.isra.3)
;;     23004C18 (in rf_pri_roscal_iq.isra.3)
;;     230061C4 (in rf_pri_txcal)
;;     23006204 (in rf_pri_txcal)
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

l23004390:
	lw	a4,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,0000000023004390

l2300439C:
	c.beqz	a0,00000000230043BC

l2300439E:
	lw	a0,a5,+00000620

l230043A2:
	lui	a3,00040001
	lw	a5,a3,+00000618
	lui	a4,000DFF00
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,07
	sw	a5,a3,+00000618
	c.srai	a0,00000007
	c.jr	ra

l230043BC:
	lw	a0,a5,+00000624
	c.j	00000000230043A2

;; rf_pri_txcal_config_hw: 230043C2
;;   Called from:
;;     23006340 (in rf_pri_txcal)
;;     23006DCE (in rf_pri_restore_cal_reg)
rf_pri_txcal_config_hw proc
	lui	a4,0004200F
	lw	a1,a4,-000004E4
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
	lw	a1,a4,-000004E4
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
	lw	t1,a4,-000004E4
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
	lw	a1,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a0,a4,-000004E4
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
	lw	a3,a4,-000004E4
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

;; rf_pri_fcal_meas: 23004664
;;   Called from:
;;     23006AD6 (in rf_pri_fcal)
;;     23006AF0 (in rf_pri_fcal)
;;     23006B16 (in rf_pri_fcal)
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
	auipc	ra,0001F008
	jalr	ra,ra,-0000017A
	lw	a5,s0,+000000AC
	ori	a5,a5,+00000010
	sw	a5,s0,+000000AC
	lui	a5,00040001

l23004698:
	lw	a3,a5,+000000AC
	addi	a4,a5,+000000AC
	slli	a2,a3,0000000B
	bge	a2,zero,0000000023004698

l230046A8:
	lw	a0,a5,+000000A8
	lw	a5,a5,+000000AC
	c.srli	a0,00000010
	c.andi	a5,FFFFFFEF
	c.sw	a4,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_rccal_config.part.0: 230046BE
;;   Called from:
;;     230046EA (in rf_pri_rccal_config)
;;     230067E0 (in rf_pri_rccal)
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

;; rf_pri_rccal_config: 230046E6
;;   Called from:
;;     230049D4 (in rf_pri_rccal_iq)
;;     230049F6 (in rf_pri_rccal_iq)
;;     230067F2 (in rf_pri_rccal)
rf_pri_rccal_config proc
	c.beqz	a0,00000000230046EE

l230046E8:
	c.mv	a0,a1
	jal	zero,00000000230046BE

l230046EE:
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

;; rf_pri_txcal_config: 23004710
;;   Called from:
;;     230047B0 (in rf_pri_txcal_search_core)
;;     2300480E (in rf_pri_txcal_search_core)
;;     2300482C (in rf_pri_txcal_search_core)
;;     2300621E (in rf_pri_txcal)
;;     23006256 (in rf_pri_txcal)
;;     23006272 (in rf_pri_txcal)
;;     2300628A (in rf_pri_txcal)
;;     230062A4 (in rf_pri_txcal)
;;     230062BE (in rf_pri_txcal)
rf_pri_txcal_config proc
	c.li	a5,00000002
	bne	a0,a5,0000000023004736

l23004716:
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

l23004736:
	c.li	a5,00000003
	bne	a0,a5,000000002300475C

l2300473C:
	bge	a1,zero,0000000023004744

l23004740:
	addi	a1,a1,+00000400

l23004744:
	lui	a4,00040001
	lw	a5,a4,+00000600
	andi	a5,a5,-00000400
	c.or	a1,a5
	ori	a1,a1,+00000400
	sw	a1,a4,+00000600
	c.jr	ra

l2300475C:
	c.bnez	a0,0000000023004774

l2300475E:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000C1000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,18

l2300476E:
	c.or	a1,a5
	c.sw	a3,112(a1)

l23004772:
	c.jr	ra

l23004774:
	c.li	a5,00000001
	bne	a0,a5,0000000023004772

l2300477A:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000FFC10
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,10
	c.j	000000002300476E

;; rf_pri_txcal_search_core: 2300478C
;;   Called from:
;;     23006214 (in rf_pri_txcal)
;;     2300622E (in rf_pri_txcal)
;;     2300624C (in rf_pri_txcal)
;;     23006268 (in rf_pri_txcal)
;;     23006282 (in rf_pri_txcal)
;;     2300629A (in rf_pri_txcal)
;;     230062B4 (in rf_pri_txcal)
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
	jal	ra,0000000023004710
	c.li	a0,0000000A
	auipc	ra,0001F008
	jalr	ra,ra,-000002B0
	lui	a4,00040001
	lw	a5,a4,+00000618
	c.lwsp	a2,000000A4
	lui	a2,000FFF00
	c.and	a5,a2
	c.slli	a3,0A
	c.or	a3,a5
	sw	a3,a4,+00000618
	jal	ra,00000000230042CE
	c.mv	s11,a0
	c.li	s4,00000001
	c.li	s5,00000002
	addi	s6,zero,-00000200
	addi	s7,zero,+000001FF
	addi	s8,zero,+000007FF
	addi	s9,zero,+0000003F

l230047F0:
	sub	s0,s2,s10
	add	s1,s2,s10
	bltu	s4,s3,000000002300486A

l230047FC:
	bge	s0,zero,0000000023004802

l23004800:
	c.li	s0,00000000

l23004802:
	bge	s9,s1,000000002300480A

l23004806:
	addi	s1,zero,+0000003F

l2300480A:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023004710
	c.li	a0,0000000A
	srai	s10,s10,00000001
	auipc	ra,0001F008
	jalr	ra,ra,-00000312
	jal	ra,00000000230042CE
	bltu	a0,s11,0000000023004890

l23004828:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023004710
	c.li	a0,0000000A
	auipc	ra,0001F008
	jalr	ra,ra,-0000032C
	jal	ra,00000000230042CE
	bgeu	a0,s11,0000000023004846

l23004842:
	c.mv	s11,a0
	c.mv	s2,s1

l23004846:
	bne	s10,zero,00000000230047F0

l2300484A:
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

l2300486A:
	bne	s3,s5,000000002300487E

l2300486E:
	bge	s0,zero,0000000023004874

l23004872:
	c.li	s0,00000000

l23004874:
	bge	s8,s1,000000002300480A

l23004878:
	addi	s1,zero,+000007FF
	c.j	000000002300480A

l2300487E:
	bge	s0,s6,0000000023004886

l23004882:
	addi	s0,zero,-00000200

l23004886:
	bge	s7,s1,000000002300480A

l2300488A:
	addi	s1,zero,+000001FF
	c.j	000000002300480A

l23004890:
	c.mv	s11,a0
	c.mv	s2,s0
	c.j	0000000023004846

;; rf_pri_singen_config.constprop.8: 23004896
;;   Called from:
;;     23004924 (in rf_pri_rccal_iq)
;;     230049A2 (in rf_pri_rccal_iq)
;;     23006106 (in rf_pri_txcal)
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

;; rf_pri_rccal_iq: 230048D4
;;   Called from:
;;     23006686 (in rf_pri_rccal)
;;     2300668E (in rf_pri_rccal)
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
	beq	a0,zero,0000000023004A12

l230048F4:
	andi	a4,a4,-00000401
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,00004000
	c.or	a4,a3

l23004906:
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
	jal	ra,0000000023004896
	lw	a5,s0,+00000214
	lui	s4,000FFF00
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000218
	jal	ra,00000000230042AC
	jal	ra,0000000023004328
	lw	a3,s0,+00000618
	c.lui	a4,00001000
	addi	a4,a4,-00000400
	and	a3,a3,s4
	c.or	a3,a4
	sw	a3,s0,+00000618
	addi	a1,zero,+00000400
	c.mv	a0,s2
	jal	ra,000000002300435E
	jal	ra,00000000230042CE
	jal	ra,00000000230A3128
	lui	a5,000230AB
	lw	a3,a5,-000002FC
	lw	a2,a5,-00000300
	jal	ra,00000000230A1B50
	jal	ra,00000000230A2FB4
	c.lw	s0,72(a4)
	c.lui	a3,00006000
	addi	a3,a3,+00000200
	c.and	a4,s1
	c.or	a4,a3
	c.sw	s0,72(a4)
	c.mv	s3,a0
	addi	a0,zero,+000000B5
	jal	ra,0000000023004896
	jal	ra,00000000230042AC
	jal	ra,0000000023004328
	lw	a5,s0,+00000618
	lui	a4,0000002D
	addi	a4,a4,+00000400
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000618
	c.li	s1,00000000
	c.li	s0,00000006
	addi	s4,zero,+00000020

l230049CC:
	add	s5,s4,s1
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230046E6
	jal	ra,00000000230042CE
	bgeu	s3,a0,00000000230049E2

l230049E0:
	c.mv	s1,s5

l230049E2:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,00000000230049CC

l230049EA:
	addi	s4,zero,+0000003F
	c.li	s5,0000000A
	c.li	s6,00000005

l230049F2:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230046E6
	jal	ra,00000000230042CE
	c.slli	s0,01
	bgeu	s3,a0,0000000023004A28

l23004A04:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s1,00000001
	bne	s0,s6,0000000023004A30

l23004A0E:
	c.li	a0,00000003
	c.j	0000000023004A38

l23004A12:
	ori	a4,a4,+00000400
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,000FC000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.j	0000000023004906

l23004A28:
	c.andi	s0,0000000F
	c.addi	s1,FFFFFFFF
	beq	s0,s5,0000000023004A0E

l23004A30:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,00000000230049F2

l23004A36:
	c.li	a0,00000002

l23004A38:
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

;; rf_pri_config_channel.constprop.9: 23004A4C
;;   Called from:
;;     230060B6 (in rf_pri_txcal)
;;     2300643C (in rf_pri_roscal)
rf_pri_config_channel.constprop.9 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200F
	lw	a2,s1,-000004E4
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
	lw	a5,s1,-000004E4
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
	lw	a3,a3,-00000078
	lui	s4,000230BF
	c.or	a5,a3
	sw	a5,a4,+000000C4
	lw	a5,a4,+000000C0
	c.lui	a3,FFFFF000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	sw	a5,a4,+000000C0

l23004AFA:
	lw	a5,s0,+000000B8
	c.li	a0,0000000A
	or	a5,a5,s5
	sw	a5,s0,+000000B8
	auipc	ra,0001F008
	jalr	ra,ra,-00000602
	lw	a5,s0,+000000B8
	addi	a0,zero,+00000032
	and	a5,a5,s2
	sw	a5,s0,+000000B8
	auipc	ra,0001F008
	jalr	ra,ra,-0000061A
	lw	a5,s0,+000000B0
	c.li	a0,0000000A
	or	a5,a5,s6
	sw	a5,s0,+000000B0
	auipc	ra,0001F008
	jalr	ra,ra,-00000630
	lw	a5,s0,+000000B0
	addi	a0,zero,+00000032
	and	a5,a5,s3
	sw	a5,s0,+000000B0
	auipc	ra,0001F008
	jalr	ra,ra,-00000648
	lw	a5,s0,+000000B4
	and	a5,a5,s7
	c.beqz	a5,0000000023004B6A

l23004B60:
	addi	a0,s4,+00000050
	jal	ra,0000000023082388
	c.j	0000000023004AFA

l23004B6A:
	lw	a5,s1,-000004E4
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
	lui	a0,000230AB
	andi	a2,a2,+000000FF
	c.li	a1,00000009
	addi	a0,a0,-000003BC
	c.addi16sp	00000030
	jal	zero,0000000023082388

;; rf_pri_roscal_iq.isra.3: 23004B98
;;   Called from:
;;     23006454 (in rf_pri_roscal)
;;     23006530 (in rf_pri_roscal)
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

l23004BC0:
	c.lw	s1,124(a5)
	add	s6,s4,s2
	beq	s3,zero,0000000023004C44

l23004BCA:
	and	a4,a5,s5
	slli	a5,s6,00000008
	c.or	a5,a4

l23004BD4:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,000000002300435E
	blt	zero,a0,0000000023004BE6

l23004BE4:
	c.mv	s2,s6

l23004BE6:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,0000000023004BC0

l23004BEE:
	c.lui	s5,FFFFC000
	addi	s4,zero,+0000003F
	lui	s1,00040001
	addi	s5,s5,+000000FF
	c.li	s6,0000000A
	c.li	s7,00000005

l23004C00:
	c.lw	s1,124(a5)
	beq	s3,zero,0000000023004C4E

l23004C06:
	and	a4,a5,s5
	slli	a5,s2,00000008
	c.or	a5,a4

l23004C10:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,000000002300435E
	c.slli	s0,01
	bge	zero,a0,0000000023004C58

l23004C22:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s2,FFFFFFFF
	bne	s0,s7,0000000023004C60

l23004C2C:
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

l23004C44:
	andi	a5,a5,-00000040
	or	a5,s6,a5
	c.j	0000000023004BD4

l23004C4E:
	andi	a5,a5,-00000040
	or	a5,a5,s2
	c.j	0000000023004C10

l23004C58:
	c.andi	s0,0000000F
	c.addi	s2,00000001
	beq	s0,s6,0000000023004C2C

l23004C60:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,0000000023004C00

l23004C66:
	c.j	0000000023004C2C

;; rf_pri_chipv: 23004C68
;;   Called from:
;;     23006E46 (in rf_pri_init)
rf_pri_chipv proc
	c.bnez	a0,0000000023004D5C

l23004C6A:
	lui	a5,0004200F
	lui	a4,00000060
	addi	a5,a5,-000004EC
	c.addi	a4,00000003
	c.sw	a5,0(a4)
	lui	a3,000230AB
	c.li	a4,00000006
	lui	a2,00042012
	lui	a1,00042012
	sh	a4,a5,+00000004
	addi	a3,a3,-000001B4
	c.li	a4,0000001C
	addi	a2,a2,-000003F0
	addi	a1,a1,-00000230
	addi	a6,zero,+000001DC

l23004C9E:
	addi	a5,a4,-0000001C

l23004CA2:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a4,a5,0000000023004CA2

l23004CBE:
	c.addi	a4,0000001C
	bne	a4,a6,0000000023004C9E

l23004CC4:
	lui	a3,00042012
	lui	a4,000230AB
	c.li	a5,00000000
	addi	a3,a3,-00000460
	addi	a4,a4,-000001EC
	addi	a2,zero,+00000038

l23004CDA:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023004CDA

l23004CEC:
	lui	a5,000230AB
	addi	a5,a5,+000001CC
	lui	a4,00042012
	addi	a4,a4,-00000070
	addi	a3,a5,+00000080

l23004D00:
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
	bne	a3,a5,0000000023004D00

l23004D26:
	lui	a5,0004200F
	addi	a5,a5,-000004F0
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

l23004D5C:
	c.li	a5,00000001
	bne	a0,a5,0000000023004E4E

l23004D62:
	lui	a5,0004200F
	lui	a4,00000050
	addi	a5,a5,-000004EC
	c.addi	a4,00000005
	c.sw	a5,0(a4)
	lui	a3,000230AB
	c.li	a4,00000005
	lui	a2,00042012
	lui	a1,00042012
	sh	a4,a5,+00000004
	addi	a3,a3,+0000000C
	c.li	a4,0000001C
	addi	a2,a2,-000003F0
	addi	a1,a1,-00000230
	addi	a6,zero,+000001DC

l23004D96:
	addi	a5,a4,-0000001C

l23004D9A:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a5,a4,0000000023004D9A

l23004DB6:
	addi	a4,a5,+0000001C
	bne	a4,a6,0000000023004D96

l23004DBE:
	lui	a3,00042012
	lui	a4,00042012
	c.li	a5,00000000
	addi	a3,a3,-00000460
	addi	a4,a4,-00000428
	addi	a2,zero,+00000038

l23004DD4:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023004DD4

l23004DE6:
	lui	a5,000230AB
	addi	a5,a5,+0000024C
	lui	a4,00042012
	addi	a4,a4,-00000070
	addi	a3,a5,+00000080

l23004DFA:
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
	bne	a5,a3,0000000023004DFA

l23004E20:
	lui	a5,0004200F
	addi	a5,a5,-000004F0
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

l23004E4E:
	c.jr	ra

;; rf_pri_update_tx_power_offset: 23004E50
;;   Called from:
;;     23003B56 (in rfc_apply_tx_power_offset)
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
	addi	a1,a1,-00000230
	addi	a0,s0,-000003F0
	jal	ra,00000000230A382C
	or	s3,s1,s2
	c.li	a5,FFFFFFF6
	xor	s1,s1,s2
	add	s1,s1,a5
	addi	a5,s0,-000003F0
	addi	a3,a5,+000001C0

l23004E92:
	c.lw	a5,20(a4)
	c.addi	a5,0000001C
	c.add	a4,s3
	sw	a4,a5,+00000FF8
	lw	a4,a5,-00000004
	c.add	a4,s1
	sw	a4,a5,+00000FFC
	bne	a5,a3,0000000023004E92

l23004EAA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023003E06

;; rf_pri_get_notch_param: 23004EBA
;;   Called from:
;;     23003852 (in rfc_config_channel)
rf_pri_get_notch_param proc
	c.lui	a4,00001000
	addi	a4,a4,-00000658
	c.li	a5,0000000D
	bltu	a4,a0,0000000023004ED4

l23004EC6:
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a0,a5
	c.li	a5,00000005
	srl	a5,a0,a5

l23004ED4:
	slli	a0,a5,00000003
	lui	a5,0004200D
	addi	a5,a5,-00000048
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	sb	a4,a1,+00000000
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_param: 23004EEE
;;   Called from:
;;     23003846 (in rfc_config_channel)
rf_pri_update_param proc
	lui	a5,0004200F
	sw	zero,a5,+00000290
	lui	a5,0004200F
	sw	zero,a5,+00000294
	lui	a5,0004200F
	sw	zero,a5,+0000028C
	lui	a5,0004200F
	sw	zero,a5,+0000030C
	c.lui	a5,00001000
	addi	a4,a5,-00000695
	bgeu	a4,a0,00000000230050BE

l23004F18:
	addi	a4,a5,-00000690
	bgeu	a4,a0,00000000230050BE

l23004F20:
	addi	a4,a5,-00000686
	bgeu	a4,a0,00000000230050B2

l23004F28:
	addi	a4,a5,-00000677
	bgeu	a4,a0,00000000230050B6

l23004F30:
	addi	a4,a5,-00000668
	bgeu	a4,a0,00000000230050BA

l23004F38:
	addi	a3,a5,-00000659
	c.li	a4,00000008
	c.li	a5,00000007
	bltu	a3,a0,0000000023004FB0

l23004F44:
	c.li	a5,00000004

l23004F46:
	lui	a4,000230AB
	addi	a3,a4,-000003D4
	slli	a2,a5,00000002
	c.add	a3,a2
	lw	a7,a3,+00000000
	addi	a4,a4,-000003D4
	c.li	a6,00000000
	beq	a7,a0,0000000023004F66

l23004F62:
	sub	a6,a0,a7

l23004F66:
	c.addi	a5,00000001
	lui	a3,000230AB
	c.slli	a5,02
	addi	a3,a3,-00000404
	add	a1,a3,a2
	c.add	a4,a5
	c.add	a3,a5
	lw	t1,a1,+00000000
	c.lw	a4,0(a1)
	c.lw	a3,0(a4)
	lui	a3,000230AB
	addi	a3,a3,-000003EC
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

l23004FB0:
	lui	a1,0004200D
	addi	a2,a1,+00000028
	addi	a3,a5,+0000000F
	c.sw	a2,16(a3)
	addi	a3,zero,+00000037
	c.sub	a3,a4
	addi	a7,a1,+00000028
	addi	t1,a1,+00000028
	c.li	a1,00000014
	c.sw	a2,20(a3)
	c.li	a6,00000000
	c.li	a3,0000000A
	sub	a5,a1,a5
	c.li	t3,FFFFFFF6

l23004FDA:
	lw	a1,a7,+00000010
	c.add	a1,a6
	c.sub	a1,a5
	c.li	a6,00000000
	bge	a3,a1,0000000023004FEC

l23004FE8:
	sub	a6,a1,a3

l23004FEC:
	bge	a3,a1,0000000023004FF2

l23004FF0:
	c.mv	a1,a3

l23004FF2:
	sw	a1,a7,+0000000C
	c.addi	a3,FFFFFFFB
	c.addi	a7,FFFFFFFC
	bne	a3,t3,0000000023004FDA

l23004FFE:
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

l23005020:
	c.lw	a2,20(a5)
	sub	a5,a5,a7
	c.add	a5,a4
	blt	t4,a5,00000000230050C2

l2300502C:
	c.sw	a2,24(a5)
	c.lw	a2,24(a1)
	c.li	a7,00000000
	bge	a1,a3,000000002300503A

l23005036:
	sub	a7,a3,a1

l2300503A:
	bge	a1,a3,0000000023005040

l2300503E:
	c.mv	a1,a3

l23005040:
	c.sw	a2,24(a1)
	c.addi	a3,00000005
	c.addi	a2,00000004
	bne	a3,t3,0000000023005020

l2300504A:
	c.li	a5,0000000F
	sw	a5,t1,+00000010
	c.lui	a4,00001000
	addi	a5,zero,+00000033
	sw	a5,t1,+00000014
	addi	a4,a4,-0000067B
	lui	a5,0004200F
	addi	a5,a5,-000004EC
	lui	a3,00040001
	bltu	a4,a0,00000000230050C6

l2300506E:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000002
	c.andi	a4,FFFFFFF8

l23005076:
	c.or	a5,a4
	c.sw	a3,108(a5)
	c.lui	a5,00001000
	lui	a4,0004200F
	addi	a3,a5,-00000676
	addi	a4,a4,+00000304
	beq	a0,a3,0000000023005176

l2300508C:
	bltu	a3,a0,00000000230050F2

l23005090:
	addi	a3,a5,-0000068A
	beq	a0,a3,0000000023005158

l23005098:
	bltu	a3,a0,00000000230050D0

l2300509C:
	addi	a3,a5,-00000694
	beq	a0,a3,0000000023005142

l230050A4:
	addi	a5,a5,-0000068F
	beq	a0,a5,000000002300514E

l230050AC:
	sw	zero,a4,+00000000
	c.jr	ra

l230050B2:
	c.li	a5,00000001
	c.j	0000000023004F46

l230050B6:
	c.li	a5,00000002
	c.j	0000000023004F46

l230050BA:
	c.li	a5,00000003
	c.j	0000000023004F46

l230050BE:
	c.li	a5,00000000
	c.j	0000000023004F46

l230050C2:
	c.add	a5,a6
	c.j	000000002300502C

l230050C6:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000004
	c.andi	a4,FFFFFFF8
	c.j	0000000023005076

l230050D0:
	addi	a3,a5,-00000680
	beq	a0,a3,0000000023005162

l230050D8:
	addi	a3,a5,-0000067B
	beq	a0,a3,000000002300516C

l230050E0:
	addi	a5,a5,-00000685
	bne	a0,a5,00000000230050AC

l230050E8:
	lui	a5,00042012
	lw	a5,a5,-00000454
	c.j	000000002300514A

l230050F2:
	addi	a3,a5,-00000662
	beq	a0,a3,0000000023005194

l230050FA:
	bltu	a3,a0,0000000023005120

l230050FE:
	addi	a3,a5,-0000066C
	beq	a0,a3,0000000023005180

l23005106:
	addi	a3,a5,-00000667
	beq	a0,a3,000000002300518A

l2300510E:
	addi	a5,a5,-00000671
	bne	a0,a5,00000000230050AC

l23005116:
	lui	a5,00042012
	lw	a5,a5,-00000444
	c.j	000000002300514A

l23005120:
	addi	a3,a5,-00000658
	beq	a0,a3,000000002300519E

l23005128:
	addi	a3,a5,-0000064C
	beq	a0,a3,00000000230051A8

l23005130:
	addi	a5,a5,-0000065D
	bne	a0,a5,00000000230050AC

l23005138:
	lui	a5,00042012
	lw	a5,a5,-00000434
	c.j	000000002300514A

l23005142:
	lui	a5,00042012
	lw	a5,a5,-00000460

l2300514A:
	c.sw	a4,0(a5)
	c.jr	ra

l2300514E:
	lui	a5,00042012
	lw	a5,a5,-0000045C
	c.j	000000002300514A

l23005158:
	lui	a5,00042012
	lw	a5,a5,-00000458
	c.j	000000002300514A

l23005162:
	lui	a5,00042012
	lw	a5,a5,-00000450
	c.j	000000002300514A

l2300516C:
	lui	a5,00042012
	lw	a5,a5,-0000044C
	c.j	000000002300514A

l23005176:
	lui	a5,00042012
	lw	a5,a5,-00000448
	c.j	000000002300514A

l23005180:
	lui	a5,00042012
	lw	a5,a5,-00000440
	c.j	000000002300514A

l2300518A:
	lui	a5,00042012
	lw	a5,a5,-0000043C
	c.j	000000002300514A

l23005194:
	lui	a5,00042012
	lw	a5,a5,-00000438
	c.j	000000002300514A

l2300519E:
	lui	a5,00042012
	lw	a5,a5,-00000430
	c.j	000000002300514A

l230051A8:
	lui	a5,00042012
	lw	a5,a5,-0000042C
	c.j	000000002300514A

;; rf_pri_xtalfreq: 230051B2
;;   Called from:
;;     230031E8 (in rfc_init)
rf_pri_xtalfreq proc
	bne	a0,zero,00000000230053BA

l230051B6:
	lui	a5,0004200D
	lui	a4,00021639
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a3,000A6E7A
	addi	a5,a5,-000004F8
	addi	a4,a4,-00000319
	addi	a3,a3,+000006A7
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200F
	addi	a4,zero,+00000500
	sh	a4,a5,+00000B0E
	lui	a5,0004200D
	addi	a5,a5,-00000048
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

l230053B2:
	c.sw	a5,92(a4)

l230053B4:
	sw	zero,a5,+00000064
	c.j	00000000230055D6

l230053BA:
	c.li	a4,00000001
	bne	a0,a4,00000000230055DC

l230053C0:
	lui	a5,0004200D
	lui	a4,0001ED21
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a3,000A6F1A
	addi	a5,a5,-000004F8
	addi	a4,a4,-0000030E
	addi	a3,a3,+000006B1
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200F
	addi	a4,zero,+0000056B
	sh	a4,a5,+00000B0E
	lui	a5,0004200D
	lui	a4,000005B9
	addi	a5,a5,-00000048
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

l230055D4:
	c.sw	a5,100(a4)

l230055D6:
	sw	zero,a5,+0000006C

l230055DA:
	c.jr	ra

l230055DC:
	c.li	a5,00000002
	bne	a0,a5,00000000230057CE

l230055E2:
	lui	a5,0004200D
	lui	a3,000190AB
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a2,000A6EFA
	addi	a5,a5,-000004F8
	addi	a3,a3,-00000310
	addi	a2,a2,+000006AF
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	lui	a5,0004200F
	addi	a3,zero,+000006AB
	sh	a3,a5,+00000B0E
	lui	a5,0004200D
	addi	a5,a5,-00000048
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
	c.j	00000000230055D4

l230057CE:
	c.li	a5,00000003
	bne	a0,a5,00000000230059D0

l230057D4:
	lui	a5,0004200D
	lui	a3,00014DE4
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a2,000A6E7A
	addi	a5,a5,-000004F8
	addi	a3,a3,-00000319
	addi	a2,a2,+000006A7
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	lui	a3,0004200F
	sh	a5,a3,+00000B0E
	lui	a5,0004200D
	addi	a5,a5,-00000048
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
	c.j	00000000230053B2

l230059D0:
	c.li	a5,00000004
	bne	a0,a5,0000000023005BD4

l230059D6:
	lui	a5,0004200D
	lui	a3,00014089
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a2,000A6E0A
	addi	a5,a5,-000004F8
	addi	a3,a3,-00000320
	addi	a2,a2,+000006A0
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	lui	a3,0004200F
	addi	a5,a5,-000007AB
	sh	a5,a3,+00000B0E
	lui	a5,0004200D
	lui	a3,000002DC
	addi	a5,a5,-00000048
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

l23005BD4:
	c.li	a5,00000005
	bne	a0,a5,00000000230055DA

l23005BDA:
	lui	a5,0004200D
	lui	a3,0000F690
	addi	a5,a5,-0000009C
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
	addi	a5,a5,-000000C8
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
	lui	a5,0004200F
	lui	a2,000A6E2A
	addi	a5,a5,-000004F8
	addi	a3,a3,-0000031E
	addi	a2,a2,+000006A2
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-0000052B
	lui	a3,0004200F
	sh	a5,a3,+00000B0E
	lui	a5,0004200D
	addi	a5,a5,-00000048
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
	jal	zero,00000000230053B4

;; rf_pri_get_vco_freq_cw: 23005DD6
;;   Called from:
;;     23003344 (in rfc_init)
rf_pri_get_vco_freq_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,00000000230A3128
	lui	a5,000230AA
	lw	a2,a5,+000003C8
	lw	a3,a5,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2EB8
	c.li	a5,00000014
	bge	a5,a0,0000000023005E04

l23005E02:
	c.li	a0,00000014

l23005E04:
	lui	a5,0004200F
	lw	a5,a5,-000004E4
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	andi	a0,a0,+000000FF
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_vco_idac_cw: 23005E20
;;   Called from:
;;     2300334C (in rfc_init)
rf_pri_get_vco_idac_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,00000000230A3128
	lui	a5,000230AA
	lw	a2,a5,+000003C8
	lw	a3,a5,+000003CC
	jal	ra,00000000230A04B4
	jal	ra,00000000230A2EB8
	c.li	a5,00000014
	bge	a5,a0,0000000023005E4E

l23005E4C:
	c.li	a0,00000014

l23005E4E:
	lui	a5,0004200F
	lw	a5,a5,-000004E4
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	c.srli	a0,00000008
	c.andi	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_txgain_max: 23005E6A
;;   Called from:
;;     23002B8E (in trpc_init)
;;     23002CEA (in trpc_update_vs_channel)
;;     23002D14 (in trpc_update_vs_temperature)
rf_pri_get_txgain_max proc
	lui	a4,0004200F
	lui	a5,00042012
	lw	a0,a4,+00000304
	lw	a5,a5,-000003D8
	lui	a4,0004200F
	c.add	a5,a0
	lw	a0,a4,+00000308
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_min: 23005E88
;;   Called from:
;;     23002B96 (in trpc_init)
;;     23002CF2 (in trpc_update_vs_channel)
;;     23002D1C (in trpc_update_vs_temperature)
rf_pri_get_txgain_min proc
	lui	a4,0004200F
	lui	a5,00042012
	lw	a0,a4,+00000304
	lw	a5,a5,-00000234
	lui	a4,0004200F
	c.add	a5,a0
	lw	a0,a4,+00000308
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_index: 23005EA6
;;   Called from:
;;     23003AA2 (in rfc_get_power_level)
rf_pri_get_txgain_index proc
	c.bnez	a1,0000000023005EAA

l23005EA8:
	c.addi	a0,FFFFFFE2

l23005EAA:
	lui	a5,0004200F
	lw	a1,a5,+00000304
	lui	a4,00042012
	lui	a5,0004200F
	lw	a6,a5,+00000308
	addi	a4,a4,-000003F0
	c.li	a5,00000000
	c.li	a2,00000010

l23005EC6:
	c.lw	a4,24(a3)
	c.add	a3,a1
	c.add	a3,a6
	bge	a0,a3,0000000023005EDA

l23005ED0:
	c.addi	a5,00000001
	c.addi	a4,0000001C
	bne	a5,a2,0000000023005EC6

l23005ED8:
	c.li	a5,0000000F

l23005EDA:
	c.mv	a0,a5
	c.jr	ra

;; rf_pri_query_txgain_table: 23005EDE
;;   Called from:
;;     23003398 (in rfc_init)
;;     230033CA (in rfc_init)
;;     23003404 (in rfc_init)
;;     23003438 (in rfc_init)
;;     2300345E (in rfc_init)
;;     23003484 (in rfc_init)
;;     230034AA (in rfc_init)
;;     230034D0 (in rfc_init)
;;     230034F4 (in rfc_init)
;;     23003516 (in rfc_init)
;;     2300353C (in rfc_init)
;;     23003562 (in rfc_init)
;;     2300358A (in rfc_init)
;;     230035B2 (in rfc_init)
;;     230035DA (in rfc_init)
;;     23003602 (in rfc_init)
;;     23003B64 (in rfc_apply_tx_power_offset)
;;     23003B96 (in rfc_apply_tx_power_offset)
;;     23003BD0 (in rfc_apply_tx_power_offset)
;;     23003C00 (in rfc_apply_tx_power_offset)
;;     23003C26 (in rfc_apply_tx_power_offset)
;;     23003C4C (in rfc_apply_tx_power_offset)
;;     23003C72 (in rfc_apply_tx_power_offset)
;;     23003C98 (in rfc_apply_tx_power_offset)
;;     23003CBC (in rfc_apply_tx_power_offset)
;;     23003CDE (in rfc_apply_tx_power_offset)
;;     23003D04 (in rfc_apply_tx_power_offset)
;;     23003D2A (in rfc_apply_tx_power_offset)
;;     23003D52 (in rfc_apply_tx_power_offset)
;;     23003D7A (in rfc_apply_tx_power_offset)
;;     23003DA2 (in rfc_apply_tx_power_offset)
;;     23003DCA (in rfc_apply_tx_power_offset)
rf_pri_query_txgain_table proc
	c.li	a5,0000000F
	bgeu	a5,a0,0000000023005EE6

l23005EE4:
	c.li	a0,0000000F

l23005EE6:
	srli	a4,a0,00000001
	c.li	a5,00000007
	c.sub	a5,a4
	c.sw	a1,0(a5)
	c.li	a5,0000001C
	add	a0,a0,a5
	lui	a5,00042012
	addi	a5,a5,-000003F0
	c.add	a0,a5
	c.lw	a0,20(a5)
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_dvga_os: 23005F06
;;   Called from:
;;     23005F76 (in rf_pri_tx_gain_comp)
rf_pri_update_dvga_os proc
	lui	a5,00042012
	lui	a2,0004200D
	addi	a5,a5,-000003F0
	c.li	a4,00000000
	addi	a2,a2,+0000005C
	c.li	a1,00000010

l23005F1A:
	c.lw	a5,20(a3)
	add	a6,a2,a4
	c.addi	a4,00000001
	c.add	a3,a0
	sb	a3,a6,+00000000
	c.addi	a5,0000001C
	bne	a4,a1,0000000023005F1A

l23005F2E:
	c.jr	ra

;; rf_pri_tx_gain_comp: 23005F30
;;   Called from:
;;     23002D78 (in phy_tcal_txpwr)
rf_pri_tx_gain_comp proc
	lui	a6,0004200F
	lw	a5,a6,+0000030C
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a4,00000001
	addi	a6,a6,+0000030C
	bne	a5,a4,0000000023005F8A

l23005F46:
	lui	a5,0004200F
	lw	a5,a5,+00000288
	bge	a0,a5,0000000023005FA2

l23005F52:
	c.addi	a5,FFFFFFFB
	bge	a5,a0,0000000023005FA2

l23005F58:
	lui	a5,0004200F
	lw	a5,a5,+00000290
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200F
	sw	a5,a4,+00000308
	lui	a5,0004200F
	lb	a0,a5,+0000028C

l23005F76:
	jal	ra,0000000023005F06
	c.lwsp	a2,00000020
	lui	a0,0004200D
	addi	a0,a0,+0000005C
	c.addi	sp,00000010
	jal	zero,0000000023003AAE

l23005F8A:
	c.li	a4,FFFFFFFF
	bne	a5,a4,0000000023005FA2

l23005F90:
	lui	a5,0004200F
	lw	a5,a5,+00000288
	bge	a5,a0,0000000023005FA2

l23005F9C:
	c.addi	a5,00000005
	blt	a0,a5,0000000023005F58

l23005FA2:
	lui	a2,0004200D
	addi	a5,a2,+00000028
	c.li	a4,0000000C
	addi	a2,a2,+00000028
	c.li	a3,FFFFFFFF

l23005FB2:
	c.lw	a5,48(a1)
	bge	a0,a1,0000000023005FC0

l23005FB8:
	c.addi	a4,FFFFFFFF
	c.addi	a5,FFFFFFFC
	bne	a4,a3,0000000023005FB2

l23005FC0:
	bge	a4,zero,0000000023005FC6

l23005FC4:
	c.li	a4,00000000

l23005FC6:
	slli	a3,a4,00000002
	c.add	a3,a2
	lui	a1,0004200F
	addi	a7,zero,+00000022
	addi	a5,a4,-00000004
	c.lw	a3,0(a3)
	addi	a1,a1,+00000288
	bge	a7,a0,000000002300603E

l23005FE2:
	addi	a0,zero,+00000023
	blt	a0,a3,0000000023005FF4

l23005FEA:
	c.addi	a4,00000001
	slli	a3,a4,00000002
	c.add	a3,a2
	c.lw	a3,0(a3)

l23005FF4:
	c.sw	a1,0(a3)

l23005FF6:
	lui	a4,0004200F
	lw	a3,a4,+00000294
	addi	a4,a4,+00000294
	bge	a3,a5,000000002300605A

l23006006:
	c.li	a3,00000001

l23006008:
	sw	a3,a6,+00000000

l2300600C:
	c.sw	a4,0(a5)
	bge	zero,a5,0000000023006062

l23006012:
	c.addi	a5,00000001
	andi	a0,a5,+00000001
	c.bnez	a0,000000002300601C

l2300601A:
	c.li	a0,FFFFFFFF

l2300601C:
	c.srai	a5,00000001

l2300601E:
	lui	a4,0004200F
	sw	a5,a4,+00000290
	lui	a4,0004200F
	sw	a0,a4,+0000028C
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200F
	sw	a5,a4,+00000308
	c.j	0000000023005F76

l2300603E:
	blt	a3,a0,0000000023006048

l23006042:
	addi	a5,a4,-00000005
	c.j	0000000023005FF4

l23006048:
	c.addi	a4,00000001
	c.slli	a4,02
	c.add	a4,a2
	c.lw	a4,0(a4)
	bge	a7,a4,0000000023006056

l23006054:
	c.mv	a4,a3

l23006056:
	c.sw	a1,0(a4)
	c.j	0000000023005FF6

l2300605A:
	bge	a5,a3,000000002300600C

l2300605E:
	c.li	a3,FFFFFFFF
	c.j	0000000023006008

l23006062:
	c.li	a0,00000000
	c.beqz	a5,000000002300601E

l23006066:
	andi	a4,a5,+00000001
	c.li	a0,FFFFFFFF
	c.beqz	a4,0000000023006070

l2300606E:
	c.li	a0,00000001

l23006070:
	c.addi	a5,FFFFFFFF
	c.li	a4,00000002
	xor	a5,a5,a4
	c.j	000000002300601E

;; rf_pri_txcal: 2300607A
;;   Called from:
;;     23006CA4 (in rf_pri_full_cal)
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
	jal	ra,0000000023004050
	c.li	a0,00000005
	jal	ra,0000000023003FD0
	jal	ra,0000000023004A4C
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
	lui	a5,0004200F
	lhu	a5,a5,-000004EC
	lui	s1,000FFC10
	c.li	s2,00000007
	c.or	a5,a4
	c.sw	s0,108(a5)
	jal	ra,0000000023004896
	lui	a5,00010000
	lui	a6,00042012
	lui	a7,00042012
	c.addi	a5,FFFFFFFF
	addi	s3,a6,-00000070
	addi	s8,a7,-000003F0
	c.swsp	a5,00000084
	c.addi	s4,FFFFFFFF
	c.addi	s5,FFFFFFFF
	c.addi	s6,FFFFFFFF
	c.addi	s7,FFFFFFFF
	c.addi	s1,FFFFFFFF

l2300612C:
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
	auipc	ra,0001F006
	jalr	ra,ra,+0000038A
	lw	s9,s3,+0000000C
	srli	s10,s9,00000001

l2300618C:
	lw	a5,s0,+00000214
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000218
	jal	ra,00000000230042AC
	jal	ra,0000000023004328
	c.li	a0,0000000A
	auipc	ra,0001F006
	jalr	ra,ra,+00000350
	addi	a1,zero,+00000400
	c.li	a0,00000001
	jal	ra,000000002300435E
	srai	s11,a0,0000000A
	lui	a5,000230AB
	c.mv	a3,s11
	c.mv	a2,s10
	c.mv	a1,s9
	addi	a0,a5,-00000258
	jal	ra,0000000023082388
	addi	a4,zero,+00000140
	addi	t1,zero,+000000BF
	bge	a4,s11,00000000230061F8

l230061EA:
	sub	s9,s9,s10

l230061EE:
	beq	s10,zero,0000000023006200

l230061F2:
	srli	s10,s10,00000001
	c.j	000000002300618C

l230061F8:
	blt	t1,s11,0000000023006200

l230061FC:
	c.add	s9,s10
	c.j	00000000230061EE

l23006200:
	c.lui	a1,00001000
	c.li	a0,00000001
	jal	ra,000000002300435E
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000000
	jal	ra,000000002300478C
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000000
	jal	ra,0000000023004710
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,000000002300478C
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
	jal	ra,000000002300478C
	c.mv	a1,a0
	c.swsp	a0,0000000C
	c.li	a0,00000000
	jal	ra,0000000023004710
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000080
	addi	a1,zero,+00000400
	c.li	a0,00000002
	jal	ra,000000002300478C
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000002
	jal	ra,0000000023004710
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,000000002300478C
	c.mv	a1,a0
	c.li	a0,00000003
	jal	ra,0000000023004710
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.mv	a1,s9
	c.li	a0,00000002
	jal	ra,000000002300478C
	c.mv	a1,a0
	c.swsp	a0,00000088
	c.li	a0,00000002
	jal	ra,0000000023004710
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,000000002300478C
	c.mv	a1,a0
	c.swsp	a0,00000008
	c.li	a0,00000003
	jal	ra,0000000023004710
	lui	s11,0004200F
	lw	a3,s11,-000004E4
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
	lui	a0,000230AB
	andi	a3,a3,-00000400
	andi	a2,a4,+000003FF
	c.or	a3,a2
	c.sw	a5,12(a3)
	c.mv	a2,t3
	c.mv	a3,t4
	c.mv	a1,t1
	addi	a0,a0,-00000234
	jal	ra,0000000023082388
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s3,00000010
	addi	s8,s8,+00000038
	bne	s2,a5,000000002300612C

l23006340:
	jal	ra,00000000230043C2
	c.lw	s0,28(a5)
	c.lui	a4,FFFFD000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.sw	s0,28(a5)
	jal	ra,000000002300417E
	c.lw	s0,20(a5)
	lui	a4,00000F00
	c.or	a5,a4
	c.sw	s0,20(a5)
	c.lw	s0,112(a5)
	lw	a3,s11,-000004E4
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
	lw	a4,s11,-000004E4
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

;; rf_pri_roscal: 230063D6
;;   Called from:
;;     23006C9C (in rf_pri_full_cal)
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
	c.bnez	a3,000000002300641C

l23006402:
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

l2300641C:
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s0,20(a5)
	jal	ra,0000000023004050
	c.li	a0,00000003
	jal	ra,0000000023003FD0
	c.lw	s0,28(a5)
	lui	s1,0004200F
	lui	s5,000FFC10
	ori	a5,a5,+00000200
	c.sw	s0,28(a5)
	jal	ra,0000000023004A4C
	c.lw	s0,72(a5)
	c.lui	a4,FFFF9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00006000
	addi	a4,a4,+00000300
	c.or	a5,a4
	c.sw	s0,72(a5)
	c.li	a0,00000001
	jal	ra,0000000023004B98
	lw	a4,s1,-000004E4
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
	lui	a0,000230AB
	and	a5,a5,s5
	or	a5,a5,s4
	sw	a5,s0,+0000016C
	addi	a0,a0,-000002F8
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	lui	a0,000230AB
	c.mv	a1,s2
	c.lw	a4,88(a5)
	addi	a0,a0,-000002E4
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
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	lui	a0,000230AB
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,-000002D0
	addi	s6,s6,+000000FF
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s5,a5,s5
	or	s4,s4,s5
	sw	s4,s0,+00000168
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	lui	a0,000230AB
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,-000002BC
	c.lui	s4,FFFFF000
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,72(a5)
	lw	a5,s0,+00000168
	addi	s4,s4,+0000003F
	andi	a5,a5,-00000040
	or	a5,s2,a5
	sw	a5,s0,+00000168
	jal	ra,0000000023082388
	c.li	a0,00000000
	jal	ra,0000000023004B98
	lw	a4,s1,-000004E4
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
	lui	a0,000230AB
	and	a5,a5,s8
	or	a5,a5,s7
	sw	a5,s0,+0000016C
	addi	a0,a0,-000002A8
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	slli	s5,s2,00000008
	lui	a0,000230AB
	c.lw	a4,88(a5)
	c.mv	a1,s2
	addi	a0,a0,-00000294
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,88(a5)
	lw	a5,s0,+0000016C
	and	a5,a5,s6
	or	a5,a5,s5
	sw	a5,s0,+0000016C
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	lui	a0,000230AB
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,-00000280
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s8,a5,s8
	or	s7,s7,s8
	sw	s7,s0,+00000168
	jal	ra,0000000023082388
	lw	a4,s1,-000004E4
	lui	a0,000230AB
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,-0000026C
	and	s4,a5,s4
	or	s3,s4,s3
	sw	s3,a4,+00000048
	lw	a5,s0,+00000168
	and	s6,a5,s6
	or	s5,s5,s6
	sw	s5,s0,+00000168
	jal	ra,0000000023082388
	jal	ra,000000002300417E
	c.lw	s0,20(a5)
	c.lui	a4,0000C000
	c.or	a5,a4
	c.j	0000000023006402

;; rf_pri_rccal: 2300660A
;;   Called from:
;;     23006CA0 (in rf_pri_full_cal)
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
	c.bnez	a3,0000000023006640

l23006630:
	sw	a5,s2,+00000014

l23006634:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23006640:
	lui	a4,00000040
	c.or	a5,a4
	sw	a5,s2,+00000014
	jal	ra,0000000023004050
	c.li	a0,00000004
	jal	ra,0000000023003FD0
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
	jal	ra,00000000230048D4
	c.mv	s1,a0
	c.li	a0,00000000
	jal	ra,00000000230048D4
	lw	a4,s2,+00000080
	lui	s2,0004200F
	lw	a5,s2,-000004E4
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
	lui	a0,000230AB
	andi	a4,a4,+0000003F
	andi	a3,a3,+0000003F
	andi	a2,a2,+0000003F
	andi	a1,a1,+0000003F
	addi	a0,a0,-0000034C
	jal	ra,0000000023082388
	lw	a4,s2,-000004E4
	c.lw	a4,8(a5)
	c.lw	a4,8(a3)
	andi	a5,a5,+0000003F
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	bgeu	a5,a3,000000002300673E

l23006736:
	c.lw	a4,8(a5)
	c.srli	a5,00000006
	andi	a5,a5,+0000003F

l2300673E:
	c.lw	a4,8(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+0000003F
	bgeu	a5,a3,0000000023006752

l2300674A:
	c.lw	a4,8(a5)
	c.srli	a5,0000000C
	andi	a5,a5,+0000003F

l23006752:
	c.lw	a4,8(a3)
	c.srli	a3,00000012
	andi	a3,a3,+0000003F
	bgeu	a5,a3,0000000023006766

l2300675E:
	c.lw	a4,8(a5)
	c.srli	a5,00000012
	andi	a5,a5,+0000003F

l23006766:
	addi	a2,zero,+00000027
	c.li	a3,00000018
	bge	a2,a5,0000000023006776

l23006770:
	addi	a3,zero,+0000003F
	c.sub	a3,a5

l23006776:
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
	jal	ra,00000000230046BE
	lw	a5,s2,-000004E4
	c.li	a0,00000000
	c.lw	a5,8(a1)
	c.srli	a1,00000006
	andi	a1,a1,+0000003F
	jal	ra,00000000230046E6
	lw	a5,s2,-000004E4
	lui	a0,000230AB
	addi	a0,a0,-00000350
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
	jal	ra,0000000023082388
	jal	ra,000000002300417E
	c.li	a5,00000002
	beq	s1,a5,0000000023006832

l2300682E:
	bne	s0,a5,000000002300684A

l23006832:
	lui	a3,00040001
	c.lw	a3,20(a5)
	lui	a4,000FFF40
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000080
	c.or	a5,a4
	c.sw	a3,20(a5)
	c.j	0000000023006634

l2300684A:
	lui	a4,00040001
	c.lw	a4,20(a5)
	lui	a3,000000C0
	c.or	a5,a3
	c.sw	a4,20(a5)
	c.j	0000000023006634

;; rf_pri_lo_acal: 2300685A
;;   Called from:
;;     23006C98 (in rf_pri_full_cal)
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
	jal	ra,0000000023004050
	c.li	a0,00000006
	c.lui	s5,FFFFE000
	jal	ra,0000000023003FD0
	addi	s3,s3,-0000009C
	c.li	s2,00000000
	lui	s0,00040001
	c.addi	s4,FFFFFFFF
	lui	s6,0004200F
	addi	s5,s5,+000000FF

l230068AA:
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
	lw	a5,s6,-000004E4
	c.add	a5,a3
	lhu	a5,a5,+0000000C
	andi	a5,a5,+000000FF
	c.or	a5,a4
	sw	a5,s0,+000000A0
	lw	a5,s3,+00000000
	sw	a5,s0,+000000C4
	auipc	ra,0001F006
	jalr	ra,ra,-00000402

l23006910:
	lw	a5,s0,+000000A0
	slli	a3,s1,00000010
	c.li	a0,00000001
	and	a5,a5,s4
	c.or	a5,a3
	sw	a5,s0,+000000A0
	bne	s8,s9,00000000230069A4

l23006928:
	auipc	ra,0001F006
	jalr	ra,ra,-00000422
	lw	a5,s0,+000000A4
	slli	a4,a5,00000013
	blt	a4,zero,0000000023006944

l2300693C:
	c.li	a5,0000001E
	bltu	a5,s1,0000000023006944

l23006942:
	c.addi	s1,00000001

l23006944:
	lw	a5,s6,-000004E4
	c.slli	s7,01
	andi	a4,s1,+0000001F
	c.add	s7,a5
	lhu	a5,s7,+0000000C
	c.slli	a4,08
	lui	a0,000230AB
	and	a5,a5,s5
	c.or	a5,a4
	sh	a5,s7,+0000000C
	c.mv	a1,s2
	c.mv	a2,s1
	addi	a0,a0,-00000370
	jal	ra,0000000023082388
	c.addi	s2,00000001
	c.li	a5,00000015
	c.addi	s3,00000004
	bne	s2,a5,00000000230068AA

l2300697A:
	jal	ra,000000002300417E
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

l230069A4:
	auipc	ra,0001F006
	jalr	ra,ra,-0000049E
	lw	a4,s0,+000000A4
	c.li	a5,00000001
	sll	a5,a5,s8
	slli	a3,a4,00000013
	bge	a3,zero,00000000230069C4

l230069BE:
	c.sub	s1,a5

l230069C0:
	c.addi	s8,FFFFFFFF
	c.j	0000000023006910

l230069C4:
	c.add	s1,a5
	c.j	00000000230069C0

;; rf_pri_fcal: 230069C8
;;   Called from:
;;     23006C94 (in rf_pri_full_cal)
rf_pri_fcal proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200F
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
	addi	a5,a5,-000004F8
	lhu	s4,a5,+00000000
	lhu	s5,a5,+00000002
	lhu	s3,a5,+00000004
	c.lw	s0,20(a5)
	c.lui	s1,FFFF0000
	c.lui	s2,00010000
	andi	a5,a5,-00000031
	ori	a5,a5,+00000010
	c.sw	s0,20(a5)
	jal	ra,0000000023004050
	c.li	a0,00000007
	jal	ra,0000000023003FD0
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
	lui	s7,000230AB
	and	a4,a5,s1
	lui	a5,0004200F
	lhu	a5,a5,-000004F2
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
	auipc	ra,0001F006
	jalr	ra,ra,-00000580
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001F006
	jalr	ra,ra,-000005A2
	lw	a5,s0,+000000A4
	addi	a0,zero,+00000032
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000002
	sw	a5,s0,+000000A4
	auipc	ra,0001F006
	jalr	ra,ra,-000005BC

l23006ACA:
	c.li	s2,00000006
	addi	s0,zero,+00000080

l23006AD0:
	beq	s2,s9,0000000023006AE2

l23006AD4:
	c.mv	a0,s0
	jal	ra,0000000023004664
	bltu	a0,s4,0000000023006B4C

l23006ADE:
	bltu	s5,a0,0000000023006B5A

l23006AE2:
	bgeu	s8,s0,0000000023006B62

l23006AE6:
	addi	s1,s0,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,0000000023004664
	addi	s2,s0,-00000026
	lui	a5,00042012
	c.slli	s2,10
	sh	a0,a5,+00000AF0
	addi	s4,a5,-00000510
	srli	s2,s2,00000010
	addi	s5,a5,-00000510

l23006B0E:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,0000000023004664
	sh	a0,s4,+00000002
	bltu	s3,a0,0000000023006B28

l23006B22:
	c.addi	s4,00000002
	bne	s1,s2,0000000023006B0E

l23006B28:
	lui	a2,0004200D
	lui	s1,00042012
	c.li	a3,00000000
	c.li	a5,00000000
	addi	a2,a2,-000000C8
	addi	s1,s1,-000004C0
	c.addi	s0,00000002
	addi	a6,zero,+0000002A

l23006B42:
	add	a4,a2,a3
	lhu	a0,a4,+00000000
	c.j	0000000023006BC0

l23006B4C:
	sll	a1,s6,s2
	c.sub	s0,a1

l23006B52:
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s2,FFFFFFFF
	c.j	0000000023006AD0

l23006B5A:
	sll	a1,s6,s2
	c.add	s0,a1
	c.j	0000000023006B52

l23006B62:
	c.mv	a1,s0
	addi	a0,s7,-000003A8
	lui	s0,00040001
	jal	ra,0000000023082388
	lw	a5,s0,+000000C0
	c.lui	s2,00010000
	addi	a0,zero,+00000032
	c.and	a5,s1
	sw	a5,s0,+000000C0
	lw	a4,s0,+000000B8
	or	a4,a4,s2
	sw	a4,s0,+000000B8
	auipc	ra,0001F006
	jalr	ra,ra,-00000686
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001F006
	jalr	ra,ra,-000006A8
	c.j	0000000023006ACA

l23006BB8:
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010

l23006BC0:
	slli	a1,a5,00000001
	c.add	a1,s5
	lhu	a1,a1,+00000000
	slli	a4,a5,00000010
	c.srli	a4,00000010
	bltu	a1,a0,0000000023006BB8

l23006BD4:
	add	a1,s1,a3
	sub	a0,s0,a4
	sh	a0,a1,+00000000
	bge	zero,a5,0000000023006C5E

l23006BE4:
	addi	a5,a4,-00000001
	c.slli	a5,10
	c.srai	a5,00000010

l23006BEC:
	c.addi	a3,00000002
	bne	a3,a6,0000000023006B42

l23006BF2:
	c.mv	s0,s1
	jal	ra,000000002300417E
	c.li	s1,00000000
	lui	s4,0004200F
	lui	s3,000230AB
	c.li	s2,00000015

l23006C04:
	lw	a4,s4,-000004E4
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
	addi	a0,s3,-00000394
	jal	ra,0000000023082388
	c.addi	s0,00000002
	bne	s1,s2,0000000023006C04

l23006C38:
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

l23006C5E:
	c.li	a5,00000000
	c.j	0000000023006BEC

;; rf_pri_full_cal: 23006C62
;;   Called from:
;;     23007038 (in rf_pri_init)
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
	jal	ra,0000000023004328
	jal	ra,00000000230069C8
	jal	ra,000000002300685A
	jal	ra,00000000230063D6
	jal	ra,000000002300660A
	jal	ra,000000002300607A
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

;; rf_pri_restore_cal_reg: 23006CD4
;;   Called from:
;;     2300702A (in rf_pri_init)
rf_pri_restore_cal_reg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	lw	a2,s1,-000004E4
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
	lw	a1,s1,-000004E4
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
	lw	a3,s1,-000004E4
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
	jal	ra,00000000230043C2
	lw	a3,s1,-000004E4
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
	lw	a3,s1,-000004E4
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

;; rf_pri_init: 23006E38
;;   Called from:
;;     230031FE (in rfc_init)
rf_pri_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,0000000023004C68
	lui	a4,0004200F
	addi	a4,a4,+00000298
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
	c.bnez	a5,0000000023006EAE

l23006EA4:
	c.li	a0,0000000A
	auipc	ra,0001F005
	jalr	ra,ra,+0000066A

l23006EAE:
	lui	a2,0004200F
	addi	a2,a2,-000004F0
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
	jal	ra,0000000023003E06
	lw	a5,s1,+00000404
	or	a5,a5,s2
	sw	a5,s1,+00000404
	lw	a5,s1,+0000041C
	ori	a5,a5,+000000FF
	sw	a5,s1,+0000041C
	c.bnez	s0,000000002300702E

l23007020:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023006CD4

l2300702E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023006C62

;; rf_pri_update_power_offset: 2300703C
;;   Called from:
;;     2300B4F4 (in bl_tpc_update_power_table)
rf_pri_update_power_offset proc
	lui	a3,00042012
	lui	a4,00042012
	c.li	a5,00000000
	addi	a3,a3,-00000428
	addi	a4,a4,-00000460
	addi	a1,zero,+00000038

l23007052:
	add	a2,a0,a5
	c.lw	a2,0(a2)
	add	a6,a3,a5
	sw	a2,a6,+00000000
	add	a6,a4,a5
	sw	a2,a6,+00000000
	c.addi	a5,00000004
	bne	a5,a1,0000000023007052

l2300706E:
	c.jr	ra

;; sysctrl_init: 23007070
;;   Called from:
;;     2300138E (in wifi_main)
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

;; intc_spurious: 23007090
intc_spurious proc
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000036
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	zero,0000000023001234

;; intc_enable_irq: 230070A8
;;   Called from:
;;     230070C6 (in intc_init)
;;     230070CE (in intc_init)
;;     230070D6 (in intc_init)
;;     230070DC (in intc_init)
;;     230070E2 (in intc_init)
;;     230070E8 (in intc_init)
;;     230070EE (in intc_init)
;;     230070F4 (in intc_init)
;;     230070FA (in intc_init)
;;     23007100 (in intc_init)
;;     23007106 (in intc_init)
;;     2300710E (in intc_init)
;;     23007116 (in intc_init)
;;     2300711E (in intc_init)
;;     23007126 (in intc_init)
;;     2300712E (in intc_init)
;;     23007136 (in intc_init)
;;     2300713E (in intc_init)
;;     23007146 (in intc_init)
;;     2300714C (in intc_init)
;;     23007156 (in intc_init)
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

;; intc_init: 230070BE
;;   Called from:
;;     23001392 (in wifi_main)
intc_init proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+0000003F
	c.swsp	ra,00000084
	jal	ra,00000000230070A8
	addi	a0,zero,+0000003E
	jal	ra,00000000230070A8
	addi	a0,zero,+0000003D
	jal	ra,00000000230070A8
	c.li	a0,00000018
	jal	ra,00000000230070A8
	c.li	a0,00000019
	jal	ra,00000000230070A8
	c.li	a0,0000001A
	jal	ra,00000000230070A8
	c.li	a0,0000001B
	jal	ra,00000000230070A8
	c.li	a0,0000001C
	jal	ra,00000000230070A8
	c.li	a0,0000001D
	jal	ra,00000000230070A8
	c.li	a0,0000001E
	jal	ra,00000000230070A8
	c.li	a0,0000001F
	jal	ra,00000000230070A8
	addi	a0,zero,+00000020
	jal	ra,00000000230070A8
	addi	a0,zero,+00000021
	jal	ra,00000000230070A8
	addi	a0,zero,+00000023
	jal	ra,00000000230070A8
	addi	a0,zero,+00000037
	jal	ra,00000000230070A8
	addi	a0,zero,+00000035
	jal	ra,00000000230070A8
	addi	a0,zero,+00000032
	jal	ra,00000000230070A8
	addi	a0,zero,+00000034
	jal	ra,00000000230070A8
	addi	a0,zero,+00000036
	jal	ra,00000000230070A8
	c.li	a0,0000000A
	jal	ra,00000000230070A8
	c.lwsp	a2,00000020
	c.li	a0,0000000B
	c.addi	sp,00000010
	jal	zero,00000000230070A8

;; mac_irq: 2300715A
mac_irq proc
	lui	a5,00044910
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023007166

l23007162:
	c.lw	a5,4(a5)
	c.beqz	a5,00000000230071A8

l23007166:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	a5,00044910
	c.lw	a5,64(a5)
	slli	a4,a5,00000002
	lui	a5,000230AB
	addi	a5,a5,+000002CC
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.bnez	s0,000000002300719C

l23007184:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000009D
	addi	a1,a1,+0000020C
	addi	a0,a0,+000003CC
	jal	ra,0000000023001234

l2300719C:
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023001482

l230071A8:
	c.jr	ra

;; bl_irq_handler: 230071AA
;;   Called from:
;;     23023DFC (in bl_output)
bl_irq_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023021B90
	lui	a0,00040000
	jal	ra,00000000230146D6
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023001482

;; blmac_soft_reset_getf: 230071C2
;;   Called from:
;;     230072A6 (in hal_machw_stop)
;;     230072C4 (in hal_machw_init)
blmac_soft_reset_getf proc
	c.addi	sp,FFFFFFF0
	lui	a5,00044B08
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,80(s0)
	andi	a5,s0,-00000002
	c.beqz	a5,00000000230071EC

l230071D4:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000011D
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000400
	jal	ra,0000000023001234

l230071EC:
	andi	a0,s0,+000000FF
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; blmac_wt_2_crypt_clk_ratio_setf: 230071F8
;;   Called from:
;;     2300745C (in hal_machw_init)
blmac_wt_2_crypt_clk_ratio_setf proc
	lui	a4,00044B00
	lw	a5,a4,+000000F0
	c.andi	a5,FFFFFFFC
	c.or	a0,a5
	sw	a0,a4,+000000F0
	c.jr	ra

;; blmac_rx_flow_cntrl_en_setf.constprop.9: 2300720A
;;   Called from:
;;     23007638 (in hal_machw_init)
;;     2300775C (in hal_machw_reset)
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

;; blmac_key_sto_ram_reset_setf.constprop.12: 2300721E
;;   Called from:
;;     23007682 (in hal_machw_init)
;;     2300784C (in hal_machw_monitor_mode)
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

;; hal_machw_idle_req: 23007232
;;   Called from:
;;     2301B540 (in mm_set_idle_req_handler)
;;     2301B694 (in mm_start_req_handler)
;;     2301B71C (in mm_force_idle_req_handler)
;;     2301BCA6 (in mm_hw_config_handler)
hal_machw_idle_req proc
	lui	a5,00044B00
	c.lw	a5,56(a4)
	c.andi	a4,0000000F
	c.bnez	a4,0000000023007254

l2300723C:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+000000E1
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000798
	jal	zero,00000000230011F4

l23007254:
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
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	ori	a4,a4,+00000004
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; hal_machw_stop: 2300729A
;;   Called from:
;;     2301B5A0 (in mm_reset_req_handler)
hal_machw_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l230072A6:
	jal	ra,00000000230071C2
	c.bnez	a0,00000000230072A6

l230072AC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_machw_init: 230072B2
;;   Called from:
;;     23007EB8 (in mm_init)
hal_machw_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l230072C4:
	jal	ra,00000000230071C2
	c.bnez	a0,00000000230072C4

l230072CA:
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
	jal	ra,000000002300255C
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
	c.beqz	a5,0000000023007364

l2300734A:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,a2,-000002A7
	addi	a1,a1,+0000020C
	addi	a0,a0,+000007C0
	jal	ra,0000000023001234

l23007364:
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
	c.beqz	a5,000000002300741E

l23007404:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000015E
	addi	a1,a1,+0000020C
	addi	a0,a0,-000007FC
	jal	ra,0000000023001234

l2300741E:
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
	bgeu	a5,s1,000000002300745C

l23007450:
	addi	a5,zero,+0000003B
	c.li	a0,00000002
	bgeu	a5,s1,000000002300745C

l2300745A:
	c.li	a0,00000001

l2300745C:
	jal	ra,00000000230071F8
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
	c.beqz	a5,00000000230074F6

l230074DC:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,+0000028A
	addi	a1,a1,+0000020C
	addi	a0,a0,-000007B4
	jal	ra,0000000023001234

l230074F6:
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
	c.beqz	a5,0000000023007550

l23007536:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,+000002A4
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000770
	jal	ra,0000000023001234

l23007550:
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
	c.beqz	s0,00000000230075A6

l2300758C:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,+000002BE
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000730
	jal	ra,0000000023001234

l230075A6:
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
	bltu	a4,a5,00000000230075F8

l230075E0:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000124
	addi	a1,a1,+0000020C
	addi	a0,a0,-000006E8
	jal	ra,0000000023001234

l230075F8:
	lui	a0,000230AC
	c.li	a3,00000008
	c.li	a2,00000011
	c.li	a1,00000002
	addi	a0,a0,-000006A0
	jal	ra,0000000023082388
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
	jal	ra,000000002300720A
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
	jal	ra,000000002300721E
	sw	s1,s0,+00000510
	lw	a5,s0,+00000310
	ori	a5,a5,+00000080
	sw	a5,s0,+00000310
	jal	ra,000000002300253C
	c.addi	a0,00000001
	slli	s0,a0,0000001A
	lui	a5,000E0000
	c.and	a5,s0
	c.beqz	a5,00000000230076C0

l230076A8:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,s2,+00000539
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000668
	jal	ra,0000000023001234

l230076C0:
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

;; hal_machw_disable_int: 230076F4
;;   Called from:
;;     23001216 (in assert_rec)
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

;; hal_machw_reset: 23007712
;;   Called from:
;;     230083EA (in mm_force_idle_req)
;;     2300A050 (in bl_reset_evt)
hal_machw_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002300772E

l23007722:
	lui	a0,000230AB
	addi	a0,a0,+000003F0
	jal	ra,00000000230196A0

l2300772E:
	lui	a5,00044B00
	c.lw	a5,76(a4)
	lui	s0,00044B00
	andi	a4,a4,-00000081
	c.sw	a5,76(a4)
	sw	zero,a5,+00000038
	addi	a4,zero,+0000007C
	c.sw	a5,84(a4)

l23007748:
	c.lw	s0,56(a5)
	c.andi	a5,0000000F
	c.bnez	a5,0000000023007748

l2300774E:
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,000000002300720A
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

;; hal_machw_search_addr: 230077AA
;;   Called from:
;;     2301037C (in rxu_cntrl_frame_handle)
;;     23013D34 (in apm_auth_handler)
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

l230077E6:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000002
	blt	a3,zero,00000000230077E6

l230077F2:
	slli	a4,a5,00000003
	addi	a0,zero,+000000FF
	blt	a4,zero,0000000023007808

l230077FE:
	srli	a0,a5,00000010
	c.addi	a0,FFFFFFF8
	andi	a0,a0,+000000FF

l23007808:
	c.jr	ra

;; hal_machw_monitor_mode: 2300780A
;;   Called from:
;;     2301B9C2 (in mm_hw_config_handler)
hal_machw_monitor_mode proc
	lui	a5,00044B08
	c.lw	a5,116(a4)
	lui	a3,0004201F
	addi	a3,a3,-0000067C
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
	jal	zero,000000002300721E

;; hal_machw_sleep_check: 23007850
;;   Called from:
;;     2300A0BA (in bl_sleep)
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

l23007870:
	sll	a4,a6,a5
	c.and	a4,a0
	c.beqz	a4,00000000230078C8

l23007878:
	slli	a3,a5,00000002
	c.add	a3,a7
	lw	t4,a3,+00000000
	lw	a4,a2,+00000120
	sub	a4,t1,a4
	c.add	a4,t4
	bge	a4,zero,00000000230078C8

l23007890:
	c.lw	a3,0(a4)
	lw	a3,a2,+00000120
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.sub	a5,a3
	c.add	a5,a4
	c.li	s0,00000000
	bge	a5,zero,00000000230078BE

l230078A6:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000208
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000628
	jal	ra,0000000023001234

l230078BE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230078C8:
	c.addi	a5,00000001
	bne	a5,a1,0000000023007870

l230078CE:
	c.li	s0,00000001
	c.j	00000000230078BE

;; hal_machw_gen_handler: 230078D2
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
	c.beqz	a5,00000000230078F8

l230078F0:
	lui	a0,00000400
	jal	ra,00000000230146D6

l230078F8:
	lui	a5,00000080
	c.addi	a5,00000002
	c.and	a5,s0
	c.beqz	a5,000000002300790A

l23007902:
	lui	a0,00000200
	jal	ra,00000000230146D6

l2300790A:
	andi	a5,s0,+00000004
	c.beqz	a5,0000000023007932

l23007910:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,00000000230079CC

l2300791A:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000008C
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000042C
	jal	ra,00000000230011F4

l23007932:
	andi	a5,s0,+00000008
	c.beqz	a5,00000000230079A6

l23007938:
	lui	a5,00044B08
	lw	s1,a5,+00000084
	sw	s1,a5,+00000088
	andi	a5,s1,+00000100
	c.beqz	a5,0000000023007952

l2300794A:
	lui	a0,00004000
	jal	ra,00000000230146D6

l23007952:
	andi	a5,s1,+00000040
	c.beqz	a5,000000002300795C

l23007958:
	jal	ra,000000002300A2D6

l2300795C:
	andi	a5,s1,+00000080
	c.beqz	a5,000000002300796A

l23007962:
	lui	a0,00008000
	jal	ra,00000000230146D6

l2300796A:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023007988

l23007970:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000022F
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000454
	jal	ra,00000000230011F4

l23007988:
	andi	a5,s1,+00000002
	c.beqz	a5,00000000230079F4

l2300798E:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000232
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000470

l230079A2:
	jal	ra,00000000230011F4

l230079A6:
	andi	a5,s0,+00000080
	c.beqz	a5,0000000023007A64

l230079AC:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000278
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000538

l230079C0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230011F4

l230079CC:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	lui	a0,00000800
	andi	a5,a5,-00000021
	sw	a5,a4,+0000008C
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,00000000230146D6
	c.j	0000000023007932

l230079F4:
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023007A10

l230079FA:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000233
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000498
	c.j	00000000230079A2

l23007A10:
	andi	a5,s1,+00000008
	c.beqz	a5,0000000023007A2C

l23007A16:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000234
	addi	a1,a1,+0000020C
	addi	a0,a0,+000004C0
	c.j	00000000230079A2

l23007A2C:
	andi	a5,s1,+00000010
	c.beqz	a5,0000000023007A48

l23007A32:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000235
	addi	a1,a1,+0000020C
	addi	a0,a0,+000004E8
	c.j	00000000230079A2

l23007A48:
	andi	s1,s1,+00000020
	c.beqz	s1,00000000230079A6

l23007A4E:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000236
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000510
	c.j	00000000230079A2

l23007A64:
	andi	a5,s0,+00000100
	c.beqz	a5,0000000023007A80

l23007A6A:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000279
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000564
	c.j	00000000230079C0

l23007A80:
	slli	a5,s0,00000013
	bge	a5,zero,0000000023007A9E

l23007A88:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027A
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000594
	c.j	00000000230079C0

l23007A9E:
	slli	a5,s0,00000012
	bge	a5,zero,0000000023007ABC

l23007AA6:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027B
	addi	a1,a1,+0000020C
	addi	a0,a0,+000005BC
	c.j	00000000230079C0

l23007ABC:
	slli	a5,s0,00000011
	bge	a5,zero,0000000023007ADA

l23007AC4:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027C
	addi	a1,a1,+0000020C
	addi	a0,a0,+000005EC
	c.j	00000000230079C0

l23007ADA:
	slli	a5,s0,00000010
	bge	a5,zero,0000000023007AF8

l23007AE2:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027D
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000061C
	c.j	00000000230079C0

l23007AF8:
	slli	a5,s0,0000000F
	bge	a5,zero,0000000023007B16

l23007B00:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027E
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000064C
	c.j	00000000230079C0

l23007B16:
	slli	a5,s0,0000000E
	bge	a5,zero,0000000023007B34

l23007B1E:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+0000027F
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000067C
	c.j	00000000230079C0

l23007B34:
	slli	a5,s0,0000000A
	bge	a5,zero,0000000023007B52

l23007B3C:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000280
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006AC
	c.j	00000000230079C0

l23007B52:
	slli	a5,s0,00000009
	bge	a5,zero,0000000023007B70

l23007B5A:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000281
	addi	a1,a1,+0000020C
	addi	a0,a0,+000006E0
	c.j	00000000230079C0

l23007B70:
	slli	a5,s0,00000007
	bge	a5,zero,0000000023007B8E

l23007B78:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000282
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000708
	c.j	00000000230079C0

l23007B8E:
	slli	a5,s0,00000006
	bge	a5,zero,0000000023007BAC

l23007B96:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000283
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000073C
	c.j	00000000230079C0

l23007BAC:
	slli	a5,s0,0000000B
	bge	a5,zero,0000000023007BCA

l23007BB4:
	lui	a1,000230AA
	lui	a0,000230AB
	addi	a2,zero,+00000284
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000770
	c.j	00000000230079C0

l23007BCA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mm_rx_filter_set: 23007BD4
;;   Called from:
;;     23007EA6 (in mm_env_init)
;;     23008326 (in mm_hw_info_set)
;;     23008344 (in mm_hw_ap_info_set)
;;     2300837A (in mm_hw_ap_info_reset)
mm_rx_filter_set proc
	lui	a5,0004201F
	addi	a5,a5,-0000067C
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.jr	ra

;; element_notify_status_enabled: 23007BEA
element_notify_status_enabled proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_ap_setf: 23007BEE
;;   Called from:
;;     230082BA (in mm_hw_info_set)
;;     23008330 (in mm_hw_ap_info_set)
;;     23008366 (in mm_hw_ap_info_reset)
blmac_ap_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ascii_to_hex: 23007BFE
;;   Called from:
;;     23008602 (in mm_sta_add)
;;     2300860E (in mm_sta_add)
ascii_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,0000000023007C24

l23007C0E:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,0000000023007C26

l23007C1C:
	addi	a5,a5,-00000057

l23007C20:
	andi	a0,a5,+000000FF

l23007C24:
	c.jr	ra

l23007C26:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,0000000023007C24

l23007C34:
	addi	a5,a5,-00000037
	c.j	0000000023007C20

;; element_notify_time_last_received_set: 23007C3A
element_notify_time_last_received_set proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_encr_cntrl_pack.constprop.8: 23007C3E
;;   Called from:
;;     23008042 (in mm_sec_machwaddr_wr)
;;     230080F0 (in mm_sec_machwkey_wr)
;;     230081FC (in mm_sec_machwkey_del)
;;     2300827E (in mm_sec_machwaddr_del)
blmac_encr_cntrl_pack.constprop.8 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	slli	s6,a4,00000004
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.mv	s1,a5
	c.swsp	ra,00000094
	andi	a5,s6,-000000F1
	c.mv	s0,a0
	c.mv	s2,a6
	c.mv	s7,a7
	slli	s3,a1,0000001E
	slli	s4,a2,00000010
	slli	s5,a3,00000008
	c.beqz	a5,0000000023007C8A

l23007C70:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000078D
	addi	a1,a1,+0000020C
	addi	a0,a0,-000005E4
	jal	ra,0000000023001234

l23007C8A:
	c.slli	s1,02
	andi	a5,s1,-0000000D
	c.beqz	a5,0000000023007CAC

l23007C92:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000078C
	addi	a1,a1,+0000020C
	addi	a0,a0,-000005A8
	jal	ra,0000000023001234

l23007CAC:
	c.slli	s0,1F
	slli	a1,s2,00000001
	or	s0,s0,s7
	c.or	s0,a1
	or	a1,s0,s1
	or	a1,a1,s6
	or	a1,a1,s5
	or	a1,a1,s4
	or	a1,a1,s3
	lui	a5,00044B00
	sw	a1,a5,+000000C4
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

;; element_notify_keepalive_received: 23007CEA
element_notify_keepalive_received proc
	c.li	a0,00000000
	c.jr	ra

;; hal_machw_rx_duration: 23007CEE
;;   Called from:
;;     23008A6E (in mm_check_beacon)
;;     23008A78 (in mm_check_beacon)
hal_machw_rx_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a0,40(a4)
	lui	a5,000230AC
	addi	a5,a5,-000005F4
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	c.add	a5,a4
	lbu	s1,a5,+00000000
	c.mv	s0,a0
	c.mv	s2,a1
	andi	a5,s1,-00000080
	c.beqz	a5,0000000023007D30

l23007D16:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000567
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000056C
	jal	ra,0000000023001234

l23007D30:
	lui	a5,00044B08
	sw	s1,a5,+00000164
	c.lw	s0,44(a1)
	lui	a4,00080000
	c.srli	a1,0000000F
	c.andi	a1,00000001
	c.slli	a1,18
	or	a1,a1,s2
	sw	a1,a5,+00000160
	sw	a4,a5,+00000168
	lui	a4,00044B08

l23007D54:
	lw	a3,a4,+00000168
	addi	a5,a4,+00000168
	slli	a2,a3,00000001
	bge	a2,zero,0000000023007D54

l23007D64:
	c.lw	a5,0(a4)
	slli	a3,a4,00000001
	blt	a3,zero,0000000023007D96

l23007D6E:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a0,a0,-0000052C
	addi	a2,zero,+00000105
	addi	a1,a1,+0000020C
	jal	ra,00000000230011F4
	addi	a0,zero,+000001F4

l23007D8A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23007D96:
	c.lw	a5,0(a0)
	c.slli	a0,10
	c.srli	a0,00000010
	c.j	0000000023007D8A

;; mm_env_max_ampdu_duration_set: 23007D9E
;;   Called from:
;;     23007EB0 (in mm_env_init)
;;     2301BAD4 (in mm_hw_config_handler)
;;     2301BC2C (in mm_hw_config_handler)
mm_env_max_ampdu_duration_set proc
	lui	a3,00044B00
	lw	a4,a3,+00000200
	addi	a5,zero,+00000096
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a4,0000000023007DCA

l23007DB2:
	lw	a4,a3,+00000200
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a4,0000000023007DCA

l23007DC0:
	lw	a5,a3,+00000200
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23007DCA:
	lui	a4,0004201F
	addi	a3,a4,-0000067C
	sh	a5,a3,+00000008
	lui	a2,00044B00
	lw	a3,a2,+00000204
	addi	a4,a4,-0000067C
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023007E06

l23007DEE:
	lw	a3,a2,+00000204
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023007E06

l23007DFC:
	lw	a5,a2,+00000204
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23007E06:
	sh	a5,a4,+0000000A
	lui	a2,00044B00
	lw	a3,a2,+00000208
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023007E36

l23007E1E:
	lw	a3,a2,+00000208
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023007E36

l23007E2C:
	lw	a5,a2,+00000208
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23007E36:
	sh	a5,a4,+0000000C
	lui	a2,00044B00
	lw	a3,a2,+0000020C
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023007E66

l23007E4E:
	lw	a3,a2,+0000020C
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023007E66

l23007E5C:
	lw	a5,a2,+0000020C
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23007E66:
	sh	a5,a4,+0000000E
	sh	a5,a4,+00000010
	c.jr	ra

;; mm_env_init: 23007E70
;;   Called from:
;;     23007EBC (in mm_init)
mm_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	addi	a0,s0,-0000067C
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	addi	a5,s0,-0000067C
	addi	a4,zero,+00000101
	sh	a4,a5,+00000022
	lui	a4,00080000
	xori	a4,a4,-00000022
	sh	zero,a5,+00000012
	sw	zero,a5,+00000004
	c.sw	a5,0(a4)
	jal	ra,0000000023007BD4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023007D9E

;; mm_init: 23007EB4
;;   Called from:
;;     2300A006 (in bl_init)
;;     2301B5AC (in mm_reset_req_handler)
mm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230072B2
	jal	ra,0000000023007E70
	jal	ra,000000002300CF96
	jal	ra,000000002300AEA4
	jal	ra,000000002300B412
	jal	ra,00000000230099BA
	jal	ra,000000002300B91C
	jal	ra,000000002300A1DC
	jal	ra,00000000230095E2
	jal	ra,000000002300AB84
	jal	ra,000000002301A50E
	jal	ra,000000002301AF10
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023008F42

;; mm_active: 23007EF0
;;   Called from:
;;     23007F16 (in mm_reset)
;;     230083D2 (in mm_back_to_host_idle)
;;     2301A238 (in chan_pre_switch_channel)
;;     2301A30E (in chan_goto_idle_cb)
;;     2301B1AA (in mm_monitor_enable_req_handler)
;;     2301B58E (in mm_set_idle_req_handler)
;;     2301B690 (in mm_start_req_handler)
mm_active proc
	lui	a5,00044B00
	addi	a4,zero,+00000030
	c.sw	a5,56(a4)
	c.li	a1,00000001
	c.li	a0,00000000
	jal	zero,0000000023014B3C

;; mm_reset: 23007F02
;;   Called from:
;;     2300A05C (in bl_reset_evt)
mm_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000001
	bne	a0,a5,0000000023007F1A

l23007F12:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023007EF0

l23007F1A:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

;; mm_tbtt_evt: 23007F26
mm_tbtt_evt proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042021
	c.swsp	s0,0000000C
	lw	s0,a5,+000007C8
	lui	a5,00000600
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.and	s0,a5
	bne	s0,a5,0000000023007F5C

l23007F44:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000321
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000488
	jal	ra,0000000023001234

l23007F5C:
	c.mv	a0,s0
	jal	ra,00000000230146EE
	lui	a5,00042021
	lw	s0,a5,-000004D0
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300BA6C
	csrrsi	zero,mstatus,00000008
	c.li	s1,00000002
	lui	s2,00044B00
	lui	s3,00044B08

l23007F8C:
	c.bnez	s0,0000000023007F9E

l23007F8E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230090F6

l23007F9E:
	lbu	a5,s0,+00000056
	bne	a5,s1,0000000023007FE2

l23007FA6:
	lbu	a5,s0,+00000341
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000341
	c.bnez	a5,0000000023007FE2

l23007FB6:
	lbu	a5,s0,+00000340
	c.mv	a0,s0
	sb	a5,s0,+00000341
	jal	ra,000000002300D49E
	c.lw	s0,64(a3)
	lw	a4,s2,+00000120
	lw	a5,s3,+00000040
	c.beqz	a3,0000000023007FE2

l23007FD0:
	lhu	a1,s0,+0000033E
	c.slli	a5,05
	c.add	a5,a4
	c.slli	a1,0A
	c.add	a1,a5
	c.mv	a0,s0
	jal	ra,000000002301A9FA

l23007FE2:
	c.lw	s0,0(s0)
	c.j	0000000023007F8C

;; mm_sec_machwaddr_wr: 23007FE6
;;   Called from:
;;     2300843E (in mm_sta_add)
mm_sec_machwaddr_wr proc
	c.addi	sp,FFFFFFF0
	addi	a4,zero,+000001B0
	c.swsp	s0,00000004
	addi	s0,a0,+00000008
	add	a0,a0,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.swsp	ra,00000084
	andi	s0,s0,+000000FF
	c.li	a7,00000000
	c.li	a6,00000001
	c.li	a3,00000000
	c.mv	a2,s0
	c.add	a0,a5
	lhu	a4,a0,+00000020
	lhu	a5,a0,+0000001E
	c.slli	a4,10
	c.or	a4,a5
	lui	a5,00044B00
	sw	a4,a5,+000000BC
	lhu	a4,a0,+00000022
	c.li	a0,00000000
	sw	a4,a5,+000000C0
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	c.mv	a4,a1
	sw	zero,a5,+000000B8
	c.li	a1,00000001
	c.li	a5,00000000
	jal	ra,0000000023007C3E
	lui	a4,00044B00

l2300804A:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,000000002300804A

l23008056:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_sec_machwkey_wr: 23008060
;;   Called from:
;;     230085B0 (in mm_sta_add)
;;     23015C16 (in add_key_to_mac)
;;     23015EA6 (in add_mfp_key_to_mac)
;;     2301B46A (in mm_key_add_req_handler)
mm_sec_machwkey_wr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s2,a0,+00000001
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	lbu	s3,a0,+00000029
	bne	s2,a5,0000000023008114

l2300807E:
	lbu	a5,a0,+00000000
	slli	s0,s3,00000002
	c.li	a4,FFFFFFFF
	c.add	s0,a5
	lui	a5,00044B00
	andi	s0,s0,+000000FF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	c.mv	a1,s0
	jal	ra,000000002300D2E6

l230080A0:
	lbu	a3,s1,+00000028
	c.li	a5,00000003
	bltu	a5,a3,0000000023008172

l230080AA:
	lui	a4,000230CC
	lui	a5,000230CC
	addi	a4,a4,-0000078C
	addi	a5,a5,-00000788
	c.add	a4,a3
	c.add	a5,a3
	lbu	a7,a4,+00000000
	lbu	a3,a5,+00000000

l230080C6:
	c.lw	s1,8(a4)
	lui	a5,00044B00
	c.li	a6,00000000
	sw	a4,a5,+000000AC
	c.lw	s1,12(a4)
	c.mv	a2,s0
	c.li	a1,00000001
	sw	a4,a5,+000000B0
	c.lw	s1,16(a4)
	c.li	a0,00000000
	sw	a4,a5,+000000B4
	c.lw	s1,20(a4)
	sw	a4,a5,+000000B8
	lbu	a5,s1,+0000002A
	c.mv	a4,s3
	jal	ra,0000000023007C3E
	lui	a4,00044B00

l230080F8:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,00000000230080F8

l23008104:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23008114:
	c.li	a5,0000000B
	bgeu	a5,s2,0000000023008132

l2300811A:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000003E4
	addi	a1,a1,+0000020C
	addi	a0,a0,-000004DC
	jal	ra,0000000023001234

l23008132:
	addi	s0,s2,+00000008
	andi	s0,s0,+000000FF
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300B146
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.add	a5,s2
	lhu	a4,a5,+00000020
	lhu	a3,a5,+0000001E
	c.slli	a4,10
	c.or	a4,a3
	lui	a3,00044B00
	sw	a4,a3,+000000BC
	lhu	a5,a5,+00000022
	sw	a5,a3,+000000C0
	c.j	00000000230080A0

l23008172:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000429
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	ra,0000000023001234
	c.li	a3,00000000
	c.li	a7,00000001
	c.j	00000000230080C6

;; mm_sec_machwkey_del: 23008190
;;   Called from:
;;     230086CA (in mm_sta_del)
;;     230086D2 (in mm_sta_del)
;;     230086DA (in mm_sta_del)
;;     23008748 (in mm_sta_del)
;;     2301324A (in apm_sta_delete)
;;     23015C92 (in keyMgmtKeyGroupTxDone.isra.1)
;;     23018E7C (in RemoveAPKeyInfo)
;;     2301B3CA (in mm_key_del_req_handler)
mm_sec_machwkey_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000007
	c.mv	s0,a0
	bgeu	a5,a0,0000000023008218

l2300819E:
	addi	a5,a0,-00000008
	addi	a4,zero,+000001B0
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a0,0004201F
	addi	a0,a0,-000005A0
	c.add	a0,a5
	lhu	a5,a0,+00000020
	lhu	a4,a0,+0000001E
	c.slli	a5,10
	c.or	a5,a4
	lui	a4,00044B00
	sw	a5,a4,+000000BC
	lhu	a5,a0,+00000022
	sw	a5,a4,+000000C0
	jal	ra,000000002300B23C

l230081D8:
	lui	a5,00044B00
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.li	a4,00000000
	c.li	a7,00000000
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023007C3E
	lui	a4,00044B00

l23008204:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,0000000023008204

l23008210:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23008218:
	lui	a5,00044B00
	c.li	a4,FFFFFFFF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	srai	a5,a0,00000002
	addi	a0,zero,+000005D8
	add	a5,a5,a0
	lui	a0,00042020
	addi	a0,a0,-00000088
	andi	a1,s0,+00000003
	c.add	a0,a5
	jal	ra,000000002300D404
	c.j	00000000230081D8

;; mm_sec_machwaddr_del: 23008246
;;   Called from:
;;     23008714 (in mm_sta_del)
mm_sec_machwaddr_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.li	a4,FFFFFFFF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	addi	a2,a0,+00000008
	sw	zero,a5,+000000B8
	c.li	a4,00000000
	c.li	a7,00000000
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a3,00000000
	andi	a2,a2,+000000FF
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023007C3E
	lui	a4,00044B00

l23008286:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,0000000023008286

l23008292:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_hw_idle_evt: 23008298
mm_hw_idle_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000800
	c.swsp	ra,00000084
	jal	ra,00000000230146EE
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

;; mm_hw_info_set: 230082B0
;;   Called from:
;;     2300D07E (in vif_mgmt_register)
mm_hw_info_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023007BEE
	lui	a5,00044B00
	c.lw	a5,76(a4)
	ori	a4,a4,+00000001
	c.sw	a5,76(a4)
	addi	a4,zero,+00000100
	c.sw	a5,28(a4)
	lui	a4,00044B08
	sw	zero,a4,+000000A4
	sw	zero,a4,+000000A8
	lbu	a3,s0,+00000001
	lbu	a4,s0,+00000000
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,s0,+00000002
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,s0,+00000003
	c.slli	a4,18
	c.or	a4,a3
	c.sw	a5,16(a4)
	lbu	a4,s0,+00000005
	lbu	a3,s0,+00000004
	c.slli	a4,08
	c.or	a4,a3
	c.sw	a5,20(a4)
	c.lw	a5,76(a4)
	andi	a4,a4,-00000701
	c.sw	a5,76(a4)
	c.lwsp	s0,00000004
	lui	a5,00035038
	c.lwsp	a2,00000020
	lui	a4,0004201F
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000984
	c.addi	sp,00000010
	jal	zero,0000000023007BD4

;; mm_hw_ap_info_set: 2300832A
;;   Called from:
;;     2300D1A8 (in vif_mgmt_register)
mm_hw_ap_info_set proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023007BEE
	lui	a5,0003507A
	lui	a4,0004201F
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000984
	jal	ra,0000000023007BD4
	lui	a5,00000040
	lui	a4,00044B08
	c.addi	a5,00000001
	c.sw	a4,112(a5)
	c.lw	a4,116(a3)
	c.or	a5,a3
	c.sw	a4,116(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_hw_ap_info_reset: 23008360
;;   Called from:
;;     2300D2E0 (in vif_mgmt_unregister)
mm_hw_ap_info_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023007BEE
	lui	a5,00035038
	lui	a4,0004201F
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000984
	jal	ra,0000000023007BD4
	lui	a4,00000040
	lui	a5,00044B08
	c.addi	a4,00000001
	c.sw	a5,112(a4)
	c.lw	a5,116(a4)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFE
	c.and	a4,a3
	c.sw	a5,116(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_back_to_host_idle: 2300839C
;;   Called from:
;;     2301A50A (in chan_ctxt_op_evt)
mm_back_to_host_idle proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023014C3C
	c.li	a5,00000003
	beq	a0,a5,00000000230083C4

l230083AC:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000052A
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000508
	jal	ra,0000000023001234

l230083C4:
	lui	a5,0004201F
	lbu	a5,a5,-0000065A
	c.bnez	a5,00000000230083D6

l230083CE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023007EF0

l230083D6:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

;; mm_force_idle_req: 230083E2
;;   Called from:
;;     2301A29C (in chan_goto_idle_cb)
;;     2301A3A6 (in chan_tx_cfm)
;;     2301A4FA (in chan_ctxt_op_evt)
mm_force_idle_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	jal	ra,0000000023007712
	jal	ra,000000002300A782
	jal	ra,000000002300C22E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,0000000023014B3C
	lui	a5,0004201F
	sh	zero,a5,+00000996
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_sta_add: 23008410
;;   Called from:
;;     2301B370 (in mm_sta_add_req_handler)
;;     2301DF68 (in me_sta_add_req_handler)
mm_sta_add proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s7,0000009C
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s8,0000001C
	c.mv	s7,a0
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,000000002300AF80
	c.mv	s2,a0
	c.bnez	a0,000000002300847C

l23008434:
	lbu	s1,s7,+00000011
	lbu	a0,s3,+00000000
	c.mv	a1,s1
	jal	ra,0000000023007FE6
	sb	a0,s0,+00000000
	addi	a0,zero,+000005D8
	add	a0,s1,a0
	lui	s0,00042020
	addi	a5,s0,-00000088
	addi	s0,s0,-00000088
	c.add	a5,a0
	lbu	a4,a5,+00000056
	c.bnez	a4,000000002300847C

l23008462:
	lbu	a4,a5,+000003E8
	c.bnez	a4,0000000023008496

l23008468:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lbu	a4,s3,+00000000
	c.li	s2,00000000
	c.add	s0,s1
	sb	a4,s0,+00000060

l2300847C:
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
	c.addi16sp	00000060
	c.jr	ra

l23008496:
	lbu	a3,s3,+00000000
	lui	s4,00042021
	addi	a4,s4,+00000440
	sb	a3,a4,+00000001
	lw	a4,a5,+000003E8
	c.lui	a3,00013000
	addi	a3,a3,-00000800
	c.and	a4,a3
	c.beqz	a4,000000002300851E

l230084B4:
	lui	a4,00042021
	lw	a2,a4,+00000740
	lbu	a1,a5,+0000037E
	addi	a0,a0,+0000037F
	lbu	a5,a2,+00000181
	c.add	a0,s0
	c.beqz	a5,0000000023008518

l230084CC:
	addi	a2,a2,+00000181

l230084D0:
	jal	ra,0000000023017966

l230084D4:
	addi	a2,zero,+000005D8
	add	a2,s1,a2
	c.lui	a4,00012000
	add	a5,s0,a2
	lw	a3,a5,+000003E8
	c.and	a4,a3
	beq	a4,zero,0000000023008640

l230084EC:
	lbu	a4,a5,+000003EF
	addi	a3,a2,+000003EE
	addi	a2,a2,+000003ED
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000004

l230084FE:
	addi	a0,s4,+00000440
	jal	ra,00000000230155FE

l23008506:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a5,a5,+00000056
	c.beqz	a5,0000000023008468

l23008516:
	c.j	000000002300847C

l23008518:
	addi	a2,a2,+00000141
	c.j	00000000230084D0

l2300851E:
	lbu	a5,a5,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,00000000230084D4

l23008526:
	lui	s5,00042021
	addi	s6,s5,+00000740
	lw	a0,s6,+00000000
	addi	s5,s5,+00000740
	addi	a0,a0,+00000141
	jal	ra,00000000230A4220
	lw	a2,s6,+00000000
	c.mv	a1,a0
	lui	a0,000230AC
	addi	a2,a2,+00000141
	addi	a0,a0,-000004C8
	jal	ra,0000000023082388
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lbu	a5,s7,+00000011
	lw	a0,s6,+00000000
	sb	a5,sp,+0000002D
	addi	a0,a0,+00000141
	addi	a5,zero,-00000100
	sh	a5,sp,+00000004
	jal	ra,00000000230A4220
	andi	a5,a0,+000000FF
	sb	a5,sp,+00000008
	c.li	a4,00000005
	beq	a5,a4,0000000023008598

l2300858A:
	c.li	a4,0000000D
	bne	a5,a4,00000000230085BE

l23008590:
	c.li	a5,00000003
	sb	a5,sp,+0000002C
	c.j	000000002300859C

l23008598:
	sb	zero,sp,+0000002C

l2300859C:
	lw	a1,s5,+00000000
	andi	a2,a0,+000000FF
	c.addi4spn	a0,0000000C
	addi	a1,a1,+00000141
	jal	ra,00000000230A382C

l230085AE:
	c.addi4spn	a0,00000004
	jal	ra,0000000023008060
	lui	a5,0004200F
	sb	a0,a5,+00000B20
	c.j	00000000230084D4

l230085BE:
	c.li	a4,0000000A
	beq	a5,a4,00000000230085EE

l230085C4:
	c.li	a4,0000001A
	bne	a5,a4,0000000023008628

l230085CA:
	c.li	a5,00000003

l230085CC:
	sb	a5,sp,+0000002C
	andi	a5,a0,+00000001
	andi	s8,a0,+000000FF
	c.beqz	a5,00000000230085DE

l230085DA:
	andi	s8,a0,+000000FE

l230085DE:
	bne	s8,zero,00000000230085F2

l230085E2:
	lbu	a5,sp,+00000008
	c.srli	a5,00000001
	sb	a5,sp,+00000008
	c.j	00000000230085AE

l230085EE:
	c.li	a5,00000000
	c.j	00000000230085CC

l230085F2:
	lw	s5,s5,+00000000
	c.li	s7,00000000
	addi	s5,s5,+00000141

l230085FC:
	lbu	a0,s5,+00000000
	c.addi	s5,00000002
	jal	ra,0000000023007BFE
	c.mv	s6,a0
	lbu	a0,s5,-00000001
	c.slli	s6,04
	jal	ra,0000000023007BFE
	srai	a5,s7,00000001
	c.addi4spn	a4,00000030
	c.add	a5,a4
	c.add	s6,a0
	sb	s6,a5,+00000FDC
	c.addi	s7,00000002
	blt	s7,s8,00000000230085FC

l23008626:
	c.j	00000000230085E2

l23008628:
	lui	a0,000230AC
	addi	a0,a0,-000004B0
	jal	ra,0000000023082388
	lbu	a0,s3,+00000000
	c.li	s2,00000001
	jal	ra,000000002300B0F4
	c.j	000000002300847C

l23008640:
	lbu	a4,a5,+000003E9
	c.andi	a4,00000008
	beq	a4,zero,0000000023008506

l2300864A:
	addi	a3,a2,+000003EC
	addi	a2,a2,+000003EB
	lbu	a4,a5,+000003EF
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000003
	c.j	00000000230084FE

;; mm_sta_del: 2300865E
;;   Called from:
;;     2301B338 (in mm_sta_del_req_handler)
mm_sta_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	addi	s5,zero,+000001B0
	add	a5,a0,s5
	c.swsp	s2,00000008
	lui	s2,0004201F
	addi	s2,s2,-000005A0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s6,00000000
	c.add	a5,s2
	lbu	s6,a5,+0000001A
	addi	s4,zero,+000005D8
	lui	s1,00042020
	add	s4,s6,s4
	addi	s0,s1,-00000088
	c.mv	s3,a0
	c.add	s0,s4
	lbu	a4,s0,+00000056
	c.bnez	a4,000000002300874E

l230086A0:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	lbu	a5,s0,+000003E8
	c.beqz	a5,0000000023008712

l230086AC:
	lw	a5,s0,+000003E8
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.and	a5,a4
	addi	s1,s1,-00000088
	c.beqz	a5,0000000023008730

l230086BE:
	lui	s5,00042021
	addi	s2,s5,+00000440
	lbu	a0,s2,+00000004
	jal	ra,0000000023008190
	lbu	a0,s2,+00000003
	jal	ra,0000000023008190
	lbu	a0,s2,+00000005
	jal	ra,0000000023008190
	addi	a0,s5,+00000440
	jal	ra,0000000023015576
	lw	a0,s2,+00000008
	c.li	a1,00000000
	addi	a2,zero,+00000022
	c.addi	a0,00000004
	jal	ra,00000000230A3A68
	lbu	a1,s0,+0000037E
	addi	a0,s4,+0000037F
	c.add	a0,s1
	jal	ra,00000000230179EE

l23008704:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	c.add	s1,s6
	sb	zero,s1,+000003E8

l23008712:
	c.mv	a0,s3
	jal	ra,0000000023008246
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300B0F4

l23008730:
	lbu	a5,s0,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,0000000023008704

l23008738:
	lui	a5,0004200F
	lbu	a0,a5,-000004E0
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023008704

l23008748:
	jal	ra,0000000023008190
	c.j	0000000023008704

l2300874E:
	lbu	a4,a5,+0000001C
	c.li	a5,00000001
	bne	a4,a5,0000000023008712

l23008758:
	lbu	a5,s0,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000034A
	c.bnez	a5,0000000023008712

l23008768:
	lbu	s1,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s1,0000000A
	andi	s1,s1,+000000FF
	add	s5,s1,s5
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,00000000230149A2
	c.add	s2,s5
	sb	zero,s2,+0000001C
	sb	s1,a0,+00000000
	sb	zero,a0,+00000001
	jal	ra,0000000023014A0E
	lbu	a1,s0,+00000057
	c.mv	a0,s0
	c.addi	a1,0000000A
	andi	a1,a1,+000000FF
	jal	ra,00000000230138AE
	c.j	0000000023008712

;; mm_cfg_element_keepalive_timestamp_update: 230087A8
;;   Called from:
;;     230103BC (in rxu_cntrl_frame_handle)
mm_cfg_element_keepalive_timestamp_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230629A4
	lui	a5,0004201F
	addi	a5,a5,-0000067C
	c.lw	a5,36(a4)
	c.sw	a5,40(a0)
	c.addi	a4,00000001
	c.sw	a5,36(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_send_connection_loss_ind: 230087C6
;;   Called from:
;;     230087FC (in mm_ap_probe_cfm)
;;     23009AF0 (in ps_enable_cfm)
;;     23009BF0 (in ps_disable_cfm)
;;     2300D67E (in vif_mgmt_switch_channel)
mm_send_connection_loss_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000001
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000006
	addi	a0,zero,+00000043
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	lbu	a5,s0,+00000057
	sb	a5,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; mm_ap_probe_cfm: 230087EE
mm_ap_probe_cfm proc
	slli	a4,a1,00000008
	bge	a4,zero,00000000230087FC

l230087F6:
	sb	zero,a0,+00000074
	c.jr	ra

l230087FC:
	jal	zero,00000000230087C6

;; mm_check_rssi: 23008800
;;   Called from:
;;     230089CC (in mm_check_beacon)
mm_check_rssi proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lb	s6,a0,+00000075
	lb	s1,a0,+00000076
	lbu	s5,a0,+00000077
	lbu	s2,a0,+00000078
	c.li	a5,00000000
	c.li	a6,00000000
	sb	a1,a0,+00000075
	c.mv	s0,a0
	lui	s4,0004200F
	c.addi4spn	a0,00000008
	c.mv	s3,a1
	c.swsp	a5,00000004
	c.swsp	a6,00000084
	addi	s4,s4,+00000318
	jal	ra,0000000023015110
	beq	s6,zero,000000002300886E

l23008844:
	c.lwsp	s0,000000A4
	lw	a4,s4,+00000000
	lw	a2,s4,+00000004
	c.lwsp	a2,000000E4
	sub	a4,a3,a4
	sltu	a3,a3,a4
	c.sub	a5,a2
	c.sub	a5,a3
	blt	zero,a5,000000002300886E

l23008860:
	c.bnez	a5,000000002300889C

l23008862:
	lui	a5,000001E8
	addi	a5,a5,+00000480
	bgeu	a5,a4,000000002300889C

l2300886E:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,00000000230149A2
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	sw	a4,s4,+00000000
	sw	a5,s4,+00000004
	jal	ra,0000000023014A0E

l2300889C:
	c.beqz	s1,00000000230088E0

l2300889E:
	slli	a5,s5,00000018
	c.srai	a5,00000018
	bne	s2,zero,00000000230088F4

l230088A8:
	bge	s3,s6,00000000230088B2

l230088AC:
	c.sub	s1,a5
	slt	s2,s3,s1

l230088B2:
	lbu	a5,s0,+00000078
	beq	a5,s2,00000000230088DC

l230088BA:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,00000000230149A2
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	jal	ra,0000000023014A0E

l230088DC:
	sb	s2,s0,+00000078

l230088E0:
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

l230088F4:
	bge	s6,s3,00000000230088B2

l230088F8:
	c.add	s1,a5
	slt	s1,s1,s3
	xori	s2,s1,+00000001
	c.j	00000000230088B2

;; mm_send_csa_traffic_ind: 23008904
;;   Called from:
;;     23008982 (in mm_check_beacon)
;;     23008BB2 (in mm_sta_tbtt)
;;     2300DFB6 (in me_beacon_check)
mm_send_csa_traffic_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000059
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; mm_check_beacon: 23008932
;;   Called from:
;;     2300A58C (in rxl_cntrl_evt)
mm_check_beacon proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,8(a5)
	lhu	s7,a0,+0000001C
	c.mv	s5,a0
	lw	s2,a5,+00000008
	lui	a5,0004200F
	addi	a5,a5,+00000310
	c.lw	a5,0(a4)
	sb	zero,a1,+00000074
	c.mv	s0,a1
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lbu	a5,a1,+0000007A
	c.mv	s3,a2
	c.mv	s6,a3
	lw	s4,a1,+00000070
	c.beqz	a5,000000002300898A

l2300897C:
	lbu	a0,s0,+00000057
	c.li	a1,00000001
	jal	ra,0000000023008904
	sb	zero,s0,+0000007A

l2300898A:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	lui	a5,00001C9C
	addi	a5,a5,+00000380
	c.sub	a5,a4
	c.lw	s0,108(a4)
	c.add	a5,a4
	bge	a5,zero,00000000230089C2

l230089A4:
	lui	a5,0004201F
	lbu	a5,a5,-00000659
	c.beqz	a5,00000000230089C2

l230089AE:
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002300C85A
	c.bnez	a0,00000000230089C2

l230089BC:
	lw	a5,s1,+00000120
	c.sw	s0,108(a5)

l230089C2:
	lb	a1,s5,+00000033
	c.mv	a0,s0
	addi	s1,s7,-00000024
	jal	ra,0000000023008800
	c.li	a2,00000000
	c.li	a1,00000004
	addi	a0,s2,+00000020
	jal	ra,000000002301467C
	c.slli	s1,10
	addi	s8,s2,+00000024
	c.srli	s1,00000010
	sw	zero,s6,+00000000
	c.li	s11,00000001
	c.li	a5,00000005
	c.li	a4,FFFFFFFE

l230089EE:
	bltu	s11,s1,0000000023008B36

l230089F2:
	c.sw	s0,112(a0)
	lbu	a4,s2,+00000019
	lhu	s9,s3,+00000016
	lbu	s3,s2,+00000018
	c.slli	a4,08
	lbu	s8,s2,+0000001C
	or	a4,a4,s3
	lbu	s3,s2,+0000001A
	lbu	s1,s2,+00000021
	lbu	a5,s2,+00000020
	c.slli	s3,10
	or	a4,s3,a4
	lbu	s3,s2,+0000001B
	c.slli	s1,08
	c.or	s1,a5
	c.slli	s3,18
	or	s3,s3,a4
	lbu	a4,s2,+0000001D
	lw	s10,s5,+00000020
	c.slli	s1,0A
	c.slli	a4,08
	or	a4,a4,s8
	lbu	s8,s2,+0000001E
	c.slli	s8,10
	or	a4,s8,a4
	lbu	s8,s2,+0000001F
	lhu	s2,s0,+0000005C
	c.slli	s8,18
	or	s8,s8,a4
	bne	s2,zero,0000000023008A6A

l23008A56:
	lw	a5,s6,+00000000
	c.li	s2,00000001
	c.beqz	a5,0000000023008A6A

l23008A5E:
	lbu	s2,a5,+00000002
	bne	s2,zero,0000000023008A6A

l23008A66:
	lbu	s2,a5,+00000003

l23008A6A:
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,0000000023007CEE
	c.li	a1,00000018
	c.mv	s6,a0
	c.mv	a0,s5
	jal	ra,0000000023007CEE
	c.mv	s5,a0
	srai	a3,s1,0000001F
	c.mv	a1,s8
	c.mv	a2,s1
	c.mv	a0,s3
	jal	ra,000000002309FC70
	add	a1,a1,s1
	sub	a5,s3,s5
	sltu	a3,s3,a5
	sub	s8,s8,a3
	add	a4,a0,s1
	sltu	a0,a0,s1
	c.add	a1,a0
	bltu	a1,s8,0000000023008AB2

l23008AAA:
	bne	s8,a1,0000000023008AB4

l23008AAE:
	bgeu	a4,a5,0000000023008AB4

l23008AB2:
	c.mv	a5,a4

l23008AB4:
	add	a4,s2,s1
	sub	s6,s6,s5
	sub	s3,s3,s10
	c.add	s3,s6
	add	s2,s9,s2
	c.add	a5,a4
	lui	a4,00044B00
	lw	a2,a4,+00000120
	c.lui	a4,FFFFF000
	sub	a5,a5,s3
	addi	a4,a4,+00000380
	c.sub	a4,a2
	sub	a5,a5,s2
	addi	a3,a5,-00000190
	c.add	a5,a4
	bge	a5,zero,0000000023008AEC

l23008AEA:
	c.add	a3,s1

l23008AEC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,00044B08
	lw	a5,a5,+000000A4
	c.sub	a1,a5
	c.lw	s0,36(a5)
	c.add	a1,a3
	beq	a1,a5,0000000023008B0E

l23008B06:
	addi	a0,s0,+00000018
	jal	ra,00000000230095EE

l23008B0E:
	c.lw	s0,112(a0)
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	sub	a0,a0,s4
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
	sltu	a0,zero,a0
	c.addi16sp	00000050
	c.jr	ra

l23008B36:
	lbu	s9,s8,+00000001
	lbu	a3,s8,+00000000
	addi	s10,s8,+00000002
	addi	a2,s9,+00000001
	bge	a2,s1,00000000230089F2

l23008B4A:
	bne	a3,a5,0000000023008B62

l23008B4E:
	sw	s8,s6,+00000000

l23008B52:
	sub	a3,a4,s9
	c.add	s1,a3
	c.slli	s1,10
	c.srli	s1,00000010
	add	s8,s10,s9
	c.j	00000000230089EE

l23008B62:
	c.mv	a2,a0
	c.mv	a1,s9
	c.mv	a0,s10
	c.swsp	a4,00000084
	jal	ra,000000002301467C
	c.lwsp	a2,000000C4
	c.li	a5,00000005
	c.j	0000000023008B52

;; mm_sta_tbtt: 23008B74
mm_sta_tbtt proc
	lbu	a5,a0,+00000058
	c.beqz	a5,0000000023008C46

l23008B7A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a0,+00000079
	c.mv	s0,a0
	c.beqz	a5,0000000023008BB6

l23008B8A:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a0,+00000079
	c.li	a4,00000001
	bltu	a4,a5,0000000023008BA6

l23008B9A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300D574

l23008BA6:
	c.li	a4,00000002
	bne	a5,a4,0000000023008BB6

l23008BAC:
	lbu	a0,a0,+00000057
	c.li	a1,00000000
	jal	ra,0000000023008904

l23008BB6:
	lbu	a4,s0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a3
	addi	a5,a5,-000005A0
	addi	a0,s0,+00000018
	c.add	a5,a4
	c.lw	a5,4(s1)
	c.lw	s0,36(a5)
	c.add	s1,a5
	c.mv	a1,s1
	jal	ra,00000000230095EE
	c.mv	a0,s0
	jal	ra,000000002300D49E
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002301A9FA
	c.mv	a0,s0
	jal	ra,000000002301ABEA
	c.beqz	a0,0000000023008C3C

l23008BF2:
	c.lw	s0,4(a5)
	addi	a4,zero,+00000064
	ori	a5,a5,+00000001
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000074
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000074
	bgeu	a4,a5,0000000023008C2A

l23008C10:
	lbu	a0,s0,+00000060
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,00023008
	addi	a1,a1,+000007EE
	c.addi	sp,00000010
	jal	zero,000000002300C85A

l23008C2A:
	bne	a5,a4,0000000023008C3C

l23008C2E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301AB10

l23008C3C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23008C46:
	c.jr	ra

;; mm_get_rsn_wpa_ie: 23008C48
;;   Called from:
;;     2301579A (in keyMgmtFormatWpaRsnIe)
mm_get_rsn_wpa_ie proc
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,0004201F
	c.addi	sp,FFFFFFF0
	addi	a5,a5,-000005A0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,zero,+000005D8
	c.mv	a3,a1
	lui	a1,00042020
	addi	a1,a1,-00000088
	c.add	a5,a0
	lbu	a5,a5,+0000001A
	c.mv	a0,a3
	add	a5,a5,a4
	add	s0,a1,a5
	lbu	a2,s0,+00000411
	addi	a5,a5,+000003F1
	c.add	a1,a5
	jal	ra,00000000230A382C
	lbu	a0,s0,+00000411
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update_proceed: 23008C96
;;   Called from:
;;     230090F2 (in mm_tim_update)
;;     2300956A (in mm_bcn_transmitted)
mm_tim_update_proceed proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a3,a0,+00000000
	c.mv	s0,a0
	lbu	a5,a0,+00000003
	lbu	t3,a0,+00000002
	c.bnez	a3,0000000023008CEA

l23008CAC:
	addi	a3,zero,+000005D8
	add	a5,a5,a3
	lui	a4,00042020
	addi	a4,a4,-00000088
	c.add	a4,a5
	beq	t3,zero,0000000023008CE4

l23008CC2:
	c.li	a5,00000001
	sb	a5,a4,+00000346

l23008CC8:
	lhu	a1,s0,-00000004
	addi	a0,zero,+00000042
	c.li	a2,00000000
	jal	ra,0000000023014A78
	addi	a0,s0,-0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A9A

l23008CE4:
	sb	zero,a4,+00000346
	c.j	0000000023008CC8

l23008CEA:
	addi	a0,zero,+000000FC
	add	a0,a5,a0
	lui	a2,00042045
	addi	a2,a2,+00000360
	slli	a4,a5,00000003
	c.add	a4,a2
	lui	a2,00042045
	addi	a2,a2,+00000168
	srli	a6,a3,00000003
	andi	a6,a6,+000000FF
	c.add	a0,a2
	add	a7,a6,a0
	andi	a2,a3,+00000007
	lbu	a1,a7,+00000000
	c.li	a3,00000001
	sll	a3,a3,a2
	andi	a2,a3,+000000FF
	and	t1,a2,a1
	beq	t3,zero,0000000023008DEA

l23008D30:
	bne	t1,zero,0000000023008CC8

l23008D34:
	c.or	a2,a1
	addi	a1,zero,+000005D8
	add	a1,a5,a1
	lui	a3,00042020
	sb	a2,a7,+00000000
	addi	a2,a3,-00000088
	addi	a3,a3,-00000088
	c.add	a2,a1
	lhu	a1,a2,+0000033C
	lbu	t1,a2,+00000344
	c.addi	a1,00000001
	sh	a1,a2,+0000033C
	lui	a1,00042046
	addi	a1,a1,-00000570
	bgeu	a6,t1,0000000023008D80

l23008D6A:
	andi	t1,a6,+000000FE
	sb	t1,a2,+00000344
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a0,t1
	c.add	a2,a1
	c.sw	a2,28(a0)

l23008D80:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	c.add	a2,a3
	lbu	a0,a2,+00000345
	bgeu	a0,a6,0000000023008DA4

l23008D92:
	sb	a6,a2,+00000345
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a2,a1
	sw	a7,a2,+00000020

l23008DA4:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	c.add	a3,a2
	lbu	a2,a3,+00000345
	lbu	a0,a3,+00000344
	c.addi	a2,00000006
	c.sub	a2,a0
	c.slli	a2,10
	c.srli	a2,00000010
	sh	a2,a3,+0000033A
	c.addi	a2,FFFFFFFE
	sb	a2,a4,+00000001
	lbu	a3,a3,+00000344
	addi	a2,a4,+00000004
	sb	a3,a4,+00000004
	addi	a4,zero,+00000028
	add	a5,a5,a4
	add	a4,a1,a5
	c.addi	a5,00000014
	c.add	a1,a5
	c.sw	a4,12(a2)
	c.sw	a4,4(a1)
	c.j	0000000023008CC8

l23008DEA:
	beq	t1,zero,0000000023008CC8

l23008DEE:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	xori	a3,a3,-00000001
	c.and	a3,a1
	lui	a1,00042020
	sb	a3,a7,+00000000
	addi	a3,a1,-00000088
	addi	a1,a1,-00000088
	c.add	a3,a2
	lhu	a7,a3,+0000033C
	c.addi	a7,FFFFFFFF
	c.slli	a7,10
	srli	a7,a7,00000010
	sh	a7,a3,+0000033C
	beq	a7,zero,0000000023008EE6

l23008E22:
	lbu	a7,a3,+00000344
	andi	a2,a6,+000000FE
	addi	t1,zero,+000000FB
	beq	a7,a2,0000000023008EA0

l23008E32:
	addi	a3,zero,+000005D8
	add	a3,a5,a3
	c.add	a3,a1
	lbu	a2,a3,+00000345
	bne	a2,a6,0000000023008E6C

l23008E44:
	lbu	a2,a3,+00000345
	add	a6,a2,a0
	c.beqz	a2,0000000023008E56

l23008E4E:
	lbu	a7,a6,+00000000
	beq	a7,zero,0000000023008EDE

l23008E56:
	addi	a2,zero,+00000028
	add	a2,a5,a2
	lui	a3,00042046
	addi	a3,a3,-00000570
	c.add	a3,a2
	sw	a6,a3,+00000020

l23008E6C:
	addi	a3,zero,+000005D8
	add	a5,a5,a3
	c.add	a5,a1
	lbu	a3,a5,+00000345
	lbu	a2,a5,+00000344
	c.addi	a3,00000006
	c.sub	a3,a2
	c.slli	a3,10
	c.srli	a3,00000010
	sh	a3,a5,+0000033A
	c.addi	a3,FFFFFFFE
	sb	a3,a4,+00000001
	lbu	a5,a5,+00000344
	sb	a5,a4,+00000004
	c.j	0000000023008CC8

l23008E9A:
	c.addi	a2,00000001
	sb	a2,a3,+00000344

l23008EA0:
	lbu	a2,a3,+00000344
	beq	a2,t1,0000000023008EB4

l23008EA8:
	add	a7,a2,a0
	lbu	a7,a7,+00000000
	beq	a7,zero,0000000023008E9A

l23008EB4:
	addi	a3,zero,+000005D8
	add	a3,a5,a3
	addi	a7,zero,+00000028
	andi	a2,a2,+000000FE
	add	a7,a5,a7
	c.add	a3,a1
	sb	a2,a3,+00000344
	lui	a3,00042046
	addi	a3,a3,-00000570
	c.add	a2,a0
	c.add	a3,a7
	c.sw	a3,28(a2)
	c.j	0000000023008E32

l23008EDE:
	c.addi	a2,FFFFFFFF
	sb	a2,a3,+00000345
	c.j	0000000023008E44

l23008EE6:
	c.li	a1,00000006
	sh	a1,a3,+0000033A
	lui	a1,00042020
	addi	a1,a1,+000002A8
	c.add	a2,a1
	addi	a1,zero,+000000FF
	sh	a1,a2,+00000014
	addi	a1,zero,+00000028
	add	a5,a5,a1
	lbu	a2,a3,+0000033A
	c.addi	a4,00000005
	sb	zero,a4,+00000FFF
	c.addi	a2,FFFFFFFE
	sb	a2,a4,+00000FFC
	lui	a2,00042046
	addi	a2,a2,-00000570
	c.add	a5,a2
	c.sw	a5,12(a4)
	lbu	a4,s0,+00000003
	c.li	a2,00000014
	add	a4,a4,a2
	lui	a2,00042046
	addi	a2,a2,-00000598
	c.add	a4,a2
	c.sw	a5,4(a4)
	lbu	a4,a3,+00000345
	c.add	a0,a4
	c.sw	a5,32(a0)
	c.j	0000000023008CC8

;; mm_bcn_init: 23008F42
;;   Called from:
;;     23007EEC (in mm_init)
mm_bcn_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a0,s0,-00000650
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	lui	a5,00042044
	addi	s0,s0,-00000650
	addi	a5,a5,+00000110
	c.sw	s0,16(a5)
	lui	a5,00023009
	addi	a5,a5,+0000032E
	c.sw	s0,20(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201F
	addi	a0,a0,-00000634
	c.addi	sp,00000010
	jal	zero,0000000023014488

;; mm_bcn_init_vif: 23008F84
;;   Called from:
;;     2300D1B8 (in vif_mgmt_register)
mm_bcn_init_vif proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a1,a0,+00000057
	addi	s2,zero,+00000048
	addi	a5,zero,+0000003C
	add	s2,a1,s2
	lui	a4,00042046
	addi	a4,a4,-000003B0
	lui	a3,00042045
	addi	a3,a3,+000000F0
	c.mv	s0,a0
	addi	a0,a0,+00000060
	add	a5,a1,a5
	c.add	s2,a4
	addi	a4,zero,+0000034C
	c.mv	a2,s2
	add	a1,a1,a4
	c.add	a3,a5
	lui	a5,00042045
	addi	a5,a5,+0000036C
	c.add	a1,a5
	jal	ra,000000002300C376
	lbu	a5,s0,+00000057
	c.li	a2,00000014
	lui	a4,00042046
	add	a5,a5,a2
	addi	a4,a4,-000005FC
	addi	a0,zero,+000000FC
	addi	a3,zero,+00000028
	c.li	a1,00000000
	c.add	a5,a4
	sw	a5,s2,+00000000
	lbu	s1,s0,+00000057
	lui	a5,00042045
	addi	a5,a5,+00000360
	add	a0,s1,a0
	slli	a4,s1,00000003
	c.add	a4,a5
	lui	a5,00042045
	addi	a5,a5,+00000168
	sb	zero,s0,+00000343
	sh	zero,s0,+0000033C
	sb	zero,s0,+00000346
	lui	s2,000CAFF0
	addi	s2,s2,-00000522
	add	a3,s1,a3
	c.add	a0,a5
	c.li	a5,00000006
	sh	a5,s0,+0000033A
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000344
	lui	a5,00042046
	addi	a5,a5,-00000570
	add	s1,s1,a2
	c.add	a5,a3
	addi	a3,a4,+00000005
	c.sw	a5,12(a3)
	lui	a3,00042046
	addi	a3,a3,-00000598
	sw	s2,a5,+00000000
	c.sw	a5,8(a4)
	sw	zero,a5,+00000010
	addi	a2,zero,+000000FC
	c.add	s1,a3
	c.li	a3,00000005
	c.sw	a5,4(s1)
	sb	a3,a4,+00000000
	c.li	a3,00000004
	sb	a3,a4,+00000001
	lbu	a3,s0,+00000343
	sb	zero,a4,+00000004
	sb	a3,a4,+00000002
	c.li	a3,00000001
	sb	a3,a4,+00000003
	c.li	a3,FFFFFFFF
	sb	a3,a4,+00000005
	sw	s2,a5,+00000014
	lbu	a4,s0,+00000345
	c.sw	a5,24(s1)
	c.add	a4,a0
	c.sw	a5,32(a4)
	jal	ra,00000000230A3A68
	sw	s2,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000010
	lw	a5,s0,+000000CC
	sw	zero,a5,+00000024
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000010
	lui	a5,00023009
	addi	a5,a5,+000004F6
	sw	a5,s0,+0000032C
	sw	s0,s0,+00000330
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update: 230090D8
;;   Called from:
;;     2301B2C0 (in mm_tim_update_req_handler)
mm_tim_update proc
	lui	a5,0004201F
	lw	a5,a5,-0000064C
	c.beqz	a5,00000000230090F2

l230090E2:
	addi	a1,a0,-0000000C
	lui	a0,0004201F
	addi	a0,a0,-00000634
	jal	zero,0000000023014492

l230090F2:
	jal	zero,0000000023008C96

;; mm_bcn_transmit: 230090F6
;;   Called from:
;;     23007F9A (in mm_tbtt_evt)
;;     2300946A (in mm_bcn_updated)
mm_bcn_transmit proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	a5,00042021
	lui	s2,0004201F
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lw	s0,a5,-000004D0
	addi	a5,s2,-00000650
	c.lw	a5,4(a5)
	addi	s2,s2,-00000650
	c.beqz	a5,000000002300913C

l23009124:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000339
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000418
	jal	ra,0000000023001234

l2300913C:
	lbu	a5,s2,+00000009
	c.beqz	a5,0000000023009160

l23009142:
	c.li	a5,00000001
	sb	a5,s2,+00000008

l23009148:
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

l23009160:
	lui	s5,00042045
	lui	s3,00042020
	lui	s6,0004201F
	lui	s4,0004201F
	sb	zero,s2,+00000008
	addi	s5,s5,+00000360
	addi	s3,s3,-000000F0
	addi	s6,s6,-000005A0
	addi	s4,s4,-000006B0

l23009184:
	c.beqz	s0,0000000023009148

l23009186:
	lbu	a4,s0,+00000056
	c.li	a5,00000002
	bne	a4,a5,00000000230092F2

l23009190:
	lbu	a5,s0,+00000342
	beq	a5,zero,00000000230092F2

l23009198:
	lbu	a4,s0,+00000341
	lbu	a5,s0,+00000340
	bne	a4,a5,00000000230092F2

l230091A4:
	lhu	a1,s0,+0000033A
	lbu	a5,s0,+00000057
	lhu	a4,s0,+00000338
	lw	a3,s0,+000000CC
	c.slli	a5,03
	c.add	a4,a1
	c.add	a5,s5
	c.addi	a4,00000004
	lbu	a2,a5,+00000004
	c.sw	a3,28(a4)
	lhu	a4,s3,+00000054
	c.lw	a3,20(a1)
	addi	s1,s0,+00000060
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,s3,+00000054
	c.slli	a4,04
	sh	a4,a1,+00000016
	lbu	a4,s0,+00000343
	sb	a4,a5,+00000002
	bne	a4,zero,00000000230092F6

l230091E8:
	lbu	a4,s0,+00000346
	c.bnez	a4,0000000023009212

l230091EE:
	lui	a1,000230CC
	lw	a1,a1,-00000790
	lw	a4,s4,+00000018
	c.and	a4,a1
	addi	a1,zero,+00000330
	add	a4,a4,a1
	lw	a1,s4,+0000001C
	c.add	a4,a1
	c.lw	a4,0(a1)
	andi	a4,a2,+000000FE
	c.beqz	a1,0000000023009216

l23009212:
	ori	a4,a2,+00000001

l23009216:
	lbu	a2,a5,+00000003
	sb	a2,s0,+00000343

l2300921E:
	ori	a4,a4,+00000001
	sb	a4,a5,+00000004
	lbu	a5,s0,+00000343
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000343
	lbu	a5,s0,+00000347
	c.beqz	a5,000000002300926E

l23009236:
	c.addi	a5,FFFFFFFF
	lbu	a2,s0,+00000348
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000347
	c.beqz	a2,0000000023009260

l23009246:
	c.lw	a3,20(a4)
	c.add	a4,a2
	sb	a5,a4,+00000000
	lbu	a4,s0,+00000349
	c.beqz	a4,0000000023009260

l23009254:
	c.lw	a3,20(a5)
	lbu	a2,s0,+00000347
	c.add	a5,a4
	sb	a2,a5,+00000000

l23009260:
	lbu	s7,s0,+00000347
	bne	s7,zero,0000000023009308

l23009268:
	c.li	a5,00000001
	sb	a5,s0,+00000347

l2300926E:
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002300B644
	c.mv	a0,s0
	jal	ra,000000002301AC42
	c.beqz	a0,00000000230092F2

l2300927E:
	lbu	s7,s0,+00000057
	c.li	a1,0000000D
	c.li	a3,00000003
	c.li	a2,00000000
	c.addi	s7,0000000A
	addi	a0,zero,+0000004A
	jal	ra,00000000230149A2
	andi	s7,s7,+000000FF
	sb	s7,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,0000000023014A0E
	lbu	a5,s0,+00000057
	c.li	a1,00000004
	c.mv	a0,s1
	sb	a5,s0,+0000008F
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000090
	jal	ra,000000002300C6AE
	c.beqz	a0,00000000230092C8

l230092BE:
	lw	a5,s2,+00000004
	c.addi	a5,00000001
	sw	a5,s2,+00000004

l230092C8:
	lbu	s1,s0,+00000057
	addi	a5,zero,+000001B0
	c.addi	s1,0000000A
	add	s1,s1,a5
	c.add	s1,s6
	lbu	a5,s1,+00000032
	c.andi	a5,00000002
	c.beqz	a5,00000000230092F2

l230092E0:
	c.li	a5,00000009
	c.sw	s1,52(a5)
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300B24C
	sw	zero,s1,+00000034

l230092F2:
	c.lw	s0,0(s0)
	c.j	0000000023009184

l230092F6:
	lbu	a1,s0,+00000346
	andi	a4,a2,+000000FE
	c.andi	a1,00000002
	c.beqz	a1,000000002300921E

l23009302:
	ori	a4,a2,+00000001
	c.j	000000002300921E

l23009308:
	lbu	s8,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004E
	jal	ra,00000000230149A2
	sb	s8,a0,+00000000
	sb	s7,a0,+00000001
	jal	ra,0000000023014A0E
	lbu	a5,s0,+00000347
	c.bnez	a5,000000002300926E

l2300932C:
	c.j	0000000023009268

;; mm_bcn_updated: 2300932E
;;   Called from:
;;     230094F2 (in mm_bcn_update)
mm_bcn_updated proc
	c.addi16sp	FFFFFFD0
	c.swsp	s8,00000004
	lui	s8,0004201F
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s9,00000080
	addi	s1,s8,-00000650
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.li	a2,00000000
	lhu	a1,a5,-00000004
	addi	a0,zero,+00000040
	addi	s2,a5,-0000000C
	jal	ra,0000000023014A78
	lbu	s7,s0,+00000057
	lw	s3,s1,+00000000
	lui	a5,00042045
	slli	s4,s7,00000003
	addi	a5,a5,+00000360
	lbu	s9,s3,+00000008
	c.add	s4,a5
	lhu	a5,s3,+00000004
	lw	s1,s0,+000000CC
	lhu	s6,s3,+00000006
	sub	s9,a5,s9
	lw	s5,s1,+00000014
	sh	s9,s0,+00000338
	c.lw	s1,20(a2)
	lhu	a1,s3,+00000004
	c.mv	a0,s7
	c.addi	s6,00000003
	jal	ra,000000002300DE9C
	lhu	a4,s3,+00000006
	c.lw	s1,20(a5)
	lui	a0,00042046
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	c.sw	s1,24(a5)
	lbu	a4,s3,+00000008
	addi	a0,a0,-00000598
	addi	s8,s8,-00000650
	c.addi	a4,00000001
	c.add	a4,a5
	c.li	a5,00000014
	add	s7,s7,a5
	c.add	a0,s7
	c.sw	a0,8(a4)
	lhu	a5,s3,+00000006
	sw	zero,a0,+00000010
	xori	a5,a5,-00000001
	c.add	a5,s9
	c.add	a5,a4
	c.sw	a0,12(a5)
	c.lw	s0,64(a5)
	lbu	a5,a5,+00000004
	c.beqz	a5,0000000023009490

l230093E8:
	lui	a5,00042046
	addi	a5,a5,-000005D4

l230093F0:
	lui	a4,00044B00
	lw	a4,a4,+000000A0
	c.add	s5,s6
	andi	a4,a4,+000000FF
	c.sw	a5,36(a4)
	c.sw	s1,40(a5)
	sw	zero,s1,+00000024
	sw	zero,s1,+0000003C
	lbu	a5,s0,+00000057
	addi	a4,zero,+00000028
	add	a5,a5,a4
	lui	a4,00042046
	addi	a4,a4,-00000570
	c.add	a5,a4
	c.sw	s1,16(a5)
	c.li	a5,00000001
	sb	a5,s0,+00000342
	lbu	a5,s5,+00000000
	sb	a5,s4,+00000003
	lw	a5,s8,+00000000
	sb	zero,s0,+00000347
	lw	a3,s0,+000000CC
	lbu	a4,a5,+0000000A
	sb	a4,s0,+00000348
	lbu	a4,a5,+0000000B
	sb	a4,s0,+00000349
	lbu	a4,a5,+0000000A
	c.beqz	a4,0000000023009460

l23009452:
	c.lw	a3,20(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000347

l23009460:
	lbu	a5,s8,+00000008
	sb	zero,s8,+00000009
	c.beqz	a5,000000002300946E

l2300946A:
	jal	ra,00000000230090F6

l2300946E:
	c.lwsp	s0,00000114
	sw	zero,s8,+00000000
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
	jal	zero,0000000023014A9A

l23009490:
	lui	a5,00042045
	addi	a5,a5,+000000B4
	c.j	00000000230093F0

;; mm_bcn_update: 2300949A
;;   Called from:
;;     2300953A (in mm_bcn_transmitted)
;;     23009592 (in mm_bcn_change)
mm_bcn_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	s0,a0,+00000009
	addi	a5,zero,+0000034C
	lui	a4,00042045
	add	a5,s0,a5
	addi	a4,a4,+0000036C
	lhu	a2,a0,+00000004
	addi	a1,a0,+0000000C
	c.add	a5,a4
	addi	a0,a5,+0000014C
	jal	ra,00000000230A382C
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a5,0004201F
	addi	a5,a5,-00000650
	c.li	a4,00000001
	lui	a0,00042020
	sb	zero,a5,+0000000A
	sb	a4,a5,+00000009
	addi	a0,a0,-00000088
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.add	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	jal	zero,000000002300932E

;; mm_bcn_transmitted: 230094F6
mm_bcn_transmitted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	c.swsp	s1,00000080
	addi	a5,s0,-00000650
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a5,4(a5)
	c.mv	s1,a0
	addi	s0,s0,-00000650
	c.bnez	a5,000000002300952A

l23009512:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000244
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000404
	jal	ra,0000000023001234

l2300952A:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,4(a5)
	c.bnez	a5,0000000023009570

l23009532:
	lbu	a5,s0,+0000000A
	c.beqz	a5,000000002300953E

l23009538:
	c.lw	s0,0(a0)
	jal	ra,000000002300949A

l2300953E:
	lui	s2,0004201F

l23009542:
	c.lw	s0,28(a5)
	c.bnez	a5,0000000023009560

l23009546:
	lbu	a4,s1,+00000347
	c.li	a5,00000001
	bne	a4,a5,0000000023009570

l23009550:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300D574

l23009560:
	addi	a0,s2,-00000634
	jal	ra,000000002301450E
	c.addi	a0,0000000C
	jal	ra,0000000023008C96
	c.j	0000000023009542

l23009570:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change: 2300957C
;;   Called from:
;;     2301B2D2 (in mm_bcn_change_req_handler)
mm_bcn_change proc
	lui	a5,0004201F
	addi	a5,a5,-00000650
	c.lw	a5,4(a4)
	c.sw	a5,0(a0)
	c.beqz	a4,0000000023009592

l2300958A:
	c.li	a4,00000001
	sb	a4,a5,+0000000A
	c.jr	ra

l23009592:
	jal	zero,000000002300949A

;; mm_timer_hw_set: 23009596
;;   Called from:
;;     23009662 (in mm_timer_set)
;;     230096C8 (in mm_timer_clear)
;;     2300971E (in mm_timer_schedule)
;;     23009758 (in mm_timer_schedule)
mm_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,00000000230095CA

l2300959C:
	c.lw	a0,12(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000144
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000080
	c.bnez	a3,00000000230095C4

l230095B4:
	addi	a3,zero,+00000080
	sw	a3,a4,+00000088
	ori	a5,a5,+00000080

l230095C0:
	sw	a5,a4,+0000008C

l230095C4:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l230095CA:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000081
	c.j	00000000230095C0

;; cmp_abs_time: 230095D8
cmp_abs_time proc
	c.lw	a0,12(a0)
	c.lw	a1,12(a5)
	c.sub	a0,a5
	c.srli	a0,0000001F
	c.jr	ra

;; mm_timer_init: 230095E2
;;   Called from:
;;     23007ED8 (in mm_init)
mm_timer_init proc
	lui	a0,0004201F
	addi	a0,a0,-0000062C
	jal	zero,0000000023014488

;; mm_timer_set: 230095EE
;;   Called from:
;;     23008B0A (in mm_check_beacon)
;;     23008BD8 (in mm_sta_tbtt)
;;     230097CA (in ps_uapsd_timer_handle)
;;     23009B28 (in ps_enable_cfm)
;;     23009F4A (in ps_uapsd_set)
;;     2300B38C (in td_timer_end)
;;     2300B482 (in td_start)
;;     2300D4B2 (in vif_mgmt_bcn_to_prog)
;;     2300D65C (in vif_mgmt_switch_channel)
;;     230178B4 (in keyMgmtSta_StartSession_internal)
;;     230199EA (in chan_conn_less_delay_prog)
;;     23019C34 (in chan_upd_ctxt_status)
;;     23019ECE (in chan_tbtt_schedule)
;;     23019F1A (in chan_cde_evt)
;;     2301BBA0 (in mm_hw_config_handler)
mm_timer_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lui	s1,00044B00
	lw	a5,s1,+00000120
	c.mv	s2,a0
	c.mv	s0,a1
	sub	a5,a1,a5
	bge	a5,zero,0000000023009626

l2300960E:
	lui	a0,000230AC
	addi	a0,a0,-000003E4
	jal	ra,000000002308234C
	lw	s0,s1,+00000120
	c.lui	a5,00001000
	addi	a5,a5,-00000448
	c.add	s0,a5

l23009626:
	lui	s1,0004201F
	lw	a5,s1,-0000062C
	bne	s2,a5,0000000023009688

l23009632:
	addi	a0,s1,-0000062C
	jal	ra,000000002301450E
	c.li	s3,00000001

l2300963C:
	lui	a2,00023009
	sw	s0,s2,+0000000C
	addi	a2,a2,+000005D8
	c.mv	a1,s2
	addi	a0,s1,-0000062C
	jal	ra,000000002301457C
	bne	s3,zero,000000002300965E

l23009656:
	lw	a5,s1,-0000062C
	bne	s2,a5,0000000023009666

l2300965E:
	lw	a0,s1,-0000062C
	jal	ra,0000000023009596

l23009666:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,0000000023009696

l23009674:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00008000
	c.addi16sp	00000020
	jal	zero,00000000230146D6

l23009688:
	c.mv	a1,s2
	addi	a0,s1,-0000062C
	jal	ra,000000002301451A
	c.li	s3,00000000
	c.j	000000002300963C

l23009696:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; mm_timer_clear: 230096A4
;;   Called from:
;;     23009C0E (in ps_disable_cfm)
;;     2300B3DC (in td_reset)
;;     2300D260 (in vif_mgmt_unregister)
;;     2300D26A (in vif_mgmt_unregister)
;;     2300D4DA (in vif_mgmt_bcn_recv)
;;     2300D636 (in vif_mgmt_switch_channel)
;;     230155B6 (in supplicantDisable)
;;     230176C0 (in ProcessRxEAPOL_PwkMsg3)
;;     2301777E (in ProcessRxEAPOL_GrpMsg1)
;;     23019B26 (in chan_tbtt_insert)
;;     23019BD0 (in chan_upd_ctxt_status)
;;     2301A0AC (in chan_pre_switch_channel)
;;     2301A7A2 (in chan_roc_req)
;;     2301A7C0 (in chan_roc_req)
;;     2301BC38 (in mm_hw_config_handler)
mm_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	lw	a5,s0,-0000062C
	c.swsp	ra,00000084
	bne	a0,a5,00000000230096CC

l230096B6:
	addi	a0,s0,-0000062C
	jal	ra,000000002301450E
	lw	a0,s0,-0000062C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023009596

l230096CC:
	c.mv	a1,a0
	addi	a0,s0,-0000062C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301451A

;; mm_timer_schedule: 230096DC
mm_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201F
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,s1
	lui	s2,00044B00
	lui	s4,000230AA
	lui	s5,000230AC

l230096FE:
	lui	a0,00008000
	jal	ra,00000000230146EE
	lw	s0,s1,-0000062C
	c.bnez	s0,0000000023009722

l2300970C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023009596

l23009722:
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,0000000023009756

l23009732:
	addi	a0,s3,-0000062C
	jal	ra,000000002301450E
	c.lw	s0,4(a5)
	c.bnez	a5,000000002300974E

l2300973E:
	addi	a2,zero,+000000DE
	addi	a1,s4,+0000020C
	addi	a0,s5,-000003F0
	jal	ra,0000000023001234

l2300974E:
	c.lw	s0,4(a5)
	c.lw	s0,8(a0)
	c.jalr	a5
	c.j	00000000230096FE

l23009756:
	c.mv	a0,s0
	jal	ra,0000000023009596
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	blt	a5,zero,0000000023009732

l23009768:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; ps_uapsd_timer_handle: 2300977A
ps_uapsd_timer_handle proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042021
	c.swsp	s0,0000000C
	lw	s0,a5,-000004D0
	c.swsp	s1,00000088
	lui	s1,0004201F
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	s2,00000000
	lui	s3,00044B00
	addi	s1,s1,-00000624

l2300979C:
	c.bnez	s0,00000000230097CE

l2300979E:
	lui	a5,0004201F
	addi	a5,a5,-00000624
	beq	s2,zero,000000002300981C

l230097AA:
	lui	a4,00044B00
	lw	a1,a4,+00000120
	c.lw	a5,32(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,0004201F
	c.add	a1,a5
	addi	a0,a0,-00000618
	c.addi16sp	00000020
	jal	zero,00000000230095EE

l230097CE:
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023009818

l230097D4:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023009818

l230097DA:
	lbu	a5,s0,+00000068
	c.beqz	a5,0000000023009818

l230097E0:
	c.mv	a0,s0
	jal	ra,000000002301ABEA
	c.beqz	a0,0000000023009818

l230097E8:
	c.lw	s1,32(a5)
	lw	a4,s3,+00000120
	c.mv	s2,a0
	c.srli	a5,00000001
	c.sub	a5,a4
	c.lw	s0,100(a4)
	c.add	a5,a4
	bge	a5,zero,0000000023009818

l230097FC:
	c.lw	s0,4(a5)
	lbu	a0,s0,+00000060
	c.li	a3,00000000
	ori	a5,a5,+00000008
	c.sw	s0,4(a5)
	c.li	a2,00000000
	c.li	a1,00000007
	jal	ra,000000002300C95E
	lw	a5,s3,+00000120
	c.sw	s0,100(a5)

l23009818:
	c.lw	s0,0(s0)
	c.j	000000002300979C

l2300981C:
	sb	zero,a5,+0000001C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; blmac_pwr_mgt_setf: 2300982E
;;   Called from:
;;     23009876 (in ps_dpsm_update)
;;     23009A3C (in ps_set_mode)
;;     23009A84 (in ps_set_mode)
blmac_pwr_mgt_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ps_dpsm_update: 2300983E
;;   Called from:
;;     23009FB0 (in ps_traffic_status_update)
ps_dpsm_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a5,s0,-00000624
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a4,a5,+00000024
	addi	s0,s0,-00000624
	c.lw	a5,4(a5)
	c.beqz	a0,00000000230098A2

l2300985C:
	ori	a4,a4,+00000002
	ori	a5,a5,+00000008
	lui	s2,0002300A
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-00000434

l23009872:
	xori	a0,a0,+00000001
	jal	ra,000000002300982E
	lui	a5,00042021
	lw	s1,a5,-000004D0
	sb	zero,s0,+00000008

l23009886:
	c.bnez	s1,00000000230098B8

l23009888:
	lbu	a5,s0,+00000008
	c.bnez	a5,00000000230098EA

l2300988E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	t1,s2
	c.lwsp	zero,00000048
	lui	a1,00000800
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	t1

l230098A2:
	ori	a4,a4,+00000004
	c.andi	a5,FFFFFFF7
	lui	s2,0002300A
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-00000536
	c.j	0000000023009872

l230098B8:
	lbu	a5,s1,+00000056
	c.bnez	a5,00000000230098E6

l230098BE:
	lbu	a5,s1,+00000058
	c.beqz	a5,00000000230098E6

l230098C4:
	c.mv	a0,s1
	jal	ra,000000002301ABEA
	c.beqz	a0,00000000230098E6

l230098CC:
	lbu	a5,s0,+00000008
	lbu	a0,s1,+00000060
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	c.mv	a2,s1
	c.mv	a1,s2
	sb	a5,s0,+00000008
	jal	ra,000000002300C85A

l230098E6:
	c.lw	s1,0(s1)
	c.j	0000000023009886

l230098EA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ps_send_pspoll: 230098F6
;;   Called from:
;;     23009C8E (in ps_polling_frame)
;;     23009D50 (in ps_check_beacon)
;;     23009E6A (in ps_check_frame)
ps_send_pspoll proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	lbu	s4,a0,+00000060
	c.li	a1,00000000
	c.mv	s3,a0
	c.addi4spn	a0,00000008
	jal	ra,00000000230020D4
	lbu	a0,sp,+00000008
	c.li	a1,00000010
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	c.beqz	a0,00000000230099B6

l23009922:
	c.mv	s1,a0
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002300B644
	lw	s2,s1,+00000068
	addi	a5,zero,-0000005C
	lui	s0,0004201F
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s4,s4,a5
	addi	s0,s0,-000005A0
	sb	zero,s2,+0000014D
	c.lui	a4,0000C000
	c.li	a2,00000006
	addi	a0,s2,+00000150
	c.add	s0,s4
	lhu	a5,s0,+00000018
	addi	a1,s0,+0000001E
	c.or	a5,a4
	sb	a5,s2,+0000014E
	c.srli	a5,00000008
	sb	a5,s2,+0000014F
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s3,+00000050
	addi	a0,s2,+00000156
	jal	ra,00000000230A382C
	c.lw	s1,108(a3)
	lui	a4,00010000
	addi	a4,a4,+00000053
	c.lw	a3,60(a5)
	c.li	a1,00000003
	c.mv	a0,s1
	c.or	a5,a4
	c.sw	a3,60(a5)
	lbu	a5,s0,+0000001A
	sb	a5,s1,+0000002F
	lbu	a5,s0,+0000001B
	sb	a5,s1,+00000030
	jal	ra,000000002300C6AE
	c.li	a0,00000000

l230099A6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230099B6:
	c.li	a0,00000001
	c.j	00000000230099A6

;; ps_init: 230099BA
;;   Called from:
;;     23007ECC (in mm_init)
ps_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a0,s0,-00000624
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	lui	a5,00023009
	addi	s0,s0,-00000624
	addi	a5,a5,+0000077A
	c.sw	s0,16(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ps_set_mode: 230099E8
;;   Called from:
;;     23009BC8 (in ps_enable_cfm)
;;     23009C8A (in ps_disable_cfm)
;;     2301B6FC (in mm_set_ps_mode_req_handler)
ps_set_mode proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201F
	addi	a4,s0,-00000624
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a4,+00000024
	sh	a1,a4,+00000002
	addi	s0,s0,-00000624
	andi	a3,a5,+00000001
	c.beqz	a3,0000000023009A2E

l23009A0E:
	andi	a3,a5,+00000006
	c.beqz	a3,0000000023009A2E

l23009A14:
	ori	a5,a5,+00000010
	sb	a0,a4,+00000025
	sb	a5,a4,+00000024

l23009A20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23009A2E:
	c.bnez	a0,0000000023009A70

l23009A30:
	lui	s2,0002300A
	sb	zero,s0,+00000024
	addi	s2,s2,-00000434
	jal	ra,000000002300982E

l23009A40:
	lui	a5,00042021
	lw	s1,a5,-000004D0
	sb	zero,s0,+00000008
	sb	zero,s0,+0000001D
	c.li	s3,00000001

l23009A52:
	c.bnez	s1,0000000023009A8E

l23009A54:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023009A20

l23009A5A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	t1,s2
	c.lwsp	a6,00000048
	lui	a1,00000800
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	t1

l23009A70:
	c.li	a4,00000002
	bne	a0,a4,0000000023009A7E

l23009A76:
	ori	a5,a5,+00000001
	sb	a5,s0,+00000024

l23009A7E:
	c.li	a0,00000001
	lui	s2,0002300A
	jal	ra,000000002300982E
	addi	s2,s2,-00000536
	c.j	0000000023009A40

l23009A8E:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023009AC6

l23009A94:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023009AC6

l23009A9A:
	c.mv	a0,s1
	jal	ra,000000002301ABEA
	c.beqz	a0,0000000023009AC6

l23009AA2:
	lbu	a5,s0,+00000008
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	sb	a5,s0,+00000008
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023009ABA

l23009AB6:
	sb	s3,s0,+0000001D

l23009ABA:
	lbu	a0,s1,+00000060
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,000000002300C85A

l23009AC6:
	c.lw	s1,0(s1)
	c.j	0000000023009A52

;; ps_enable_cfm: 23009ACA
ps_enable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	slli	a5,a1,00000008
	blt	a5,zero,0000000023009AF4

l23009ADA:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023009B58

l23009AF0:
	jal	ra,00000000230087C6

l23009AF4:
	lui	s0,0004201F
	addi	a5,s0,-00000624
	lbu	a5,a5,+00000008
	addi	s0,s0,-00000624
	c.bnez	a5,0000000023009B70

l23009B06:
	lbu	a5,s0,+0000001D
	c.beqz	a5,0000000023009B34

l23009B0C:
	lui	a5,00042021
	lw	s1,a5,-000004D0
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,0004201F
	addi	a0,a0,-00000618
	c.add	a1,a5
	jal	ra,00000000230095EE
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l23009B32:
	c.bnez	s1,0000000023009B86

l23009B34:
	lbu	a5,s0,+00000024
	c.li	a4,00000005
	andi	a3,a5,+00000005
	beq	a3,a4,0000000023009BA2

l23009B42:
	lhu	a1,s0,+00000002
	c.li	a5,00000001
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	a5,s0,+00000000
	jal	ra,0000000023014A78
	c.j	0000000023009BA8

l23009B58:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lbu	a0,a0,+00000060
	lui	a1,0002300A
	addi	a1,a1,-00000536
	c.addi	sp,00000010
	jal	zero,000000002300C85A

l23009B70:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023009B06

l23009B7C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23009B86:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023009B9E

l23009B8C:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023009B9E

l23009B92:
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023009B9E

l23009B98:
	c.lw	s1,4(a5)
	c.andi	a5,FFFFFFF7
	c.sw	s1,4(a5)

l23009B9E:
	c.lw	s1,0(s1)
	c.j	0000000023009B32

l23009BA2:
	c.andi	a5,FFFFFFF3
	sb	a5,s0,+00000024

l23009BA8:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023009B7C

l23009BB2:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230099E8

;; ps_disable_cfm: 23009BCC
ps_disable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	slli	a5,a1,00000008
	blt	a5,zero,0000000023009BF4

l23009BDA:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023009C38

l23009BF0:
	jal	ra,00000000230087C6

l23009BF4:
	lui	s0,0004201F
	addi	a5,s0,-00000624
	lbu	a5,a5,+00000008
	addi	s0,s0,-00000624
	c.bnez	a5,0000000023009C4E

l23009C06:
	lui	a0,0004201F
	addi	a0,a0,-00000618
	jal	ra,00000000230096A4
	lbu	a5,s0,+00000024
	sb	zero,s0,+0000001C
	c.li	a4,00000003
	andi	a3,a5,+00000003
	beq	a3,a4,0000000023009C62

l23009C24:
	lhu	a1,s0,+00000002
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	zero,s0,+00000000
	jal	ra,0000000023014A78
	c.j	0000000023009C6C

l23009C38:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lbu	a0,a0,+00000060
	lui	a1,0002300A
	addi	a1,a1,-00000434
	c.addi	sp,00000010
	jal	zero,000000002300C85A

l23009C4E:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023009C06

l23009C5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23009C62:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000024

l23009C6C:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023009C5A

l23009C76:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230099E8

;; ps_polling_frame: 23009C8E
;;   Called from:
;;     2301B6F2 (in mm_set_ps_mode_req_handler)
ps_polling_frame proc
	jal	zero,00000000230098F6

;; ps_check_beacon: 23009C92
;;   Called from:
;;     2300A59A (in rxl_cntrl_evt)
ps_check_beacon proc
	lbu	a7,a2,+00000060
	addi	a4,zero,+000001B0
	lui	a5,0004201F
	add	a4,a7,a4
	addi	a5,a5,-000005A0
	lui	a1,0004201F
	addi	a1,a1,-00000624
	lbu	a6,a1,+00000000
	c.add	a5,a4
	lhu	a4,a5,+00000018
	c.lw	a2,4(a5)
	andi	a3,a5,-00000002
	c.sw	a2,4(a3)
	beq	a6,zero,0000000023009D70

l23009CC4:
	lbu	a1,a1,+00000024
	c.andi	a1,00000008
	c.bnez	a1,0000000023009D70

l23009CCC:
	c.beqz	a0,0000000023009D70

l23009CCE:
	lbu	a1,a2,+0000005E
	c.bnez	a1,0000000023009CE2

l23009CD4:
	lbu	a1,a0,+00000004
	c.andi	a1,00000001
	c.beqz	a1,0000000023009D48

l23009CDC:
	ori	a3,a3,+00000002
	c.sw	a2,4(a3)

l23009CE2:
	lbu	a3,a0,+00000004
	lbu	a6,a2,+00000068
	srli	a5,a4,00000003
	andi	a3,a3,+000000FE
	andi	a6,a6,+0000000F
	bltu	a5,a3,0000000023009D5E

l23009CFA:
	lbu	a1,a0,+00000001
	c.addi	a1,FFFFFFFC
	c.add	a1,a3
	bltu	a1,a5,0000000023009D5E

l23009D06:
	c.add	a5,a0
	c.sub	a5,a3
	lbu	a5,a5,+00000005
	andi	a3,a4,+00000007
	c.li	a4,00000001
	sll	a4,a4,a3
	c.and	a5,a4
	c.beqz	a5,0000000023009D5E

l23009D1C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000F
	c.mv	s0,a2
	bne	a6,a5,0000000023009D4E

l23009D2A:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000007
	c.mv	a0,a7
	jal	ra,000000002300C95E
	c.bnez	a0,0000000023009D40

l23009D38:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000008

l23009D3E:
	c.sw	s0,4(a5)

l23009D40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23009D48:
	c.andi	a5,FFFFFFFC
	c.sw	a2,4(a5)
	c.j	0000000023009CE2

l23009D4E:
	c.mv	a0,a2
	jal	ra,00000000230098F6
	c.bnez	a0,0000000023009D40

l23009D56:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000004
	c.j	0000000023009D3E

l23009D5E:
	c.li	a4,0000000F
	c.lw	a2,4(a5)
	bne	a6,a4,0000000023009D6C

l23009D66:
	c.andi	a5,FFFFFFF7

l23009D68:
	c.sw	a2,4(a5)
	c.jr	ra

l23009D6C:
	c.andi	a5,FFFFFFFB
	c.j	0000000023009D68

l23009D70:
	c.jr	ra

;; ps_check_frame: 23009D72
;;   Called from:
;;     2300A750 (in rxl_cntrl_evt)
ps_check_frame proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004201F
	lbu	a5,s2,-00000624
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.beqz	a5,0000000023009DB0

l23009D88:
	lbu	s1,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000004
	c.andi	a5,00000001
	c.beqz	a5,0000000023009DBE

l23009D9C:
	slli	a5,s1,00000012
	bge	a5,zero,0000000023009DAA

l23009DA4:
	lbu	a5,a2,+0000005E
	c.beqz	a5,0000000023009DB0

l23009DAA:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFFD

l23009DAE:
	c.sw	a2,4(a5)

l23009DB0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23009DBE:
	andi	a1,a1,+00000200
	c.bnez	a1,0000000023009DB0

l23009DC4:
	addi	s2,s2,-00000624
	lbu	s3,s2,+0000001D
	beq	s3,zero,0000000023009E48

l23009DD0:
	andi	a5,s1,+00000088
	addi	a4,zero,+00000088
	bne	a5,a4,0000000023009E30

l23009DDC:
	andi	a5,s1,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,0000000023009E26

l23009DE8:
	lbu	a4,a0,+0000001E
	lbu	a5,a0,+0000001F

l23009DF0:
	c.slli	a5,08
	c.or	a5,a4
	lui	a1,000230AD
	andi	a3,a5,+00000007
	addi	a1,a1,+00000230
	c.add	a3,a1
	lbu	a4,a2,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,0000000023009E78

l23009E12:
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.andi	a5,00000010
	c.sw	a2,100(a4)
	c.beqz	a5,0000000023009DB0

l23009E20:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFF7
	c.j	0000000023009DAE

l23009E26:
	lbu	a4,a0,+00000018
	lbu	a5,a0,+00000019
	c.j	0000000023009DF0

l23009E30:
	andi	a5,s1,+0000000C
	c.bnez	a5,0000000023009E78

l23009E36:
	lbu	a5,a2,+00000068
	c.andi	a5,00000008
	c.beqz	a5,0000000023009E78

l23009E3E:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sw	a2,100(a5)

l23009E48:
	lbu	a0,a2,+00000057
	c.li	a1,00000001
	c.mv	s0,a2
	jal	ra,000000002300B4B4
	bne	s3,zero,0000000023009DB0

l23009E58:
	slli	a5,s1,00000012
	bge	a5,zero,0000000023009E70

l23009E60:
	lbu	a5,s2,+00000024
	c.andi	a5,00000008
	c.bnez	a5,0000000023009DB0

l23009E68:
	c.mv	a0,s0
	jal	ra,00000000230098F6
	c.beqz	a0,0000000023009DB0

l23009E70:
	c.lw	s0,4(a5)
	c.andi	a5,FFFFFFFB
	c.sw	s0,4(a5)
	c.j	0000000023009DB0

l23009E78:
	c.li	s3,00000000
	c.j	0000000023009E48

;; ps_check_tx_frame: 23009E7C
;;   Called from:
;;     2300C098 (in txl_cntrl_push)
ps_check_tx_frame proc
	lui	a5,0004201F
	lbu	a5,a5,-00000624
	c.beqz	a5,0000000023009EFE

l23009E86:
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023009EFE

l23009E8E:
	beq	a1,a5,0000000023009EFE

l23009E92:
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	addi	a3,zero,+000005D8
	c.add	a5,a0
	lbu	a4,a5,+0000001A
	lui	a5,00042020
	addi	a5,a5,-00000088
	add	a4,a4,a3
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,0000000023009EFE

l23009EC0:
	lbu	a4,a5,+00000058
	c.beqz	a4,0000000023009EFE

l23009EC6:
	lui	a3,000230AD
	addi	a3,a3,+00000230
	c.add	a3,a1
	lbu	a4,a5,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,0000000023009EF4

l23009EE0:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000008
	c.sw	a5,4(a4)
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.sw	a5,100(a4)
	c.jr	ra

l23009EF4:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	zero,000000002300B4B4

l23009EFE:
	c.jr	ra

;; ps_uapsd_set: 23009F00
;;   Called from:
;;     2301BAF0 (in mm_hw_config_handler)
ps_uapsd_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sll	a1,s1,a1
	lbu	a5,a0,+00000068
	andi	a1,a1,+000000FF
	c.beqz	a2,0000000023009F5C

l23009F18:
	lui	s0,0004201F
	c.or	a5,a1
	addi	s0,s0,-00000624
	sb	a5,a0,+00000068
	lbu	a5,s0,+00000000
	c.beqz	a5,0000000023009F52

l23009F2C:
	lbu	a5,s0,+0000001C
	c.bnez	a5,0000000023009F52

l23009F32:
	sb	s1,s0,+0000001D
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,0004201F
	addi	a0,a0,-00000618
	c.add	a1,a5
	jal	ra,00000000230095EE
	sb	s1,s0,+0000001C

l23009F52:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23009F5C:
	xori	a1,a1,-00000001
	c.and	a5,a1
	sb	a5,a0,+00000068
	c.j	0000000023009F52

;; ps_traffic_status_update: 23009F68
;;   Called from:
;;     2300B334 (in td_timer_end)
ps_traffic_status_update proc
	lui	a5,0004201F
	addi	a5,a5,-00000624
	lbu	a4,a5,+00000000
	c.beqz	a4,0000000023009F8E

l23009F76:
	lbu	a5,a5,+00000024
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023009F8E

l23009F80:
	andi	a4,a5,+00000006
	c.bnez	a4,0000000023009F8E

l23009F86:
	c.beqz	a1,0000000023009F90

l23009F88:
	c.andi	a5,00000008

l23009F8A:
	c.li	a0,00000001
	c.beqz	a5,0000000023009FB0

l23009F8E:
	c.jr	ra

l23009F90:
	lui	a4,00042021
	lw	a4,a4,-000004D0
	lui	a1,00042020
	addi	a1,a1,-00000160
	addi	a6,zero,+00000024

l23009FA4:
	c.bnez	a4,0000000023009FB4

l23009FA6:
	c.li	a2,00000000

l23009FA8:
	c.andi	a5,00000008
	c.bnez	a2,0000000023009F8A

l23009FAC:
	c.beqz	a5,0000000023009F8E

l23009FAE:
	c.li	a0,00000000

l23009FB0:
	jal	zero,000000002300983E

l23009FB4:
	lbu	a3,a4,+00000057
	beq	a3,a0,0000000023009FD8

l23009FBC:
	lbu	a2,a4,+00000058
	c.beqz	a2,0000000023009FD8

l23009FC2:
	lbu	a7,a4,+00000056
	bne	a7,zero,0000000023009FD8

l23009FCA:
	add	a3,a3,a6
	c.add	a3,a1
	lbu	a3,a3,+00000021
	c.andi	a3,0000000C
	c.bnez	a3,0000000023009FA8

l23009FD8:
	c.lw	a4,0(a4)
	c.j	0000000023009FA4

;; bl_init: 23009FDC
;;   Called from:
;;     23001398 (in wifi_main)
bl_init proc
	lui	a5,0004201F
	lui	a4,0004200F
	addi	a5,a5,-000005F4
	c.addi	sp,FFFFFFF0
	sw	a5,a4,+00000320
	lui	a5,0004201F
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sw	zero,a5,+00000A08
	lui	s0,00042021
	jal	ra,00000000230146AC
	jal	ra,000000002300D6A8
	jal	ra,0000000023007EB4
	jal	ra,00000000230147E4
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	addi	a0,s0,+00000440
	jal	ra,00000000230A3A68
	addi	a5,s0,+00000440
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000004
	sb	zero,a5,+00000000
	sb	a4,a5,+00000003
	jal	ra,0000000023018900
	addi	a0,s0,+00000440
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023015A30

;; bl_reset_evt: 2300A040
bl_reset_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	lui	a0,00080000
	jal	ra,00000000230146EE
	jal	ra,0000000023007712
	jal	ra,000000002300A782
	jal	ra,000000002300C22E
	jal	ra,0000000023007F02
	jal	ra,000000002300D47C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sleep: 2300A06E
;;   Called from:
;;     2300146E (in wifi_main)
bl_sleep proc
	lui	a5,00042021
	lw	a5,a5,+000007C8
	c.beqz	a5,000000002300A086

l2300A078:
	c.li	a0,00000000
	c.jr	ra

l2300A07C:
	c.li	a0,00000000

l2300A07E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300A086:
	c.addi	sp,FFFFFFF0
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023014C3C
	c.bnez	a0,000000002300A07C

l2300A094:
	lui	a5,0004201F
	addi	a5,a5,-00000624
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002300A07C

l2300A0A2:
	c.lw	a5,4(a5)
	c.bnez	a5,000000002300A07C

l2300A0A6:
	lui	a5,00042021
	lw	s0,a5,-000004D0

l2300A0AE:
	c.bnez	s0,000000002300A0C0

l2300A0B0:
	lui	a5,00042020
	lw	a5,a5,-000000A0
	c.bnez	a5,000000002300A07C

l2300A0BA:
	jal	ra,0000000023007850
	c.j	000000002300A07E

l2300A0C0:
	c.mv	a0,s0
	jal	ra,000000002301ABEA
	c.beqz	a0,000000002300A0CC

l2300A0C8:
	c.lw	s0,4(a5)
	c.bnez	a5,000000002300A07C

l2300A0CC:
	c.lw	s0,0(s0)
	c.j	000000002300A0AE

;; bl_nap_calculate: 2300A0D0
;;   Called from:
;;     23001328 (in coex_wifi_pta_forece_enable)
bl_nap_calculate proc
	lui	a5,00044B08
	lw	a6,a5,+0000008C
	lui	a2,00044B00
	c.li	a4,00000000
	c.li	a0,FFFFFFFF
	c.li	a7,00000001
	addi	t1,a2,+00000128
	c.li	a1,00000009

l2300A0E8:
	sll	a5,a7,a4
	and	a5,a5,a6
	c.beqz	a5,000000002300A10A

l2300A0F2:
	slli	a5,a4,00000002
	c.add	a5,t1
	c.lw	a5,0(a5)
	lw	a3,a2,+00000120
	bgeu	a3,a5,000000002300A112

l2300A102:
	c.sub	a5,a3

l2300A104:
	bgeu	a5,a0,000000002300A10A

l2300A108:
	c.mv	a0,a5

l2300A10A:
	c.addi	a4,00000001
	bne	a4,a1,000000002300A0E8

l2300A110:
	c.jr	ra

l2300A112:
	c.addi	a3,FFFFFFFF
	sub	a5,a3,a5
	c.j	000000002300A104

;; mm_ps_change_ind: 2300A11A
;;   Called from:
;;     2300A502 (in rxl_cntrl_evt)
;;     2300A528 (in rxl_cntrl_evt)
;;     2300A718 (in rxl_cntrl_evt)
;;     2300A72C (in rxl_cntrl_evt)
mm_ps_change_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	addi	a4,zero,+000001B0
	add	a4,s1,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.add	a5,a4
	sb	s0,a5,+0000001C
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; rxl_mpdu_transfer: 2300A15E
;;   Called from:
;;     2300FB12 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     23010822 (in rxu_cntrl_frame_handle)
rxl_mpdu_transfer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000004
	c.mv	s0,a0
	c.li	a1,00000000
	addi	a0,s2,+00000044
	lw	s1,s2,+00000008
	jal	ra,00000000230020D4
	lui	a5,00042021
	lw	a5,a5,+000005A8
	c.li	a4,00000000
	sw	a5,s2,+00000054
	sb	zero,s0,+0000001D

l2300A18E:
	lhu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,000000002300A1CC

l2300A196:
	lbu	a5,s0,+0000001D
	c.lw	s1,4(a3)
	c.mv	a4,s1
	c.addi	a5,00000001
	sb	a5,s0,+0000001D
	c.bnez	a3,000000002300A1C8

l2300A1A6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000000B4
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000354
	c.addi	sp,00000010
	jal	zero,00000000230011F4

l2300A1C8:
	c.mv	s1,a3
	c.j	000000002300A18E

l2300A1CC:
	c.sw	s0,16(s1)
	c.sw	s0,12(a4)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; rxl_init: 2300A1DC
;;   Called from:
;;     23007ED4 (in mm_init)
rxl_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.jal	000000002300A8B2
	jal	ra,000000002301BD3E
	lui	a0,0004201F
	addi	a0,a0,-000005E8
	jal	ra,0000000023014488
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300FFB6

;; rxl_cntrl_dump: 2300A1FC
;;   Called from:
;;     23014746 (in bl_fw_statistic_dump)
rxl_cntrl_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	a0,s0,-000005E8
	c.swsp	ra,00000084
	jal	ra,000000002301456E
	c.beqz	a0,000000002300A216

l2300A210:
	lw	a5,s0,-000005E8

l2300A214:
	c.bnez	a5,000000002300A21E

l2300A216:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300A21E:
	c.lw	a5,0(a5)
	c.j	000000002300A214

;; rxl_timer_int_handler: 2300A222
;;   Called from:
;;     2301A9B8 (in chan_ctxt_update)
rxl_timer_int_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	a5,00044B08
	lui	a4,000000A0
	lui	s1,0004201F
	c.sw	a5,124(a4)
	addi	s0,s1,-000005E8
	lui	s2,000230AA
	lui	s3,000230AC
	lui	s4,000230AC

l2300A24E:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002300A2AA

l2300A252:
	c.lw	a5,64(a4)
	slli	a3,a4,00000011
	bge	a3,zero,000000002300A2AA

l2300A25C:
	c.lw	a5,4(a4)
	c.lw	a5,12(a1)
	c.sw	s0,8(a4)
	c.lw	a5,8(a5)
	c.lw	a1,4(a0)
	c.sw	a1,8(a5)
	lhu	a4,a0,+0000001C
	c.lw	a0,8(a5)
	c.beqz	a4,000000002300A28C

l2300A270:
	c.beqz	a5,000000002300A27A

l2300A272:
	c.mv	a0,s0
	jal	ra,0000000023014492
	c.j	000000002300A24E

l2300A27A:
	addi	a2,zero,+000000D8
	addi	a1,s2,+0000020C
	addi	a0,s4,-00000354

l2300A286:
	jal	ra,00000000230011F4
	c.j	000000002300A24E

l2300A28C:
	c.beqz	a5,000000002300A29C

l2300A28E:
	addi	a2,zero,+000000FA
	addi	a1,s2,+0000020C
	addi	a0,s3,-00000348
	c.j	000000002300A286

l2300A29C:
	sw	zero,a1,+00000010
	sw	zero,a1,+0000000C
	jal	ra,000000002300AA64
	c.j	000000002300A24E

l2300A2AA:
	lw	a5,s1,-000005E8
	c.beqz	a5,000000002300A2C6

l2300A2B0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00000040
	c.addi16sp	00000020
	jal	zero,00000000230146D6

l2300A2C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; rxl_timeout_int_handler: 2300A2D6
;;   Called from:
;;     23007958 (in hal_machw_gen_handler)
rxl_timeout_int_handler proc
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000041
	sw	a5,a4,+0000008C
	c.jr	ra

;; rxl_dma_int_handler: 2300A2E8
rxl_dma_int_handler proc
	c.j	000000002300A2E8

;; rxl_dma_evt: 2300A2EA
rxl_dma_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000100
	c.swsp	ra,00000084
	jal	ra,00000000230146EE
	lui	a5,00044A00
	addi	a4,zero,+00000020
	c.sw	a5,32(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxl_frame_release: 2300A306
;;   Called from:
;;     2300A37C (in rxl_mpdu_free)
rxl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a5,8(a0)
	jal	ra,000000002300AAD4
	c.lw	s0,4(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300AA64

;; rxl_mpdu_free: 2300A326
;;   Called from:
;;     2300A446 (in rxl_cntrl_evt)
;;     2300A77E (in bl60x_firmwre_mpdu_free)
;;     23010992 (in rxu_swdesc_upload_evt)
rxl_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.lw	a5,8(s0)
	jal	ra,0000000023063658
	c.lwsp	a2,00000044
	c.li	a4,00000000
	c.lw	a0,4(a5)
	sb	zero,a0,+0000001E
	sw	zero,a5,+00000060

l2300A344:
	lhu	a5,s0,+00000010
	sw	zero,s0,+00000014
	c.andi	a5,00000001
	c.bnez	a5,000000002300A378

l2300A350:
	c.lw	s0,4(a5)
	c.mv	a4,s0
	c.bnez	a5,000000002300A374

l2300A356:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000397
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000354
	c.addi16sp	00000020
	jal	zero,00000000230011F4

l2300A374:
	c.mv	s0,a5
	c.j	000000002300A344

l2300A378:
	c.sw	a0,16(s0)
	c.sw	a0,12(a4)
	jal	ra,000000002300A306
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002306366C

;; rxl_cntrl_evt: 2300A38A
;;   Called from:
;;     2301A9BE (in chan_ctxt_update)
rxl_cntrl_evt proc
	c.addi16sp	FFFFFF90
	c.li	a5,00000005
	c.swsp	a5,00000084
	lui	a5,000230AD
	addi	a5,a5,+00000230
	c.swsp	a5,00000008
	lui	a5,000230CC
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	lui	s6,0004201F
	lui	s7,00042020
	addi	a5,a5,-00000774
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	addi	s6,s6,-000005A0
	addi	s7,s7,-00000088
	c.swsp	a5,00000088

l2300A3CE:
	lui	s0,0004201F
	lw	s9,s0,-000005E8
	lui	a0,00000040
	jal	ra,00000000230146EE
	beq	s9,zero,000000002300A3F2

l2300A3E2:
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	c.swsp	a5,00000084
	c.bnez	a5,000000002300A410

l2300A3EA:
	lui	a0,00000040
	jal	ra,00000000230146D6

l2300A3F2:
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

l2300A410:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,-000005E8
	jal	ra,000000002301450E
	csrrsi	zero,mstatus,00000008
	lw	s8,s9,+00000004
	lw	s2,s8,+00000008
	bne	s2,zero,000000002300A44C

l2300A42C:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000205
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000394

l2300A440:
	jal	ra,00000000230011F4

l2300A444:
	c.mv	a0,s9
	jal	ra,000000002300A326
	c.j	000000002300A3CE

l2300A44C:
	lw	s11,s8,+00000040
	lui	a5,00002002
	and	a4,s11,a5
	bne	a4,a5,000000002300A4A8

l2300A45C:
	srli	a5,s11,0000000F
	c.slli	a5,10
	c.srli	a5,00000010
	andi	s0,a5,+000003FF
	andi	a5,a5,+000003F8
	c.bnez	a5,000000002300A484

l2300A46E:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000215
	addi	a1,a1,+0000020C
	addi	a0,a0,-0000037C
	c.j	000000002300A440

l2300A484:
	c.addi	s0,FFFFFFF8
	andi	s0,s0,+000000FF
	addi	s4,zero,+000001B0
	add	s4,s0,s4
	c.add	s4,s6
	lbu	a5,s4,+0000001D
	c.bnez	a5,000000002300A4B2

l2300A49A:
	lui	a5,000FE000
	c.addi	a5,FFFFFFFF
	and	s11,s11,a5
	sw	s11,s8,+00000040

l2300A4A8:
	c.mv	a0,s9
	jal	ra,000000002300FFFA
	c.bnez	a0,000000002300A3CE

l2300A4B0:
	c.j	000000002300A444

l2300A4B2:
	lbu	s1,s4,+0000001A
	addi	s3,zero,+000005D8
	jal	ra,00000000230629A4
	add	a5,s1,s3
	sw	a0,s4,+000001A8
	lw	s10,s2,+00000008
	lhu	s5,s10,+00000000
	c.add	a5,s7
	lbu	s2,a5,+00000057
	c.li	a5,00000002
	add	s3,s2,s3
	c.add	s3,s7
	lbu	a4,s3,+00000056
	bne	a4,a5,000000002300A534

l2300A4E4:
	lbu	a4,s4,+0000001C
	c.li	a5,00000001
	bne	a4,a5,000000002300A706

l2300A4EE:
	c.lui	a5,00001000
	addi	a5,a5,+0000040C
	and	a5,s5,a5
	c.li	a4,00000008
	bne	a5,a4,000000002300A5B6

l2300A4FE:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300A11A
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,00000000230138AE
	lbu	a5,s3,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+0000034A
	c.bnez	a5,000000002300A534

l2300A51E:
	c.addi	s2,0000000A
	andi	s2,s2,+000000FF
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002300A11A
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230138AE

l2300A534:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s7
	lbu	a4,a5,+00000058
	c.beqz	a4,000000002300A4A8

l2300A544:
	andi	s2,s5,+00000004
	bne	s2,zero,000000002300A558

l2300A54C:
	lbu	a0,a5,+00000057
	c.li	a2,00000001
	c.mv	a1,s0
	jal	ra,000000002300B490

l2300A558:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s1,s7
	lbu	a5,s1,+00000056
	c.bnez	a5,000000002300A4A8

l2300A568:
	andi	s5,s5,+000000FC
	addi	a5,zero,+00000080
	bne	s5,a5,000000002300A746

l2300A574:
	c.mv	a1,s8
	c.li	a0,00000000
	c.swsp	zero,00000094
	jal	ra,00000000230026DE
	c.li	a0,00000000
	jal	ra,00000000230027E0
	c.addi4spn	a3,0000002C
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s8
	jal	ra,0000000023008932
	lhu	a1,s8,+0000001C
	c.mv	s0,a0
	c.lwsp	a2,00000154
	c.mv	a2,s1
	jal	ra,0000000023009C92
	c.mv	a0,s1
	jal	ra,000000002300D4B6
	c.lw	s1,64(a5)
	c.beqz	a5,000000002300A5B0

l2300A5A8:
	c.lw	s1,36(a1)
	c.mv	a0,s1
	jal	ra,000000002301A9FA

l2300A5B0:
	beq	s0,zero,000000002300A444

l2300A5B4:
	c.j	000000002300A4A8

l2300A5B6:
	andi	a5,s5,+000000FC
	addi	a4,zero,+000000A4
	bne	a5,a4,000000002300A5F4

l2300A5C2:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6
	lbu	a5,s2,+00000032
	c.andi	a5,00000002
	c.beqz	a5,000000002300A696

l2300A5D4:
	lw	a5,s2,+00000034
	c.li	a2,00000001
	c.mv	a1,s4
	ori	a5,a5,+00000001
	sw	a5,s2,+00000034
	c.mv	a0,s3
	jal	ra,000000002300B24C
	lw	a5,s2,+00000034
	c.andi	a5,FFFFFFFE
	sw	a5,s2,+00000034

l2300A5F4:
	andi	a5,s5,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,000000002300A534

l2300A600:
	andi	a5,s5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002300A6B8

l2300A60C:
	lbu	a5,s10,+0000001E

l2300A610:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.lwsp	a6,000000C4
	c.andi	a5,00000007
	c.lwsp	s4,000000A4
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.add	a4,a3
	lbu	a4,a4,+00000000
	c.add	s2,s6
	lbu	a3,s2,+000000F2
	c.and	a4,a3
	beq	a4,zero,000000002300A534

l2300A636:
	lbu	a3,s2,+00000032
	lw	a4,s2,+00000034
	andi	a2,a3,+0000000C
	c.andi	a4,00000006
	c.beqz	a2,000000002300A6FA

l2300A646:
	bne	a4,zero,000000002300A534

l2300A64A:
	c.andi	a3,00000008
	lbu	a6,s2,+000000F3
	c.beqz	a3,000000002300A6BE

l2300A652:
	c.li	a4,00000002
	c.mv	a2,a6
	sw	a4,s2,+00000034
	c.mv	a1,s4
	c.mv	a0,s3
	c.swsp	a5,0000008C
	c.swsp	a6,0000000C
	jal	ra,000000002300B24C
	c.lwsp	s8,00000008
	c.lwsp	t3,000000E4
	beq	a6,zero,000000002300A6BE

l2300A66E:
	sub	a6,a6,a0
	blt	zero,a6,000000002300A6BE

l2300A676:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6

l2300A680:
	lbu	a0,s2,+0000001B
	c.li	a3,00000000
	c.li	a2,00000000
	ori	a1,a5,+00000010
	jal	ra,000000002300C95E
	sw	zero,s2,+00000034
	c.j	000000002300A534

l2300A696:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	jal	ra,00000000230149A2
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,0000000023014A0E
	c.j	000000002300A5F4

l2300A6B8:
	lbu	a5,s10,+00000018
	c.j	000000002300A610

l2300A6BE:
	addi	a4,zero,+000001B0
	add	a4,s0,a4
	c.add	a4,s6
	lbu	a3,a4,+00000032
	c.andi	a3,00000004
	c.beqz	a3,000000002300A676

l2300A6D0:
	c.li	a5,00000004
	c.sw	a4,52(a5)
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	c.swsp	a6,0000000C
	jal	ra,00000000230149A2
	c.lwsp	s8,00000008
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a6,a0,+00000001
	sb	a4,a0,+00000002
	jal	ra,0000000023014A0E
	c.j	000000002300A534

l2300A6FA:
	bne	a4,zero,000000002300A534

l2300A6FE:
	c.li	a4,00000002
	sw	a4,s2,+00000034
	c.j	000000002300A680

l2300A706:
	c.lui	a4,00001000
	addi	a5,a4,+00000400
	and	a5,s5,a5
	bne	a5,a4,000000002300A534

l2300A714:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002300A11A
	lbu	a5,s3,+0000034A
	c.bnez	a5,000000002300A730

l2300A722:
	addi	a0,s2,+0000000A
	c.li	a1,00000001
	andi	a0,a0,+000000FF
	jal	ra,000000002300A11A

l2300A730:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.add	s2,s7
	lbu	a5,s2,+0000034A
	c.addi	a5,00000001
	sb	a5,s2,+0000034A
	c.j	000000002300A534

l2300A746:
	bne	s2,zero,000000002300A4A8

l2300A74A:
	c.mv	a2,s1
	c.mv	a1,s11
	c.mv	a0,s10
	jal	ra,0000000023009D72
	c.j	000000002300A4A8

;; bl60x_firmwre_mpdu_free: 2300A756
;;   Called from:
;;     23023E52 (in my_pbuf_free_custom)
bl60x_firmwre_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023063658
	c.lwsp	a2,00000044
	lui	a5,0004201F
	addi	a5,a5,-000005E8
	lbu	a3,a0,+0000001D
	c.lw	a5,20(a4)
	c.sub	a4,a3
	c.sw	a5,20(a4)
	jal	ra,000000002306366C
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300A326

;; rxl_reset: 2300A782
;;   Called from:
;;     230083EE (in mm_force_idle_req)
;;     2300A054 (in bl_reset_evt)
rxl_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	c.jal	000000002300A8B2
	lui	a0,0004201F
	addi	a0,a0,-000005E8
	jal	ra,0000000023014488
	c.lwsp	a2,00000020
	lui	a0,00042021
	addi	a0,a0,+00000570
	c.addi	sp,00000010
	jal	zero,0000000023014488

;; rxl_hwdesc_dump: 2300A7A6
;;   Called from:
;;     23014742 (in bl_fw_statistic_dump)
rxl_hwdesc_dump proc
	lui	a0,000230AC
	c.addi16sp	FFFFFFD0
	addi	a0,a0,-00000314
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,000000002308234C
	lui	a0,000230AC
	c.li	a1,0000000D
	addi	a0,a0,-000002EC
	lui	s0,00042041
	jal	ra,0000000023082388
	addi	s0,s0,+00000000
	c.li	s1,00000000
	lui	s5,000230AC
	lui	s4,000230AC
	lui	s3,000230AC
	c.li	s2,0000000D

l2300A7E8:
	lw	a6,s0,+0000000C
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	c.lw	s0,0(a3)
	c.mv	a2,s0
	c.mv	a1,s1
	addi	a0,s5,-000002D4
	jal	ra,0000000023082388
	lhu	a5,s0,+0000001E
	lhu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	c.lw	s0,16(a1)
	addi	a0,s4,-00000288
	c.addi	s1,00000001
	jal	ra,0000000023082388
	c.lw	s0,64(a5)
	addi	a0,s3,-00000228
	addi	s0,s0,+00000064
	c.swsp	a5,00000000
	lw	a7,s0,-00000028
	lw	a6,s0,-0000002C
	lw	a5,s0,-00000030
	lw	a4,s0,-00000034
	lw	a3,s0,-00000038
	lw	a2,s0,-00000040
	lw	a1,s0,-00000044
	jal	ra,0000000023082388
	bne	s1,s2,000000002300A7E8

l2300A846:
	lui	a0,000230AC
	c.li	a1,0000000D
	addi	a0,a0,-000001B0
	lui	s0,00042044
	jal	ra,0000000023082388
	addi	s0,s0,+00000120
	c.li	s1,00000000
	lui	s3,000230AC
	c.li	s2,0000000D

l2300A864:
	lw	a7,s0,+0000000C
	lw	a6,s0,+00000008
	c.li	a3,00000000
	beq	a7,zero,000000002300A87A

l2300A872:
	addi	a3,a7,+00000001
	sub	a3,a3,a6

l2300A87A:
	lhu	a5,s0,+00000012
	c.mv	a2,s0
	c.mv	a1,s1
	c.swsp	a5,00000080
	lhu	a5,s0,+00000010
	addi	a0,s3,-00000198
	c.addi	s1,00000001
	c.swsp	a5,00000000
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	addi	s0,s0,+00000034
	jal	ra,0000000023082388
	bne	s1,s2,000000002300A864

l2300A8A0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; rxl_hwdesc_init: 2300A8B2
;;   Called from:
;;     2300A1E2 (in rxl_init)
;;     2300A788 (in rxl_reset)
rxl_hwdesc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.mv	s3,a0
	jal	ra,0000000023063658
	lui	a5,00042041
	lui	a3,000BAADF
	lui	a2,00042023
	addi	a5,a5,+00000000
	c.li	s2,00000000
	c.li	s4,00000000
	c.li	s0,00000000
	c.li	a1,00000000
	c.li	a4,00000000
	c.addi	a3,0000000D
	addi	a2,a2,-0000025C
	c.li	a7,00000001
	c.li	t1,0000000D

l2300A8EC:
	addi	a6,a5,+00000064
	bne	s3,zero,000000002300A9FE

l2300A8F4:
	c.lw	a5,96(a0)
	bne	a0,a7,000000002300A9FE

l2300A8FA:
	c.beqz	s0,000000002300A900

l2300A8FC:
	sw	zero,s0,+00000004

l2300A900:
	c.addi	a4,00000001
	c.mv	a5,a6
	bne	a4,t1,000000002300A8EC

l2300A908:
	c.li	a5,00000003
	blt	a5,a1,000000002300A91C

l2300A90E:
	lui	a0,000230AC
	c.li	a2,0000000D
	addi	a0,a0,-0000011C
	jal	ra,0000000023082388

l2300A91C:
	c.beqz	s0,000000002300A922

l2300A91E:
	sw	zero,s0,+00000004

l2300A922:
	lui	a5,00044B08
	sw	s4,a5,+000001B8
	lui	a4,00004000
	sw	a4,a5,+00000180
	lui	a4,00042044
	addi	a4,a4,+00000120
	lui	a3,00042041
	lui	a2,000C0DEE
	addi	a3,a3,+00000600
	addi	a7,a4,+000002A4
	c.li	s5,00000000
	c.li	a5,00000000
	c.li	s1,00000000
	c.li	a1,00000000
	addi	a2,a2,-00000453
	c.li	a6,00000001

l2300A958:
	addi	a0,a4,+00000034
	bne	s3,zero,000000002300AA3A

l2300A960:
	lw	t1,a4,+00000014
	bne	t1,a6,000000002300AA3A

l2300A968:
	c.beqz	s1,000000002300A96E

l2300A96A:
	sw	zero,s1,+00000004

l2300A96E:
	c.mv	a4,a0
	addi	a3,a3,+00000350
	bne	a7,a0,000000002300A958

l2300A978:
	c.li	a4,00000003
	blt	a4,a1,000000002300A990

l2300A97E:
	lui	a0,000230AC
	c.li	a2,0000000D
	addi	a0,a0,-00000104
	c.swsp	a5,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,000000E4

l2300A990:
	sw	zero,s1,+00000004
	lui	a4,00044B08
	sw	a5,a4,+000001BC
	lui	a3,00008000
	sw	a3,a4,+00000180
	beq	s2,zero,000000002300A9B4

l2300A9A8:
	beq	s4,zero,000000002300A9B4

l2300A9AC:
	c.beqz	s0,000000002300A9B4

l2300A9AE:
	beq	s5,zero,000000002300A9B4

l2300A9B2:
	c.bnez	a5,000000002300A9CA

l2300A9B4:
	lui	a0,000230AC
	c.mv	a6,s1
	c.mv	a4,s5
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s2
	addi	a0,a0,-000000E4
	jal	ra,0000000023082388

l2300A9CA:
	lui	a5,0004201F
	addi	a5,a5,-000005E8
	sw	s2,a5,+00000010
	sw	s4,a5,+00000008
	c.sw	a5,12(s0)
	lui	a5,0004201F
	addi	a5,a5,-000005D0
	sw	s5,a5,+00000004
	c.sw	a5,0(s1)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,000000002306366C

l2300A9FE:
	c.beqz	s0,000000002300AA02

l2300AA00:
	c.sw	s0,4(a5)

l2300AA02:
	slli	a0,a4,00000005
	c.add	a0,a2
	sw	zero,a5,+00000010
	sw	zero,a5,+00000014
	c.sw	a5,0(a3)
	sw	zero,a5,+00000040
	sw	zero,a5,+00000018
	sw	a6,a5,+00000004
	sw	zero,a5,+00000008
	c.sw	a5,12(a0)
	sh	zero,a5,+0000001C
	c.beqz	a1,000000002300AA36

l2300AA2A:
	bne	a1,a7,000000002300AA30

l2300AA2E:
	c.mv	s4,a5

l2300AA30:
	c.addi	a1,00000001
	c.mv	s0,a5
	c.j	000000002300A900

l2300AA36:
	c.mv	s2,a5
	c.j	000000002300AA30

l2300AA3A:
	c.beqz	s1,000000002300AA3E

l2300AA3C:
	c.sw	s1,4(a4)

l2300AA3E:
	addi	t1,a3,+0000034F
	c.sw	a4,4(a0)
	c.sw	a4,0(a2)
	sh	zero,a4,+00000010
	c.sw	a4,8(a3)
	sw	t1,a4,+0000000C
	c.sw	a4,24(a3)
	c.beqz	a1,000000002300AA60

l2300AA54:
	bne	a1,a6,000000002300AA5A

l2300AA58:
	c.mv	a5,a4

l2300AA5A:
	c.addi	a1,00000001
	c.mv	s1,a4
	c.j	000000002300A96E

l2300AA60:
	c.mv	s5,a4
	c.j	000000002300AA5A

;; rxl_hd_append: 2300AA64
;;   Called from:
;;     2300A2A4 (in rxl_timer_int_handler)
;;     2300A322 (in rxl_frame_release)
rxl_hd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.bnez	a0,000000002300AA86

l2300AA6E:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000000F9
	addi	a1,a1,+0000020C
	addi	a0,a0,-00000324
	jal	ra,0000000023001234

l2300AA86:
	lui	a5,00044B08
	lw	a3,a5,+00000548
	lui	a5,0004201F
	addi	a4,a5,-000005E8
	c.lw	a4,16(a4)
	addi	a5,a5,-000005E8
	beq	a4,a3,000000002300AAA4

l2300AAA0:
	c.sw	a5,16(s0)
	c.mv	s0,a4

l2300AAA4:
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.lw	a5,12(a4)
	sw	zero,s0,+00000040
	sh	zero,s0,+0000001C
	c.sw	a4,4(s0)
	lui	a3,00001000
	lui	a4,00044B08
	sw	a3,a4,+00000180
	c.lw	a5,8(a4)
	c.sw	a5,12(s0)
	c.bnez	a4,000000002300AACC

l2300AACA:
	c.sw	a5,8(s0)

l2300AACC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rxl_pd_append: 2300AAD4
;;   Called from:
;;     2300A316 (in rxl_frame_release)
rxl_pd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a2,000000002300AAFE

l2300AAE6:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000128
	addi	a1,a1,+0000020C
	addi	a0,a0,-000000CC
	jal	ra,0000000023001234

l2300AAFE:
	lui	a5,00044B08
	lw	a3,a5,+0000054C
	lui	a5,0004201F
	addi	a4,a5,-000005D0
	c.lw	a4,4(a4)
	addi	a5,a5,-000005D0
	bne	a4,a3,000000002300AB44

l2300AB18:
	c.bnez	s1,000000002300AB1C

l2300AB1A:
	c.mv	s2,s0

l2300AB1C:
	sh	zero,s0,+00000010
	c.mv	a4,s2

l2300AB22:
	c.lw	a5,0(a3)
	sw	zero,s0,+00000004
	c.sw	a3,4(a4)
	lui	a4,00044B08
	lui	a3,00002000
	sw	a3,a4,+00000180
	c.sw	a5,0(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300AB44:
	c.sw	a5,4(s0)
	c.beqz	s1,000000002300AB54

l2300AB48:
	sw	s2,a4,+00000004

l2300AB4C:
	sh	zero,a4,+00000010
	c.mv	s0,s1
	c.j	000000002300AB22

l2300AB54:
	c.mv	s1,a4
	c.j	000000002300AB4C

;; scan_search_ds: 2300AB58
;;   Called from:
;;     2300AC92 (in dma_cb)
;;     2300ACA4 (in scan_ie_download)
scan_search_ds proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	addi	s0,s0,-000005C8
	c.lw	s0,16(a5)
	c.swsp	ra,00000084
	lui	a0,00042046
	lhu	a1,a5,+0000014C
	c.li	a2,00000003
	addi	a0,a0,-000002FC
	jal	ra,0000000023015122
	c.sw	s0,20(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scan_init: 2300AB84
;;   Called from:
;;     23007EDC (in mm_init)
scan_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201F
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,-000005C8
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,0000000023014B3C
	lui	a5,0002300B
	addi	a4,s0,-000005C8
	addi	a5,a5,-00000372
	c.sw	a4,8(a5)
	lui	a5,00042046
	addi	a5,a5,-00000320
	sw	zero,a4,+0000000C
	c.sw	a4,4(a5)
	lui	a4,00042046
	addi	a4,a4,-000002FC
	c.sw	a5,4(a4)
	c.sw	a5,24(a4)
	lui	a4,000CAFF0
	addi	a4,a4,-00000522
	sw	zero,a5,+00000020
	c.sw	a5,16(a4)
	sw	zero,a5,+00000014
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scan_set_channel_request: 2300ABE4
;;   Called from:
;;     2300AC9A (in dma_cb)
;;     2300ACA8 (in scan_ie_download)
;;     2301BEFA (in mm_scan_channel_end_ind_handler)
scan_set_channel_request proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201F
	addi	s1,s1,-000005C8
	c.swsp	s0,00000004
	lbu	s0,s1,+0000001A
	c.li	a4,00000006
	c.lw	s1,16(a5)
	add	s0,s0,a4
	c.swsp	ra,00000084
	lbu	a4,a5,+0000014E
	c.lui	a3,0001B000
	addi	a3,a3,-00000250
	c.add	s0,a5
	lhu	a1,s0,+00000000
	lb	a2,s0,+00000004
	lbu	a0,s0,+00000002
	jal	ra,000000002301A5CE
	c.lw	s1,20(a1)
	c.beqz	a1,000000002300AC5C

l2300AC20:
	lbu	a3,s0,+00000002
	lhu	a4,s0,+00000000
	c.bnez	a3,000000002300AC6C

l2300AC2A:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,000000002300AC58

l2300AC40:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,000000002300AC58

l2300AC4C:
	addi	a5,a2,+00000699

l2300AC50:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l2300AC58:
	sb	a5,a1,+00000002

l2300AC5C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000002
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,0000000023014B3C

l2300AC6C:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,000000002300AC58

l2300AC74:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,000000002300AC58

l2300AC88:
	addi	a5,a2,-00000388
	c.j	000000002300AC50

;; dma_cb: 2300AC8E
dma_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300AB58
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300ABE4

;; scan_ie_download: 2300AC9E
;;   Called from:
;;     2301BE66 (in scan_start_req_handler)
scan_ie_download proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002300AB58
	jal	ra,000000002300ABE4
	c.lwsp	a2,00000044
	lui	a5,00042046
	addi	a5,a5,-00000320
	c.lw	a5,24(a4)
	lhu	a3,a0,+0000014C
	sw	zero,a5,+00000020
	c.addi	a4,FFFFFFFF
	c.add	a4,a3
	c.sw	a5,28(a4)
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; scan_probe_req_tx: 2300ACCC
;;   Called from:
;;     2301BFA2 (in mm_scan_channel_start_ind_handler)
scan_probe_req_tx proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201F
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	addi	a5,a5,-000005C8
	c.lw	a5,16(s1)
	lbu	s5,a5,+0000001A
	addi	a4,zero,+000005D8
	lbu	a5,s1,+0000014E
	lui	s2,00042020
	addi	s2,s2,-00000088
	add	a5,a5,a4
	lui	s3,00042020
	addi	s7,s1,+000000FD
	c.li	s4,00000000
	addi	s3,s3,-000000F0
	c.add	s2,a5
	addi	s2,s2,+00000050

l2300AD18:
	lbu	a5,s1,+00000150
	blt	s4,a5,000000002300AD38

l2300AD20:
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

l2300AD38:
	c.li	a5,00000006
	add	a5,s5,a5
	c.li	a0,00000001
	c.add	a5,s1
	lbu	a5,a5,+00000002
	c.bnez	a5,000000002300AD4C

l2300AD48:
	lbu	a0,s1,+00000151

l2300AD4C:
	lbu	a5,s7,-00000001
	lhu	a1,s1,+0000014C
	c.addi	a5,0000001A
	c.add	a1,a5
	jal	ra,000000002300C582
	c.mv	s6,a0
	c.beqz	a0,000000002300AD20

l2300AD60:
	c.lw	a0,104(s0)
	addi	a5,zero,+00000040
	lui	a1,000230CC
	lw	s8,a0,+0000006C
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	addi	a1,a1,-00000770
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s1,+00000140
	addi	a0,s0,+0000015C
	jal	ra,00000000230A382C
	lhu	a5,s3,+00000054
	sb	zero,s0,+00000164
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s3,+00000054
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000162
	c.srli	a5,00000008
	sb	a5,s0,+00000163
	lbu	a4,s7,-00000001
	c.li	a5,00000000
	sb	a4,s0,+00000165

l2300ADD2:
	bne	a4,a5,000000002300AE16

l2300ADD6:
	lui	a5,00042046
	addi	a5,a5,-00000310
	sw	a5,s8,+00000010
	lhu	a4,s1,+0000014C
	lw	a5,s8,+00000018
	c.li	a1,00000003
	c.mv	a0,s6
	c.sub	a5,a4
	sw	a5,s8,+00000018
	sw	zero,s6,+000002CC
	sw	zero,s6,+000002D0
	lbu	a5,s1,+0000014E
	c.addi	s4,00000001
	addi	s7,s7,+00000022
	sb	a5,s6,+0000002F
	c.li	a5,FFFFFFFF
	sb	a5,s6,+00000030
	jal	ra,000000002300C6AE
	c.j	000000002300AD18

l2300AE16:
	add	a3,s7,a5
	lbu	a2,a3,+00000000
	add	a3,s0,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000166
	c.j	000000002300ADD2

;; scan_send_cancel_cfm: 2300AE2A
;;   Called from:
;;     2301BE02 (in scan_cancel_req_handler)
;;     2301BF1A (in mm_scan_channel_end_ind_handler)
scan_send_cancel_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000001
	c.li	a2,00000002
	addi	a0,a0,-000007FC
	c.swsp	ra,00000084
	jal	ra,00000000230149A2
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023014A0E

;; sta_mgmt_entry_init: 2300AE4E
;;   Called from:
;;     2300AED2 (in sta_mgmt_init)
;;     2300AEF0 (in sta_mgmt_init)
;;     2300AF3C (in sta_mgmt_init)
;;     2300B12E (in sta_mgmt_unregister)
sta_mgmt_entry_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	addi	s1,a0,+0000019C

l2300AE5C:
	lw	a5,s0,+0000019C
	c.bnez	a5,000000002300AE96

l2300AE62:
	addi	a2,zero,+000001B0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	addi	a5,s0,+00000124
	addi	a3,s0,+00000190
	c.li	a4,00000002

l2300AE78:
	sb	a4,a5,+00000000
	sb	a4,a5,+00000001
	c.addi	a5,0000000C
	bne	a5,a3,000000002300AE78

l2300AE86:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000001A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300AE96:
	c.mv	a0,s1
	jal	ra,000000002301450E
	c.li	a1,00000001
	jal	ra,000000002300C79C
	c.j	000000002300AE5C

;; sta_mgmt_init: 2300AEA4
;;   Called from:
;;     23007EC4 (in mm_init)
sta_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,0004201F
	lui	s3,0004201F
	c.lui	s2,00001000
	c.swsp	s1,00000088
	addi	a0,s3,-000005A8
	addi	s1,s0,-000005A0
	addi	s2,s2,+000000E0
	c.swsp	ra,0000008C
	c.add	s2,s1
	jal	ra,0000000023014488
	addi	s0,s0,-000005A0

l2300AED0:
	c.mv	a0,s1
	jal	ra,000000002300AE4E
	c.mv	a1,s1
	addi	a0,s3,-000005A8
	addi	s1,s1,+000001B0
	jal	ra,0000000023014492
	bne	s1,s2,000000002300AED0

l2300AEE8:
	lui	a0,00042020
	addi	a0,a0,-000004C0
	jal	ra,000000002300AE4E
	lui	s1,00042020
	c.lui	s3,00001000
	addi	s1,s1,-00000088
	lui	a5,00042044
	c.add	s0,s3
	lw	a2,s1,+000005C0
	addi	a5,a5,+000003C4
	lui	a1,00042020
	sw	a5,s0,+000001EC
	lui	s2,000230AC
	addi	a5,a1,+00000538
	sw	a5,s0,+0000018C
	addi	a1,a1,+00000538
	sb	zero,s0,+000000FA
	sb	zero,s0,+00000111
	addi	a0,s2,-000000BC
	jal	ra,0000000023082388
	lui	a0,00042020
	addi	a0,a0,-00000310
	jal	ra,000000002300AE4E
	c.li	a5,00000001
	sb	a5,s0,+000002AA
	lui	a5,00042044
	addi	a5,a5,+00000400
	lui	a1,00042021
	sw	a5,s0,+0000039C
	addi	a5,a1,-000004F0
	sb	zero,s0,+000002C1
	sw	a5,s0,+0000033C
	c.add	s1,s3
	c.lwsp	s8,00000004
	lw	a2,s1,-00000468
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	addi	a0,s2,-000000BC
	c.lwsp	a6,00000048
	addi	a1,a1,-000004F0
	c.addi16sp	00000020
	jal	zero,0000000023082388

;; sta_mgmt_register: 2300AF80
;;   Called from:
;;     2300842C (in mm_sta_add)
sta_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	lbu	s2,a0,+00000011
	lui	a0,0004201F
	addi	a0,a0,-000005A8
	c.mv	s3,a1
	jal	ra,000000002301450E
	beq	a0,zero,000000002300B0F0

l2300AFA4:
	c.mv	s0,a0
	c.li	a2,00000006
	addi	a1,s1,+0000000A
	c.addi	a0,0000001E
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000010
	c.li	a4,00000010
	bgeu	a5,a4,000000002300AFBE

l2300AFBC:
	c.li	a5,00000010

l2300AFBE:
	sb	a5,s0,+00000014
	lhu	a5,s1,+00000008
	lui	a4,000684BE
	addi	a4,a4,-000005ED
	sh	a5,s0,+0000000C
	c.lw	s1,0(a5)
	c.li	a3,FFFFFFFF
	c.sw	s0,8(a5)
	c.lw	s1,4(a5)
	c.sw	s0,16(a5)
	lbu	a5,s1,+00000011
	sb	a5,s0,+0000001A
	lb	a5,s1,+00000013
	sb	a5,s0,+00000024
	c.lw	s1,20(a5)
	c.sw	s0,40(a5)
	c.lw	s1,24(a5)
	c.sw	s0,44(a5)
	lbu	a5,s1,+0000001C
	sb	a5,s0,+00000030
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	sub	a5,s0,a5
	c.srai	a5,00000004
	add	a5,a5,a4
	addi	a4,s0,+0000019C
	andi	a5,a5,+000000FF
	sb	a5,s3,+00000000
	sb	a5,s0,+0000001B
	c.lui	a5,00019000
	c.sw	s0,4(a5)
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000188
	addi	a5,s0,+0000018A

l2300B02C:
	sh	a3,a5,+00000000
	c.addi	a5,00000002
	bne	a5,a4,000000002300B02C

l2300B036:
	lbu	a5,s3,+00000000
	addi	a4,zero,+0000003C
	addi	s1,zero,+000005D8
	add	a5,a5,a4
	lui	a4,00042044
	addi	a4,a4,+0000043C
	sb	zero,s0,+00000031
	add	s1,s2,s1
	c.add	a5,a4
	lui	s2,00042020
	sw	a5,s0,+0000010C
	addi	a5,s2,-00000088
	addi	s2,s2,-00000088
	c.add	a5,s1
	lw	a4,a5,+000005C4
	c.andi	a4,00000008
	c.beqz	a4,000000002300B0D4

l2300B072:
	lw	a3,s0,+000000A8
	addi	a2,s0,+000000A8
	lui	a0,000230AC
	sw	a2,s0,+000000AC
	addi	a1,zero,+00000102
	addi	a0,a0,-00000094

l2300B08A:
	jal	ra,0000000023082388
	lui	a5,00044B00
	lw	a3,a5,+00000120
	lui	a4,000FFF0C
	addi	a4,a4,-00000240
	addi	a5,s0,+0000011C
	addi	a2,s0,+00000188
	c.add	a4,a3

l2300B0A8:
	c.sw	a5,0(a3)
	c.sw	a5,4(a4)
	c.addi	a5,0000000C
	bne	a5,a2,000000002300B0A8

l2300B0B2:
	addi	a0,s1,+00000350
	c.add	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023014492
	c.li	a5,00000001
	sb	a5,s0,+0000001D
	c.li	a0,00000000

l2300B0C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300B0D4:
	addi	a2,s1,+000005C0
	c.add	a2,s2
	sw	a2,s0,+000000AC
	lui	a0,000230AC
	lw	a3,a5,+000005C0
	addi	a1,zero,+0000010D
	addi	a0,a0,-00000068
	c.j	000000002300B08A

l2300B0F0:
	c.li	a0,00000001
	c.j	000000002300B0C6

;; sta_mgmt_unregister: 2300B0F4
;;   Called from:
;;     2300863A (in mm_sta_add)
;;     2300872C (in mm_sta_del)
sta_mgmt_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a0,s0
	lui	a0,0004201F
	addi	a0,a0,-000005A0
	c.swsp	ra,00000084
	c.add	s0,a0
	lbu	a5,s0,+0000001A
	addi	a0,zero,+000005D8
	c.mv	a1,s0
	add	a5,a5,a0
	lui	a0,00042020
	addi	a0,a0,-00000088
	addi	a5,a5,+00000350
	c.add	a0,a5
	jal	ra,000000002301451A
	c.mv	a0,s0
	jal	ra,000000002300AE4E
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201F
	addi	a0,a0,-000005A8
	c.addi	sp,00000010
	jal	zero,0000000023014492

;; sta_mgmt_add_key: 2300B146
;;   Called from:
;;     2300813E (in mm_sec_machwkey_wr)
sta_mgmt_add_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lbu	s3,a0,+00000001
	addi	s0,zero,+000001B0
	lui	s1,0004201F
	add	a5,s3,s0
	addi	s0,s1,-000005A0
	c.mv	s2,a0
	addi	a2,zero,+00000048
	addi	s1,s1,-000005A0
	addi	s4,a5,+00000040
	c.add	s4,s0
	c.add	s0,a5
	sb	a1,s0,+000000A2
	lbu	a5,a0,+00000028
	c.li	a1,00000000
	sb	a5,s0,+000000A0
	lbu	a5,a0,+00000000
	c.mv	a0,s4
	sb	a5,s0,+000000A1
	jal	ra,00000000230A3A68
	lbu	a5,s0,+000000A0
	c.li	a4,00000001
	beq	a5,a4,000000002300B200

l2300B1A0:
	c.beqz	a5,000000002300B1A8

l2300B1A2:
	c.li	a4,00000003
	bne	a5,a4,000000002300B22E

l2300B1A8:
	lui	a4,0004200F
	addi	a4,a4,-000004DC
	c.lw	a4,0(a5)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	a5,a5,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	c.add	a5,a3
	c.sw	a4,0(a5)
	addi	a4,zero,+000001B0
	add	a4,s3,a4
	c.srli	a5,00000010
	c.add	a4,s1
	sw	a5,a4,+00000088
	sw	zero,a4,+0000008C

l2300B1DC:
	addi	a5,zero,+000001B0
	add	s3,s3,a5
	c.li	a5,00000001
	c.add	s1,s3
	sb	a5,s1,+000000A3
	sw	s4,s1,+000000A8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2300B200:
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000088
	sw	a6,s0,+0000008C
	lw	a5,s2,+00000018
	sw	a5,s0,+00000090
	lw	a5,s2,+0000001C
	sw	a5,s0,+00000094
	lw	a5,s2,+00000020
	sw	a5,s0,+00000098
	lw	a5,s2,+00000024
	sw	a5,s0,+0000009C
	c.j	000000002300B1DC

l2300B22E:
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000088
	sw	a6,s0,+0000008C
	c.j	000000002300B1DC

;; sta_mgmt_del_key: 2300B23C
;;   Called from:
;;     230081D4 (in mm_sec_machwkey_del)
sta_mgmt_del_key proc
	c.li	a5,00000001
	sb	zero,a0,+000000A3
	sw	zero,a0,+000000A8
	sb	a5,a0,+00000031
	c.jr	ra

;; sta_mgmt_send_postponed_frame: 2300B24C
;;   Called from:
;;     230092EA (in mm_bcn_transmit)
;;     2300A5E6 (in rxl_cntrl_evt)
;;     2300A662 (in rxl_cntrl_evt)
;;     2300D474 (in vif_mgmt_send_postponed_frame)
;;     230138D4 (in apm_tx_int_ps_clear)
sta_mgmt_send_postponed_frame proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s3,a0
	c.mv	s1,a1
	c.mv	s4,a2
	c.li	s0,00000000
	addi	s5,a1,+0000019C

l2300B268:
	lw	s2,s1,+0000019C
	beq	s2,zero,000000002300B2AE

l2300B270:
	c.mv	a0,s3
	c.swsp	zero,00000084
	jal	ra,000000002300B992
	c.beqz	a0,000000002300B2AE

l2300B27A:
	c.mv	a0,s2
	jal	ra,000000002301365E
	c.beqz	a0,000000002300B2AE

l2300B282:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023013752
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002300B2AE

l2300B290:
	c.bnez	a0,000000002300B298

l2300B292:
	c.mv	a0,s5
	jal	ra,000000002301450E

l2300B298:
	lbu	a1,a0,+0000002E
	sb	zero,a0,+000002D5
	c.addi	s0,00000001
	jal	ra,000000002300BEE2
	beq	s4,zero,000000002300B268

l2300B2AA:
	bne	s0,s4,000000002300B268

l2300B2AE:
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

;; td_timer_end: 2300B2C2
td_timer_end proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,00044B00
	lw	s2,a5,+00000120
	lbu	a5,a0,+00000023
	c.mv	s0,a0
	c.beqz	a5,000000002300B33C

l2300B2DC:
	c.lw	a0,16(s1)
	c.lw	a0,20(a5)
	sltu	s1,zero,s1
	c.beqz	a5,000000002300B2EA

l2300B2E6:
	ori	s1,s1,+00000002

l2300B2EA:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002300B2F2

l2300B2EE:
	ori	s1,s1,+00000004

l2300B2F2:
	c.lw	s0,28(a5)
	c.beqz	a5,000000002300B2FA

l2300B2F6:
	ori	s1,s1,+00000008

l2300B2FA:
	lbu	a5,s0,+00000021
	c.xor	a5,s1
	c.andi	a5,0000000C
	c.beqz	a5,000000002300B338

l2300B304:
	andi	a5,s1,+00000004
	c.bnez	a5,000000002300B390

l2300B30A:
	lui	a1,000230AC
	addi	a1,a1,-00000008

l2300B312:
	andi	a5,s1,+00000008
	c.bnez	a5,000000002300B39A

l2300B318:
	lui	a2,000230AC
	addi	a2,a2,-00000008

l2300B320:
	lui	a0,000230AC
	addi	a0,a0,+00000000
	jal	ra,0000000023082388
	lbu	a0,s0,+00000020
	andi	a1,s1,+0000000C
	jal	ra,0000000023009F68

l2300B338:
	sb	s1,s0,+00000021

l2300B33C:
	lbu	a4,s0,+00000020
	addi	a3,zero,+000005D8
	lui	a5,00042020
	add	a4,a4,a3
	addi	a5,a5,-00000088
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	lui	a1,000000F4
	addi	a1,a1,+00000240
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.add	a5,a4
	lui	a4,00042023
	c.lw	a5,64(a5)
	lw	a4,a4,-000002D0
	c.lwsp	tp,00000024
	c.add	a1,s2
	c.sub	a5,a4
	sltiu	a5,a5,+00000001
	sb	a5,s0,+00000023
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230095EE

l2300B390:
	lui	a1,000230AC
	addi	a1,a1,-0000000C
	c.j	000000002300B312

l2300B39A:
	lui	a2,000230AC
	addi	a2,a2,-00000004
	c.j	000000002300B320

;; td_reset: 2300B3A4
;;   Called from:
;;     2300B424 (in td_init)
;;     2300B42E (in td_init)
;;     2300D27C (in vif_mgmt_unregister)
td_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,zero,+00000024
	add	s1,a0,s1
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,00042020
	c.mv	a1,a0
	c.mv	s2,a0
	lui	a0,000230AC
	addi	a5,s0,-00000160
	addi	a0,a0,-00000034
	c.swsp	ra,00000084
	c.add	s1,a5
	jal	ra,0000000023082388
	lbu	a5,s1,+00000022
	addi	s0,s0,-00000160
	c.beqz	a5,000000002300B3E0

l2300B3DA:
	c.mv	a0,s1
	jal	ra,00000000230096A4

l2300B3E0:
	c.mv	a0,s1
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	a5,zero,+00000024
	add	a5,s2,a5
	lui	a4,0002300B
	addi	a4,a4,+000002C2
	c.add	a5,s0
	c.sw	a5,4(a4)
	c.sw	a5,8(s1)
	sb	s2,a5,+00000020
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; td_init: 2300B412
;;   Called from:
;;     23007EC8 (in mm_init)
td_init proc
	lui	a0,000230AC
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000040
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.li	a0,00000000
	jal	ra,000000002300B3A4
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300B3A4

;; td_start: 2300B432
;;   Called from:
;;     2300D0F6 (in vif_mgmt_register)
td_start proc
	addi	a5,zero,+00000024
	add	a5,a0,a5
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042020
	addi	s0,s0,-00000160
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.add	s0,a5
	lbu	a5,s0,+00000022
	c.bnez	a5,000000002300B486

l2300B452:
	c.mv	a1,a0
	lui	a0,000230AC
	lui	a5,00044B00
	addi	a0,a0,-00000020
	lw	s1,a5,+00000120
	jal	ra,0000000023082388
	c.li	a5,00000001
	sb	a5,s0,+00000022
	lui	a1,000000F4
	addi	a1,a1,+00000240
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.add	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230095EE

l2300B486:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; td_pck_ind: 2300B490
;;   Called from:
;;     2300A554 (in rxl_cntrl_evt)
;;     2300C08C (in txl_cntrl_push)
td_pck_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,00042020
	addi	a5,a5,-00000160
	c.add	a5,a0
	c.beqz	a2,000000002300B4AC

l2300B4A4:
	c.lw	a5,20(a4)
	c.addi	a4,00000001
	c.sw	a5,20(a4)
	c.jr	ra

l2300B4AC:
	c.lw	a5,16(a4)
	c.addi	a4,00000001
	c.sw	a5,16(a4)
	c.jr	ra

;; td_pck_ps_ind: 2300B4B4
;;   Called from:
;;     23009E50 (in ps_check_frame)
;;     23009EFA (in ps_check_tx_frame)
td_pck_ps_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,00042020
	addi	a5,a5,-00000160
	c.add	a5,a0
	c.beqz	a1,000000002300B4D0

l2300B4C8:
	c.lw	a5,28(a4)
	c.addi	a4,00000001
	c.sw	a5,28(a4)
	c.jr	ra

l2300B4D0:
	c.lw	a5,24(a4)
	c.addi	a4,00000001
	c.sw	a5,24(a4)
	c.jr	ra

;; bl_tpc_update_power_table: 2300B4D8
;;   Called from:
;;     230269E4 (in cmd_wifi_power_table_update)
bl_tpc_update_power_table proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.mv	s0,a0
	jal	ra,0000000023002ACC
	c.addi4spn	a4,00000008
	addi	a5,s0,+00000018
	c.mv	a0,a4
	addi	s0,s0,+00000026

l2300B4F0:
	bne	a5,s0,000000002300B500

l2300B4F4:
	jal	ra,000000002300703C
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l2300B500:
	lb	a3,a5,+00000000
	c.addi	a4,00000004
	c.addi	a5,00000001
	sw	a3,a4,+00000FFC
	c.j	000000002300B4F0

;; bl_tpc_power_table_get: 2300B50E
;;   Called from:
;;     230272E4 (in wifi_sta_ip_info)
bl_tpc_power_table_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023002B00
	c.li	a5,00000018
	addi	a4,zero,+00000026

l2300B520:
	add	a3,s0,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002300B520

l2300B52E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_tpc_update_power_rate_11b: 2300B536
;;   Called from:
;;     2306873E (in hal_board_cfg)
bl_tpc_update_power_rate_11b proc
	jal	zero,0000000023002B0E

;; bl_tpc_update_power_rate_11g: 2300B53A
;;   Called from:
;;     230687F2 (in hal_board_cfg)
bl_tpc_update_power_rate_11g proc
	jal	zero,0000000023002B32

;; bl_tpc_update_power_rate_11n: 2300B53E
;;   Called from:
;;     230688A6 (in hal_board_cfg)
bl_tpc_update_power_rate_11n proc
	jal	zero,0000000023002B54

;; tpc_update_tx_power: 2300B542
;;   Called from:
;;     2300B5FC (in tpc_update_vif_tx_power)
;;     2301A14C (in chan_pre_switch_channel)
;;     2301A9EC (in chan_ctxt_update)
;;     2301B664 (in mm_start_req_handler)
tpc_update_tx_power proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023002CA4
	lui	s0,00044B00
	lw	a5,s0,+000000A0
	c.li	a1,00000000
	andi	a5,a5,-00000100
	c.or	a0,a5
	sw	a0,s0,+000000A0
	c.li	a0,00000000
	jal	ra,0000000023002CA4
	lw	a5,s0,+000000A0
	c.lui	a4,FFFF0000
	addi	a4,a4,+000000FF
	c.slli	a0,08
	c.and	a5,a4
	c.or	a0,a5
	sw	a0,s0,+000000A0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tpc_update_vif_tx_power: 2300B586
;;   Called from:
;;     2300DFFC (in me_beacon_check)
;;     2301260C (in sm_assoc_rsp_handler)
;;     2301B4D6 (in mm_set_power_req_handler)
;;     2301F168 (in apm_start_req_handler)
tpc_update_vif_tx_power proc
	lb	a4,a1,+00000000
	addi	a5,zero,+0000007F
	beq	a4,a5,000000002300B61E

l2300B592:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s0,a0
	lb	s3,a0,+00000059
	c.mv	a1,a2
	c.mv	a0,s1
	c.mv	s2,a2
	jal	ra,0000000023002562
	lb	a4,s1,+00000000
	lb	a5,s0,+0000005A
	sb	a4,s0,+00000059
	bge	a5,a4,000000002300B5CC

l2300B5C0:
	sb	a5,s1,+00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023002562

l2300B5CC:
	lb	a5,s1,+00000000
	beq	a5,s3,000000002300B610

l2300B5D4:
	lw	a5,s0,+00000350

l2300B5D8:
	c.bnez	a5,000000002300B600

l2300B5DA:
	c.lw	s0,64(a0)
	c.beqz	a0,000000002300B610

l2300B5DE:
	jal	ra,000000002301AC66
	c.mv	a0,s0
	jal	ra,000000002301ABEA
	c.beqz	a0,000000002300B610

l2300B5EA:
	c.lw	s0,64(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lb	a0,a5,+0000000C
	c.addi16sp	00000020
	jal	zero,000000002300B542

l2300B600:
	lbu	a4,a5,+0000011A
	ori	a4,a4,+00000010
	sb	a4,a5,+0000011A
	c.lw	a5,0(a5)
	c.j	000000002300B5D8

l2300B610:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300B61E:
	c.jr	ra

;; tpc_get_vif_tx_power_vs_rate: 2300B620
;;   Called from:
;;     2300B650 (in tpc_update_frame_tx_power)
;;     2300C648 (in txl_frame_get)
;;     2300DDE6 (in me_update_buffer_control)
;;     23012DE2 (in txu_cntrl_push)
tpc_get_vif_tx_power_vs_rate proc
	andi	a5,a0,+000000FF
	c.srli	a0,0000000B
	c.andi	a0,00000007
	andi	a1,a5,+0000007F
	c.bnez	a0,000000002300B640

l2300B62E:
	andi	a0,a5,+0000007C
	c.beqz	a0,000000002300B63C

l2300B634:
	c.addi	a1,FFFFFFFC
	andi	a1,a1,+000000FF
	c.li	a0,00000001

l2300B63C:
	jal	zero,0000000023002CA4

l2300B640:
	c.li	a0,00000002
	c.j	000000002300B63C

;; tpc_update_frame_tx_power: 2300B644
;;   Called from:
;;     23009272 (in mm_bcn_transmit)
;;     23009928 (in ps_send_pspoll)
;;     2300C8BE (in txl_frame_send_null_frame)
;;     2300C9D0 (in txl_frame_send_qosnull_frame)
;;     2300CB68 (in txl_frame_send_eapol_frame)
;;     23011E7C (in sm_disconnect)
;;     2301213E (in sm_auth_send)
;;     230122C8 (in sm_assoc_req_send)
;;     230127CA (in sm_handle_supplicant_result)
;;     2301C2E0 (in bam_send_air_action_frame)
tpc_update_frame_tx_power proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,108(a5)
	c.lw	a5,40(s0)
	c.lw	s0,20(a0)
	jal	ra,000000002300B620
	c.sw	s0,36(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; txl_cfm_init: 2300B65E
;;   Called from:
;;     2300B930 (in txl_cntrl_init)
;;     2300C2C2 (in txl_reset)
txl_cfm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042020
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,-00000118
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	addi	a0,s0,-00000118
	jal	ra,0000000023014488
	lui	a0,00042020
	addi	a0,a0,-00000110
	jal	ra,0000000023014488
	lui	a0,00042020
	addi	a0,a0,-00000108
	jal	ra,0000000023014488
	lui	a0,00042020
	addi	a0,a0,-00000100
	jal	ra,0000000023014488
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042020
	addi	a0,a0,-000000F8
	c.addi	sp,00000010
	jal	zero,0000000023014488

;; txl_cfm_push: 2300B6B4
;;   Called from:
;;     2300C1F4 (in txl_transmit_trigger)
;;     23012F2E (in txu_cntrl_push)
txl_cfm_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,108(a5)
	slli	a4,a2,00000003
	c.swsp	a2,00000084
	c.lw	a5,0(a5)
	c.sw	a5,16(a1)
	lui	a5,00042020
	addi	a5,a5,-00000118
	c.mv	a1,a0
	add	a0,a5,a4
	jal	ra,0000000023014492
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	slli	a5,a2,00000002
	lui	a2,000230AC
	addi	a2,a2,+00000030
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.addi16sp	00000020
	jal	zero,00000000230146D6

;; txl_cfm_evt: 2300B6F0
txl_cfm_evt proc
	lui	a5,000230AC
	slli	a4,a0,00000002
	addi	a5,a5,+00000030
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s0,0000000C
	c.lw	a5,0(s0)
	lui	a5,00042020
	addi	a5,a5,-00000118
	c.swsp	s1,00000088
	slli	s1,a0,00000003
	c.add	s1,a5
	lui	a5,00042021
	lw	a5,a5,+000007C8
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.li	s2,00000001
	c.swsp	s3,00000084
	c.and	a5,s0
	sll	s2,s2,a0
	c.bnez	a5,000000002300B744

l2300B72C:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000168
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000018
	jal	ra,0000000023001234

l2300B744:
	c.mv	a0,s0
	lui	s0,00042020
	jal	ra,00000000230146EE
	addi	s0,s0,-000000F0

l2300B752:
	lw	s3,s1,+00000000
	beq	s3,zero,000000002300B782

l2300B75A:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s1
	jal	ra,000000002301450E
	csrrsi	zero,mstatus,00000008
	c.mv	a0,s3
	jal	ra,000000002300DC72
	c.mv	a0,s3
	jal	ra,000000002301307C
	c.lw	s0,80(a5)
	c.mv	a0,s2
	c.addi	a5,FFFFFFFF
	c.sw	s0,80(a5)
	jal	ra,00000000230017EE
	c.j	000000002300B752

l2300B782:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cfm_flush: 2300B790
;;   Called from:
;;     2300BAA4 (in txl_cntrl_flush_ac)
;;     2300BABA (in txl_cntrl_flush_ac)
;;     2300C2A0 (in txl_reset)
;;     2300C2AE (in txl_reset)
txl_cfm_flush proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s2,00000001
	lui	s3,0003C000
	lui	s1,00042020
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s5,a1
	c.mv	s4,a2
	sll	s2,s2,a0
	or	s3,a2,s3
	addi	s1,s1,-000000F0

l2300B7BA:
	c.mv	a0,s5
	jal	ra,000000002301450E
	c.mv	s0,a0
	c.beqz	a0,000000002300B7FC

l2300B7C4:
	c.lw	a0,108(a5)
	c.lw	a0,100(a4)
	c.lw	a5,0(a5)
	c.beqz	a4,000000002300B7DC

l2300B7CC:
	sw	s3,a5,+00000010

l2300B7D0:
	c.lw	s0,8(a5)
	c.mv	a0,s0
	c.bnez	a5,000000002300B7E8

l2300B7D6:
	jal	ra,000000002300C77E
	c.j	000000002300B7BA

l2300B7DC:
	c.lw	a5,16(a4)
	blt	a4,zero,000000002300B7D0

l2300B7E2:
	sw	s4,a5,+00000010
	c.j	000000002300B7D0

l2300B7E8:
	jal	ra,000000002301307C
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	c.lw	s0,104(a5)
	c.beqz	a5,000000002300B7BA

l2300B7F6:
	sw	zero,s0,+00000068
	c.j	000000002300B7BA

l2300B7FC:
	jal	ra,000000002300C7E0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230017EE

;; txl_cfm_dma_int_handler: 2300B816
txl_cfm_dma_int_handler proc
	lui	a4,00044A00
	c.lw	a4,36(a5)
	andi	a5,a5,+00000100
	c.sw	a4,32(a5)
	lui	a5,0004201F
	addi	a5,a5,-00000624
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)
	c.jr	ra

;; txl_cfm_dump: 2300B832
;;   Called from:
;;     2301473E (in bl_fw_statistic_dump)
txl_cfm_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042020
	addi	s0,s0,-00000118
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+00000028

l2300B846:
	c.mv	a0,s0
	jal	ra,000000002301456E
	c.beqz	a0,000000002300B852

l2300B84E:
	c.lw	s0,0(a5)

l2300B850:
	c.bnez	a5,000000002300B862

l2300B852:
	c.addi	s0,00000008
	bne	s0,s1,000000002300B846

l2300B858:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300B862:
	c.lw	a5,0(a5)
	c.j	000000002300B850

;; txl_int_fake_transfer: 2300B866
;;   Called from:
;;     2300BF48 (in txl_cntrl_push_int)
;;     2300BFCE (in txl_cntrl_push_int_force)
;;     2300C05A (in txl_cntrl_push)
txl_int_fake_transfer proc
	c.lw	a0,104(a5)
	lui	a4,000CAFF0
	addi	a4,a4,-00000522
	c.sw	a5,56(a4)
	c.addi	a1,00000016
	lui	a4,00042023
	addi	a3,a4,-000000B8
	slli	a2,a1,00000003
	c.sw	a5,20(a0)
	c.add	a3,a2
	c.lw	a3,4(a2)
	addi	a4,a4,-000000B8
	c.bnez	a2,000000002300B89A

l2300B88C:
	c.sw	a3,4(a5)

l2300B88E:
	c.slli	a1,03
	c.add	a4,a1
	c.sw	a4,8(a5)
	sw	zero,a5,+00000010
	c.jr	ra

l2300B89A:
	c.lw	a3,8(a3)
	c.sw	a3,16(a5)
	c.j	000000002300B88E

;; blmac_abs_timer_set: 2300B8A0
;;   Called from:
;;     2300BE18 (in txl_payload_handle_backup)
;;     2300C1B8 (in txl_transmit_trigger)
;;     2300C1EA (in txl_transmit_trigger)
blmac_abs_timer_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000009
	c.mv	s0,a0
	c.mv	s1,a1
	bge	a5,a0,000000002300B8CC

l2300B8B2:
	c.lui	a2,00002000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,+000006A0
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000006C
	jal	ra,0000000023001234

l2300B8CC:
	lui	a5,000112C0
	addi	a5,a5,+0000004A
	c.add	s0,a5
	c.slli	s0,02
	c.sw	s0,0(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; txl_machdr_format: 2300B8E4
;;   Called from:
;;     2300BCC4 (in txl_payload_handle_backup)
txl_machdr_format proc
	lbu	a5,a0,+00000016
	lui	a4,00042020
	addi	a2,a0,+00000016
	andi	a3,a5,+0000000F
	addi	a4,a4,-000000F0
	c.bnez	a3,000000002300B904

l2300B8FA:
	lhu	a5,a4,+00000054
	c.addi	a5,00000001
	sh	a5,a4,+00000054

l2300B904:
	lhu	a5,a4,+00000054
	c.slli	a5,04
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000016
	c.srli	a5,00000008
	sb	a5,a2,+00000001
	c.jr	ra

;; txl_cntrl_init: 2300B91C
;;   Called from:
;;     23007ED0 (in mm_init)
txl_cntrl_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,000000002300CF88
	jal	ra,000000002301BFCC
	jal	ra,000000002300B65E
	c.li	a0,00000000
	jal	ra,000000002300C3D8
	lui	s1,00042020
	addi	a0,s1,-000000F0
	addi	a2,zero,+00000058
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	lui	a5,00044A00
	addi	s0,s1,-000000F0
	addi	s3,a5,+00000080
	addi	s1,s1,-000000F0
	addi	s2,a5,+00000094

l2300B960:
	addi	a0,s0,+00000004
	jal	ra,0000000023014488
	sw	zero,s0,+00000000
	lw	a5,s3,+00000000
	sb	zero,s0,+0000000E
	c.addi	s3,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s3,s2,000000002300B960

l2300B980:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sh	zero,s1,+00000054
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_tx_check: 2300B992
;;   Called from:
;;     2300B274 (in sta_mgmt_send_postponed_frame)
;;     2300BF0C (in txl_cntrl_push_int)
;;     23012DBE (in txu_cntrl_push)
txl_cntrl_tx_check proc
	lui	a5,00042020
	lbu	a5,a5,-0000009A
	c.bnez	a5,000000002300B9A0

l2300B99C:
	jal	zero,000000002301AC1A

l2300B9A0:
	c.li	a0,00000000
	c.jr	ra

;; txl_cntrl_halt_ac: 2300B9A4
;;   Called from:
;;     23007F70 (in mm_tbtt_evt)
;;     2300BAF8 (in txl_cntrl_clear_bcn_ac)
;;     2300BB1A (in txl_cntrl_clear_all_ac)
;;     2300BB2A (in txl_cntrl_clear_all_ac)
;;     2300BB3A (in txl_cntrl_clear_all_ac)
;;     2300BB4A (in txl_cntrl_clear_all_ac)
;;     2300BB5A (in txl_cntrl_clear_all_ac)
txl_cntrl_halt_ac proc
	c.li	a5,00000004
	bltu	a5,a0,000000002300BA54

l2300B9AA:
	lui	a5,000230AC
	addi	a5,a5,+00000044
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
2300B9BA                               21 67 B7 87 B0 44           !g...D
2300B9C0 23 A0 E7 18 37 87 B0 44 83 27 87 18 8D 8B ED FF #...7..D.'......
2300B9D0 A1 67 23 22 F7 18 82 80 37 07 08 00 B7 87 B0 44 .g#"....7......D
2300B9E0 23 A0 E7 18 37 87 B0 44 83 27 87 18 C1 83 8D 8B #...7..D.'......
2300B9F0 E5 FF B7 07 08 00 F1 BF 37 07 04 00 B7 87 B0 44 ........7......D
2300BA00 23 A0 E7 18 37 87 B0 44 83 27 87 18 B1 83 8D 8B #...7..D.'......
2300BA10 E5 FF B7 07 04 00 75 BF 37 07 02 00 B7 87 B0 44 ......u.7......D
2300BA20 23 A0 E7 18 37 87 B0 44 83 27 87 18 A1 83 8D 8B #...7..D.'......
2300BA30 E5 FF B7 07 02 00 71 BF 41 67 B7 87 B0 44 23 A0 ......q.Ag...D#.
2300BA40 E7 18 37 87 B0 44 83 27 87 18 91 83 8D 8B E5 FF ..7..D.'........
2300BA50 C1 67 41 B7                                     .gA.           

l2300BA54:
	lui	a1,000230AA
	lui	a0,000230AA
	addi	a2,zero,+00000779
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000038C
	jal	zero,0000000023001234

;; txl_cntrl_flush_ac: 2300BA6C
;;   Called from:
;;     23007F7A (in mm_tbtt_evt)
;;     2300BB02 (in txl_cntrl_clear_bcn_ac)
;;     2300BB24 (in txl_cntrl_clear_all_ac)
;;     2300BB34 (in txl_cntrl_clear_all_ac)
;;     2300BB44 (in txl_cntrl_clear_all_ac)
;;     2300BB54 (in txl_cntrl_clear_all_ac)
;;     2300BB64 (in txl_cntrl_clear_all_ac)
txl_cntrl_flush_ac proc
	c.addi	sp,FFFFFFE0
	lui	a4,00042020
	c.swsp	s5,00000080
	addi	a4,a4,-00000118
	c.mv	s5,a1
	slli	a1,a0,00000003
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.mv	s1,a0
	lui	s3,00044B08
	c.add	a1,a4
	c.mv	a2,s5
	c.li	s2,00000001
	sll	s2,s2,a0
	lw	s6,s3,+0000008C
	slli	s4,s1,00000004
	jal	ra,000000002300B790
	lui	s0,00042020
	addi	a1,s4,+00000004
	addi	s0,s0,-000000F0
	c.mv	a2,s5
	c.add	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300B790
	c.add	s0,s4
	sw	zero,s0,+00000000
	c.mv	a0,s1
	jal	ra,000000002301C112
	xori	a5,s2,-00000001
	and	a5,a5,s6
	sw	a5,s3,+0000008C
	sw	s2,s3,+00000088
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

;; txl_cntrl_clear_bcn_ac: 2300BAEE
;;   Called from:
;;     2300D256 (in vif_mgmt_unregister)
txl_cntrl_clear_bcn_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300BA6C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_clear_all_ac: 2300BB10
;;   Called from:
;;     2300C6A8 (in txl_frame_get)
txl_cntrl_clear_all_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300BA6C
	c.li	a0,00000000
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000000
	jal	ra,000000002300BA6C
	c.li	a0,00000001
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000001
	jal	ra,000000002300BA6C
	c.li	a0,00000002
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000002
	jal	ra,000000002300BA6C
	c.li	a0,00000003
	jal	ra,000000002300B9A4
	lui	a1,00040000
	c.li	a0,00000003
	jal	ra,000000002300BA6C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_inc_pck_cnt: 2300BB72
;;   Called from:
;;     23012F1E (in txu_cntrl_push)
txl_cntrl_inc_pck_cnt proc
	lui	a5,00042020
	addi	a5,a5,-000000F0
	c.lw	a5,80(a4)
	c.addi	a4,00000001
	c.sw	a5,80(a4)
	c.jr	ra

;; txl_payload_handle: 2300BB82
txl_payload_handle proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044A00
	c.lw	a5,36(a0)
	c.li	s1,0000001F
	c.li	s2,00000001
	c.andi	a0,0000001F
	lui	s0,00044A00

l2300BB9C:
	c.bnez	a0,000000002300BBAA

l2300BB9E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300BBAA:
	jal	ra,000000002309F27C
	sub	a0,s1,a0
	sll	a0,s2,a0
	c.sw	s0,32(a0)
	c.lw	s0,36(a0)
	c.andi	a0,0000001F
	c.j	000000002300BB9C

;; txl_payload_handle_backup: 2300BBBE
;;   Called from:
;;     2300BF6C (in txl_cntrl_push_int)
;;     2300BFF2 (in txl_cntrl_push_int_force)
;;     2300C05E (in txl_cntrl_push)
txl_payload_handle_backup proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	lui	s3,00042023
	lui	s4,00042020
	lui	s7,000FF880
	lui	s8,00042020
	c.lui	s9,00001000
	c.swsp	s1,000000A0
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s11,0000008C
	addi	s3,s3,-000000B8
	addi	s4,s4,-000000F0
	c.li	s1,00000000
	c.addi	s7,FFFFFFFF
	addi	s8,s8,-00000088
	addi	s10,s9,-00000800

l2300BC00:
	lw	a0,s3,+000000B4
	c.bnez	a0,000000002300BC30

l2300BC06:
	c.addi	s1,00000001
	c.li	a5,00000005
	c.addi	s3,00000008
	c.addi	s4,00000010
	bne	s1,a5,000000002300BC00

l2300BC12:
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

l2300BC30:
	c.lw	a0,16(a5)
	c.li	s5,00000001
	lui	s6,00000062
	andi	s0,s1,+000000FF
	sw	a5,s3,+000000B4
	sll	s5,s5,s1
	addi	s6,s6,-00000580

l2300BC48:
	lw	s2,a0,+00000014
	lw	a5,s2,+00000008
	c.beqz	a5,000000002300BD08

l2300BC52:
	c.li	a5,00000004
	bne	s1,a5,000000002300BC7C

l2300BC58:
	lbu	a5,s2,+0000002F
	addi	a4,zero,+000005D8
	lbu	a3,a0,+0000014D
	add	a5,a5,a4
	c.srli	a3,00000005
	c.andi	a3,00000001
	c.add	a5,s8
	lbu	a4,a5,+00000346
	c.beqz	a3,000000002300BD3E

l2300BC74:
	ori	a4,a4,+00000002

l2300BC78:
	sb	a4,a5,+00000346

l2300BC7C:
	lbu	a4,s2,+0000002E
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002300BCC8

l2300BC88:
	lhu	a4,s2,+00000032
	addi	s11,a0,+0000014C
	andi	a5,a4,+00000008
	c.beqz	a5,000000002300BCC2

l2300BC96:
	lbu	a5,a0,+0000014C
	c.li	a3,00000010
	andi	a5,a5,+000000DC
	bne	a5,a3,000000002300BCC2

l2300BCA4:
	lbu	a5,s11,+0000001B
	lbu	a3,s11,+0000001A
	c.slli	a5,08
	c.or	a5,a3
	c.bnez	a5,000000002300BCC2

l2300BCB2:
	ori	a4,a4,+00000020
	sh	a4,s2,+00000032
	addi	a0,a0,+00000150
	jal	ra,000000002301089C

l2300BCC2:
	c.mv	a0,s11
	jal	ra,000000002300B8E4

l2300BCC8:
	lhu	a5,s2,+00000032
	lw	a4,s2,+00000068
	lw	s11,s2,+0000006C
	c.andi	a5,00000008
	addi	a3,a4,+000000F0
	c.beqz	a5,000000002300BD42

l2300BCDC:
	lw	a5,s11,+0000003C
	and	a5,a5,s7
	sw	a5,s11,+0000003C
	lbu	a5,a4,+00000150
	sw	zero,s11,+00000040
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	sw	a5,s11,+00000038

l2300BCFC:
	sw	a3,s11,+00000028
	lw	a5,a4,+00000128
	sw	a5,s11,+00000024

l2300BD08:
	lhu	a5,s4,+0000000C
	c.addi	a5,00000001
	sh	a5,s4,+0000000C
	lw	s2,s2,+0000006C
	lw	a5,s4,+00000000
	c.addi	s2,00000004
	c.beqz	a5,000000002300BD8E

l2300BD1E:
	sw	s2,a5,+00000004
	c.li	a4,00000002
	lui	a5,00044B08
	beq	s0,a4,000000002300BD86

l2300BD2C:
	bltu	a4,s0,000000002300BD5C

l2300BD30:
	c.li	a4,00000001
	beq	s0,a4,000000002300BD8A

l2300BD36:
	lui	a5,00044B08
	c.li	a4,00000002
	c.j	000000002300BD6A

l2300BD3E:
	c.andi	a4,FFFFFFFD
	c.j	000000002300BC78

l2300BD42:
	c.mv	a1,s0
	c.mv	a0,s2
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,0000000023012F3A
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4
	lw	a5,a4,+00000124
	sw	a5,s11,+00000038
	c.j	000000002300BCFC

l2300BD5C:
	c.li	a4,00000003
	beq	s0,a4,000000002300BD82

l2300BD62:
	c.li	a4,00000004
	bne	s0,a4,000000002300BD36

l2300BD68:
	c.li	a4,00000001

l2300BD6A:
	sw	a4,a5,+00000180

l2300BD6E:
	lw	a0,s3,+000000B4
	sw	s2,s4,+00000000
	beq	a0,zero,000000002300BC06

l2300BD7A:
	c.lw	a0,16(a5)
	sw	a5,s3,+000000B4
	c.j	000000002300BC48

l2300BD82:
	c.li	a4,00000010
	c.j	000000002300BD6A

l2300BD86:
	c.li	a4,00000008
	c.j	000000002300BD6A

l2300BD8A:
	c.li	a4,00000004
	c.j	000000002300BD6A

l2300BD8E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.li	a4,00000002
	beq	s0,a4,000000002300BE66

l2300BD9C:
	lui	a5,00044B08
	bltu	a4,s0,000000002300BDD2

l2300BDA4:
	c.li	a3,00000001
	beq	s0,a3,000000002300BE9A

l2300BDAA:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.li	a3,00000002
	c.srli	a5,00000004
	c.andi	a5,00000003
	bne	a5,a3,000000002300BED4

l2300BDBC:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000248
	addi	a1,a1,+0000020C
	addi	a0,a0,+000000FC
	c.j	000000002300BDFC

l2300BDD2:
	c.li	a3,00000003
	beq	s0,a3,000000002300BE32

l2300BDD8:
	c.li	a3,00000004
	bne	s0,a3,000000002300BDAA

l2300BDDE:
	lw	a3,a5,+00000188
	c.andi	a3,00000003
	bne	a3,a4,000000002300BE02

l2300BDE8:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000022F
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000007C

l2300BDFC:
	jal	ra,00000000230011F4
	c.j	000000002300BD6E

l2300BE02:
	sw	s2,a5,+00000198
	addi	a4,zero,+00000100
	sw	a4,a5,+00000180
	c.lui	a5,0000C000
	addi	a5,a5,+00000350
	c.add	a1,a5
	c.li	a0,00000004

l2300BE18:
	jal	ra,000000002300B8A0
	lui	a5,00044B08
	sw	s5,a5,+00000088
	lw	a4,a5,+0000008C
	or	a4,s5,a4
	sw	a4,a5,+0000008C
	c.j	000000002300BD6E

l2300BE32:
	lw	a3,a5,+00000188
	c.srli	a3,00000010
	c.andi	a3,00000003
	bne	a3,a4,000000002300BE54

l2300BE3E:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000236
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000009C
	c.j	000000002300BDFC

l2300BE54:
	sw	s2,a5,+000001A8
	sw	s9,a5,+00000180

l2300BE5C:
	lui	a5,00000031
	addi	a5,a5,-000002C0
	c.j	000000002300BED0

l2300BE66:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.srli	a5,0000000C
	c.andi	a5,00000003
	bne	a5,s0,000000002300BE8C

l2300BE76:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000023C
	addi	a1,a1,+0000020C
	addi	a0,a0,+000000BC
	c.j	000000002300BDFC

l2300BE8C:
	sw	s2,a4,+000001A4
	sw	s10,a4,+00000180
	c.add	a1,s6

l2300BE96:
	c.mv	a0,s1
	c.j	000000002300BE18

l2300BE9A:
	lw	a3,a5,+00000188
	c.srli	a3,00000008
	c.andi	a3,00000003
	bne	a3,a4,000000002300BEBC

l2300BEA6:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000242
	addi	a1,a1,+0000020C
	addi	a0,a0,+000000DC
	c.j	000000002300BDFC

l2300BEBC:
	sw	s2,a5,+000001A0
	addi	a4,zero,+00000400
	sw	a4,a5,+00000180
	lui	a5,000001E8
	addi	a5,a5,+00000480

l2300BED0:
	c.add	a1,a5
	c.j	000000002300BE96

l2300BED4:
	sw	s2,a4,+0000019C
	addi	a5,zero,+00000200
	sw	a5,a4,+00000180
	c.j	000000002300BE5C

;; txl_cntrl_push_int: 2300BEE2
;;   Called from:
;;     2300B2A2 (in sta_mgmt_send_postponed_frame)
;;     2300C712 (in txl_frame_push)
txl_cntrl_push_int proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a0,+0000002F
	c.mv	s0,a0
	lw	s3,a0,+0000006C
	addi	a0,zero,+000005D8
	add	a5,a5,a0
	lui	a0,00042020
	addi	a0,a0,-00000088
	c.mv	s1,a1
	c.add	a0,a5
	jal	ra,000000002300B992
	c.bnez	a0,000000002300BF2A

l2300BF12:
	lbu	s2,s0,+00000030
	addi	a5,zero,+000000FF
	bne	s2,a5,000000002300BF72

l2300BF1E:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300C79C
	c.li	s2,00000000
	c.j	000000002300BFA4

l2300BF2A:
	c.mv	a0,s0
	jal	ra,000000002301365E
	c.mv	s2,a0
	c.beqz	a0,000000002300BF12

l2300BF34:
	lw	a5,s3,+0000003C
	ori	a5,a5,+00000100
	sw	a5,s3,+0000003C
	csrrci	zero,mstatus,00000008
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300B866
	slli	a0,s1,00000004
	lui	s1,00042020
	addi	s1,s1,-000000F0
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	jal	ra,000000002300BBBE
	c.j	000000002300BFA4

l2300BF72:
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	sb	s1,s0,+0000002E
	lui	s1,0004201F
	c.li	a5,00000001
	addi	s1,s1,-000005A0
	sb	a5,s0,+000002D5
	c.mv	a1,s0
	addi	a0,s2,+0000019C
	c.add	a0,s1
	jal	ra,0000000023014492
	add	a1,s1,s2
	c.mv	a0,s0
	jal	ra,00000000230136C0
	c.li	s2,00000001

l2300BFA4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_push_int_force: 2300BFB4
;;   Called from:
;;     2300C77A (in txl_frame_push_force)
txl_cntrl_push_int_force proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,108(a4)
	c.mv	s1,a0
	c.mv	s0,a1
	c.lw	a4,60(a5)
	ori	a5,a5,+00000100
	c.sw	a4,60(a5)
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300B866
	slli	a0,s0,00000004
	lui	s0,00042020
	addi	s0,s0,-000000F0
	c.addi	a0,00000004
	c.mv	a1,s1
	c.add	a0,s0
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	c.lw	s0,80(a5)
	c.addi	a5,00000001
	c.sw	s0,80(a5)
	jal	ra,000000002300BBBE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_push: 2300C002
;;   Called from:
;;     23012E02 (in txu_cntrl_push)
txl_cntrl_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a3,a0,+00000060
	lbu	a4,a0,+0000005E
	c.lw	a0,108(a5)
	c.mv	s0,a0
	c.add	a4,a3
	lhu	a3,a0,+0000000C
	c.mv	s1,a1
	sw	zero,a5,+0000000C
	c.add	a4,a3
	c.addi	a4,00000004
	c.sw	a5,28(a4)
	lui	a4,000CAFEC
	addi	a4,a4,-00000542
	c.sw	a5,4(a4)
	sw	zero,a5,+00000008
	sw	zero,a5,+00000010
	sw	zero,a5,+00000028
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000014
	sw	zero,a5,+00000018
	sw	zero,a5,+00000020
	sw	zero,a5,+00000040
	csrrci	zero,mstatus,00000008
	c.lw	a0,8(a5)
	c.bnez	a5,000000002300C0A8

l2300C05A:
	jal	ra,000000002300B866

l2300C05E:
	jal	ra,000000002300BBBE
	slli	a0,s1,00000004
	lui	s1,00042020
	addi	s1,s1,-000000F0
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.li	a2,00000000
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	lbu	a1,s0,+00000030
	lbu	a0,s0,+0000002F
	jal	ra,000000002300B490
	lbu	a0,s0,+00000030
	lbu	a1,s0,+0000002E
	jal	ra,0000000023009E7C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300C0A8:
	c.li	a2,00000000
	jal	ra,000000002301C124
	c.sw	s0,104(a0)
	c.sw	a0,20(s0)
	c.mv	a0,s0
	jal	ra,000000002301C1B6
	c.j	000000002300C05E

;; txl_transmit_trigger: 2300C0BA
txl_transmit_trigger proc
	lui	a5,00044B08
	c.lw	a5,120(a0)
	andi	a0,a0,+000007C0
	beq	a0,zero,000000002300C22C

l2300C0C8:
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
	c.li	s0,00000019
	jal	ra,000000002309F27C
	c.sub	s0,a0
	andi	s0,s0,+000000FF
	c.li	a5,00000004
	bgeu	a5,s0,000000002300C110

l2300C0F6:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-000006F5
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000011C
	jal	ra,0000000023001234

l2300C110:
	c.li	s1,00000001
	addi	a5,s0,+00000006
	sll	a5,s1,a5
	slli	s6,s0,00000004
	lui	s3,00042020
	lui	a4,00044B08
	lui	s4,000230AC
	c.sw	a4,124(a5)
	addi	s5,s6,+00000004
	addi	a5,s3,-000000F0
	sll	s1,s1,s0
	addi	s3,s3,-000000F0
	addi	s4,s4,+00000058
	slli	s7,s0,00000002
	c.add	s5,a5
	xori	s1,s1,-00000001
	lui	s8,00044B08
	add	s11,s3,s6
	lui	s10,00044B00
	add	s9,s4,s7

l2300C15A:
	lw	s2,s5,+00000000
	beq	s2,zero,000000002300C1FA

l2300C162:
	lw	a5,s2,+0000006C
	c.lw	a5,64(a1)
	bge	a1,zero,000000002300C20E

l2300C16C:
	lw	a4,s2,+00000008
	c.beqz	a4,000000002300C17C

l2300C172:
	lw	a4,s2,+00000068
	c.beqz	a4,000000002300C17C

l2300C178:
	sw	zero,s2,+00000068

l2300C17C:
	c.lw	a5,0(a4)
	c.sw	a4,16(a1)
	c.lw	a5,8(a5)
	c.beqz	a5,000000002300C1BC

l2300C184:
	c.lw	a5,60(a5)
	blt	a5,zero,000000002300C1CA

l2300C18A:
	c.add	s4,s7
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.mv	a0,s0
	lw	a5,s4,+00000000
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
	c.add	a1,a5
	c.addi16sp	00000050
	jal	zero,000000002300B8A0

l2300C1BC:
	lw	a5,s8,+0000008C
	sw	zero,s11,+00000000
	c.and	a5,s1
	sw	a5,s8,+0000008C

l2300C1CA:
	c.mv	a0,s5
	c.swsp	a1,00000084
	jal	ra,000000002301450E
	lw	a5,s2,+00000008
	c.lwsp	a2,00000064
	c.bnez	a5,000000002300C1F0

l2300C1DA:
	c.mv	a0,s2
	c.jal	000000002300C77E

l2300C1DE:
	lw	a1,s10,+00000120
	lw	a5,s9,+00000000
	c.mv	a0,s0
	c.add	a1,a5
	jal	ra,000000002300B8A0
	c.j	000000002300C15A

l2300C1F0:
	c.mv	a2,s0
	c.mv	a0,s2
	jal	ra,000000002300B6B4
	c.j	000000002300C1DE

l2300C1FA:
	lui	a5,00044B08
	lw	a4,a5,+0000008C
	c.add	s3,s6
	sw	zero,s3,+00000000
	c.and	s1,a4
	sw	s1,a5,+0000008C

l2300C20E:
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

l2300C22C:
	c.jr	ra

;; txl_reset: 2300C22E
;;   Called from:
;;     230083F2 (in mm_force_idle_req)
;;     2300A058 (in bl_reset_evt)
txl_reset proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042020
	c.swsp	s5,00000088
	addi	a5,s0,-000000F0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.lui	a0,0001F000
	lhu	s6,a5,+00000054
	jal	ra,00000000230146EE
	c.lui	a5,00010000
	addi	s5,s0,-000000F0
	lui	a3,00044A00
	c.addi	a5,FFFFFFFF

l2300C264:
	c.lw	a3,16(a4)
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a4,a5,000000002300C264

l2300C26E:
	c.li	a5,00000001
	lui	s4,00042020
	lui	s3,00042020
	sb	a5,s5,+00000056
	addi	s4,s4,-00000118
	addi	s3,s3,-000000EC
	c.li	s2,00000000
	c.li	s9,00000001
	lui	s1,00044A00
	c.li	s8,00000005

l2300C28E:
	sll	a5,s9,s2
	andi	s7,s2,+000000FF
	c.mv	a1,s4
	c.sw	s1,32(a5)
	lui	a2,00040000
	c.mv	a0,s7
	jal	ra,000000002300B790
	c.mv	a1,s3
	lui	a2,00040000
	c.mv	a0,s7
	c.addi	s2,00000001
	jal	ra,000000002300B790
	c.addi	s4,00000008
	c.addi	s3,00000010
	bne	s2,s8,000000002300C28E

l2300C2BA:
	jal	ra,000000002300CF8A
	jal	ra,000000002301BFBA
	jal	ra,000000002300B65E
	addi	a0,s0,-000000F0
	addi	a2,zero,+00000058
	c.li	a1,00000000
	lui	s2,00044A00
	jal	ra,00000000230A3A68
	addi	s0,s0,-000000F0
	sh	s6,s5,+00000054
	addi	s1,s1,+00000080
	addi	s2,s2,+00000094

l2300C2E8:
	addi	a0,s0,+00000004
	jal	ra,0000000023014488
	sw	zero,s0,+00000000
	c.lw	s1,0(a5)
	sb	zero,s0,+0000000E
	c.addi	s1,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s1,s2,000000002300C2E8

l2300C306:
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

;; txl_cntrl_env_dump: 2300C320
;;   Called from:
;;     2301473A (in bl_fw_statistic_dump)
txl_cntrl_env_dump proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042020
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.li	s0,00000004
	addi	s1,s1,-000000F0
	addi	s3,zero,+00000054

l2300C33A:
	add	s2,s0,s1
	c.mv	a0,s2
	jal	ra,000000002301456E
	c.beqz	a0,000000002300C350

l2300C346:
	lw	a5,s2,+00000000
	c.mv	a4,a5

l2300C34C:
	c.bnez	a4,000000002300C364

l2300C34E:
	c.bnez	a5,000000002300C368

l2300C350:
	c.addi	s0,00000010
	bne	s0,s3,000000002300C33A

l2300C356:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300C364:
	c.lw	a4,0(a4)
	c.j	000000002300C34C

l2300C368:
	c.lw	a5,108(a4)
	c.lw	a4,16(a4)

l2300C36C:
	c.bnez	a4,000000002300C372

l2300C36E:
	c.lw	a5,0(a5)
	c.j	000000002300C34E

l2300C372:
	c.lw	a4,4(a4)
	c.j	000000002300C36C

;; txl_frame_init_desc: 2300C376
;;   Called from:
;;     23008FD0 (in mm_bcn_init_vif)
txl_frame_init_desc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	c.mv	s2,a1
	addi	a2,zero,+000002D8
	c.li	a1,00000000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	lui	a5,000CAFEC
	addi	a5,a5,-00000542
	c.sw	s0,4(a5)
	c.lwsp	a2,000000A4
	addi	a5,s2,+0000014C
	c.sw	s0,20(a5)
	lui	a5,000BADCB
	sw	zero,s0,+00000020
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	addi	a5,a5,-000004E2
	c.sw	a3,0(a5)
	c.sw	s1,108(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a5,00000001
	sw	s2,s1,+00000068
	c.sw	s1,84(a3)
	sb	a5,s1,+000002D4
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; txl_frame_init: 2300C3D8
;;   Called from:
;;     2300B936 (in txl_cntrl_init)
txl_frame_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,00042020
	c.swsp	s7,0000008C
	c.mv	s7,a0
	addi	a0,s5,-00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	jal	ra,0000000023014488
	lui	a0,00042020
	addi	a0,a0,-00000090
	lui	s1,00042012
	lui	s0,00042046
	lui	s3,00042044
	lui	s2,00042044
	lui	s6,00042046
	lui	s8,000CAFEC
	lui	s9,000BADCB
	jal	ra,0000000023014488
	addi	s1,s1,+000000B8
	addi	s0,s0,-00000520
	addi	s3,s3,+00000784
	addi	s2,s2,+00000694
	c.li	s4,00000000
	c.li	s10,00000014
	addi	s6,s6,-00000400
	addi	s8,s8,-00000542
	addi	s9,s9,-000004E2
	c.li	s11,00000004

l2300C44C:
	beq	s7,zero,000000002300C456

l2300C450:
	lbu	a5,s1,+000002D5
	c.bnez	a5,000000002300C4A0

l2300C456:
	c.li	a1,00000000
	addi	a2,zero,+000002D8
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	add	a5,s4,s10
	sw	s8,s0,+00000004
	sw	zero,s0,+00000020
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	sw	s9,s2,+00000000
	sw	s3,s1,+00000068
	sw	s2,s1,+00000054
	c.sw	s1,108(s0)
	c.add	a5,s6
	c.sw	s0,0(a5)
	addi	a5,s3,+0000014C
	c.sw	s0,20(a5)
	sb	zero,s1,+000002D4
	c.mv	a1,s1
	addi	a0,s5,-00000098
	jal	ra,0000000023014492

l2300C4A0:
	c.addi	s4,00000001
	addi	s1,s1,+000002D8
	addi	s0,s0,+00000048
	addi	s3,s3,+0000024C
	addi	s2,s2,+0000003C
	bne	s4,s11,000000002300C44C

l2300C4B6:
	lui	s0,00042045
	lui	s3,000BADCB
	addi	s0,s0,+000000B4
	addi	s3,s3,-000004E2
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,000000002300253C
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002300253C
	c.li	s1,00000001
	c.addi	a0,00000001
	sll	a0,s1,a0
	c.lui	s2,FFFF0000
	addi	s2,s2,+00000704
	addi	a5,zero,+00000400
	c.addi	a0,FFFFFFFF
	sw	s2,s0,+00000010
	c.sw	s0,20(a5)
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000028
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	lui	s0,00042046
	addi	s0,s0,-000005D4
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,000000002300253C
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002300253C
	c.addi	a0,00000001
	sll	s1,s1,a0
	c.addi	s1,FFFFFFFF
	c.sw	s0,8(s1)
	sw	zero,s0,+0000000C
	sw	s2,s0,+00000010
	sw	s4,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000028
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
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

;; txl_frame_get: 2300C582
;;   Called from:
;;     2300991C (in ps_send_pspoll)
;;     2300AD58 (in scan_probe_req_tx)
;;     2300C89C (in txl_frame_send_null_frame)
;;     2300C9A8 (in txl_frame_send_qosnull_frame)
;;     2300CAD6 (in txl_frame_send_eapol_frame)
;;     23011E70 (in sm_disconnect)
;;     23012130 (in sm_auth_send)
;;     230122B6 (in sm_assoc_req_send)
;;     230127BE (in sm_handle_supplicant_result)
;;     230139EC (in apm_send_mlme)
;;     2301C2B8 (in bam_send_air_action_frame)
;;     2301E162 (in scanu_raw_send_req_handler)
txl_frame_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042020
	c.swsp	s4,0000000C
	c.mv	s4,a0
	addi	a0,s1,-00000098
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002301450E
	c.mv	s0,a0
	c.beqz	a0,000000002300C66A

l2300C5A4:
	lui	a4,0004200F
	addi	a4,a4,+00000328
	c.lw	a4,0(a5)
	c.li	a3,00000001
	c.lwsp	a2,00000064
	bne	a5,a3,000000002300C5FE

l2300C5B6:
	sw	zero,a4,+00000000
	lui	a4,0004200F
	sb	a5,a4,+00000324
	jal	ra,0000000023063658
	lui	a1,000230AC
	lui	a0,000230AC
	addi	a2,zero,+0000010B
	addi	a1,a1,+0000013C
	addi	a0,a0,+00000144
	jal	ra,00000000230011F4
	addi	a0,zero,+000000C8
	jal	ra,0000000023062CC4
	c.li	s0,00000000
	jal	ra,000000002306366C

l2300C5EC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2300C5FE:
	c.beqz	a5,000000002300C604

l2300C600:
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)

l2300C604:
	c.lw	s0,108(s1)
	lw	s3,s0,+00000068
	addi	a4,a1,-00000001
	c.lw	s1,20(a5)
	c.addi	a1,00000004
	c.sw	s1,28(a1)
	c.add	a5,a4
	c.sw	s1,24(a5)
	addi	s2,s3,+000000F0
	beq	s4,zero,000000002300C632

l2300C620:
	c.li	a5,00000001
	c.mv	a1,s2
	bne	s4,a5,000000002300C63A

l2300C628:
	lui	a1,00042046
	addi	a1,a1,-000005D4
	c.j	000000002300C63A

l2300C632:
	lui	a1,00042045
	addi	a1,a1,+000000B4

l2300C63A:
	addi	a2,zero,+00000034
	c.mv	a0,s2
	jal	ra,00000000230A382C
	lw	a0,s3,+00000104
	jal	ra,000000002300B620
	sw	a0,s3,+00000114
	sw	s2,s1,+00000028
	sw	zero,s1,+00000024
	sw	zero,s1,+0000003C
	sw	zero,s1,+00000010
	sw	zero,s0,+000002CC
	sw	zero,s0,+000002D0
	c.j	000000002300C5EC

l2300C66A:
	lui	a5,0004200F
	addi	a5,a5,+0000032C
	c.lw	a5,0(a4)
	c.li	a3,0000000A
	c.addi	a4,00000001
	beq	a4,a3,000000002300C680

l2300C67C:
	c.sw	a5,0(a4)
	c.j	000000002300C5EC

l2300C680:
	c.li	a4,00000002
	sw	zero,a5,+00000000
	addi	a0,s1,-00000098
	lui	a5,0004200F
	sw	a4,a5,+00000328
	jal	ra,000000002301456E
	c.mv	s1,a0
	lui	a0,00042020
	addi	a0,a0,-00000090
	jal	ra,000000002301456E
	c.or	a0,s1
	c.bnez	a0,000000002300C5EC

l2300C6A8:
	jal	ra,000000002300BB10
	c.j	000000002300C5EC

;; txl_frame_push: 2300C6AE
;;   Called from:
;;     230092B8 (in mm_bcn_transmit)
;;     230099A0 (in ps_send_pspoll)
;;     2300AE10 (in scan_probe_req_tx)
;;     2300C93E (in txl_frame_send_null_frame)
;;     2300CA54 (in txl_frame_send_qosnull_frame)
;;     2300CE36 (in txl_frame_send_eapol_frame)
;;     2301187A (in sm_frame_tx_cfm_handler)
;;     23011F18 (in sm_disconnect)
;;     2301221C (in sm_auth_send)
;;     230123B4 (in sm_assoc_req_send)
;;     23012858 (in sm_handle_supplicant_result)
;;     23013ABE (in apm_send_mlme)
;;     2301C40E (in bam_send_air_action_frame)
txl_frame_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,108(s0)
	c.mv	s1,a0
	c.mv	s2,a1
	c.lw	s0,20(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002300C6DC

l2300C6C4:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000182
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000164
	jal	ra,0000000023001234

l2300C6DC:
	c.lw	s0,60(a5)
	lui	a4,000FF880
	c.lw	s0,20(a3)
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	c.sw	s0,60(a5)
	lbu	a5,a3,+00000004
	sw	zero,s0,+00000040
	c.mv	a1,s2
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BEE2

;; txl_frame_push_force: 2300C716
;;   Called from:
;;     2301E1AE (in scanu_raw_send_req_handler)
txl_frame_push_force proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,108(s0)
	c.mv	s1,a0
	c.mv	s2,a1
	c.lw	s0,20(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002300C744

l2300C72C:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000001AD
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000164
	jal	ra,0000000023001234

l2300C744:
	c.lw	s0,60(a5)
	lui	a4,000FF880
	c.lw	s0,20(a3)
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	c.sw	s0,60(a5)
	lbu	a5,a3,+00000004
	sw	zero,s0,+00000040
	c.mv	a1,s2
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BFB4

;; txl_frame_cfm: 2300C77E
;;   Called from:
;;     2300B7D6 (in txl_cfm_flush)
;;     2300C1DC (in txl_transmit_trigger)
txl_frame_cfm proc
	c.mv	a1,a0
	lui	a0,00042020
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000090
	c.swsp	ra,00000084
	jal	ra,0000000023014492
	c.lwsp	a2,00000020
	lui	a0,00000020
	c.addi	sp,00000010
	jal	zero,00000000230146D6

;; txl_frame_release: 2300C79C
;;   Called from:
;;     2300AE9E (in sta_mgmt_entry_init)
;;     2300BF22 (in txl_cntrl_push_int)
txl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+000002D4
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002300C7BC

l2300C7AE:
	c.mv	a1,a0
	lui	a0,00042020
	addi	a0,a0,-00000098
	jal	ra,0000000023014492

l2300C7BC:
	c.beqz	s1,000000002300C7D6

l2300C7BE:
	lw	t1,s0,+000002CC
	beq	t1,zero,000000002300C7D6

l2300C7C6:
	lw	a0,s0,+000002D0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	c.jr	t1

l2300C7D6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; txl_frame_evt: 2300C7E0
;;   Called from:
;;     2300B7FC (in txl_cfm_flush)
txl_frame_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	a0,00000020
	lui	s1,00042020
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lui	s3,00042020
	jal	ra,00000000230146EE
	addi	s1,s1,-000000F0
	lui	s2,00042020

l2300C804:
	csrrci	zero,mstatus,00000008
	addi	a0,s3,-00000090
	jal	ra,000000002301450E
	c.mv	s0,a0
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,000000002300C84C

l2300C818:
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	lw	a5,a0,+000002CC
	c.beqz	a5,000000002300C83A

l2300C824:
	c.lw	a0,108(a4)
	lw	a0,a0,+000002D0
	c.lw	a4,64(a1)
	c.jalr	a5
	lbu	a5,s0,+000002D6
	c.beqz	a5,000000002300C83A

l2300C834:
	sb	zero,s0,+000002D6
	c.j	000000002300C804

l2300C83A:
	lbu	a5,s0,+000002D4
	c.bnez	a5,000000002300C804

l2300C840:
	c.mv	a1,s0
	addi	a0,s2,-00000098
	jal	ra,0000000023014492
	c.j	000000002300C804

l2300C84C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_frame_send_null_frame: 2300C85A
;;   Called from:
;;     230089B6 (in mm_check_beacon)
;;     23008C26 (in mm_sta_tbtt)
;;     230098E2 (in ps_dpsm_update)
;;     23009AC2 (in ps_set_mode)
;;     23009B6C (in ps_enable_cfm)
;;     23009C4A (in ps_disable_cfm)
;;     2301A1FA (in chan_pre_switch_channel)
;;     2301A33E (in chan_goto_idle_cb)
txl_frame_send_null_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	lui	s2,0004201F
	addi	s2,s2,-000005A0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.add	s2,a5
	c.mv	s3,a0
	c.mv	s5,a1
	c.addi4spn	a0,00000008
	c.li	a1,00000000
	c.mv	s4,a2
	lbu	s6,s2,+0000001A
	jal	ra,00000000230020D4
	lbu	a0,sp,+00000008
	c.li	a1,00000018
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	c.beqz	a0,000000002300C95A

l2300C8A2:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.mv	s1,a0
	c.mv	a1,a0
	addi	s7,s2,+0000001E
	c.add	s6,a5
	c.mv	a0,s6
	jal	ra,000000002300B644
	c.lw	s1,104(s0)
	addi	a5,zero,+00000048
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	c.li	a5,00000001
	sb	a5,s0,+0000014D
	c.mv	a1,s7
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,00000000230A382C
	c.li	a2,00000006
	addi	a1,s6,+00000050
	addi	a0,s0,+00000156
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,00000000230A382C
	lui	a4,00042020
	addi	a4,a4,-000000F0
	lhu	a5,a4,+00000054
	c.li	a1,00000003
	c.mv	a0,s1
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000054
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000162
	c.srli	a5,00000008
	sb	a5,s0,+00000163
	sw	s5,s1,+000002CC
	sw	s4,s1,+000002D0
	lbu	a5,s2,+0000001A
	sb	s3,s1,+00000030
	sb	a5,s1,+0000002F
	jal	ra,000000002300C6AE
	c.li	a0,00000000

l2300C944:
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

l2300C95A:
	c.li	a0,00000001
	c.j	000000002300C944

;; txl_frame_send_qosnull_frame: 2300C95E
;;   Called from:
;;     2300980E (in ps_uapsd_timer_handle)
;;     23009D32 (in ps_check_beacon)
;;     2300A68C (in rxl_cntrl_evt)
;;     230130E6 (in txu_cntrl_cfm)
txl_frame_send_qosnull_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	lui	s4,0004201F
	c.swsp	s2,00000018
	addi	s2,s4,-000005A0
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.add	s2,a5
	c.mv	s6,a0
	c.mv	s5,a1
	c.addi4spn	a0,00000008
	c.li	a1,00000000
	c.mv	s8,a2
	c.mv	s7,a3
	lbu	s3,s2,+0000001A
	jal	ra,00000000230020D4
	lbu	a0,sp,+00000008
	c.li	a1,0000001A
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	c.beqz	a0,000000002300CA82

l2300C9AE:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.mv	a1,a0
	c.mv	s1,a0
	addi	s9,zero,-00000038
	c.addi	s2,0000001E
	addi	s4,s4,-000005A0
	c.add	s3,a5
	c.mv	a0,s3
	jal	ra,000000002300B644
	c.lw	s1,104(s0)
	c.li	a2,00000006
	c.mv	a1,s2
	sb	s9,s0,+0000014C
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,00000000230A382C
	addi	s10,s3,+00000050
	c.li	a2,00000006
	c.mv	a1,s10
	addi	a0,s0,+00000156
	jal	ra,00000000230A382C
	lbu	a5,s3,+00000056
	sb	s9,s0,+0000014C
	addi	a0,s0,+0000015C
	c.bnez	a5,000000002300CA76

l2300CA10:
	c.li	a5,00000001
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s2

l2300CA1A:
	jal	ra,00000000230A382C
	addi	a5,zero,+000001B0
	add	a5,s6,a5
	sb	s5,s0,+00000164
	srli	s5,s5,00000008
	sb	zero,s0,+00000162
	sb	zero,s0,+00000163
	sb	s5,s0,+00000165
	sw	s8,s1,+000002CC
	sw	s7,s1,+000002D0
	c.li	a1,00000003
	c.mv	a0,s1
	c.add	s4,a5
	lbu	a5,s4,+0000001A
	sb	s6,s1,+00000030
	sb	a5,s1,+0000002F
	jal	ra,000000002300C6AE
	c.li	a0,00000000

l2300CA5A:
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

l2300CA76:
	c.li	a5,00000002
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s10
	c.j	000000002300CA1A

l2300CA82:
	c.li	a0,00000001
	c.j	000000002300CA5A

;; txl_frame_send_eapol_frame: 2300CA86
;;   Called from:
;;     23015278 (in UpdateEAPOLWcbLenAndTransmit)
txl_frame_send_eapol_frame proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	addi	s1,zero,+000001B0
	add	s1,a0,s1
	c.swsp	s3,000000AC
	lui	s3,0004201F
	c.swsp	s4,0000002C
	addi	s4,s3,-000005A0
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.mv	s5,a0
	c.mv	s7,a1
	c.addi4spn	a0,00000018
	c.li	a1,00000000
	c.add	s4,s1
	c.swsp	a2,00000004
	c.swsp	a3,00000084
	c.mv	s6,a4
	lbu	s11,s4,+0000001A
	jal	ra,00000000230020D4
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,000000002300C582
	beq	a0,zero,000000002300CE3A

l2300CADE:
	sb	s11,a0,+0000002F
	sb	s5,a0,+00000030
	sb	zero,a0,+0000002E
	lhu	a4,s4,+000000F8
	addi	s3,s3,-000005A0
	addi	s2,zero,+000005D8
	addi	a5,a4,+00000001
	c.slli	a5,14
	c.srli	a5,00000014
	sh	a5,s4,+000000F8
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000178
	sh	a5,a0,+00000020
	addi	a5,s1,+0000001E
	sh	a4,a0,+0000002A
	add	s9,a5,s3
	lhu	a4,s9,+00000000
	add	s2,s11,s2
	lui	s4,00042020
	sh	a4,a0,+00000014
	lhu	a4,s9,+00000002
	c.mv	s0,a0
	c.mv	a1,a0
	sh	a4,a0,+00000016
	lhu	a4,s9,+00000004
	addi	a3,s2,+00000050
	sh	a4,a0,+00000018
	addi	a4,s4,-00000088
	add	s10,a3,a4
	lhu	a2,s10,+00000000
	c.add	s2,a4
	addi	s4,s4,-00000088
	sh	a2,a0,+0000001A
	lhu	a2,s10,+00000002
	sh	a2,a0,+0000001C
	lhu	a2,s10,+00000004
	sh	a2,a0,+0000001E
	c.mv	a0,s2
	jal	ra,000000002300B644
	lw	a4,s2,+000003E0
	c.lw	s0,104(s1)
	c.andi	a4,00000001
	beq	a4,zero,000000002300CE5A

l2300CB78:
	addi	a4,zero,-00000078
	sb	a4,s1,+0000014C
	sb	zero,s1,+0000014D
	lhu	a4,s0,+0000002A
	addi	s2,s1,+00000166
	addi	s5,s6,+00000022
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s1,+00000162
	c.srli	a4,00000008
	sb	a4,s1,+00000163
	lbu	a4,s0,+0000002E
	sb	zero,s1,+00000165
	sb	a4,s1,+00000164

l2300CBAC:
	addi	a4,zero,+00000100
	bgeu	a4,s5,000000002300CBCC

l2300CBB4:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000591
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000184
	jal	ra,0000000023001234

l2300CBCC:
	lbu	a4,s1,+0000014D
	lbu	a2,s1,+0000014C
	c.li	a1,00000002
	c.slli	a4,08
	c.or	a4,a2
	addi	a2,zero,+000005D8
	add	a2,s11,a2
	c.add	a2,s4
	lbu	a0,a2,+00000056
	ori	a2,a4,+00000100
	bne	a0,a1,000000002300CBF4

l2300CBF0:
	ori	a2,a4,+00000200

l2300CBF4:
	sb	a2,s1,+0000014C
	c.srli	a2,00000008
	sb	a2,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	lhu	a4,s9,+00000000
	sh	a4,s1,+00000150
	lhu	a4,s9,+00000002
	sh	a4,s1,+00000152
	lhu	a4,s9,+00000004
	sh	a4,s1,+00000154
	lhu	a4,s10,+00000000
	sh	a4,s1,+00000156
	lhu	a4,s10,+00000002
	sh	a4,s1,+00000158
	lhu	a4,s10,+00000004
	sh	a4,s1,+0000015A
	addi	a4,zero,+000005D8
	add	s11,s11,a4
	c.li	a4,00000002
	c.add	s11,s4
	lbu	a2,s11,+00000056
	bne	a2,a4,000000002300CE94

l2300CC4A:
	lhu	a5,s10,+00000000
	sh	a5,s1,+0000015C
	lhu	a5,s10,+00000002
	sh	a5,s1,+0000015E
	lhu	a5,s10,+00000004

l2300CC5E:
	sh	a5,s1,+00000160
	lbu	a5,s0,+0000002F
	addi	a4,zero,+000005D8
	c.li	s11,00000000
	add	a5,a5,a4
	c.add	a5,s4
	lbu	a5,a5,+00000056
	bne	a5,zero,000000002300CD74

l2300CC7A:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	c.li	a3,00000002
	add	a5,a5,a4
	c.add	a5,s3
	lbu	a4,a5,+00000031
	bne	a4,a3,000000002300CD74

l2300CC92:
	lw	a5,a5,+000000AC
	c.li	a3,00000001
	c.lw	a5,0(a1)
	lbu	a5,a1,+00000060
	beq	a5,a3,000000002300CEAA

l2300CCA2:
	c.beqz	a5,000000002300CCAE

l2300CCA4:
	beq	a5,a4,000000002300CED0

l2300CCA8:
	c.li	a4,00000003
	bne	a5,a4,000000002300CEF4

l2300CCAE:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000004
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,00000000230A382C
	c.li	a5,00000004
	c.li	s11,00000004

l2300CCD2:
	c.add	s11,a5
	beq	s11,zero,000000002300CD74

l2300CCD8:
	lbu	a5,s1,+0000014D
	lbu	a4,s1,+0000014C
	c.add	s5,s11
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00004000
	c.or	a5,a4
	sb	a5,s1,+0000014C
	c.srli	a5,00000008
	sb	a5,s1,+0000014D
	lbu	a5,s0,+0000002F
	addi	a4,zero,+000005D8
	add	a5,a5,a4
	c.add	s4,a5
	lbu	a4,s4,+00000056
	bne	a4,zero,000000002300CF50

l2300CD0A:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	add	a5,a5,a3
	c.li	a3,00000002
	c.add	a5,s3
	lbu	a2,a5,+00000031
	bne	a2,a3,000000002300CD70

l2300CD22:
	lw	a5,a5,+000000AC
	c.li	a0,00000001
	c.lw	a5,0(a3)
	c.lw	s0,108(a5)
	c.lw	a5,40(a1)
	lbu	a5,a3,+00000060
	beq	a5,a0,000000002300CEFA

l2300CD36:
	c.beqz	a5,000000002300CD42

l2300CD38:
	beq	a5,a2,000000002300CF3C

l2300CD3C:
	c.li	a2,00000003
	bne	a5,a2,000000002300CD5C

l2300CD42:
	lhu	a5,s0,+00000022
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	lhu	a4,s0,+00000024
	c.slli	a5,0E
	c.or	a5,a4
	sh	a5,s2,+00000002
	c.li	a4,00000004

l2300CD5C:
	c.lw	a1,12(a5)
	lbu	a3,a3,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a5,a2
	c.or	a5,a3
	c.sw	a1,12(a5)

l2300CD70:
	c.add	s2,a4
	c.mv	s8,s2

l2300CD74:
	c.lui	a5,FFFFB000
	addi	a5,a5,-00000556
	sh	a5,s2,+00000000
	c.li	a5,00000003
	sh	a5,s2,+00000002
	sh	zero,s2,+00000004
	lhu	a5,s0,+00000020
	c.lwsp	a2,00000064
	c.mv	a2,s6
	sh	a5,s2,+00000006
	addi	a0,s2,+00000008
	jal	ra,00000000230A382C
	beq	s11,zero,000000002300CE04

l2300CDA0:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	add	a5,a5,a4
	c.add	s3,a5
	lw	a5,s3,+000000AC
	c.lw	a5,0(a1)
	c.li	a5,00000001
	lbu	a4,a1,+00000060
	bne	a4,a5,000000002300CE04

l2300CDBE:
	lbu	a4,s0,+0000002E
	addi	a3,s0,+0000001A
	addi	a2,s0,+00000014
	addi	a1,a1,+00000050
	c.addi4spn	a0,00000020
	jal	ra,000000002300D774
	c.addi	s6,00000008
	c.mv	a2,s6
	c.mv	a1,s8
	c.addi4spn	a0,00000020
	jal	ra,000000002300D826
	c.addi4spn	a0,00000020
	jal	ra,000000002300D96A
	add	s1,s6,s8
	c.li	a5,00000000
	c.li	a4,00000008

l2300CDEE:
	c.addi4spn	a3,00000020
	c.add	a3,a5
	lbu	a2,a3,+00000000
	add	a3,s1,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,000000002300CDEE

l2300CE04:
	c.lw	s0,108(a4)
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,s5
	c.addi	s5,00000004
	c.sw	a4,24(a5)
	sw	s5,a4,+0000001C
	beq	s7,zero,000000002300CE22

l2300CE18:
	c.lwsp	s0,000000E4
	sw	s7,s0,+000002CC
	sw	a5,s0,+000002D0

l2300CE22:
	lbu	a4,s0,+0000002E
	lui	a5,000230AD
	addi	a5,a5,+00000230
	c.add	a5,a4
	lbu	a1,a5,+00000000
	c.mv	a0,s0
	jal	ra,000000002300C6AE

l2300CE3A:
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
	c.li	a0,00000000
	c.addi16sp	00000070
	c.jr	ra

l2300CE5A:
	lui	a2,00042020
	c.li	a4,00000008
	addi	a2,a2,-000000F0
	sb	a4,s1,+0000014C
	lhu	a4,a2,+00000054
	sb	zero,s1,+0000014D
	addi	s2,s1,+00000164
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a2,+00000054
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s1,+00000162
	c.srli	a4,00000008
	sb	a4,s1,+00000163
	addi	s5,s6,+00000020
	c.j	000000002300CBAC

l2300CE94:
	lhu	a4,s9,+00000000
	sh	a4,s1,+0000015C
	lhu	a4,s9,+00000002
	sh	a4,s1,+0000015E
	lhu	a5,s9,+00000004
	c.j	000000002300CC5E

l2300CEAA:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000006
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,00000000230A382C
	c.li	a5,0000000C

l2300CECC:
	c.li	s11,00000008
	c.j	000000002300CCD2

l2300CED0:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000006
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,00000000230A382C
	c.li	a5,00000008
	c.j	000000002300CECC

l2300CEF4:
	c.li	a5,00000000
	c.li	s11,00000000
	c.j	000000002300CCD2

l2300CEFA:
	lhu	a2,s0,+00000022
	c.lui	a6,00002000
	c.lui	a0,00008000
	or	a4,a2,a6
	addi	a0,a0,-00000100
	c.and	a4,a0
	c.srli	a2,00000008
	c.or	a4,a2
	sh	a4,s2,+00000000
	lbu	a4,a3,+00000061
	lbu	a5,s0,+00000022
	c.slli	a4,0E
	c.or	a5,a4
	or	a5,a5,a6

l2300CF24:
	sh	a5,s2,+00000002
	lhu	a5,s0,+00000024
	c.li	a4,00000008
	sh	a5,s2,+00000004
	lhu	a5,s0,+00000026
	sh	a5,s2,+00000006
	c.j	000000002300CD5C

l2300CF3C:
	lhu	a5,s0,+00000022
	c.lui	a4,00002000
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	c.slli	a5,0E
	c.or	a5,a4
	c.j	000000002300CF24

l2300CF50:
	c.li	a4,00000000
	c.j	000000002300CD70

;; txl_frame_dump: 2300CF54
;;   Called from:
;;     23014732 (in bl_fw_statistic_dump)
txl_frame_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042020
	addi	a0,s0,-00000098
	c.swsp	ra,00000084
	jal	ra,000000002301456E
	c.beqz	a0,000000002300CF78

l2300CF68:
	lw	a4,s0,-00000098
	c.mv	a5,s0

l2300CF6E:
	c.bnez	a4,000000002300CF80

l2300CF70:
	addi	a5,a5,-00000098
	c.lw	a5,8(a5)

l2300CF76:
	c.bnez	a5,000000002300CF84

l2300CF78:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300CF80:
	c.lw	a4,0(a4)
	c.j	000000002300CF6E

l2300CF84:
	c.lw	a5,0(a5)
	c.j	000000002300CF76

;; txl_hwdesc_init: 2300CF88
;;   Called from:
;;     2300B928 (in txl_cntrl_init)
txl_hwdesc_init proc
	c.jr	ra

;; txl_hwdesc_reset: 2300CF8A
;;   Called from:
;;     2300C2BA (in txl_reset)
txl_hwdesc_reset proc
	c.jr	ra

;; vif_mgmt_bcn_to_evt: 2300CF8C
;;   Called from:
;;     2300D4E6 (in vif_mgmt_bcn_recv)
vif_mgmt_bcn_to_evt proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002300CF94

l2300CF90:
	jal	zero,000000002301AA56

l2300CF94:
	c.jr	ra

;; vif_mgmt_init: 2300CF96
;;   Called from:
;;     23007EC0 (in mm_init)
vif_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042021
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,s1,-000004D8
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,00000000230A3A68
	addi	a0,s1,-000004D8
	jal	ra,0000000023014488
	lui	a0,00042021
	addi	a0,a0,-000004D0
	jal	ra,0000000023014488
	lui	s4,00042020
	addi	a2,zero,+000005D8
	c.li	a1,00000000
	addi	a0,s4,-00000088
	jal	ra,00000000230A3A68
	lui	s2,0002300D
	addi	s0,s4,-00000088
	addi	s3,zero,+0000007F
	c.li	s5,00000004
	addi	s2,s2,-00000074
	addi	a1,s4,-00000088
	addi	a0,s1,-000004D8
	lui	s4,00042020
	sb	s5,s0,+00000056
	sb	s3,s0,+00000059
	sb	s3,s0,+0000005A
	sw	s2,s0,+0000002C
	c.sw	s0,48(s0)
	jal	ra,0000000023014492
	c.li	a1,00000000
	addi	a0,s4,+00000550
	addi	a2,zero,+000005D8
	jal	ra,00000000230A3A68
	addi	a5,s4,+00000550
	sb	s5,s0,+0000062E
	sb	s3,s0,+00000631
	sb	s3,s0,+00000632
	sw	s2,s0,+00000604
	sw	a5,s0,+00000608
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	addi	a1,s4,+00000550
	addi	a0,s1,-000004D8
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023014492

;; vif_mgmt_register: 2300D052
;;   Called from:
;;     2301B9A0 (in mm_hw_config_handler)
vif_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042021
	lw	a5,s0,-000004D8
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,zero,000000002300D1BE

l2300D06C:
	addi	a5,s0,-000004D8
	c.lw	a5,8(a5)
	c.mv	s1,a0
	c.mv	s3,a3
	c.mv	s2,a1
	addi	s4,s0,-000004D8
	c.bnez	a5,000000002300D122

l2300D07E:
	jal	ra,00000000230082B0

l2300D082:
	addi	a0,s0,-000004D8
	jal	ra,000000002301450E
	c.mv	s0,a0
	sb	s2,a0,+00000056
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,a0,+00000050
	jal	ra,00000000230A382C
	lui	a5,00042020
	addi	a5,a5,-00000088
	sub	a5,s0,a5
	lui	a4,000A18A4
	addi	a4,a4,+00000473
	c.srai	a5,00000003
	add	a5,a5,a4
	c.lui	a4,00001000
	addi	a3,a4,-000005B9
	addi	a4,a4,-000005BD
	c.sw	s0,12(a4)
	lui	a4,0000005E
	addi	a4,a4,+00000432
	c.sw	s0,16(a4)
	lui	a4,0000002F
	addi	a4,a4,+00000322
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000057
	c.sw	s0,8(a3)
	c.sw	s0,20(a4)
	sw	zero,s0,+00000040
	sb	a5,s0,+0000004C
	beq	s2,zero,000000002300D17C

l2300D0EC:
	c.li	a5,00000002
	beq	s2,a5,000000002300D1A2

l2300D0F2:
	lbu	a0,s0,+00000057
	jal	ra,000000002300B432
	lbu	a5,s0,+00000057
	lui	a0,00042021
	addi	a0,a0,-000004D0
	sb	a5,s3,+00000000
	c.mv	a1,s0
	jal	ra,0000000023014492
	c.li	a0,00000000

l2300D112:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2300D122:
	lbu	a4,a0,+00000001
	lbu	a5,a0,+00000000
	lui	a3,00044B00
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a0,+00000002
	c.lw	a3,16(a2)
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a0,+00000003
	c.li	a0,00000001
	c.slli	a5,18
	c.or	a5,a4
	bne	a5,a2,000000002300D112

l2300D14A:
	lbu	a5,s1,+00000005
	lbu	a1,s1,+00000004
	c.lw	a3,20(a2)
	c.lw	a3,28(a4)
	c.slli	a5,08
	c.or	a5,a1
	c.xor	a5,a2
	xori	a4,a4,-00000001
	c.and	a5,a4
	c.bnez	a5,000000002300D112

l2300D164:
	lui	a4,0004201F
	addi	a4,a4,-0000067C
	c.lw	a4,4(a5)
	ori	a5,a5,+00000010
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	c.sw	a3,96(a5)
	c.j	000000002300D082

l2300D17C:
	lbu	a5,s4,+00000010
	c.sw	s0,32(s0)
	sb	zero,s0,+00000079
	c.addi	a5,00000001
	sb	a5,s4,+00000010
	lui	a5,00023009
	addi	a5,a5,-0000048C
	c.sw	s0,28(a5)
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	sb	zero,s0,+0000007A
	c.j	000000002300D0F2

l2300D1A2:
	lbu	a5,s4,+00000011
	c.bnez	a5,000000002300D1AC

l2300D1A8:
	jal	ra,000000002300832A

l2300D1AC:
	lbu	a5,s4,+00000011
	c.mv	a0,s0
	c.addi	a5,00000001
	sb	a5,s4,+00000011
	jal	ra,0000000023008F84
	c.j	000000002300D0F2

l2300D1BE:
	c.li	a0,00000001
	c.j	000000002300D112

;; vif_mgmt_unregister: 2300D1C2
;;   Called from:
;;     2301B9B4 (in mm_hw_config_handler)
vif_mgmt_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	addi	s2,zero,+000005D8
	add	s2,a0,s2
	c.swsp	s0,0000000C
	lui	s0,00042020
	c.swsp	s1,00000088
	addi	s1,s0,-00000088
	c.swsp	s5,00000080
	c.mv	s5,a0
	lui	a0,00042021
	addi	a0,a0,-000004D0
	c.swsp	s3,00000084
	c.add	s1,s2
	c.mv	a1,s1
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	jal	ra,000000002301451A
	lbu	a5,s1,+00000056
	lui	s4,00042021
	addi	s0,s0,-00000088
	addi	s3,s4,-000004D8
	c.beqz	a5,000000002300D2C4

l2300D206:
	c.li	a4,00000002
	beq	a5,a4,000000002300D2D0

l2300D20C:
	lbu	a4,s3,+00000010
	lbu	a5,s3,+00000011
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,000000002300D242

l2300D21C:
	lui	a4,0004201F
	addi	a4,a4,-0000067C
	c.lw	a4,4(a5)
	lw	a3,s3,+00000008
	c.andi	a5,FFFFFFEF
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.lw	a3,56(a5)
	c.sw	a4,32(a5)
	lhu	a5,a3,+0000003C
	c.sw	a4,36(a5)

l2300D242:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300D25A

l2300D256:
	jal	ra,000000002300BAEE

l2300D25A:
	addi	a0,s2,+00000018
	c.add	a0,s0
	jal	ra,00000000230096A4
	addi	a0,s2,+00000028
	c.add	a0,s0
	jal	ra,00000000230096A4
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	c.add	s0,s5
	lbu	a0,s0,+00000057
	jal	ra,000000002300B3A4
	c.li	a1,00000000
	c.mv	a0,s1
	addi	a2,zero,+000005D8
	jal	ra,00000000230A3A68
	c.li	a5,00000004
	sb	a5,s0,+00000056
	addi	a5,zero,+0000007F
	sb	a5,s0,+00000059
	sb	a5,s0,+0000005A
	lui	a5,0002300D
	addi	a5,a5,-00000074
	c.sw	s0,44(a5)
	c.sw	s0,48(s1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	c.mv	a1,s1
	addi	a0,s4,-000004D8
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023014492

l2300D2C4:
	lbu	a5,s3,+00000010
	c.addi	a5,FFFFFFFF
	sb	a5,s3,+00000010
	c.j	000000002300D20C

l2300D2D0:
	lbu	a5,s3,+00000011
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+00000011
	c.bnez	a5,000000002300D20C

l2300D2E0:
	jal	ra,0000000023008360
	c.j	000000002300D20C

;; vif_mgmt_add_key: 2300D2E6
;;   Called from:
;;     2300809C (in mm_sec_machwkey_wr)
vif_mgmt_add_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lbu	s3,a0,+00000029
	lbu	s1,a0,+00000000
	addi	s0,zero,+00000068
	addi	a3,zero,+000005D8
	add	s0,s1,s0
	lui	s5,00042020
	c.mv	s2,a0
	addi	a2,zero,+00000048
	add	a3,s3,a3
	c.add	a3,s0
	addi	s4,a3,+00000420
	addi	s0,s5,-00000088
	c.add	s4,s0
	c.add	s0,a3
	sb	a1,s0,+00000482
	lbu	a5,a0,+00000028
	c.li	a1,00000000
	sb	a5,s0,+00000480
	lbu	a5,a0,+00000000
	c.mv	a0,s4
	sb	a5,s0,+00000481
	jal	ra,00000000230A3A68
	lbu	a4,s0,+00000480
	c.li	a3,00000001
	addi	a5,s5,-00000088
	beq	a4,a3,000000002300D3C8

l2300D350:
	c.beqz	a4,000000002300D358

l2300D352:
	c.li	a3,00000003
	bne	a4,a3,000000002300D3F6

l2300D358:
	lui	a4,0004200F
	addi	a4,a4,-000004D8
	c.lw	a4,0(a3)
	lui	a2,00041C65
	addi	a2,a2,-00000193
	add	a3,a3,a2
	c.lui	a2,00003000
	addi	a2,a2,+00000039
	c.add	a3,a2
	c.sw	a4,0(a3)
	addi	a2,zero,+000005D8
	addi	a4,zero,+00000068
	add	a4,s1,a4
	c.srli	a3,00000010
	add	a2,s3,a2
	c.add	a4,a2
	c.add	a4,a5
	sw	a3,a4,+00000468
	sw	zero,a4,+0000046C

l2300D396:
	addi	a4,zero,+00000068
	add	s1,s1,a4
	addi	a4,zero,+000005D8
	c.li	a3,00000001
	add	a4,s3,a4
	c.add	s1,a4
	c.add	s1,a5
	c.add	a5,a4
	sb	a3,s1,+00000483
	sw	s4,a5,+000005C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300D3C8:
	c.li	a4,00000000
	c.li	a3,00000000
	sw	a3,s0,+00000468
	sw	a4,s0,+0000046C
	lw	a4,s2,+00000018
	sw	a4,s0,+00000470
	lw	a4,s2,+0000001C
	sw	a4,s0,+00000474
	lw	a4,s2,+00000020
	sw	a4,s0,+00000478
	lw	a4,s2,+00000024
	sw	a4,s0,+0000047C
	c.j	000000002300D396

l2300D3F6:
	c.li	a3,00000000
	c.li	a4,00000000
	sw	a3,s0,+00000468
	sw	a4,s0,+0000046C
	c.j	000000002300D396

;; vif_mgmt_del_key: 2300D404
;;   Called from:
;;     23008240 (in mm_sec_machwkey_del)
vif_mgmt_del_key proc
	addi	a5,zero,+00000068
	add	a1,a1,a5
	add	a5,a0,a1
	sb	zero,a5,+00000483
	lw	a5,a0,+000005C0
	addi	a1,a1,+00000420
	c.add	a1,a0
	bne	a5,a1,000000002300D452

l2300D422:
	sw	zero,a0,+000005C0
	addi	a4,a0,+00000483
	c.li	a5,00000000
	c.li	a3,00000004

l2300D42E:
	lbu	a2,a4,+00000000
	c.beqz	a2,000000002300D448

l2300D434:
	addi	a4,zero,+00000068
	add	a5,a5,a4
	addi	a5,a5,+00000420
	c.add	a5,a0
	sw	a5,a0,+000005C0
	c.jr	ra

l2300D448:
	c.addi	a5,00000001
	addi	a4,a4,+00000068
	bne	a5,a3,000000002300D42E

l2300D452:
	c.jr	ra

;; vif_mgmt_send_postponed_frame: 2300D454
;;   Called from:
;;     2300D496 (in vif_mgmt_reset)
;;     2301A254 (in chan_pre_switch_channel)
vif_mgmt_send_postponed_frame proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a0,+00000350
	c.mv	s1,a0

l2300D462:
	c.bnez	s0,000000002300D46E

l2300D464:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300D46E:
	c.mv	a1,s0
	c.li	a2,00000000
	c.mv	a0,s1
	jal	ra,000000002300B24C
	c.lw	s0,0(s0)
	c.j	000000002300D462

;; vif_mgmt_reset: 2300D47C
;;   Called from:
;;     2300A060 (in bl_reset_evt)
vif_mgmt_reset proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042021
	c.swsp	s0,00000004
	lw	s0,a5,-000004D0
	c.swsp	ra,00000084

l2300D48A:
	c.bnez	s0,000000002300D494

l2300D48C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300D494:
	c.mv	a0,s0
	jal	ra,000000002300D454
	c.lw	s0,0(s0)
	c.j	000000002300D48A

;; vif_mgmt_bcn_to_prog: 2300D49E
;;   Called from:
;;     23007FC0 (in mm_tbtt_evt)
;;     23008BDE (in mm_sta_tbtt)
vif_mgmt_bcn_to_prog proc
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.add	a1,a5
	addi	a0,a0,+00000028
	jal	zero,00000000230095EE

;; vif_mgmt_bcn_recv: 2300D4B6
;;   Called from:
;;     2300A5A0 (in rxl_cntrl_evt)
vif_mgmt_bcn_recv proc
	lui	a5,0004201F
	addi	a5,a5,-00000624
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002300D4EA

l2300D4C4:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,000000002300D4EA

l2300D4CA:
	c.lw	a0,4(a5)
	c.bnez	a5,000000002300D4EA

l2300D4CE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000028
	c.swsp	ra,00000084
	jal	ra,00000000230096A4
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300CF8C

l2300D4EA:
	c.jr	ra

;; vif_mgmt_set_ap_bcn_int: 2300D4EC
;;   Called from:
;;     2301BA46 (in mm_hw_config_handler)
vif_mgmt_set_ap_bcn_int proc
	sh	a1,a0,+0000033E
	csrrci	zero,mstatus,00000008
	lui	a5,00042021
	addi	a4,a5,-000004D8
	lbu	a2,a4,+00000011
	c.li	a3,00000001
	addi	a5,a5,-000004D8
	bgeu	a3,a2,000000002300D560

l2300D50A:
	lbu	a3,a5,+00000012
	addi	a2,zero,+000005D8
	lui	a4,00042020
	add	a3,a3,a2
	addi	a4,a4,-00000088
	c.add	a4,a3
	lhu	a4,a4,+0000033E
	bgeu	a1,a4,000000002300D532

l2300D528:
	lbu	a4,a0,+00000057
	sb	a4,a5,+00000012
	c.mv	a4,a1

l2300D532:
	c.lw	a5,8(a5)
	c.li	a2,00000001

l2300D536:
	c.bnez	a5,000000002300D54C

l2300D538:
	lui	a3,00044B00
	c.lw	a3,100(a5)
	c.lui	a2,FFFF0000
	c.and	a5,a2
	c.or	a5,a4
	c.sw	a3,100(a5)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l2300D54C:
	lhu	a3,a5,+0000033E
	sb	a2,a5,+00000341
	srl	a3,a3,a4
	sb	a3,a5,+00000340
	c.lw	a5,0(a5)
	c.j	000000002300D536

l2300D560:
	lbu	a5,a0,+00000057
	sb	a5,a4,+00000012
	addi	a5,zero,+00000101
	sh	a5,a0,+00000340
	c.mv	a4,a1
	c.j	000000002300D538

;; vif_mgmt_switch_channel: 2300D574
;;   Called from:
;;     23008BA2 (in mm_sta_tbtt)
;;     2300955C (in mm_bcn_transmitted)
vif_mgmt_switch_channel proc
	c.addi	sp,FFFFFFE0
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,zero,+00000058
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,00000000230149A2
	c.mv	s1,a0
	lbu	a0,s0,+00000057
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F
	jal	ra,000000002301ADFA
	lhu	a1,s0,+000005CA
	lbu	a0,s0,+000005C8
	addi	s2,s0,+000005C8
	c.jal	000000002300D6DA
	lhu	a5,s0,+000005CC
	sw	a0,s0,+000003A4
	c.li	a4,00000004
	sh	a5,s0,+000003A8
	lhu	a5,s0,+000005CE
	sh	a5,s0,+000003AA
	lbu	a5,s0,+000005C9
	sb	a5,s0,+000003DB
	bne	a5,a4,000000002300D5D0

l2300D5CE:
	c.li	a5,00000003

l2300D5D0:
	sb	a5,s0,+000003DA
	c.beqz	a0,000000002300D61A

l2300D5D6:
	lb	a5,a0,+00000004
	addi	a1,sp,+0000000F
	c.mv	a0,s2
	sb	a5,s0,+000005D0
	jal	ra,000000002301A7EE
	lbu	a1,sp,+0000000F
	sb	a0,s1,+00000001
	sb	a1,s1,+00000002
	lbu	a5,s0,+00000056
	c.beqz	a5,000000002300D620

l2300D5FA:
	c.li	a4,00000002
	bne	a5,a4,000000002300D66A

l2300D600:
	sb	zero,s0,+00000347
	c.bnez	a0,000000002300D66A

l2300D606:
	lbu	a0,s0,+00000057
	jal	ra,000000002301ACD8
	lui	a5,0004201F
	c.li	a4,00000001
	sb	a4,a5,+000009B9
	c.j	000000002300D66A

l2300D61A:
	lbu	a5,zero,+00000004
	c.ebreak

l2300D620:
	sb	zero,s0,+00000079
	c.bnez	a0,000000002300D67C

l2300D626:
	lbu	a0,s0,+00000057
	lbu	s2,s0,+00000060
	jal	ra,000000002301ACD8
	addi	a0,s0,+00000028
	jal	ra,00000000230096A4
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	addi	a0,s0,+00000018
	c.add	a5,s2
	c.lw	a5,4(a5)
	c.add	a1,a5
	jal	ra,00000000230095EE
	c.li	a5,00000001
	sb	zero,s0,+00000074
	sb	a5,s0,+0000007A

l2300D66A:
	c.mv	a0,s1
	jal	ra,0000000023014A0E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2300D67C:
	c.mv	a0,s0
	jal	ra,00000000230087C6
	c.j	000000002300D66A

;; vif_mgmt_get_first_ap_inf: 2300D684
;;   Called from:
;;     230101A8 (in rxu_cntrl_frame_handle)
;;     23013C7E (in apm_probe_req_handler)
vif_mgmt_get_first_ap_inf proc
	lui	a5,00042021
	addi	a5,a5,-000004D8
	lbu	a4,a5,+00000011
	c.li	a0,00000000
	c.beqz	a4,000000002300D69A

l2300D694:
	c.lw	a5,8(a0)
	c.li	a5,00000002

l2300D698:
	c.bnez	a0,000000002300D69C

l2300D69A:
	c.jr	ra

l2300D69C:
	lbu	a4,a0,+00000056
	beq	a4,a5,000000002300D69A

l2300D6A4:
	c.lw	a0,0(a0)
	c.j	000000002300D698

;; me_init: 2300D6A8
;;   Called from:
;;     2300A002 (in bl_init)
;;     2301B5A8 (in mm_reset_req_handler)
me_init proc
	lui	a0,00042021
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000134
	c.li	a1,00000000
	addi	a0,a0,-000004C4
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	c.li	a1,00000000
	c.li	a0,00000005
	jal	ra,0000000023014B3C
	jal	ra,0000000023010A9C
	jal	ra,00000000230132EA
	jal	ra,000000002301188C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301C250

;; me_freq_to_chan_ptr: 2300D6DA
;;   Called from:
;;     2300D5AA (in vif_mgmt_switch_channel)
;;     23010D88 (in scanu_frame_handler)
;;     23011214 (in scanu_frame_handler)
;;     2301EF4C (in apm_start_req_handler)
me_freq_to_chan_ptr proc
	lui	a5,00042021
	addi	a5,a5,-000004C4
	c.beqz	a0,000000002300D700

l2300D6E4:
	lbu	a4,a5,+0000012D
	lui	a5,00042021
	addi	a5,a5,-00000440
	c.j	000000002300D70C

l2300D6F2:
	c.mv	a0,a5
	c.addi	a5,00000006
	lhu	a3,a5,-00000006
	bne	a3,a1,000000002300D714

l2300D6FE:
	c.jr	ra

l2300D700:
	lbu	a4,a5,+0000012C
	lui	a5,00042021
	addi	a5,a5,-00000494

l2300D70C:
	c.li	a3,00000006
	add	a4,a4,a3
	c.add	a4,a5

l2300D714:
	bne	a5,a4,000000002300D6F2

l2300D718:
	c.li	a0,00000000
	c.jr	ra

;; michael_block: 2300D71C
;;   Called from:
;;     2300D7FE (in me_mic_init)
;;     2300D806 (in me_mic_init)
;;     2300D80E (in me_mic_init)
;;     2300D822 (in me_mic_init)
;;     2300D8AA (in me_mic_calc)
;;     2300D91E (in me_mic_calc)
;;     2300D960 (in me_mic_calc)
;;     2300D9AC (in me_mic_end)
;;     2300D9BC (in me_mic_end)
michael_block proc
	c.lw	a0,0(a5)
	c.lw	a0,4(a4)
	lui	a2,000FF010
	c.xor	a1,a5
	slli	a3,a1,00000011
	srli	a5,a1,0000000F
	c.or	a5,a3
	c.xor	a4,a5
	c.add	a1,a4
	lui	a3,00000FF0
	srli	a5,a1,00000008
	addi	a3,a3,+000000FF
	c.and	a5,a3
	addi	a2,a2,-00000100
	slli	a3,a1,00000008
	c.and	a3,a2
	c.or	a5,a3
	c.xor	a5,a4
	c.add	a1,a5
	srli	a3,a1,0000001D
	slli	a4,a1,00000003
	c.or	a4,a3
	c.xor	a4,a5
	c.add	a1,a4
	srli	a5,a1,00000002
	slli	a3,a1,0000001E
	c.or	a5,a3
	c.xor	a5,a4
	c.add	a1,a5
	c.sw	a0,4(a5)
	c.sw	a0,0(a1)
	c.jr	ra

;; me_mic_init: 2300D774
;;   Called from:
;;     2300CDD0 (in txl_frame_send_eapol_frame)
;;     230105C2 (in rxu_cntrl_frame_handle)
;;     23013002 (in txu_cntrl_tkip_mic_append)
me_mic_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	lbu	a0,a2,+00000001
	lbu	a5,a2,+00000000
	lbu	s0,a3,+00000001
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a2,+00000002
	c.slli	s0,08
	lbu	s2,a3,+00000002
	c.slli	a5,10
	c.or	a0,a5
	lbu	a5,a2,+00000003
	andi	s3,a4,+00000007
	c.slli	a5,18
	c.or	a5,a0
	lbu	a0,a3,+00000000
	c.or	s0,a0
	lbu	a0,a2,+00000004
	lbu	a2,a2,+00000005
	c.slli	s0,10
	c.slli	a2,08
	c.or	a2,a0
	c.or	s0,a2
	lbu	a2,a3,+00000003
	c.slli	a2,08
	or	a2,a2,s2
	lbu	s2,a3,+00000004
	c.slli	s2,10
	or	a2,s2,a2
	lbu	s2,a3,+00000005
	addi	a3,zero,+000000FF
	c.slli	s2,18
	or	s2,s2,a2
	bne	a4,a3,000000002300D7EA

l2300D7E8:
	c.li	s3,00000000

l2300D7EA:
	c.lw	a1,0(a4)
	c.mv	a0,s1
	c.sw	s1,0(a4)
	c.lw	a1,4(a4)
	c.mv	a1,a5
	sw	zero,s1,+00000008
	c.sw	s1,4(a4)
	sb	zero,s1,+0000000C
	jal	ra,000000002300D71C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300D71C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300D71C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002300D71C

;; me_mic_calc: 2300D826
;;   Called from:
;;     2300CDDC (in txl_frame_send_eapol_frame)
;;     23010614 (in rxu_cntrl_frame_handle)
;;     23013016 (in txu_cntrl_tkip_mic_append)
;;     23013062 (in txu_cntrl_tkip_mic_append)
me_mic_calc proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	andi	a5,a1,-00000004
	addi	s4,a5,+00000004
	c.andi	a1,00000003
	c.lw	a5,0(a5)
	c.li	s0,00000004
	c.sub	s0,a1
	andi	s0,s0,+000000FF
	c.slli	a1,03
	c.mv	s3,a0
	lbu	a3,a0,+0000000C
	srl	a1,a5,a1
	c.lw	a0,8(a0)
	sub	s8,a2,s0
	bgeu	a2,s0,000000002300D87E

l2300D86A:
	c.li	a5,00000004
	c.sub	a5,a2
	c.slli	a5,03
	c.li	a4,FFFFFFFF
	srl	a5,a4,a5
	c.and	a1,a5
	andi	s0,a2,+000000FF
	c.li	s8,00000000

l2300D87E:
	slli	s1,a3,00000003
	sll	s1,a1,s1
	c.add	s0,a3
	c.li	a5,00000003
	c.or	s1,a0
	bgeu	a5,s0,000000002300D8B0

l2300D890:
	c.li	a4,00000004
	c.sub	a4,a3
	c.slli	a4,03
	addi	a5,zero,+00000020
	c.li	s2,00000000
	beq	a4,a5,000000002300D8A4

l2300D8A0:
	srl	s2,a1,a4

l2300D8A4:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002300D71C
	c.mv	s1,s2

l2300D8B0:
	c.li	s2,00000004
	sub	s2,s2,s0
	srli	s6,s8,00000002
	slli	s5,s0,00000003
	c.slli	s2,03
	c.mv	a4,s4
	c.li	s7,00000000
	addi	s9,zero,+00000020

l2300D8C8:
	bne	s6,s7,000000002300D948

l2300D8CC:
	c.slli	s6,02
	andi	a5,s8,-00000004
	c.add	s4,s6
	bgeu	a5,s8,000000002300D924

l2300D8D8:
	andi	a5,s8,+00000003
	c.li	a4,00000004
	c.sub	a4,a5
	c.slli	a4,03
	addi	a1,zero,+00000020
	lw	a3,s4,+00000000
	c.li	a2,00000000
	beq	a4,a1,000000002300D8F6

l2300D8F0:
	c.li	a2,FFFFFFFF
	srl	a2,a2,a4

l2300D8F6:
	and	a4,a3,a2
	c.add	s0,a5
	sll	s5,a4,s5
	c.li	a5,00000003
	or	s1,s1,s5
	bgeu	a5,s0,000000002300D924

l2300D90A:
	addi	a5,zero,+00000020
	c.li	s4,00000000
	beq	s2,a5,000000002300D918

l2300D914:
	srl	s4,a4,s2

l2300D918:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002300D71C
	c.mv	s1,s4

l2300D924:
	sb	s0,s3,+0000000C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	s1,s3,+00000008
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

l2300D948:
	c.lw	a4,0(a5)
	addi	s10,a4,+00000004
	sll	a1,a5,s5
	c.or	a1,s1
	c.li	s1,00000000
	beq	s2,s9,000000002300D95E

l2300D95A:
	srl	s1,a5,s2

l2300D95E:
	c.mv	a0,s3
	jal	ra,000000002300D71C
	c.addi	s7,00000001
	c.mv	a4,s10
	c.j	000000002300D8C8

;; me_mic_end: 2300D96A
;;   Called from:
;;     2300CDE2 (in txl_frame_send_eapol_frame)
;;     230106A6 (in rxu_cntrl_frame_handle)
;;     23013026 (in txu_cntrl_tkip_mic_append)
;;     23013070 (in txu_cntrl_tkip_mic_append)
me_mic_end proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a4,a0,+0000000C
	c.li	a5,00000003
	c.mv	s0,a0
	c.lw	a0,8(s1)
	bgeu	a5,a4,000000002300D998

l2300D980:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000013E
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000019C
	jal	ra,0000000023001234

l2300D998:
	lbu	a1,s0,+0000000C
	c.mv	a0,s0
	slli	a5,a1,00000003
	addi	a1,zero,+0000005A
	sll	a1,a1,a5
	c.or	a1,s1
	jal	ra,000000002300D71C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002300D71C

;; me_set_sta_ht_vht_param: 2300D9C0
;;   Called from:
;;     2301E11A (in me_sta_add_req_handler)
;;     2301E9FE (in mm_sta_add_cfm_handler)
me_set_sta_ht_vht_param proc
	lhu	a5,a0,+000000C0
	lui	a4,00042021
	addi	a6,a4,-000004C4
	lbu	a7,a6,+0000012F
	srli	a3,a5,00000001
	srai	a2,a5,00000008
	c.andi	a3,00000001
	c.andi	a2,00000003
	bgeu	a7,a3,000000002300D9E2

l2300D9E0:
	c.mv	a3,a7

l2300D9E2:
	sb	a3,a0,+000000F0
	lbu	a4,a1,+00000083
	c.li	a1,00000004
	bne	a4,a1,000000002300D9F2

l2300D9F0:
	c.li	a4,00000002

l2300D9F2:
	bgeu	a3,a4,000000002300D9F8

l2300D9F6:
	c.mv	a4,a3

l2300D9F8:
	sb	a4,a0,+000000F1
	lbu	a4,a6,+0000012E
	bgeu	a2,a4,000000002300DA06

l2300DA04:
	c.mv	a4,a2

l2300DA06:
	sb	a4,a0,+000000F4
	andi	a0,a5,+0000000C
	c.addi	a0,FFFFFFF4
	sltu	a0,zero,a0
	c.jr	ra

;; me_11n_nss_max: 2300DA16
;;   Called from:
;;     2300E11E (in me_sta_bw_nss_max_upd)
;;     2300E12C (in me_sta_bw_nss_max_upd)
;;     2300F0E6 (in rc_init)
;;     2300F0F4 (in rc_init)
me_11n_nss_max proc
	lbu	a5,a0,+00000003
	c.bnez	a5,000000002300DA30

l2300DA1C:
	lbu	a4,a0,+00000002
	c.li	a5,00000002
	c.bnez	a4,000000002300DA2C

l2300DA24:
	lbu	a5,a0,+00000001
	c.beqz	a5,000000002300DA2C

l2300DA2A:
	c.li	a5,00000001

l2300DA2C:
	c.mv	a0,a5
	c.jr	ra

l2300DA30:
	c.li	a5,00000003
	c.j	000000002300DA2C

;; me_legacy_ridx_min: 2300DA34
;;   Called from:
;;     2300F156 (in rc_init)
;;     2300F2CE (in rc_init)
me_legacy_ridx_min proc
	c.li	a5,00000000
	c.li	a2,0000000C

l2300DA38:
	sra	a4,a0,a5
	c.andi	a4,00000001
	andi	a3,a5,+000000FF
	c.bnez	a4,000000002300DA4C

l2300DA44:
	c.addi	a5,00000001
	bne	a5,a2,000000002300DA38

l2300DA4A:
	c.li	a3,0000000C

l2300DA4C:
	c.mv	a0,a3
	c.jr	ra

;; me_legacy_ridx_max: 2300DA50
;;   Called from:
;;     2300F18C (in rc_init)
;;     2300F304 (in rc_init)
me_legacy_ridx_max proc
	c.beqz	a0,000000002300DA7A

l2300DA52:
	c.li	a5,0000000B
	c.li	a1,0000000B
	c.li	a2,FFFFFFFF

l2300DA58:
	sra	a3,a0,a5
	sub	a4,a1,a5
	c.andi	a3,00000001
	andi	a4,a4,+000000FF
	c.bnez	a3,000000002300DA70

l2300DA68:
	c.addi	a5,FFFFFFFF
	bne	a5,a2,000000002300DA58

l2300DA6E:
	c.li	a4,0000000C

l2300DA70:
	c.li	a0,0000000B
	c.sub	a0,a4
	andi	a0,a0,+000000FF
	c.jr	ra

l2300DA7A:
	c.li	a0,0000000C
	c.jr	ra

;; me_rate_translate: 2300DA7E
;;   Called from:
;;     2300DB90 (in me_legacy_rate_bitfield_build)
;;     2300DC42 (in me_init_bcmc_rate)
;;     2301405A (in apm_assoc_req_handler)
me_rate_translate proc
	andi	a5,a0,+0000007F
	c.li	a4,00000016
	beq	a5,a4,000000002300DAF6

l2300DA88:
	bltu	a4,a5,000000002300DABC

l2300DA8C:
	c.li	a4,0000000B
	c.li	a0,00000002
	beq	a5,a4,000000002300DAF8

l2300DA94:
	bltu	a4,a5,000000002300DAAE

l2300DA98:
	c.li	a4,00000002
	c.li	a0,00000000
	beq	a5,a4,000000002300DAF8

l2300DAA0:
	c.li	a4,00000004
	c.li	a0,00000001

l2300DAA4:
	beq	a5,a4,000000002300DAF8

l2300DAA8:
	addi	a0,zero,+000000FF
	c.jr	ra

l2300DAAE:
	c.li	a4,0000000C
	c.li	a0,00000004
	beq	a5,a4,000000002300DAF8

l2300DAB6:
	c.li	a4,00000012
	c.li	a0,00000005
	c.j	000000002300DAA4

l2300DABC:
	addi	a4,zero,+00000030
	c.li	a0,00000008
	beq	a5,a4,000000002300DAF8

l2300DAC6:
	bltu	a4,a5,000000002300DADA

l2300DACA:
	c.li	a4,00000018
	c.li	a0,00000006
	beq	a5,a4,000000002300DAF8

l2300DAD2:
	addi	a4,zero,+00000024
	c.li	a0,00000007
	c.j	000000002300DAA4

l2300DADA:
	addi	a4,zero,+00000060
	c.li	a0,0000000A
	beq	a5,a4,000000002300DAF8

l2300DAE4:
	addi	a4,zero,+0000006C
	c.li	a0,0000000B
	beq	a5,a4,000000002300DAF8

l2300DAEE:
	addi	a4,zero,+00000048
	c.li	a0,00000009
	c.j	000000002300DAA4

l2300DAF6:
	c.li	a0,00000003

l2300DAF8:
	c.jr	ra

;; me_get_basic_rates: 2300DAFA
;;   Called from:
;;     2301EFC8 (in apm_start_req_handler)
me_get_basic_rates proc
	sb	zero,a1,+00000000
	c.li	a5,00000000

l2300DB00:
	lbu	a4,a0,+00000000
	blt	a5,a4,000000002300DB0A

l2300DB08:
	c.jr	ra

l2300DB0A:
	add	a4,a0,a5
	lbu	a3,a4,+00000001
	slli	a4,a3,00000018
	c.srai	a4,00000018
	bge	a4,zero,000000002300DB2E

l2300DB1C:
	lbu	a4,a1,+00000000
	add	a2,a1,a4
	sb	a3,a2,+00000001
	c.addi	a4,00000001
	sb	a4,a1,+00000000

l2300DB2E:
	c.addi	a5,00000001
	c.j	000000002300DB00

;; me_legacy_rate_bitfield_build: 2300DB32
;;   Called from:
;;     2300F0D2 (in rc_init)
;;     2300F2C6 (in rc_init)
;;     23010E3C (in scanu_frame_handler)
;;     23011CE6 (in sm_set_bss_param)
;;     23013556 (in apm_set_bss_param)
;;     23013EEE (in apm_assoc_req_handler)
;;     2301F124 (in apm_start_req_handler)
me_legacy_rate_bitfield_build proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s4,a1
	c.li	s0,00000000
	c.li	s1,00000000
	c.li	s5,0000000B
	c.li	s3,00000001
	lui	s6,000230AA
	lui	s7,000230AC

l2300DB5A:
	lbu	a5,s2,+00000000
	blt	s1,a5,000000002300DB7A

l2300DB62:
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

l2300DB7A:
	add	a5,s2,s1
	lbu	a0,a5,+00000001
	beq	s4,zero,000000002300DB90

l2300DB86:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	bge	a5,zero,000000002300DBA8

l2300DB90:
	jal	ra,000000002300DA7E
	bge	s5,a0,000000002300DBAC

l2300DB98:
	addi	a2,zero,+000001C6
	addi	a1,s6,+0000020C
	addi	a0,s7,+000001E8
	jal	ra,0000000023001236

l2300DBA8:
	c.addi	s1,00000001
	c.j	000000002300DB5A

l2300DBAC:
	sll	a0,s3,a0
	c.or	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.j	000000002300DBA8

;; me_build_capability: 2300DBB8
;;   Called from:
;;     2301CA86 (in me_build_associate_req)
;;     2301D1C6 (in me_build_beacon)
;;     2301D46E (in me_build_probe_rsp)
;;     2301D6A0 (in me_build_associate_rsp)
me_build_capability proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	lui	a5,00042020
	addi	a3,a5,-00000088
	addi	a5,a5,-00000088
	c.add	a3,a4
	lbu	a2,a3,+00000056
	c.li	a4,00000011
	c.beqz	a2,000000002300DBEE

l2300DBD6:
	c.li	a1,00000002
	c.li	a4,00000001
	bne	a2,a1,000000002300DBEE

l2300DBDE:
	lw	a3,a3,+000003E8
	c.lui	a2,00013000
	addi	a2,a2,-00000600
	c.and	a3,a2
	c.beqz	a3,000000002300DBEE

l2300DBEC:
	c.li	a4,00000011

l2300DBEE:
	addi	a3,zero,+000005D8
	add	a0,a0,a3
	c.add	a5,a0
	lw	a5,a5,+000003A4
	ori	a0,a4,+00000520
	lbu	a3,a5,+00000002
	c.li	a5,00000001
	beq	a3,a5,000000002300DC0E

l2300DC0A:
	ori	a0,a4,+00000420

l2300DC0E:
	c.jr	ra

;; me_init_bcmc_rate: 2300DC10
;;   Called from:
;;     230133E2 (in apm_start_cfm)
me_init_bcmc_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+000000B0
	c.mv	s0,a0
	c.bnez	a5,000000002300DC36

l2300DC1E:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000229
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001D4
	jal	ra,0000000023001234

l2300DC36:
	lbu	a3,s0,+000000B0
	c.li	a5,00000000
	c.li	a0,00000000

l2300DC3E:
	blt	a5,a3,000000002300DC5A

l2300DC42:
	jal	ra,000000002300DA7E
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002300EB62
	c.lwsp	a2,00000020
	sb	zero,s0,+0000011A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300DC5A:
	add	a4,s0,a5
	lbu	a4,a4,+000000B1
	andi	a2,a4,-00000081
	bge	a0,a2,000000002300DC6E

l2300DC6A:
	andi	a0,a4,+0000007F

l2300DC6E:
	c.addi	a5,00000001
	c.j	000000002300DC3E

;; me_tx_cfm_singleton: 2300DC72
;;   Called from:
;;     2300B76A (in txl_cfm_evt)
me_tx_cfm_singleton proc
	c.lw	a0,108(a5)
	c.lui	a4,00010000
	c.lw	a5,0(a5)
	c.lw	a5,16(a5)
	srli	a2,a5,00000008
	c.and	a5,a4
	andi	a2,a2,+000000FF
	sltu	a4,zero,a5
	addi	a1,a2,+00000001
	c.add	a2,a4
	c.beqz	a5,000000002300DCB4

l2300DC90:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,000000002301952E
	c.lwsp	a2,00000044
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lwsp	t3,00000020
	lbu	a0,a0,+00000030
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi16sp	00000020

l2300DCB0:
	jal	zero,000000002300E814

l2300DCB4:
	c.li	a4,00000000
	c.li	a3,00000000
	lbu	a0,a0,+00000030
	c.j	000000002300DCB0

;; me_check_rc: 2300DCBE
;;   Called from:
;;     23012F00 (in txu_cntrl_push)
me_check_rc proc
	jal	zero,000000002300F600

;; me_update_buffer_control: 2300DCC2
;;   Called from:
;;     2300DE58 (in me_init_rate)
;;     23012F12 (in txu_cntrl_push)
me_update_buffer_control proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	lbu	a2,a0,+0000011A
	lw	s3,a0,+0000010C
	beq	a2,zero,000000002300DE24

l2300DCE0:
	lw	s2,s3,+00000004
	addi	s1,s3,+00000014
	c.mv	a4,s1
	c.li	a5,00000000
	addi	s4,sp,+00000010
	c.li	a3,00000010

l2300DCF2:
	lw	a6,a4,+00000000
	add	a1,sp,a5
	c.addi	a4,00000004
	sw	a6,a1,+00000000
	lw	a6,a4,+0000000C
	add	a1,s4,a5
	c.addi	a5,00000004
	sw	a6,a1,+00000000
	bne	a5,a3,000000002300DCF2

l2300DD12:
	andi	a5,a2,+00000001
	c.beqz	a5,000000002300DDA2

l2300DD18:
	lw	a7,a0,+00000110
	lbu	t6,a0,+000000F4
	c.lui	t1,00004000
	lbu	t5,a7,+000000B0
	c.mv	a6,sp
	c.li	s0,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	t0,0000000C
	c.addi	t1,FFFFFFFF
	lui	t2,00080000
	lui	t4,0001FFFC
	c.li	t3,00000004

l2300DD3C:
	add	a5,t5,a1
	c.andi	a5,00000003
	c.addi	a5,0000000E
	c.slli	a5,03
	c.add	a5,a7
	lhu	a5,a5,+00000010
	add	a5,a5,t0
	c.add	a5,a7
	lhu	a5,a5,+0000000A
	and	a5,t1,a5
	or	a5,a5,t2
	srli	a3,a5,0000000B
	c.andi	a3,00000006
	c.beqz	a3,000000002300DD76

l2300DD66:
	srli	a3,a5,00000003
	c.andi	a3,00000003
	c.bnez	a1,000000002300DE3A

l2300DD6E:
	bgeu	a3,t6,000000002300DD76

l2300DD72:
	c.mv	a4,a3
	c.li	s0,00000001

l2300DD76:
	lw	a3,a6,+00000000
	c.addi	a1,00000001
	c.addi	a6,00000004
	and	a3,t4,a3
	c.or	a5,a3
	sw	a5,a6,+00000FFC
	bne	a1,t3,000000002300DD3C

l2300DD8C:
	andi	s2,s2,-00000181
	c.beqz	s0,000000002300DD9A

l2300DD92:
	c.addi	a4,00000001
	c.slli	a4,07
	or	s2,s2,a4

l2300DD9A:
	ori	a2,a2,+00000002
	sb	a2,a0,+0000011A

l2300DDA2:
	lbu	a2,a0,+0000011A
	andi	a5,a2,+00000002
	c.beqz	a5,000000002300DDD6

l2300DDAC:
	lui	a1,000E0004
	c.mv	a4,sp
	c.addi	a1,FFFFFFFF

l2300DDB4:
	c.lw	a4,0(a5)
	srli	a3,a5,0000000B
	c.andi	a3,00000007
	andi	a6,a5,+0000007C
	or	a3,a3,a6
	c.beqz	a3,000000002300DDD0

l2300DDC6:
	lw	a3,a0,+00000114
	c.and	a5,a1
	c.or	a5,a3
	c.sw	a4,0(a5)

l2300DDD0:
	c.addi	a4,00000004
	bne	s4,a4,000000002300DDB4

l2300DDD6:
	c.andi	a2,00000010
	c.mv	s0,a0
	c.beqz	a2,000000002300DDF6

l2300DDDC:
	c.li	s5,00000000
	c.li	s6,00000010

l2300DDE0:
	add	a5,sp,s5
	c.lw	a5,0(a0)
	jal	ra,000000002300B620
	add	a5,s4,s5
	c.sw	a5,0(a0)
	c.addi	s5,00000004
	bne	s5,s6,000000002300DDE0

l2300DDF6:
	csrrci	zero,mstatus,00000008
	c.li	a5,00000000
	sw	s2,s3,+00000004
	c.li	a4,00000010

l2300DE02:
	add	a3,sp,a5
	c.lw	a3,0(a3)
	c.addi	s1,00000004
	sw	a3,s1,+00000FFC
	add	a3,s4,a5
	c.lw	a3,0(a3)
	c.addi	a5,00000004
	c.sw	s1,12(a3)
	bne	a5,a4,000000002300DE02

l2300DE1C:
	csrrsi	zero,mstatus,00000008
	sb	zero,s0,+0000011A

l2300DE24:
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

l2300DE3A:
	c.beqz	s0,000000002300DD76

l2300DE3C:
	c.sub	a3,a4
	sltiu	s0,a3,+00000001
	c.j	000000002300DD76

;; me_init_rate: 2300DE44
;;   Called from:
;;     230125EA (in sm_assoc_rsp_handler)
;;     2301DFD2 (in me_sta_add_req_handler)
me_init_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002300F044
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300DCC2

;; me_bw_check: 2300DE5C
;;   Called from:
;;     2300DF70 (in me_beacon_check)
;;     230112B8 (in scanu_frame_handler)
me_bw_check proc
	c.lw	a2,76(a5)
	lhu	a4,a5,+00000000
	c.li	a5,00000000
	c.beqz	a0,000000002300DE8A

l2300DE66:
	lui	a5,00042021
	lbu	a5,a5,-00000395
	c.beqz	a5,000000002300DE8A

l2300DE70:
	lbu	a5,a0,+00000003
	c.andi	a5,00000003
	c.beqz	a5,000000002300DE8A

l2300DE78:
	c.li	a1,00000001
	c.li	a3,0000000A
	beq	a5,a1,000000002300DE82

l2300DE80:
	c.li	a3,FFFFFFF6

l2300DE82:
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a5,00000001

l2300DE8A:
	sb	a5,a2,+00000082
	sb	a5,a2,+00000083
	sh	a4,a2,+00000050
	sh	zero,a2,+00000052
	c.jr	ra

;; me_beacon_check: 2300DE9C
;;   Called from:
;;     230093A0 (in mm_bcn_updated)
;;     2300FDF2 (in rxu_mgt_frame_check)
me_beacon_check proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	addi	s7,zero,+000005D8
	add	s7,a0,s7
	c.swsp	s0,0000001C
	lui	s0,00042020
	c.swsp	s1,00000098
	addi	s1,s0,-00000088
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.add	s1,s7
	lw	a5,s1,+000003A4
	sh	zero,s1,+000003D8
	addi	a1,a1,-00000024
	lbu	a5,a5,+00000002
	slli	s3,a1,00000010
	c.mv	s2,a0
	lbu	s5,s1,+000003DB
	lbu	s6,s1,+000003DC
	addi	s4,a2,+00000024
	srli	s3,s3,00000010
	addi	s0,s0,-00000088
	c.bnez	a5,000000002300DF4E

l2300DEF0:
	addi	a2,zero,+0000002A
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023015122
	c.beqz	a0,000000002300DF4E

l2300DEFE:
	lhu	a5,s1,+000003D8
	lbu	a4,a0,+00000002
	c.andi	a5,FFFFFFF8
	c.slli	a5,10
	andi	a3,a4,+00000001
	c.srli	a5,00000010
	bne	a3,zero,000000002300E0AC

l2300DF14:
	sh	a5,s1,+000003D8
	andi	a5,a4,+00000002
	c.beqz	a5,000000002300DF34

l2300DF1E:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a3,a5,+000003D8
	ori	a3,a3,+00000002
	sh	a3,a5,+000003D8

l2300DF34:
	c.andi	a4,00000004
	c.beqz	a4,000000002300DF4E

l2300DF38:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a4,a5,+000003D8
	ori	a4,a4,+00000004
	sh	a4,a5,+000003D8

l2300DF4E:
	lui	a5,00042021
	lbu	a5,a5,-00000496
	c.li	a0,00000000
	c.beqz	a5,000000002300DF66

l2300DF5A:
	addi	a2,zero,+0000003D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,0000000023015122

l2300DF66:
	addi	s8,s7,+00000358
	c.add	s8,s0
	c.mv	a2,s8
	c.li	a1,00000000
	jal	ra,000000002300DE5C
	addi	a3,s7,+000005C8
	c.add	a3,s0
	addi	a2,sp,+0000000D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002301CFD4
	andi	s7,a0,+000000FF
	beq	s7,zero,000000002300DFC8

l2300DF8E:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	bne	a4,zero,000000002300E0B2

l2300DFA0:
	lbu	a4,a5,+00000079
	c.bnez	a4,000000002300DFBA

l2300DFA6:
	lbu	a3,sp,+0000000D
	c.li	a4,00000001
	bne	a3,a4,000000002300DFBA

l2300DFB0:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	ra,0000000023008904

l2300DFBA:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	sb	s7,a5,+00000079

l2300DFC8:
	c.mv	a2,s8
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002301CEFA
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+000003DC
	beq	a4,s6,000000002300E000

l2300DFE4:
	lw	a5,a5,+000003A4
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	lbu	a5,a5,+00000004
	c.mv	a0,s1
	c.sub	a5,a4
	sb	a5,sp,+0000000E
	jal	ra,000000002300B586

l2300E000:
	addi	s4,zero,+000005D8
	add	s4,s2,s4
	c.add	s4,s0
	lbu	a5,s4,+000003DB
	bgeu	s5,a5,000000002300E094

l2300E012:
	c.li	a3,0000000C
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+0000003B
	jal	ra,00000000230149A2
	lw	a5,s4,+00000040
	c.mv	s3,a0
	c.bnez	a5,000000002300E040

l2300E028:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000039
	addi	a1,a1,+0000020C
	addi	a0,a0,+000001BC
	jal	ra,0000000023001234

l2300E040:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.mv	a0,s3
	c.add	s0,s2
	c.lw	s0,64(a5)
	lbu	a5,a5,+00000017
	sb	a5,s3,+00000000
	lw	a5,s1,+000003A4
	lbu	a5,a5,+00000002
	sb	a5,s3,+00000001
	lbu	a5,s1,+000003DB
	sb	a5,s3,+00000002
	lw	a5,s1,+000003A4
	lhu	a5,a5,+00000000
	sh	a5,s3,+00000004
	lhu	a5,s1,+000003A8
	sh	a5,s3,+00000006
	lhu	a5,s1,+000003AA
	sh	a5,s3,+00000008
	c.lw	s0,64(a5)
	lb	a5,a5,+0000000C
	sb	a5,s3,+0000000A
	jal	ra,0000000023014A0E

l2300E094:
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

l2300E0AC:
	ori	a5,a5,+00000001
	c.j	000000002300DF14

l2300E0B2:
	c.li	a3,00000002
	bne	a4,a3,000000002300DFC8

l2300E0B8:
	sb	s7,a5,+00000347
	c.j	000000002300DFC8

;; me_sta_bw_nss_max_upd: 2300E0BE
;;   Called from:
;;     2300FE7A (in rxu_mgt_frame_check)
;;     2301DFF4 (in me_sta_add_req_handler)
;;     2301E010 (in me_sta_add_req_handler)
me_sta_bw_nss_max_upd proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201F
	addi	a5,s0,-000005A0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.add	a5,a4
	c.swsp	s5,00000080
	lbu	s3,a5,+0000001A
	lui	a5,00042021
	lbu	a5,a5,-00000496
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	addi	s0,s0,-000005A0
	c.bnez	a5,000000002300E110

l2300E0F8:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000429
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000204
	jal	ra,0000000023001234

l2300E110:
	addi	a0,zero,+000001B0
	add	a0,s1,a0
	addi	a0,a0,+000000C3
	c.add	a0,s0
	jal	ra,000000002300DA16
	c.mv	s5,a0
	lui	a0,00042021
	addi	a0,a0,-000004B5
	jal	ra,000000002300DA16
	bgeu	s5,a0,000000002300E136

l2300E134:
	c.mv	a0,s5

l2300E136:
	bgeu	s4,a0,000000002300E13C

l2300E13A:
	c.mv	a0,s4

l2300E13C:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	andi	a2,a0,+000000FF
	c.add	a5,s0
	lbu	a4,a5,+000000F0
	c.li	a5,00000004
	bne	a4,a5,000000002300E156

l2300E154:
	c.li	a4,00000003

l2300E156:
	addi	a3,zero,+000005D8
	add	s3,s3,a3
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.add	a5,s3
	lbu	a1,a5,+000003DA
	bgeu	s2,a1,000000002300E172

l2300E170:
	c.mv	a1,s2

l2300E172:
	bgeu	a4,a1,000000002300E178

l2300E176:
	c.mv	a1,a4

l2300E178:
	addi	a5,zero,+000001B0
	add	s1,s1,a5
	andi	a1,a1,+000000FF
	c.add	s0,s1
	lbu	a0,s0,+0000001B
	sb	a1,s0,+000000F1
	jal	ra,000000002300E9E8
	lbu	a5,s0,+0000011A
	ori	a5,a5,+00000008
	sb	a5,s0,+0000011A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; me_add_chan_ctx: 2300E1B0
;;   Called from:
;;     2301EF36 (in apm_start_req_handler)
me_add_chan_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000002
	sb	a4,sp,+00000005
	sh	a2,sp,+00000008
	sb	a5,sp,+00000004
	lhu	a5,a1,+00000000
	sh	a3,sp,+0000000A
	sh	a5,sp,+00000006
	lbu	a5,a1,+00000004
	c.mv	a1,a0
	c.addi4spn	a0,00000004
	sb	a5,sp,+0000000C
	jal	ra,000000002301A7EE
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; rc_get_nss: 2300E1E6
;;   Called from:
;;     2300E2B4 (in rc_set_next_mcs_index)
;;     2300E68C (in rc_check_valid_rate)
;;     2300E97E (in rc_get_duration)
;;     2300EBD2 (in rc_check_fixed_rate_config)
;;     2300F7E8 (in rc_check)
;;     2300F7F0 (in rc_check)
rc_get_nss proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.addi	a5,FFFFFFFE
	c.li	a4,00000001
	bltu	a4,a5,000000002300E1FA

l2300E1F4:
	c.srai	a0,00000003
	c.andi	a0,00000003
	c.jr	ra

l2300E1FA:
	c.li	a0,00000000
	c.jr	ra

;; rc_get_mcs_index: 2300E1FE
;;   Called from:
;;     2300E232 (in rc_set_previous_mcs_index)
;;     2300E294 (in rc_set_next_mcs_index)
;;     2300E31A (in is_cck_group)
;;     2300E698 (in rc_check_valid_rate)
;;     2300E6A4 (in rc_check_valid_rate)
;;     2300E964 (in rc_get_duration)
rc_get_mcs_index proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.li	a4,00000001
	bgeu	a4,a5,000000002300E218

l2300E20A:
	c.li	a3,00000003
	c.li	a4,00000000
	bltu	a3,a5,000000002300E21C

l2300E212:
	andi	a4,a0,+00000007
	c.j	000000002300E21C

l2300E218:
	andi	a4,a0,+0000007F

l2300E21C:
	c.mv	a0,a4
	c.jr	ra

;; rc_set_previous_mcs_index: 2300E220
rc_set_previous_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	srai	s0,a1,0000000B
	c.swsp	ra,0000008C
	jal	ra,000000002300E1FE
	c.andi	s0,00000007
	c.li	a5,00000001
	c.lwsp	a2,00000064
	bgeu	a5,s0,000000002300E25E

l2300E240:
	c.li	a5,00000003
	bltu	a5,s0,000000002300E272

l2300E246:
	c.beqz	a0,000000002300E272

l2300E248:
	c.andi	a1,FFFFFFF8
	c.addi	a0,FFFFFFFF
	lbu	a5,s1,+000000BD
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010
	c.beqz	a5,000000002300E272

l2300E258:
	ori	a1,a1,+00000200
	c.j	000000002300E272

l2300E25E:
	lbu	a5,s1,+000000B9
	bgeu	a5,a0,000000002300E272

l2300E266:
	andi	a1,a1,-00000080
	c.addi	a0,FFFFFFFF
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010

l2300E272:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

;; rc_set_next_mcs_index: 2300E27E
rc_set_next_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	srai	s3,a1,0000000B
	c.mv	s0,a1
	jal	ra,000000002300E1FE
	andi	s3,s3,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s3,000000002300E2DC

l2300E2A4:
	c.li	a5,00000003
	bltu	a5,s3,000000002300E2FE

l2300E2AA:
	lbu	a5,s2,+000000B8
	bgeu	a0,a5,000000002300E2FE

l2300E2B2:
	c.mv	a0,s0
	jal	ra,000000002300E1E6
	c.add	a0,s2
	lbu	a5,a0,+000000B2
	c.addi	s1,00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,000000002300E2FE

l2300E2C8:
	c.andi	s0,FFFFFFF8
	lbu	a5,s2,+000000BD
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010
	c.beqz	a5,000000002300E2FE

l2300E2D6:
	ori	s0,s0,+00000200
	c.j	000000002300E2FE

l2300E2DC:
	lbu	a5,s2,+000000BA
	bgeu	a0,a5,000000002300E2FE

l2300E2E4:
	lhu	a5,s2,+000000B6
	addi	s1,a0,+00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,000000002300E2FE

l2300E2F4:
	andi	s0,s0,-00000080
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010

l2300E2FE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; is_cck_group: 2300E30E
;;   Called from:
;;     2300E37E (in rc_update_retry_chain)
;;     2300E464 (in rc_update_retry_chain)
;;     2300EC52 (in rc_calc_tp)
is_cck_group proc
	srli	a5,a0,0000000B
	c.andi	a5,00000006
	c.bnez	a5,000000002300E328

l2300E316:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300E1FE
	c.lwsp	a2,00000020
	sltiu	a0,a0,+00000004
	c.addi	sp,00000010
	c.jr	ra

l2300E328:
	c.li	a0,00000000
	c.jr	ra

;; rc_update_retry_chain: 2300E32C
;;   Called from:
;;     2300EAE4 (in rc_update_bw_nss_max)
;;     2300EDA6 (in rc_update_stats)
rc_update_retry_chain proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	lhu	s4,a0,+000000C0
	lbu	a4,a0,+000000AF
	c.mv	s0,a0
	slli	a5,s4,00000002
	c.addi	a5,FFFFFFFC
	c.andi	a4,00000004
	c.mv	s5,a1
	c.add	a5,a1
	c.bnez	a4,000000002300E44A

l2300E35C:
	c.lw	a1,0(a3)
	c.lw	a5,0(a4)
	bgeu	a4,a3,000000002300E44A

l2300E364:
	sh	zero,a0,+00000080
	sw	zero,a0,+0000007C
	c.li	s1,00000001

l2300E36E:
	lhu	s7,s0,+00000080
	c.li	s2,0000000C
	add	s2,s7,s2
	c.add	s2,s0
	lhu	a0,s2,+0000000A
	jal	ra,000000002300E30E
	c.bnez	a0,000000002300E396

l2300E384:
	addi	s8,s4,-00000001
	c.li	s3,00000000
	c.li	s9,0000000C

l2300E38C:
	blt	s3,s8,000000002300E45A

l2300E390:
	c.li	a5,00000001
	sb	a5,s2,+0000000F

l2300E396:
	c.lw	s0,124(a5)
	sh	s7,s0,+00000088
	sub	a4,s4,s1
	sw	a5,s0,+00000084
	c.li	a1,0000000C

l2300E3A6:
	addi	a5,s1,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s1,s4,000000002300E3D4

l2300E3B2:
	addi	a2,a4,-00000001
	add	a3,a2,a1
	c.add	a3,s0
	lbu	a3,a3,+0000001B
	c.beqz	a3,000000002300E478

l2300E3C2:
	sub	s1,s4,s1
	c.slli	a4,02
	sh	s1,s0,+00000088
	c.add	a4,s5
	c.lw	a4,0(a4)
	sw	a4,s0,+00000084

l2300E3D4:
	lhu	t1,s0,+00000088
	sub	a5,s4,a5
	c.li	a2,0000000C

l2300E3DE:
	sub	a4,s4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a4,s4,000000002300E47E

l2300E3EA:
	c.mv	a5,t1

l2300E3EC:
	slli	a4,a5,00000002
	c.add	a4,s5
	c.lw	a4,0(a1)
	c.li	a4,0000000C
	add	a4,a5,a4
	c.lui	a6,0000F000
	addi	a3,s0,+00000008
	addi	a6,a6,+00000332
	c.add	a4,s0
	lhu	a0,a4,+00000008
	c.li	a4,00000000

l2300E40C:
	slli	a2,a4,00000010
	c.srli	a2,00000010
	bltu	a2,t1,000000002300E492

l2300E416:
	sh	a5,s0,+00000090
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a5)
	sh	zero,s0,+00000098
	c.lwsp	a2,00000130
	sw	a5,s0,+0000008C
	lw	a5,s5,+00000000
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	sw	a5,s0,+00000094
	c.lwsp	s0,00000114
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l2300E44A:
	addi	a4,s4,-00000001
	sh	a4,s0,+00000080
	c.lw	a5,0(a5)
	c.li	s1,00000002
	c.sw	s0,124(a5)
	c.j	000000002300E36E

l2300E45A:
	add	s6,s3,s9
	c.add	s6,s0
	lhu	a0,s6,+0000000A
	jal	ra,000000002300E30E
	c.beqz	a0,000000002300E46E

l2300E46A:
	sb	zero,s6,+0000000F

l2300E46E:
	c.addi	s3,00000001
	c.slli	s3,10
	srli	s3,s3,00000010
	c.j	000000002300E38C

l2300E478:
	c.mv	a4,a2
	c.mv	s1,a5
	c.j	000000002300E3A6

l2300E47E:
	addi	a3,a5,-00000001
	add	a4,a3,a2
	c.add	a4,s0
	lbu	a4,a4,+0000001B
	c.bnez	a4,000000002300E3EC

l2300E48E:
	c.mv	a5,a3
	c.j	000000002300E3DE

l2300E492:
	lbu	a7,a3,+00000007
	beq	a7,zero,000000002300E4BA

l2300E49A:
	beq	a2,s7,000000002300E4BA

l2300E49E:
	lhu	a2,a3,+00000000
	bgeu	a6,a2,000000002300E4C0

l2300E4A6:
	slli	a7,a4,00000002
	c.add	a7,s5
	lw	a7,a7,+00000000
	bltu	a7,a1,000000002300E4BA

l2300E4B4:
	c.mv	a0,a2
	c.mv	a1,a7

l2300E4B8:
	c.mv	a5,a4

l2300E4BA:
	c.addi	a4,00000001
	c.addi	a3,0000000C
	c.j	000000002300E40C

l2300E4C0:
	bltu	a2,a0,000000002300E4BA

l2300E4C4:
	slli	a5,a4,00000002
	c.add	a5,s5
	c.lw	a5,0(a1)
	c.mv	a0,a2
	c.j	000000002300E4B8

;; rc_get_lowest_rate_config: 2300E4D0
;;   Called from:
;;     2300EA98 (in rc_update_bw_nss_max)
;;     2300F422 (in rc_init)
rc_get_lowest_rate_config proc
	lbu	a4,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,a4,000000002300E4F4

l2300E4DA:
	c.li	a3,00000003
	c.li	a5,00000000
	bltu	a3,a4,000000002300E504

l2300E4E2:
	lbu	a3,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a3,000000002300E504

l2300E4EC:
	slli	a5,a4,0000000B
	c.slli	a5,10
	c.j	000000002300E502

l2300E4F4:
	lbu	a4,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a4,000000002300E504

l2300E4FE:
	slli	a5,a4,00000010

l2300E502:
	c.srli	a5,00000010

l2300E504:
	c.mv	a0,a5
	c.jr	ra

;; rc_sort_samples_tp: 2300E508
;;   Called from:
;;     2300EADC (in rc_update_bw_nss_max)
;;     2300ED9E (in rc_update_stats)
rc_sort_samples_tp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	lhu	a5,a0,+000000C0
	c.mv	s6,a1
	addi	s3,a0,+00000010
	addi	s4,a5,-00000001
	c.slli	s4,10
	srli	s4,s4,00000010

l2300E52E:
	c.beqz	a5,000000002300E582

l2300E530:
	c.mv	s2,s3
	addi	s0,s6,+00000004
	c.li	a5,00000000
	c.li	s1,00000001
	c.j	000000002300E57A

l2300E53C:
	c.lw	s0,0(a3)
	c.lw	s0,4(a4)
	addi	s5,s2,+0000000C
	bgeu	a4,a3,000000002300E570

l2300E548:
	c.li	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3948
	c.li	a2,0000000C
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230A3948
	c.li	a2,0000000C
	c.addi4spn	a1,00000004
	c.mv	a0,s5
	jal	ra,00000000230A3948
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,4(a5)
	c.sw	s0,0(a4)
	c.mv	a5,s1

l2300E570:
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	s2,s5
	c.addi	s0,00000004

l2300E57A:
	bltu	s1,s4,000000002300E53C

l2300E57E:
	c.mv	s4,a5
	c.j	000000002300E52E

l2300E582:
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

;; rc_get_initial_rate_config: 2300E596
;;   Called from:
;;     2300EAA2 (in rc_update_bw_nss_max)
;;     2300F42C (in rc_init)
rc_get_initial_rate_config proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,s1,000000002300E5E8

l2300E5AA:
	c.li	a4,00000003
	c.li	a5,00000000
	bltu	a4,s1,000000002300E5FE

l2300E5B2:
	lbu	s2,a0,+000000BC
	c.mv	s0,a0
	c.slli	s1,0B
	add	a5,a0,s2
	lbu	a0,a5,+000000B2
	c.slli	s2,03
	jal	ra,000000002309F27C
	lbu	a5,s0,+000000BD
	lbu	a4,s0,+000000BB
	c.slli	a5,09
	c.slli	a4,07
	c.or	a5,s1
	c.or	a5,a4
	c.li	a4,0000001F
	sub	a0,a4,a0
	or	a5,a5,s2
	andi	a0,a0,+000000FF
	c.j	000000002300E5F8

l2300E5E8:
	lbu	a4,a0,+000000BE
	lbu	a0,a0,+000000BA
	slli	a5,s1,0000000B
	c.slli	a4,0A
	c.or	a5,a4

l2300E5F8:
	c.or	a5,a0
	c.slli	a5,10
	c.srli	a5,00000010

l2300E5FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; rc_calc_prob_ewma: 2300E60C
;;   Called from:
;;     2300ED3E (in rc_update_stats)
;;     2300ED70 (in rc_update_stats)
rc_calc_prob_ewma proc
	lhu	a3,a0,+00000000
	c.beqz	a3,000000002300E656

l2300E612:
	lhu	a5,a0,+00000002
	lbu	a2,a0,+00000009
	sb	zero,a0,+00000008
	c.slli	a5,10
	srl	a4,a5,a3
	c.bnez	a2,000000002300E63E

l2300E626:
	bltu	a5,a3,000000002300E638

l2300E62A:
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000004

l2300E630:
	c.li	a5,00000001
	sb	a5,a0,+00000009
	c.jr	ra

l2300E638:
	sh	zero,a0,+00000004
	c.j	000000002300E630

l2300E63E:
	lhu	a5,a0,+00000004
	addi	a3,zero,+00000060
	c.slli	a4,05
	add	a5,a5,a3
	c.add	a5,a4
	c.srli	a5,00000007
	sh	a5,a0,+00000004
	c.j	000000002300E630

l2300E656:
	lbu	a5,a0,+00000008
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002300E668

l2300E662:
	c.addi	a5,00000001
	sb	a5,a0,+00000008

l2300E668:
	c.jr	ra

;; rc_check_valid_rate: 2300E66A
;;   Called from:
;;     2300EBE8 (in rc_check_fixed_rate_config)
rc_check_valid_rate proc
	c.addi	sp,FFFFFFE0
	srai	a5,a1,0000000B
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.andi	a5,00000007
	c.li	a4,00000001
	c.mv	s0,a0
	bgeu	a4,a5,000000002300E6A2

l2300E680:
	c.li	a4,00000003
	c.li	a0,00000001
	bltu	a4,a5,000000002300E6B2

l2300E688:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002300E1E6
	c.lwsp	a2,00000064
	c.mv	s1,a0
	c.add	s0,s1
	c.mv	a0,a1
	jal	ra,000000002300E1FE
	lbu	a5,s0,+000000B2
	c.j	000000002300E6AC

l2300E6A2:
	c.mv	a0,a1
	jal	ra,000000002300E1FE
	lhu	a5,s0,+000000B6

l2300E6AC:
	srl	a0,a5,a0
	c.andi	a0,00000001

l2300E6B2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; rc_new_random_rate: 2300E6BC
;;   Called from:
;;     2300EB10 (in rc_update_bw_nss_max)
;;     2300EE36 (in rc_update_stats)
;;     2300F5CE (in rc_init)
rc_new_random_rate proc
	lui	a4,0004200F
	addi	a4,a4,-000004D4
	c.lw	a4,0(a5)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	a5,a5,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	lbu	a1,a0,+000000BB
	c.li	a7,00000000
	c.add	a5,a3
	lbu	a3,a0,+000000B1
	c.sw	a4,0(a5)
	c.srli	a5,00000010
	slli	a4,a3,0000000B
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a1,000000002300E6FA

l2300E6F2:
	addi	a7,a1,-00000001
	andi	a7,a7,+000000FF

l2300E6FA:
	c.li	a2,00000001
	bgeu	a2,a3,000000002300E752

l2300E700:
	c.li	a6,00000003
	bltu	a6,a3,000000002300E788

l2300E706:
	lbu	a2,a0,+000000B9
	bltu	a6,a2,000000002300E7A8

l2300E70E:
	slli	a3,a5,00000014
	bge	a3,zero,000000002300E7A8

l2300E716:
	lbu	a1,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a4,a1,a2
	c.addi	a4,00000001
	or	a3,a3,a4
	lhu	a4,a0,+000000B6
	c.add	a3,a2
	andi	a3,a3,+000000FF
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.bnez	a4,000000002300E73C

l2300E73A:
	c.mv	a3,a1

l2300E73C:
	addi	a4,zero,+00000400
	c.beqz	a3,000000002300E788

l2300E742:
	lbu	a4,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a4,0A
	c.or	a4,a5
	c.or	a4,a3
	c.j	000000002300E784

l2300E752:
	lbu	a2,a0,+000000B9
	lbu	a6,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a1,a6,a2
	c.addi	a1,00000001
	or	a3,a3,a1
	c.add	a3,a2
	lhu	a2,a0,+000000B6
	andi	a3,a3,+000000FF
	srl	a2,a2,a3
	c.andi	a2,00000001
	c.bnez	a2,000000002300E77C

l2300E77A:
	c.mv	a3,a6

l2300E77C:
	c.or	a4,a3
	c.bnez	a3,000000002300E78C

l2300E780:
	ori	a4,a4,+00000400

l2300E784:
	c.slli	a4,10
	c.srli	a4,00000010

l2300E788:
	c.mv	a0,a4
	c.jr	ra

l2300E78C:
	c.addi	a3,FFFFFFFF
	andi	a3,a3,+000000FF
	c.li	a2,00000002
	bltu	a2,a3,000000002300E788

l2300E798:
	lbu	a0,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a0,0A
	c.or	a5,a0
	c.or	a4,a5
	c.j	000000002300E784

l2300E7A8:
	lbu	a2,a0,+000000BC
	srai	a3,a5,00000003
	c.andi	a3,00000003
	c.addi	a2,00000001
	lbu	a6,a0,+000000B8
	or	a3,a3,a2
	andi	a2,a5,+00000007
	addi	t1,a6,+00000001
	lbu	t3,a0,+000000BD
	or	a2,a2,t1
	c.add	a0,a3
	lbu	t1,a0,+000000B2
	srl	t1,t1,a2
	andi	t1,t1,+00000001
	beq	t1,zero,000000002300E7E2

l2300E7DE:
	andi	a6,a2,+000000FF

l2300E7E2:
	srai	a0,a5,00000009
	c.andi	a0,00000001
	c.addi	t3,00000001
	c.srai	a5,00000007
	sub	a1,a1,a7
	or	a0,a0,t3
	c.andi	a5,00000003
	c.addi	a1,00000001
	c.slli	a3,03
	or	a5,a5,a1
	c.slli	a0,09
	c.or	a0,a3
	c.or	a4,a0
	c.add	a5,a7
	c.slli	a5,07
	c.or	a4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	or	a4,a4,a6
	c.j	000000002300E788

;; rc_update_counters: 2300E814
;;   Called from:
;;     2300DCB0 (in me_tx_cfm_singleton)
rc_update_counters proc
	c.li	a5,00000009
	bltu	a5,a0,000000002300E952

l2300E81A:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201F
	addi	a5,s2,-000005A0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.add	a5,a4
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a3,a5,+0000001A
	addi	a4,zero,+000000FF
	c.mv	s3,a0
	addi	s2,s2,-000005A0
	beq	a3,a4,000000002300E92E

l2300E858:
	lw	s0,a5,+00000110
	c.mv	s1,a1
	c.mv	s4,a2
	c.bnez	s0,000000002300E87A

l2300E862:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000007CE
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000055C
	jal	ra,0000000023001234

l2300E87A:
	lhu	a5,s0,+000000A6
	addi	s5,s0,+00000080
	addi	s6,s0,+000000A0
	c.addi	a5,00000001
	sh	a5,s0,+000000A6
	lhu	a5,s0,+000000A4
	c.li	s7,0000000C
	c.li	s8,00000003
	c.addi	a5,00000001
	sh	a5,s0,+000000A4
	lui	s9,000230AA
	lui	s10,000230AC

l2300E8A2:
	c.beqz	s1,000000002300E8E2

l2300E8A4:
	lhu	a5,s5,+00000000
	add	a5,a5,s7
	c.add	a5,s0
	lhu	a4,a5,+00000004
	bgeu	s8,s4,000000002300E904

l2300E8B6:
	c.addi	a4,00000004
	sh	a4,a5,+00000004
	c.addi	s1,FFFFFFFC
	c.addi	s4,FFFFFFFC

l2300E8C0:
	lhu	a4,a5,+00000004
	lhu	a5,a5,+00000006
	bgeu	a4,a5,000000002300E8DC

l2300E8CC:
	addi	a2,zero,+000007FA
	addi	a1,s9,+0000020C
	addi	a0,s10,+0000056C
	jal	ra,0000000023001234

l2300E8DC:
	c.addi	s5,00000008
	bne	s5,s6,000000002300E8A2

l2300E8E2:
	lbu	a5,s0,+000000AE
	c.beqz	a5,000000002300E922

l2300E8E8:
	c.li	a4,00000002
	bne	a5,a4,000000002300E92E

l2300E8EE:
	addi	a5,zero,+000001B0
	add	s3,s3,a5
	c.add	s3,s2
	lbu	a5,s3,+0000011A
	c.andi	a5,00000001
	c.bnez	a5,000000002300E92E

l2300E900:
	c.li	a5,00000003
	c.j	000000002300E94C

l2300E904:
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a4,s1
	sh	a4,a5,+00000004
	lhu	a4,a5,+00000006
	sub	s1,s1,s4
	c.li	s4,00000000
	c.add	s1,a4
	sh	s1,a5,+00000006
	c.li	s1,00000000
	c.j	000000002300E8C0

l2300E922:
	lbu	a5,s0,+000000AC
	c.beqz	a5,000000002300E94A

l2300E928:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+000000AC

l2300E92E:
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

l2300E94A:
	c.li	a5,00000001

l2300E94C:
	sb	a5,s0,+000000AE
	c.j	000000002300E92E

l2300E952:
	c.jr	ra

;; rc_get_duration: 2300E954
;;   Called from:
;;     2300EC6A (in rc_calc_tp)
;;     2300F73C (in rc_check)
;;     2300F756 (in rc_check)
;;     2300F7D2 (in rc_check)
;;     2300F808 (in rc_check)
rc_get_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	srai	s2,a0,0000000B
	c.mv	s0,a0
	jal	ra,000000002300E1FE
	andi	s2,s2,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s2,000000002300E9AA

l2300E974:
	c.li	a5,00000003
	c.li	a0,00000000
	bltu	a5,s2,000000002300E9C8

l2300E97C:
	c.mv	a0,s0
	jal	ra,000000002300E1E6
	srli	a5,s0,00000006
	c.srli	s0,00000009
	c.andi	a5,00000006
	c.andi	s0,00000001
	c.or	s0,a5
	c.slli	s1,03
	c.or	s1,s0
	lui	s0,000230AC
	c.slli	s1,02
	addi	s0,s0,+0000024C
	c.add	s1,s0
	addi	a5,a0,+00000001
	c.lw	s1,0(a0)
	srl	a0,a0,a5
	c.j	000000002300E9C8

l2300E9AA:
	c.li	a5,00000003
	bltu	a5,a0,000000002300E9D4

l2300E9B0:
	c.srai	s0,0000000A
	slli	s1,a0,00000001
	c.andi	s0,00000001
	c.or	s0,s1
	lui	a5,000230AC
	c.slli	s0,02
	addi	a5,a5,+0000022C
	c.add	s0,a5
	c.lw	s0,0(a0)

l2300E9C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300E9D4:
	addi	s1,a0,-00000004
	lui	a5,000230AC
	c.slli	s1,02
	addi	a5,a5,+0000038C
	c.add	s1,a5
	c.lw	s1,0(a0)
	c.j	000000002300E9C8

;; rc_update_bw_nss_max: 2300E9E8
;;   Called from:
;;     2300E18E (in me_sta_bw_nss_max_upd)
;;     2301D8FE (in me_rc_set_rate_req_handler)
rc_update_bw_nss_max proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	addi	a4,zero,+000001B0
	c.mv	s3,a0
	add	a4,s3,a4
	lui	a0,0004201F
	addi	a5,a0,-000005A0
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.mv	s4,a1
	c.mv	s1,a2
	c.add	a5,a4
	lw	s0,a5,+00000110
	addi	s2,a0,-000005A0
	c.bnez	s0,000000002300EA32

l2300EA18:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000697
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000055C
	jal	ra,0000000023001234

l2300EA32:
	lbu	a5,s0,+000000BB
	bne	a5,s4,000000002300EA42

l2300EA3A:
	lbu	a5,s0,+000000BC
	beq	a5,s1,000000002300EAFE

l2300EA42:
	sb	s4,s0,+000000BB
	c.li	a5,00000003
	bgeu	a5,s4,000000002300EA66

l2300EA4C:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000691
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000052C
	jal	ra,0000000023001234

l2300EA66:
	sb	s1,s0,+000000BC
	c.li	a5,00000007
	bgeu	a5,s1,000000002300EA8A

l2300EA70:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000068F
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000548
	jal	ra,0000000023001234

l2300EA8A:
	lhu	a4,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,000000002300EAFE

l2300EA96:
	c.mv	a0,s0
	jal	ra,000000002300E4D0
	sh	a0,s0,+0000000A
	c.mv	a0,s0
	jal	ra,000000002300E596
	lhu	a5,s0,+000000C0
	c.li	a4,0000000C
	c.li	s1,00000001
	c.addi	a5,FFFFFFFF
	add	a5,a5,a4
	c.li	s4,0000000C
	c.add	a5,s0
	sh	a0,a5,+0000000A

l2300EABC:
	lhu	a2,s0,+000000C0
	addi	a5,a2,-00000001
	blt	s1,a5,000000002300EB0E

l2300EAC8:
	c.addi4spn	a3,00000008
	addi	a5,s0,+00000008
	c.li	a4,00000000
	c.mv	s1,a3
	c.li	a1,00000001

l2300EAD4:
	bne	a2,a4,000000002300EB42

l2300EAD8:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300E508
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002300E32C
	addi	a0,zero,+000001B0
	add	a0,s3,a0
	c.add	a0,s2
	lbu	a5,a0,+0000011A
	ori	a5,a5,+00000001
	sb	a5,a0,+0000011A

l2300EAFE:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l2300EB0E:
	c.mv	a0,s0
	jal	ra,000000002300E6BC
	lhu	a3,s0,+000000C0
	addi	a4,s0,+0000000A
	c.li	a5,00000000

l2300EB1E:
	bltu	a5,a3,000000002300EB34

l2300EB22:
	add	a5,s1,s4
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a5,s0
	sh	a0,a5,+0000000A
	c.j	000000002300EABC

l2300EB34:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,000000002300EB0E

l2300EB3E:
	c.addi	a5,00000001
	c.j	000000002300EB1E

l2300EB42:
	c.addi	a4,00000001
	sb	zero,a5,+00000006
	sb	a1,a5,+00000007
	sh	zero,a5,+00000000
	sb	zero,a5,+00000005
	c.slli	a4,10
	sw	zero,a3,+00000000
	c.srli	a4,00000010
	c.addi	a5,0000000C
	c.addi	a3,00000004
	c.j	000000002300EAD4

;; rc_init_bcmc_rate: 2300EB62
;;   Called from:
;;     2300DC4A (in me_init_bcmc_rate)
rc_init_bcmc_rate proc
	c.li	a2,00000003
	lw	a4,a0,+0000010C
	lhu	a3,a0,+00000118
	c.li	a5,00000000
	bltu	a2,a1,000000002300EB7A

l2300EB72:
	andi	a5,a3,+00000400
	c.slli	a5,10
	c.srai	a5,00000010

l2300EB7A:
	c.or	a1,a5
	lui	a5,00020000
	c.or	a1,a5
	c.sw	a4,20(a1)
	c.sw	a4,24(a1)
	c.sw	a4,28(a1)
	c.sw	a4,32(a1)
	c.jr	ra

;; rc_check_fixed_rate_config: 2300EB8C
;;   Called from:
;;     2301D8AC (in me_rc_set_rate_req_handler)
rc_check_fixed_rate_config proc
	lbu	a5,a0,+000000B1
	srli	a4,a1,0000000B
	andi	a3,a4,+00000007
	bltu	a5,a3,000000002300EC22

l2300EB9C:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.li	a2,00000004
	c.mv	s0,a0
	bne	a5,a2,000000002300EBEC

l2300EBAA:
	bne	a3,a5,000000002300EC18

l2300EBAE:
	c.andi	a4,00000006
	c.beqz	a4,000000002300EC06

l2300EBB2:
	srli	a5,a1,00000009
	c.andi	a5,00000001
	c.beqz	a5,000000002300EBC0

l2300EBBA:
	lbu	a5,s0,+000000BD
	c.beqz	a5,000000002300EC18

l2300EBC0:
	lbu	a4,s0,+000000BB
	srai	a5,a1,00000007
	c.andi	a5,00000003
	bltu	a4,a5,000000002300EC18

l2300EBCE:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002300E1E6
	lbu	a5,s0,+000000BC
	c.lwsp	a2,00000064
	bltu	a5,a0,000000002300EC18

l2300EBE0:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300E66A

l2300EBEC:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	c.li	a3,00000001
	bltu	a3,a5,000000002300EBAE

l2300EBF8:
	c.andi	a4,00000006
	c.bnez	a4,000000002300EBB2

l2300EBFC:
	lbu	a4,a0,+000000B9
	c.li	a5,00000003
	bltu	a5,a4,000000002300EC18

l2300EC06:
	srai	a5,a1,0000000A
	c.andi	a5,00000001
	c.bnez	a5,000000002300EBE0

l2300EC0E:
	lbu	a4,s0,+000000BE
	c.li	a5,00000001
	bne	a4,a5,000000002300EBE0

l2300EC18:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2300EC22:
	c.li	a0,00000000
	c.jr	ra

;; rc_calc_tp: 2300EC26
;;   Called from:
;;     2300ED7A (in rc_update_stats)
;;     2300F862 (in rc_check)
;;     2301D9B4 (in me_rc_stats_req_handler)
rc_calc_tp proc
	c.li	a5,0000000C
	add	a1,a1,a5
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lui	a5,00002000
	addi	a5,a5,-00000668
	c.add	a1,a0
	lhu	s0,a1,+00000008
	bgeu	a5,s0,000000002300EC98

l2300EC48:
	lhu	s3,a1,+0000000A
	c.mv	s2,a0
	c.li	s1,00000000
	c.mv	a0,s3
	jal	ra,000000002300E30E
	c.bnez	a0,000000002300EC68

l2300EC58:
	lhu	a0,s2,+000000AA
	lui	s1,00000035
	addi	s1,s1,+00000390
	srl	s1,s1,a0

l2300EC68:
	c.mv	a0,s3
	jal	ra,000000002300E954
	addi	a5,zero,+000003E8
	c.add	a0,s1
	add	s0,s0,a5
	srl	s0,s0,a0
	lui	a0,000000F4
	addi	a0,a0,+00000240
	add	a0,s0,a0
	c.srli	a0,00000010

l2300EC8A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300EC98:
	c.li	a0,00000000
	c.j	000000002300EC8A

;; rc_update_stats: 2300EC9C
;;   Called from:
;;     2300F488 (in rc_init)
;;     2300F678 (in rc_check)
rc_update_stats proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000020
	addi	a1,a0,+0000007C
	c.addi4spn	a0,00000028
	c.swsp	ra,000000D4
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.swsp	s9,000000C0
	c.swsp	s10,00000040
	c.swsp	s11,000000BC
	jal	ra,00000000230A382C
	lhu	a4,s0,+000000A6
	c.beqz	a4,000000002300ECF4

l2300ECD0:
	lhu	a5,s0,+000000A4
	lw	a3,s0,+000000A8
	sw	zero,s0,+000000A4
	c.slli	a5,10
	xor	a5,a5,a4
	addi	a4,zero,+00000060
	add	a4,a4,a3
	c.slli	a5,05
	c.add	a5,a4
	c.srli	a5,00000007
	sw	a5,s0,+000000A8

l2300ECF4:
	lhu	a2,s0,+000000C0
	c.addi4spn	a3,00000048
	sb	zero,s0,+000000AD
	addi	a5,s0,+0000000E
	c.li	a4,00000000
	c.mv	s3,a3
	c.li	a1,00000001

l2300ED08:
	bne	a2,a4,000000002300ED50

l2300ED0C:
	lhu	a1,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.li	s2,00000000
	c.li	s4,0000000C
	beq	a1,a5,000000002300ED92

l2300ED1C:
	lbu	a3,s0,+000000AF
	c.li	a5,00000000
	c.li	a0,0000000C
	andi	a2,a3,+00000020
	bne	a2,zero,000000002300EFD4

l2300ED2C:
	lbu	s1,s0,+00000080
	c.li	a5,0000000C
	add	s1,s1,a5
	addi	a0,s1,+00000004
	c.add	a0,s0
	c.add	s1,s0
	jal	ra,000000002300E60C
	sh	zero,s1,+00000004
	sh	zero,s1,+00000006
	sw	zero,s0,+00000004
	c.j	000000002300EDAC

l2300ED50:
	c.addi	a4,00000001
	c.slli	a4,10
	sw	zero,a3,+00000000
	sb	zero,a5,+00000000
	sb	a1,a5,+00000001
	c.srli	a4,00000010
	c.addi	a3,00000004
	c.addi	a5,0000000C
	c.j	000000002300ED08

l2300ED68:
	add	a0,s2,s4
	c.addi	a0,00000004
	c.add	a0,s0
	jal	ra,000000002300E60C
	andi	a1,s2,+000000FF
	c.mv	a0,s0
	jal	ra,000000002300EC26
	slli	a5,s2,00000002
	c.addi4spn	a4,00000070
	c.addi	s2,00000001
	c.add	a5,a4
	c.slli	s2,10
	sw	a0,a5,+00000FD8
	srli	s2,s2,00000010

l2300ED92:
	lhu	a5,s0,+000000C0
	bltu	s2,a5,000000002300ED68

l2300ED9A:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300E508
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300E32C
	c.beqz	s1,000000002300EDB0

l2300EDAC:
	c.li	s1,00000000
	c.j	000000002300EE64

l2300EDB0:
	lhu	a3,s0,+000000C0
	c.li	a5,00000009
	bltu	a5,a3,000000002300EDD6

l2300EDBA:
	addi	a4,s0,+00000004
	c.li	a5,00000000

l2300EDC0:
	beq	a3,a5,000000002300EDAC

l2300EDC4:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a4,+00000000
	sh	zero,a4,+00000002
	c.srli	a5,00000010
	c.addi	a4,0000000C
	c.j	000000002300EDC0

l2300EDD6:
	lhu	a4,s0,+00000080
	c.li	a3,0000000C
	lhu	a5,s0,+00000088
	add	a4,a4,a3
	c.li	a2,0000000C
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,0000001C
	lui	s6,000230AC
	c.li	s3,00000000
	c.li	s7,00000004
	addi	s6,s6,+00000218
	c.li	s8,00000001
	add	a5,a5,a3
	c.add	a4,s0
	lhu	s2,a4,+0000000A
	srai	s5,s2,0000000B
	andi	s5,s5,+00000006
	andi	s9,s2,+00000200
	andi	s10,s2,-00000201
	ori	s11,s2,+00000200
	c.add	a5,s0
	lhu	s4,a5,+0000000A
	jal	ra,00000000230A3A68

l2300EE20:
	addi	a5,s3,-00000001
	andi	a5,a5,+000000FF
	bltu	s7,a5,000000002300EE34

l2300EE2C:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5

l2300EE34:
	c.mv	a0,s0
	jal	ra,000000002300E6BC
	sh	a0,sp,+0000001C
	c.addi	s3,00000001
	andi	s3,s3,+000000FF
	c.li	a5,00000006
	bne	s3,a5,000000002300EE20

l2300EE4A:
	lhu	a7,s0,+000000C0
	c.lui	a1,00010000
	c.li	a5,00000001
	c.li	a3,00000000
	c.li	t1,0000000C
	c.li	t3,00000005
	c.addi	a1,FFFFFFFF
	c.li	t4,0000000A

l2300EE5C:
	bltu	a5,a7,000000002300EF40

l2300EE60:
	sw	zero,s0,+00000004

l2300EE64:
	addi	a5,s0,+00000080
	c.addi4spn	a4,00000028
	addi	s0,s0,+000000A0

l2300EE6E:
	lhu	a2,a4,+00000004
	lhu	a3,a5,+00000000
	bne	a2,a3,000000002300F040

l2300EE7A:
	c.addi	a5,00000008
	c.addi	a4,00000008
	bne	a5,s0,000000002300EE6E

l2300EE82:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.mv	a0,s1
	c.lwsp	sp,00000158
	c.lwsp	t1,00000134
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.lwsp	s6,000000A8
	c.lwsp	s2,000000C8
	c.lwsp	a4,000000E8
	c.lwsp	a0,0000000C
	c.lwsp	t1,0000002C
	c.lwsp	sp,0000004C
	c.lwsp	t4,0000017C
	c.addi16sp	000000B0
	c.jr	ra
2300EEA2       E3 8E 0A F8 83 47 D4 0B E3 9A 87 F9 63 95   .....G......c.
2300EEB0 0C 00 23 1F B1 01 61 B7 23 1F A1 01 49 B7 CA 85 ..#...a.#...I...
2300EEC0 22 85 EF F0 CF BB E3 0C A9 F6 AA 85 2A C6 22 85 "...........*.".
2300EED0 EF F0 AF F9 2D D5 B2 47 23 10 F1 02 8D B7 CA 85 ....-..G#.......
2300EEE0 22 85 EF F0 EF B3 E3 0C A9 F4 AA 85 2A C6 22 85 "...........*.".
2300EEF0 EF F0 AF F7 29 D5 B2 47 23 11 F1 02 89 B7 D2 85 ....)..G#.......
2300EF00 22 85 EF F0 CF B7 E3 0C AA F2 AA 85 2A C6 22 85 "...........*.".
2300EF10 EF F0 AF F5 0D D5 B2 47 23 12 F1 02 0D B7 D2 85 .......G#.......
2300EF20 22 85 EF F0 EF AF E3 0C AA F0 AA 85 2A C6 22 85 "...........*.".
2300EF30 EF F0 AF F3 E3 05 05 F0 B2 47 23 13 F1 02 01 B7 .........G#.....

l2300EF40:
	add	a4,a5,t1
	c.add	a4,s0
	lh	a2,a4,+00000008
	bge	a2,zero,000000002300EF56

l2300EF4E:
	lbu	a2,a4,+0000000C
	bgeu	t4,a2,000000002300EFB8

l2300EF56:
	lhu	a2,s0,+00000080
	beq	a2,a5,000000002300EFB8

l2300EF5E:
	lhu	a2,s0,+00000088
	beq	a2,a5,000000002300EFB8

l2300EF66:
	lhu	a2,s0,+00000090
	beq	a2,a5,000000002300EFB8

l2300EF6E:
	bltu	t3,a3,000000002300EFB8

l2300EF72:
	slli	a2,a3,00000001
	c.addi4spn	a0,00000070
	c.add	a2,a0
	lhu	a2,a2,-00000054
	beq	a2,a1,000000002300EF9E

l2300EF82:
	addi	a6,s0,+0000000A
	c.li	a0,00000000

l2300EF88:
	bltu	a0,a7,000000002300EFAA

l2300EF8C:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	a2,a4,+0000000A
	sh	zero,a4,+00000008
	sb	zero,a4,+0000000D
	c.srli	a5,00000010

l2300EF9E:
	c.addi	a3,00000001

l2300EFA0:
	sh	zero,a4,+00000004
	sh	zero,a4,+00000006
	c.j	000000002300EE5C

l2300EFAA:
	c.addi	a6,0000000C
	lhu	t5,a6,-0000000C
	beq	t5,a2,000000002300EF9E

l2300EFB4:
	c.addi	a0,00000001
	c.j	000000002300EF88

l2300EFB8:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300EFA0

l2300EFC0:
	add	a2,a5,a0
	c.add	a2,s0
	lhu	a2,a2,+0000000A
	beq	a2,a1,000000002300EFF8

l2300EFCE:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l2300EFD4:
	slli	a2,a5,00000010
	c.srli	a2,00000010
	bltu	a2,a4,000000002300EFC0

l2300EFDE:
	bne	a4,a2,000000002300EFF8

l2300EFE2:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a2,0000000C
	add	a2,a5,a2
	c.add	a2,s0
	sh	a1,a2,+0000000A
	sh	zero,a2,+00000008

l2300EFF8:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000080
	sh	a5,s0,+00000088
	sh	a5,s0,+00000090
	sw	zero,s0,+0000007C
	sw	zero,s0,+00000084
	sw	zero,s0,+0000008C
	addi	a2,s0,+00000004
	c.li	a5,00000000

l2300F01A:
	bne	a4,a5,000000002300F02E

l2300F01E:
	andi	a3,a3,-00000061
	ori	a3,a3,+00000040
	sb	a3,s0,+000000AF
	c.li	s1,00000001
	c.j	000000002300EE64

l2300F02E:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a2,+00000000
	sh	zero,a2,+00000002
	c.srli	a5,00000010
	c.addi	a2,0000000C
	c.j	000000002300F01A

l2300F040:
	c.li	s1,00000001
	c.j	000000002300EE82

;; rc_init: 2300F044
;;   Called from:
;;     2300DE4C (in me_init_rate)
rc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a5,a0,+0000001B
	c.li	a4,00000009
	c.mv	s0,a0
	addi	s5,a5,+00000008
	lw	s4,a0,+0000010C
	andi	s5,s5,+000000FF
	bgeu	a4,a5,000000002300F090

l2300F076:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-000007A1
	addi	a1,a1,+0000020C
	addi	a0,a0,+000003AC
	jal	ra,0000000023001234

l2300F090:
	lbu	s2,s0,+0000001B
	addi	s7,zero,+000000C8
	lui	s1,00042021
	add	s7,s2,s7
	addi	s3,s1,-00000390
	addi	s1,s1,-00000390
	c.add	s3,s7
	sw	s3,s0,+00000110
	jal	ra,000000002300253C
	c.li	a1,00000000
	slli	s6,a0,0000000E
	addi	a2,zero,+000000C8
	c.mv	a0,s3
	jal	ra,00000000230A3A68
	lw	a5,s0,+000000EC
	addi	a0,s0,+000000B0
	c.li	a1,00000000
	c.andi	a5,00000002
	beq	a5,zero,000000002300F2C6

l2300F0D2:
	jal	ra,000000002300DB32
	c.li	a5,00000002
	addi	s9,s0,+000000C3
	sb	a5,s3,+000000B1
	sh	a0,s3,+000000B6
	c.mv	a0,s9
	jal	ra,000000002300DA16
	c.mv	s8,a0
	lui	a0,00042021
	addi	a0,a0,-000004B5
	jal	ra,000000002300DA16
	c.mv	a5,s8
	bgeu	a0,s8,000000002300F100

l2300F0FE:
	c.mv	a5,a0

l2300F100:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sb	a5,a4,+000000BC
	c.li	a4,00000003
	bgeu	a4,a5,000000002300F12E

l2300F114:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000075A
	addi	a1,a1,+0000020C
	addi	a0,a0,+000003D4
	jal	ra,0000000023001234

l2300F12E:
	addi	a0,s7,+000000B2
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.li	a2,00000004
	c.mv	a1,s9
	c.add	a0,s1
	jal	ra,00000000230A382C
	c.li	a5,FFFFFFFF
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	sb	a5,s7,+000000B2
	c.li	a5,00000007
	sb	a5,s7,+000000B8
	jal	ra,000000002300DA34
	sb	a0,s7,+000000B9
	c.li	a5,0000000C
	bgeu	a5,a0,000000002300F17E

l2300F164:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000748
	addi	a1,a1,+0000020C
	addi	a0,a0,+000003E8
	jal	ra,0000000023001234

l2300F17E:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,000000002300DA50
	sb	a0,s7,+000000BA
	c.li	a5,0000000C
	bgeu	a5,a0,000000002300F1B4

l2300F19A:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000742
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000438
	jal	ra,0000000023001234

l2300F1B4:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	jal	ra,0000000023002550
	lhu	a5,s0,+000000C0
	c.beqz	a0,000000002300F1DE

l2300F1D4:
	andi	a4,a5,+00000001
	c.beqz	a4,000000002300F1DE

l2300F1DA:
	ori	s6,s6,+00000040

l2300F1DE:
	slli	a4,a5,00000014
	blt	a4,zero,000000002300F290

l2300F1E6:
	c.lui	a4,00001000

l2300F1E8:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	addi	a4,a4,-00000101
	c.add	a5,s1
	sh	a4,a5,+000000C2
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.li	a5,00000003
	bgeu	a5,a4,000000002300F222

l2300F208:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000072B
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000052C
	jal	ra,0000000023001234

l2300F222:
	lbu	a4,s0,+000000F1
	c.beqz	a4,000000002300F294

l2300F228:
	c.li	a5,00000001
	beq	a4,a5,000000002300F2B0

l2300F22E:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a5,00000001
	c.add	a4,s1
	lbu	a3,a4,+000000B1
	bgeu	a5,a3,000000002300F378

l2300F242:
	c.li	a2,00000003
	bgeu	a2,a3,000000002300F542

l2300F248:
	sh	zero,a4,+000000C0

l2300F24C:
	c.lui	s8,00001000
	lui	s7,000230AA
	lui	a0,000230AC
	addi	a2,s8,-00000701
	addi	a1,s7,+0000020C
	addi	a0,a0,+000004EC
	jal	ra,0000000023001234
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	lhu	a4,a5,+000000C0
	c.li	a5,0000000A
	bgeu	a5,a4,000000002300F3D8

l2300F27A:
	lui	a0,000230AC
	addi	a2,s8,-00000700
	addi	a1,s7,+0000020C
	addi	a0,a0,+00000504
	jal	ra,0000000023001234
	c.j	000000002300F3D8

l2300F290:
	c.lui	a4,00002000
	c.j	000000002300F1E8

l2300F294:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000020
	c.beqz	a5,000000002300F22E

l2300F29E:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,00000001
	c.add	a5,s1

l2300F2AA:
	sb	a4,a5,+000000BD
	c.j	000000002300F22E

l2300F2B0:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000040
	c.beqz	a5,000000002300F22E

l2300F2BA:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	c.j	000000002300F2AA

l2300F2C6:
	jal	ra,000000002300DB32
	sh	a0,s3,+000000B6
	jal	ra,000000002300DA34
	sb	a0,s3,+000000B9
	c.li	a5,0000000B
	bgeu	a5,a0,000000002300F2F6

l2300F2DC:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000070C
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000488
	jal	ra,0000000023001234

l2300F2F6:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,000000002300DA50
	sb	a0,s7,+000000BA
	c.li	a5,0000000B
	bgeu	a5,a0,000000002300F32C

l2300F312:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-0000070A
	addi	a1,a1,+0000020C
	addi	a0,a0,+000004AC
	jal	ra,0000000023001234

l2300F32C:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,FFFFFFFF
	c.add	a5,s1
	sb	a4,a5,+000000B8
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.beqz	a4,000000002300F360

l2300F346:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-00000707
	addi	a1,a1,+0000020C
	addi	a0,a0,+000004D0
	jal	ra,0000000023001234

l2300F360:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	c.j	000000002300F22E

l2300F378:
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.li	a1,0000000C
	sub	a4,a5,a4
	srai	a5,a3,00000002
	andi	a2,a5,+00000001
	srai	a5,a3,00000001
	c.andi	a5,00000001
	c.add	a5,a2
	sll	a5,a5,a4
	andi	a2,a3,+00000001
	c.add	a5,a2
	srai	a2,a3,00000003
	c.andi	a2,00000001
	sll	a4,a2,a4
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000004

l2300F3B2:
	sra	a2,a3,a4
	c.andi	a2,00000001
	c.add	a5,a2
	c.slli	a5,10
	c.addi	a4,00000001
	c.srli	a5,00000010
	bne	a4,a1,000000002300F3B2

l2300F3C4:
	c.li	a4,0000000A
	bgeu	a4,a5,000000002300F5A8

l2300F3CA:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	sh	a4,a5,+000000C0

l2300F3D8:
	lbu	a4,s0,+0000001B
	addi	a3,zero,+000001B0
	lui	a5,0004201F
	add	a4,a4,a3
	addi	a5,a5,-000005A0
	c.add	a5,a4
	lw	s7,a5,+00000110
	bne	s7,zero,000000002300F40E

l2300F3F6:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+000006E4
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000055C
	jal	ra,0000000023001234

l2300F40E:
	lhu	a4,s7,+000000C0
	addi	s9,s7,+0000000A
	c.mv	a5,s9
	c.li	s8,00000000
	c.li	a3,FFFFFFFF

l2300F41C:
	bne	s8,a4,000000002300F5BC

l2300F420:
	c.mv	a0,s7
	jal	ra,000000002300E4D0
	sh	a0,s7,+0000000A
	c.mv	a0,s7
	jal	ra,000000002300E596
	c.addi	s8,FFFFFFFF
	c.li	a5,0000000C
	add	s8,s8,a5
	c.li	s10,0000000C
	c.add	s8,s7
	sh	a0,s8,+0000000A
	c.li	s8,00000001

l2300F442:
	lhu	a5,s7,+000000C0
	addi	a4,a5,-00000001
	blt	s8,a4,000000002300F5CC

l2300F44E:
	sh	a4,s7,+00000080
	addi	a4,a5,-00000002
	c.addi	a5,FFFFFFFD
	sh	a5,s7,+00000090
	c.lui	a5,00010000
	sw	a5,s7,+000000A8
	c.li	a5,FFFFFFFF
	sh	a4,s7,+00000088
	sh	a5,s7,+000000C6
	c.li	a1,00000001
	sw	zero,s7,+0000007C
	sw	zero,s7,+00000084
	sw	zero,s7,+0000008C
	sh	zero,s7,+00000098
	sw	zero,s7,+00000094
	sb	zero,s7,+000000AF
	c.mv	a0,s7
	jal	ra,000000002300EC9C
	c.li	a5,00000005
	sb	a5,s7,+000000AC
	addi	a5,zero,+000000C8
	add	s2,s2,a5
	addi	a4,s4,+00000014
	addi	a3,s4,+00000024
	c.li	a1,0000000C
	lui	a2,00080000

l2300F4A8:
	lbu	a5,s3,+00000080
	c.addi	a4,00000004
	c.addi	s3,00000008
	add	a5,a5,a1
	c.add	a5,s2
	c.add	a5,s1
	lhu	a5,a5,+0000000A
	c.or	a5,a2
	sw	a5,a4,+00000FFC
	bne	a4,a3,000000002300F4A8

l2300F4C6:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.add	s2,s1
	c.slli	s5,0A
	sw	a5,s2,+00000000
	lui	a5,000BADCB
	addi	a5,a5,-000004E2
	sw	a5,s4,+00000000
	c.lui	a5,FFFF0000
	addi	a5,a5,+00000704
	sw	s5,s4,+0000000C
	sw	a5,s4,+00000010
	sw	s6,s4,+00000004
	jal	ra,000000002300253C
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	c.addi	a5,FFFFFFFF
	sw	a5,s4,+00000008
	lw	a4,s0,+0000010C
	c.lui	a5,00002000
	addi	a5,a5,+00000200
	c.sw	a4,52(a5)
	lw	a5,s0,+0000010C
	c.lw	s0,16(a4)
	c.sw	a5,56(a4)
	lbu	a5,s0,+0000011A
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	ori	a5,a5,+00000011
	sb	a5,s0,+0000011A
	c.lwsp	s0,00000114
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

l2300F542:
	lbu	a3,a4,+000000BD
	lbu	a1,a4,+000000B2
	c.li	a2,00000008
	sll	a3,a5,a3
	c.li	a5,00000000

l2300F552:
	andi	a4,a1,+00000001
	add	a4,a3,a4
	c.addi	a2,FFFFFFFF
	c.srli	a1,00000001
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a2,000000002300F552

l2300F566:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a2,00000001
	c.add	a4,s1
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.sub	a2,a4
	srai	a4,a3,00000002
	andi	a1,a4,+00000001
	srai	a4,a3,00000001
	c.andi	a4,00000001
	c.add	a4,a1
	andi	a1,a3,+00000001
	c.srai	a3,00000003
	sll	a4,a4,a2
	c.andi	a3,00000001
	c.add	a4,a1
	sll	a3,a3,a2
	c.add	a4,a3
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300F3C4

l2300F5A8:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sh	a5,a4,+000000C0
	bne	a5,zero,000000002300F3D8

l2300F5BA:
	c.j	000000002300F24C

l2300F5BC:
	c.addi	s8,00000001
	c.slli	s8,10
	sh	a3,a5,+00000000
	srli	s8,s8,00000010
	c.addi	a5,0000000C
	c.j	000000002300F41C

l2300F5CC:
	c.mv	a0,s7
	jal	ra,000000002300E6BC
	lhu	a3,s7,+000000C0
	c.mv	a4,s9
	c.li	a5,00000000

l2300F5DA:
	bltu	a5,a3,000000002300F5F2

l2300F5DE:
	add	a5,s8,s10
	c.addi	s8,00000001
	c.slli	s8,10
	srli	s8,s8,00000010
	c.add	a5,s7
	sh	a0,a5,+0000000A
	c.j	000000002300F442

l2300F5F2:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,000000002300F442

l2300F5FC:
	c.addi	a5,00000001
	c.j	000000002300F5DA

;; rc_check: 2300F600
;;   Called from:
;;     2300DCBE (in me_check_rc)
rc_check proc
	c.li	a5,00000009
	bltu	a5,a0,000000002300F8D8

l2300F606:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	lui	s3,0004201F
	addi	a5,s3,-000005A0
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.add	a5,a4
	lw	s0,a5,+00000110
	c.mv	s4,a0
	addi	s3,s3,-000005A0
	c.bnez	s0,000000002300F65A

l2300F640:
	c.lui	a2,00001000
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,a2,-000007DA
	addi	a1,a1,+0000020C
	addi	a0,a0,+0000055C
	jal	ra,0000000023001234

l2300F65A:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	c.lui	a5,00018000
	addi	a5,a5,+000006A0
	c.sub	a5,a4
	c.lw	s0,0(a4)
	c.li	s6,00000000
	c.add	a5,a4
	bge	a5,zero,000000002300F696

l2300F674:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300EC9C
	lbu	a5,s0,+000000AF
	sb	zero,s0,+000000AE
	sb	zero,s0,+000000B0
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+000000AF
	lw	a5,s1,+00000120
	c.mv	s6,a0
	c.sw	s0,0(a5)

l2300F696:
	lbu	a5,s0,+000000AE
	c.li	a4,00000001
	bne	a5,a4,000000002300F89A

l2300F6A0:
	lbu	a4,s0,+000000AF
	andi	a4,a4,+00000040
	bne	a4,zero,000000002300F836

l2300F6AC:
	lbu	a4,s0,+000000B1
	lhu	s5,s0,+00000080
	bltu	a5,a4,000000002300F7B8

l2300F6B8:
	c.li	a5,0000000C
	add	a5,s5,a5
	c.lui	a3,FFFFE000
	addi	a3,a3,+00000667
	c.add	a5,s0
	lhu	a5,a5,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.lui	a3,0000E000
	c.srli	a5,00000010
	addi	a3,a3,-00000666
	bgeu	a3,a5,000000002300F7B4

l2300F6DA:
	c.li	a5,00000005

l2300F6DC:
	sb	a5,s0,+000000AC
	lui	a5,0004200F
	addi	a5,a5,-000004D4
	c.lw	a5,0(s1)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	s1,s1,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	c.swsp	a4,00000084
	c.add	s1,a3
	c.sw	a5,0(s1)
	lhu	a5,s0,+000000C0
	c.srli	s1,00000010
	and	s1,s1,a5
	beq	s1,s5,000000002300F836

l2300F710:
	lhu	s7,s0,+00000088
	beq	s1,s7,000000002300F836

l2300F718:
	lhu	s9,s0,+00000090
	beq	s1,s9,000000002300F836

l2300F720:
	c.li	s8,0000000C
	add	s2,s1,s8
	c.lui	a5,0000F000
	addi	a5,a5,+00000333
	c.add	s2,s0
	lhu	a3,s2,+00000008
	bltu	a5,a3,000000002300F836

l2300F736:
	lhu	s11,s2,+0000000A
	c.mv	a0,s11
	jal	ra,000000002300E954
	add	a5,s5,s8
	c.lwsp	a2,000000C4
	c.li	a3,00000001
	c.mv	s10,a0
	c.add	a5,s0
	lhu	a5,a5,+0000000A
	bltu	a3,a4,000000002300F7C2

l2300F754:
	c.mv	a0,a5
	jal	ra,000000002300E954
	bgeu	a0,s10,000000002300F882

l2300F75E:
	lbu	a5,s2,+0000000C
	c.li	a0,00000000
	sltiu	a5,a5,+00000014
	xori	a5,a5,+00000001

l2300F76C:
	lw	a4,s0,+00000084
	sh	s7,s0,+000000A0
	sw	a4,s0,+0000009C
	lbu	a4,s0,+000000AF
	beq	a5,zero,000000002300F888

l2300F780:
	c.lw	s0,124(a5)
	c.andi	a4,FFFFFFFD
	sb	a4,s0,+000000AF
	sw	a5,s0,+00000084
	sh	s5,s0,+00000088
	c.sw	s0,124(a0)
	sh	s1,s0,+00000080

l2300F796:
	c.li	a5,00000002
	sb	a5,s0,+000000AE

l2300F79C:
	addi	a0,zero,+000001B0
	add	s4,s4,a0
	c.add	s3,s4
	lbu	a5,s3,+0000011A
	ori	a5,a5,+00000001
	sb	a5,s3,+0000011A
	c.j	000000002300F83E

l2300F7B4:
	c.li	a5,0000000A
	c.j	000000002300F6DC

l2300F7B8:
	lhu	a5,s0,+000000AA
	c.addi	a5,00000008
	c.slli	a5,01
	c.j	000000002300F6DC

l2300F7C2:
	add	s8,s7,s8
	c.swsp	a5,00000084
	c.add	s8,s0
	lhu	a0,s8,+0000000A
	addi	s8,zero,+00000020
	jal	ra,000000002300E954
	lbu	a4,s2,+0000000D
	c.lwsp	a2,000000E4
	c.bnez	a4,000000002300F7E2

l2300F7DE:
	lhu	s8,s0,+000000AA

l2300F7E2:
	bltu	s10,a0,000000002300F85C

l2300F7E6:
	c.mv	a0,a5
	jal	ra,000000002300E1E6
	c.swsp	a0,00000084
	c.mv	a0,s11
	jal	ra,000000002300E1E6
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	bltu	a5,a0,000000002300F810

l2300F7FC:
	c.li	a5,0000000C
	add	s9,s9,a5
	c.add	s9,s0
	lhu	a0,s9,+0000000A
	jal	ra,000000002300E954
	bltu	s10,a0,000000002300F85C

l2300F810:
	lbu	a5,s2,+0000000C
	bltu	a5,s8,000000002300F836

l2300F818:
	lbu	a5,s0,+000000AD
	c.li	a4,00000002
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000AD
	bgeu	a4,a5,000000002300F85C

l2300F82C:
	c.li	a4,0000000F
	bgeu	a4,a5,000000002300F836

l2300F832:
	sb	a4,s0,+000000AD

l2300F836:
	sb	zero,s0,+000000AE

l2300F83A:
	bne	s6,zero,000000002300F79C

l2300F83E:
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

l2300F85C:
	andi	a1,s1,+000000FF
	c.mv	a0,s0
	jal	ra,000000002300EC26
	lbu	a4,s2,+0000000E
	c.li	a3,00000009
	c.li	a5,00000001
	c.andi	a4,0000000F
	bltu	a3,a4,000000002300F76C

l2300F874:
	lbu	a5,s2,+0000000C
	sltu	a5,a5,s8
	xori	a5,a5,+00000001
	c.j	000000002300F76C

l2300F882:
	c.li	a0,00000000
	c.li	a5,00000001
	c.j	000000002300F76C

l2300F888:
	ori	a4,a4,+00000002
	sb	a4,s0,+000000AF
	sw	a0,s0,+00000084
	sh	s1,s0,+00000088
	c.j	000000002300F796

l2300F89A:
	c.li	a4,00000003
	bne	a5,a4,000000002300F83A

l2300F8A0:
	lbu	a5,s0,+000000AF
	c.andi	a5,00000002
	c.bnez	a5,000000002300F8B6

l2300F8A8:
	lhu	a5,s0,+00000088
	sh	a5,s0,+00000080
	lw	a5,s0,+00000084
	c.sw	s0,124(a5)

l2300F8B6:
	lhu	a5,s0,+000000A0
	sb	zero,s0,+000000AE
	sh	a5,s0,+00000088
	lw	a5,s0,+0000009C
	sw	zero,s0,+0000009C
	sw	a5,s0,+00000084
	addi	a5,zero,+000000FF
	sh	a5,s0,+000000A0
	c.j	000000002300F79C

l2300F8D8:
	c.jr	ra

;; rxu_cntrl_machdr_len_get: 2300F8DA
;;   Called from:
;;     2300FA8A (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     230100C2 (in rxu_cntrl_frame_handle)
rxu_cntrl_machdr_len_get proc
	andi	a3,a0,+00000300
	addi	a4,zero,+00000300
	c.li	a5,00000018
	bne	a3,a4,000000002300F8EA

l2300F8E8:
	c.li	a5,0000001E

l2300F8EA:
	andi	a4,a0,+000000FC
	addi	a3,zero,+00000088
	bne	a4,a3,000000002300F8FC

l2300F8F6:
	c.addi	a5,00000002
	andi	a5,a5,+000000FF

l2300F8FC:
	c.slli	a0,10
	c.srai	a0,00000010
	bge	a0,zero,000000002300F90A

l2300F904:
	c.addi	a5,00000004
	andi	a5,a5,+000000FF

l2300F90A:
	c.mv	a0,a5
	c.jr	ra

;; rxu_cntrl_protected_handle: 2300F90E
;;   Called from:
;;     2301030C (in rxu_cntrl_frame_handle)
;;     230103C6 (in rxu_cntrl_frame_handle)
rxu_cntrl_protected_handle proc
	lui	a5,00042021
	addi	a4,a5,+00000530
	lbu	a3,a4,+00000008
	andi	a6,a1,+00000400
	c.li	a2,00000018
	c.andi	a1,0000001C
	c.add	a0,a3
	addi	a5,a5,+00000530
	beq	a1,a2,000000002300F9B8

l2300F92C:
	c.li	a2,0000001C
	beq	a1,a2,000000002300F93C

l2300F932:
	c.li	a5,00000014
	beq	a1,a5,000000002300F9B0

l2300F938:
	c.li	a0,00000000
	c.jr	ra

l2300F93C:
	beq	a6,zero,000000002300F996

l2300F940:
	lhu	a4,a0,+00000002
	addi	a2,zero,+00000068
	addi	a1,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a2
	lbu	a2,a5,+0000000A
	add	a2,a2,a1
	addi	a2,a2,+00000420
	c.add	a4,a2
	lui	a2,00042020
	addi	a2,a2,-00000088

l2300F968:
	c.add	a4,a2
	c.addi	a3,00000008
	c.sw	a5,32(a4)
	sb	a3,a5,+00000008
	lhu	a4,a0,+00000004
	lhu	a2,a0,+00000000
	lhu	a3,a0,+00000006
	c.slli	a4,10
	c.or	a4,a2
	c.sw	a5,16(a4)
	lbu	a4,a5,+00000030
	c.sw	a5,20(a3)
	ori	a4,a4,+00000002
	sb	a4,a5,+00000030

l2300F992:
	c.li	a0,00000001
	c.jr	ra

l2300F996:
	lbu	a4,a5,+00000009
	addi	a2,zero,+000001B0
	add	a4,a4,a2
	lui	a2,0004201F
	addi	a2,a2,-000005A0
	addi	a4,a4,+00000040
	c.j	000000002300F968

l2300F9B0:
	c.addi	a3,00000004
	sb	a3,a4,+00000008
	c.j	000000002300F992

l2300F9B8:
	c.addi	a3,00000008
	sb	a3,a5,+00000008
	lhu	a4,a0,+00000004
	lbu	a3,a0,+00000002
	c.lui	a2,00010000
	c.slli	a4,10
	c.or	a4,a3
	lhu	a3,a0,+00000000
	c.addi	a2,FFFFFFFF
	lhu	a1,a0,+00000006
	c.slli	a3,08
	c.and	a3,a2
	c.or	a4,a3
	c.sw	a5,16(a4)
	lbu	a4,a5,+00000030
	c.sw	a5,20(a1)
	ori	a4,a4,+00000003
	sb	a4,a5,+00000030
	beq	a6,zero,000000002300FA1E

l2300F9F0:
	lhu	a4,a0,+00000002
	addi	a3,zero,+00000068
	addi	a2,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a3
	lbu	a3,a5,+0000000A
	add	a3,a3,a2
	addi	a3,a3,+00000420
	c.add	a4,a3
	lui	a3,00042020
	addi	a3,a3,-00000088

l2300FA18:
	c.add	a4,a3
	c.sw	a5,32(a4)
	c.j	000000002300F992

l2300FA1E:
	lbu	a4,a5,+00000009
	addi	a3,zero,+000001B0
	add	a4,a4,a3
	lui	a3,0004201F
	addi	a3,a3,-000005A0
	addi	a4,a4,+00000040
	c.j	000000002300FA18

;; rxu_mpdu_upload_and_indicate.constprop.11: 2300FA38
;;   Called from:
;;     2300FD02 (in rxu_mgt_frame_check)
;;     23010260 (in rxu_cntrl_frame_handle)
rxu_mpdu_upload_and_indicate.constprop.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042021
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	addi	s2,s1,+00000530
	lbu	a5,s2,+00000009
	lbu	a4,s2,+0000000A
	c.lw	a0,4(a3)
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	c.lw	a3,76(a4)
	sb	zero,s2,+00000032
	c.mv	s0,a0
	c.or	a5,a4
	ori	a5,a5,+00000002
	c.sw	a3,76(a5)
	c.lw	a0,4(a5)
	addi	s1,s1,+00000530
	lw	s5,a5,+00000008
	lw	a5,s5,+00000018
	lbu	a0,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002300F8DA
	lbu	s4,s2,+00000008
	sub	s2,s4,a0
	andi	s2,s2,+000000FF
	beq	s2,zero,000000002300FB08

l2300FA9E:
	andi	a5,s2,+00000001
	c.mv	s3,a0
	c.beqz	a5,000000002300FABE

l2300FAA6:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+00000167
	addi	a1,a1,+0000020C
	addi	a0,a0,+000005AC
	jal	ra,0000000023001236

l2300FABE:
	lui	a4,00080000
	xori	a3,a4,-00000001
	lbu	a4,s1,+00000008
	srli	a5,s3,00000001
	lw	a2,s5,+00000018
	andi	a5,a5,+000000FF
	c.srli	a4,00000001
	c.add	a5,a3
	c.add	a4,a3
	c.slli	a5,01
	c.slli	a4,01
	c.add	a5,a2
	c.add	a4,a2

l2300FAE4:
	bgeu	a5,a2,000000002300FB58

l2300FAE8:
	c.lw	s0,4(a5)
	lhu	a4,a5,+0000001C
	sub	a4,a4,s2
	sh	a4,a5,+0000001C
	lbu	a5,s1,+00000008
	sb	s2,s1,+00000032
	sub	a5,a5,s4
	c.add	s3,a5
	sb	s3,s1,+00000008

l2300FB08:
	lui	a5,00042021
	c.mv	a0,s0
	sw	zero,a5,+000005A8
	jal	ra,000000002300A15E
	csrrci	zero,mstatus,00000008
	c.lw	s1,72(a4)
	c.lw	s0,4(a5)
	c.li	a3,00000003
	sb	a3,s0,+0000001C
	c.sw	s0,20(a4)
	lhu	a5,a5,+0000001C
	c.sw	s0,24(a5)
	csrrci	zero,mstatus,00000008
	lui	a0,00042021
	c.mv	a1,s0
	addi	a0,a0,+00000570
	jal	ra,0000000023014492
	csrrsi	zero,mstatus,00000008
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300FB58:
	c.addi	a5,FFFFFFFE
	lhu	a3,a5,+00000002
	c.addi	a4,FFFFFFFE
	sh	a3,a4,+00000002
	c.j	000000002300FAE4

;; rxu_mgt_frame_check: 2300FB66
;;   Called from:
;;     230102CC (in rxu_cntrl_frame_handle)
rxu_mgt_frame_check proc
	c.addi16sp	FFFFFFA0
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
	lw	s5,a0,+00000004
	sb	zero,sp,+00000017
	lw	a5,s5,+00000008
	c.lw	a5,24(s0)
	lbu	a4,s0,+00000001
	lbu	a5,s0,+00000000
	c.slli	a4,08
	c.or	a4,a5
	andi	a5,a4,+00000400
	bne	a5,zero,000000002300FD06

l2300FBA4:
	lbu	a5,s0,+00000016
	c.li	s4,00000001
	c.andi	a5,0000000F
	bne	a5,zero,000000002300FEAA

l2300FBB0:
	addi	a5,zero,+000000FF
	bne	a1,a5,000000002300FC82

l2300FBB8:
	lw	a3,s5,+00000040
	andi	a3,a3,+00000600
	c.bnez	a3,000000002300FC7A

l2300FBC2:
	lui	a5,00042021
	lw	a3,a5,-000004D0
	addi	a5,zero,+000000B0
	beq	a4,a5,000000002300FBD6

l2300FBD2:
	c.li	a5,00000001
	c.bnez	a4,000000002300FC22

l2300FBD6:
	lbu	a2,s0,+00000004
	lbu	a4,s0,+00000010
	c.li	a5,00000001
	bne	a2,a4,000000002300FC22

l2300FBE4:
	lbu	a2,s0,+00000005
	lbu	a4,s0,+00000011
	bne	a2,a4,000000002300FC22

l2300FBF0:
	lbu	a2,s0,+00000006
	lbu	a4,s0,+00000012
	bne	a2,a4,000000002300FC22

l2300FBFC:
	lbu	a2,s0,+00000007
	lbu	a4,s0,+00000013
	bne	a2,a4,000000002300FC22

l2300FC08:
	lbu	a2,s0,+00000008
	lbu	a4,s0,+00000014
	bne	a2,a4,000000002300FC22

l2300FC14:
	lbu	a5,s0,+00000009
	lbu	a4,s0,+00000015
	c.sub	a5,a4
	sltu	a5,zero,a5

l2300FC22:
	c.li	a2,00000002
	c.j	000000002300FD12

l2300FC26:
	lbu	a6,a3,+00000050
	lbu	a4,s0,+00000004
	bne	a6,a4,000000002300FD10

l2300FC32:
	lbu	a6,a3,+00000051
	lbu	a4,s0,+00000005
	bne	a6,a4,000000002300FD10

l2300FC3E:
	lbu	a6,a3,+00000052
	lbu	a4,s0,+00000006
	bne	a6,a4,000000002300FD10

l2300FC4A:
	lbu	a6,a3,+00000053
	lbu	a4,s0,+00000007
	bne	a6,a4,000000002300FD10

l2300FC56:
	lbu	a6,a3,+00000054
	lbu	a4,s0,+00000008
	bne	a6,a4,000000002300FD10

l2300FC62:
	lbu	a6,a3,+00000055
	lbu	a4,s0,+00000009
	bne	a6,a4,000000002300FD10

l2300FC6E:
	lbu	a4,a3,+00000056
	c.bnez	a4,000000002300FD0A

l2300FC74:
	c.beqz	a5,000000002300FD10

l2300FC76:
	lbu	a5,a3,+00000057

l2300FC7A:
	lui	a4,00042021
	sb	a5,a4,+0000053A

l2300FC82:
	c.swsp	a0,00000084
	c.mv	s2,a1
	addi	a0,s5,+00000028
	addi	a1,sp,+00000017
	jal	ra,00000000230197E2
	lbu	s8,s0,+00000001
	lbu	a5,s0,+00000000
	lui	s7,00042021
	c.slli	s8,08
	or	s8,s8,a5
	addi	a5,s7,+00000530
	lbu	s9,a5,+00000008
	lbu	a5,a5,+0000000A
	addi	a4,zero,+000000FF
	lb	s11,sp,+00000017
	lhu	s3,s5,+0000001C
	addi	s7,s7,+00000530
	beq	a5,a4,000000002300FD18

l2300FCC4:
	addi	a4,zero,+000005D8
	add	a5,a5,a4
	lui	a4,00042020
	addi	a4,a4,-00000088
	add	s10,a5,a4
	lbu	a4,s10,+00000056

l2300FCDC:
	andi	s1,s8,+000000FC
	addi	a3,zero,+00000050
	beq	s1,a3,000000002300FDC2

l2300FCE8:
	bltu	a3,s1,000000002300FD58

l2300FCEC:
	addi	a3,zero,+00000020
	beq	s1,a3,000000002300FD4E

l2300FCF4:
	bltu	a3,s1,000000002300FD3E

l2300FCF8:
	c.beqz	s1,000000002300FD4E

l2300FCFA:
	c.li	a5,00000010
	beq	s1,a5,000000002300FDBA

l2300FD00:
	c.lwsp	a2,00000044
	jal	ra,000000002300FA38

l2300FD06:
	c.li	s4,00000001
	c.j	000000002300FEAA

l2300FD0A:
	bne	a4,a2,000000002300FD10

l2300FD0E:
	c.beqz	a5,000000002300FC76

l2300FD10:
	c.lw	a3,0(a3)

l2300FD12:
	c.bnez	a3,000000002300FC26

l2300FD14:
	c.mv	a5,a1
	c.j	000000002300FC7A

l2300FD18:
	beq	s2,a5,000000002300FD38

l2300FD1C:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,s7,+0000000A
	c.j	000000002300FCC4

l2300FD38:
	c.li	a4,00000004
	c.li	s10,00000000
	c.j	000000002300FCDC

l2300FD3E:
	addi	a3,zero,+00000030
	beq	s1,a3,000000002300FDBA

l2300FD46:
	addi	a4,zero,+00000040
	bne	s1,a4,000000002300FD00

l2300FD4E:
	c.mv	a0,s10
	jal	ra,0000000023013B20
	c.bnez	a0,000000002300FE1C

l2300FD56:
	c.j	000000002300FD00

l2300FD58:
	addi	a3,zero,+000000B0
	beq	s1,a3,000000002300FD7E

l2300FD60:
	bltu	a3,s1,000000002300FD82

l2300FD64:
	addi	a3,zero,+00000080
	beq	s1,a3,000000002300FDCC

l2300FD6C:
	addi	a3,zero,+000000A0
	bne	s1,a3,000000002300FD00

l2300FD74:
	addi	a3,zero,+000000FF
	c.li	s4,00000000
	beq	s2,a3,000000002300FEAA

l2300FD7E:
	c.beqz	a4,000000002300FDBC

l2300FD80:
	c.j	000000002300FD4E

l2300FD82:
	addi	a3,zero,+000000C0
	beq	s1,a3,000000002300FD74

l2300FD8A:
	addi	a5,zero,+000000D0
	bne	s1,a5,000000002300FD00

l2300FD92:
	addi	a5,zero,+000000FF
	add	a3,s0,s9
	beq	s2,a5,000000002300FD00

l2300FD9E:
	lbu	a5,a3,+00000000
	c.li	a4,00000007
	beq	a5,a4,000000002300FE3E

l2300FDA8:
	c.li	a4,00000008
	beq	a5,a4,000000002300FECA

l2300FDAE:
	c.li	a4,00000003
	bne	a5,a4,000000002300FD00

l2300FDB4:
	c.li	s4,00000008

l2300FDB6:
	c.li	s6,00000000
	c.j	000000002300FE20

l2300FDBA:
	c.bnez	a4,000000002300FD00

l2300FDBC:
	c.li	s6,00000000
	c.li	s4,00000006
	c.j	000000002300FE20

l2300FDC2:
	beq	s10,zero,000000002300FD00

l2300FDC6:
	c.li	s6,00000001
	c.li	s4,00000004
	c.j	000000002300FE20

l2300FDCC:
	c.li	a0,00000004
	jal	ra,0000000023014C3C
	c.li	a4,00000001
	bne	a0,a4,000000002300FE00

l2300FDD8:
	c.li	s6,00000001
	c.li	s4,00000004

l2300FDDC:
	addi	a4,zero,+000000FF
	beq	s2,a4,000000002300FE08

l2300FDE4:
	lbu	a5,s10,+00000058
	c.beqz	a5,000000002300FDF6

l2300FDEA:
	lbu	a0,s7,+0000000A
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,000000002300DE9C

l2300FDF6:
	addi	a5,zero,+000000FF
	bne	s4,a5,000000002300FE20

l2300FDFE:
	c.j	000000002300FD00

l2300FE00:
	c.li	s6,00000000
	addi	s4,zero,+000000FF
	c.j	000000002300FDDC

l2300FE08:
	c.li	a0,00000004
	jal	ra,0000000023014C3C
	c.li	a4,00000001
	beq	a0,a4,000000002300FDF6

l2300FE14:
	c.mv	a0,s10
	jal	ra,0000000023013B20
	c.beqz	a0,000000002300FDF6

l2300FE1C:
	c.li	s6,00000001
	c.li	s4,00000007

l2300FE20:
	addi	a3,s3,+0000001C
	c.slli	a3,10
	c.lui	a0,00003000
	c.srli	a3,00000010
	c.li	a2,0000000B
	c.mv	a1,s4
	addi	a0,a0,-00000400
	jal	ra,00000000230149A2
	c.mv	s10,a0
	c.bnez	a0,000000002300FF06

l2300FE3A:
	c.li	s4,00000000
	c.j	000000002300FEAA

l2300FE3E:
	lbu	a5,a3,+00000001
	c.beqz	a5,000000002300FE80

l2300FE44:
	c.li	a4,00000001
	bne	a5,a4,000000002300FD00

l2300FE4A:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,000000002300FEAA

l2300FE66:
	lbu	a5,a3,+00000002
	addi	a2,zero,+000000FF
	c.andi	a5,00000001
	c.beqz	a5,000000002300FE74

l2300FE72:
	c.li	a2,00000000

l2300FE74:
	addi	a1,zero,+000000FF

l2300FE78:
	c.mv	a0,s2
	jal	ra,000000002300E0BE
	c.j	000000002300FEAA

l2300FE80:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201F
	addi	a5,a5,-000005A0
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,000000002300FEAA

l2300FE9C:
	lbu	a1,a3,+00000002
	c.li	a5,00000001
	addi	a2,zero,+000000FF
	bgeu	a5,a1,000000002300FE78

l2300FEAA:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s4
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

l2300FECA:
	sub	a5,s3,s9
	c.li	a4,00000003
	c.li	s4,00000000
	bge	a4,a5,000000002300FEAA

l2300FED6:
	lbu	a4,s7,+0000000A
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002300FD00

l2300FEE2:
	addi	a2,zero,+000005D8
	add	a4,a4,a2
	lui	a5,00042020
	addi	a5,a5,-00000088
	c.add	a5,a4
	lbu	a5,a5,+00000056
	lbu	a4,a3,+00000001
	c.or	a5,a4
	bne	a5,zero,000000002300FD00

l2300FF02:
	c.li	s4,00000006
	c.j	000000002300FDB6

l2300FF06:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,00000000230020D4
	bne	s6,zero,000000002300FF3C

l2300FF12:
	andi	a5,s9,+00000001
	c.beqz	a5,000000002300FF30

l2300FF18:
	lui	a1,000230AA
	lui	a0,000230AC
	addi	a2,zero,+0000064D
	addi	a1,a1,+0000020C
	addi	a0,a0,+00000590
	jal	ra,0000000023001236

l2300FF30:
	sub	s3,s3,s9
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	s0,s9

l2300FF3C:
	sh	s3,s10,+00000000
	c.addi	s3,00000003
	andi	s3,s3,-00000004
	c.li	a5,00000000

l2300FF48:
	bne	s3,a5,000000002300FFA6

l2300FF4C:
	lbu	a5,s7,+0000000A
	sh	s8,s10,+00000002
	sb	s2,s10,+00000007
	sb	a5,s10,+00000008
	c.lwsp	s8,000000E4
	sb	s11,s10,+0000001A
	sb	s11,s10,+00000019
	srli	a4,a5,00000010
	sh	a4,s10,+00000004
	sb	a5,s10,+00000006
	lb	a5,s5,+00000033
	sb	a5,s10,+00000018
	c.li	a5,00000007
	bne	s4,a5,000000002300FF9E

l2300FF80:
	c.bnez	s1,000000002300FF9E

l2300FF82:
	lw	a5,s5,+00000020
	sw	a5,s10,+00000010
	lw	a5,s5,+00000024
	sw	a5,s10,+00000014
	lw	a5,s5,+00000028
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	sb	a5,s10,+0000001B

l2300FF9E:
	c.mv	a0,s10
	jal	ra,0000000023014A0E
	c.j	000000002300FE3A

l2300FFA6:
	add	a4,s0,a5
	c.lw	a4,0(a3)
	add	a4,s10,a5
	c.addi	a5,00000004
	c.sw	a4,28(a3)
	c.j	000000002300FF48

;; rxu_cntrl_init: 2300FFB6
;;   Called from:
;;     2300A1F8 (in rxl_init)
rxu_cntrl_init proc
	lui	a0,00042021
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000570
	c.swsp	ra,00000084
	jal	ra,0000000023014488
	lui	a0,00042021
	addi	a0,a0,+00000568
	jal	ra,0000000023014488
	lui	a0,00042021
	addi	a0,a0,+0000057C
	jal	ra,0000000023014488
	lui	a0,00042021
	addi	a0,a0,+00000584
	jal	ra,0000000023014488
	c.lwsp	a2,00000020
	lui	a5,00042021
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000592
	c.addi	sp,00000010
	c.jr	ra

;; rxu_cntrl_frame_handle: 2300FFFA
;;   Called from:
;;     2300A4AA (in rxl_cntrl_evt)
rxu_cntrl_frame_handle proc
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
	lw	s6,a0,+00000004
	lui	s0,00042021
	addi	s0,s0,+00000530
	lw	s5,s6,+00000040
	slli	a5,s5,00000012
	blt	a5,zero,0000000023010030

l2301002C:
	c.li	s3,00000000
	c.j	0000000023010266

l23010030:
	lw	a5,s6,+00000008
	c.mv	s2,a0
	c.lw	a5,8(s1)
	c.li	a5,FFFFFFFF
	lhu	s8,s1,+00000000
	sw	zero,s6,+0000004C
	sb	a5,s0,+00000009
	sb	a5,s0,+0000000A
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000000
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	sb	zero,s0,+00000030
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000002
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	c.slli	a5,08
	c.or	a5,a4
	srli	a4,a5,00000004
	c.andi	a5,0000000F
	sh	a4,s0,+00000004
	sb	a5,s0,+00000006
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a3,a5,+00000088
	addi	a4,zero,+00000088
	bne	a3,a4,0000000023010210

l230100A0:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002301020A

l230100AC:
	lhu	a5,s1,+0000001E

l230100B0:
	c.andi	a5,00000007
	sb	a5,s0,+00000007

l230100B6:
	lbu	a5,s1,+00000001
	lbu	a0,s1,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002300F8DA
	sb	a0,s0,+00000008
	lbu	a5,s1,+00000001
	c.andi	a5,00000001
	beq	a5,zero,0000000023010216

l230100D4:
	lhu	a5,s1,+00000010
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000012
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000014

l230100E8:
	sh	a5,s0,+00000028
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000200
	beq	a4,zero,0000000023010242

l23010100:
	andi	a5,a5,+00000100
	beq	a5,zero,000000002301022C

l23010108:
	lhu	a5,s1,+00000018
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000001A
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000001C

l2301011C:
	sh	a5,s0,+0000002E
	slli	a5,s5,00000006
	blt	a5,zero,0000000023010314

l23010128:
	lbu	a5,s0,+0000006F
	c.beqz	a5,000000002301019A

l2301012E:
	andi	a5,s5,+00000200
	c.bnez	a5,000000002301019A

l23010134:
	lbu	a4,s0,+00000068
	lbu	a5,s1,+0000000A
	bne	a4,a5,000000002301019A

l23010140:
	lbu	a4,s0,+00000069
	lbu	a5,s1,+0000000B
	bne	a4,a5,000000002301019A

l2301014C:
	lbu	a4,s0,+0000006A
	lbu	a5,s1,+0000000C
	bne	a4,a5,000000002301019A

l23010158:
	lbu	a4,s0,+0000006B
	lbu	a5,s1,+0000000D
	bne	a4,a5,000000002301019A

l23010164:
	lbu	a4,s0,+0000006C
	lbu	a5,s1,+0000000E
	bne	a4,a5,000000002301019A

l23010170:
	lbu	a4,s0,+0000006D
	lbu	a5,s1,+0000000F
	bne	a4,a5,000000002301019A

l2301017C:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00001000
	addi	a3,a4,+00000400
	c.and	a5,a3
	bne	a5,a4,0000000023010258

l23010194:
	c.li	a5,00000001
	sb	a5,s0,+0000006E

l2301019A:
	andi	s8,s8,+0000000C
	beq	s8,zero,0000000023010290

l230101A2:
	c.li	a5,00000008
	bne	s8,a5,000000002301025E

l230101A8:
	jal	ra,000000002300D684
	c.beqz	a0,000000002301025E

l230101AE:
	lbu	a3,s1,+00000004
	lbu	a4,a0,+00000050
	bne	a3,a4,000000002301025E

l230101BA:
	lbu	a3,s1,+00000005
	lbu	a4,a0,+00000051
	bne	a3,a4,000000002301025E

l230101C6:
	lbu	a3,s1,+00000006
	lbu	a4,a0,+00000052
	bne	a3,a4,000000002301025E

l230101D2:
	lbu	a3,s1,+00000007
	lbu	a4,a0,+00000053
	bne	a3,a4,000000002301025E

l230101DE:
	lbu	a3,s1,+00000008
	lbu	a4,a0,+00000054
	bne	a3,a4,000000002301025E

l230101EA:
	lbu	a4,s1,+00000009
	lbu	a5,a0,+00000055
	bne	a4,a5,000000002301025E

l230101F6:
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,s1,+0000000A
	addi	a1,zero,+000000C0
	jal	ra,00000000230139BC
	c.j	000000002301002C

l2301020A:
	lhu	a5,s1,+00000018
	c.j	00000000230100B0

l23010210:
	sb	zero,s0,+00000007
	c.j	00000000230100B6

l23010216:
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000008
	c.j	00000000230100E8

l2301022C:
	lhu	a5,s1,+00000010
	sh	a5,s0,+0000002A
	lhu	a5,s1,+00000012
	sh	a5,s0,+0000002C
	lhu	a5,s1,+00000014
	c.j	000000002301011C

l23010242:
	lhu	a5,s1,+0000000A
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000000C
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000000E
	c.j	000000002301011C

l23010258:
	sb	zero,s0,+0000006E
	c.j	000000002301019A

l2301025E:
	c.mv	a0,s2
	jal	ra,000000002300FA38
	c.li	s3,00000001

l23010266:
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023010272

l2301026A:
	lui	a0,00020000
	jal	ra,00000000230146D6

l23010272:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s3
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
	c.addi16sp	00000050
	c.jr	ra

l23010290:
	lbu	a5,s1,+00000001
	addi	s3,s1,+0000000A
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.bnez	a5,00000000230102D4

l2301029E:
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	c.li	a2,00000006
	c.slli	a5,08
	c.or	a5,a4
	c.mv	a1,s3
	addi	a0,s0,+0000005C
	sh	a5,s0,+00000062
	jal	ra,00000000230A382C
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,00000000230102FE

l230102C6:
	addi	a1,zero,+000000FF

l230102CA:
	c.mv	a0,s2
	jal	ra,000000002300FB66
	c.mv	s3,a0
	c.j	0000000023010266

l230102D4:
	lbu	a5,s1,+00000017
	lbu	a3,s1,+00000016
	lhu	a4,s0,+00000062
	c.slli	a5,08
	c.or	a5,a3
	bne	a4,a5,000000002301029E

l230102E8:
	lui	a1,00042021
	c.li	a2,00000006
	addi	a1,a1,+0000058C
	c.mv	a0,s3
	jal	ra,00000000230A37A4
	beq	a0,zero,000000002301002C

l230102FC:
	c.j	000000002301029E

l230102FE:
	andi	a5,s5,+0000001C
	c.li	a4,00000014
	bne	a5,a4,000000002301002C
