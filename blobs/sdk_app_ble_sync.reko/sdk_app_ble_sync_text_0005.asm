;;; Segment .text (23000300)

;; ke_malloc: 2305030E
;;   Called from:
;;     2305048E (in ke_msg_alloc)
;;     23050A0A (in ke_timer_set)
;;     23050CA8 (in GetTxEAPOLBuffer)
;;     23050CCE (in GetTxEAPOLBuffer)
;;     23055646 (in ipc_emb_msg_evt)
;;     230646FA (in apm_start_req_handler)
ke_malloc proc
	c.addi	sp,FFFFFFF0
	c.addi	a0,00000003
	c.swsp	s1,00000080
	andi	s1,a0,-00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s2,s1,+00000004
	c.li	a5,00000007
	bltu	a5,s2,0000000023050340

l23050328:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000079
	addi	a1,a1,+00000388
	addi	a0,a0,+0000018C
	jal	ra,0000000023054FF4

l23050340:
	lui	a5,0004201F
	lw	a5,a5,-00000108
	csrrci	zero,mstatus,00000008
	c.li	s0,00000000
	c.addi	s1,0000000C

l23050350:
	c.bnez	a5,000000002305038C

l23050352:
	c.bnez	s0,000000002305036C

l23050354:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000095
	addi	a1,a1,+00000388
	addi	a0,a0,+000001B4
	jal	ra,0000000023054FF4

l2305036C:
	c.lw	s0,4(a0)
	sub	a0,a0,s2
	c.sw	s0,4(a0)
	c.add	a0,s0
	sw	s2,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305038C:
	c.lw	a5,4(a4)
	bltu	a4,s1,000000002305039A

l23050392:
	c.beqz	s0,000000002305039E

l23050394:
	c.lw	s0,4(a3)
	bltu	a4,a3,000000002305039E

l2305039A:
	c.lw	a5,0(a5)
	c.j	0000000023050350

l2305039E:
	c.mv	s0,a5
	c.j	000000002305039A

;; ke_free: 230503A2
;;   Called from:
;;     2304F972 (in apm_bcn_set)
;;     23050522 (in ke_msg_send)
;;     2305056C (in ke_msg_free)
;;     23050B2E (in ke_timer_clear)
;;     23050BBC (in ke_timer_schedule)
;;     23050D50 (in UpdateEAPOLWcbLenAndTransmit)
;;     23050D56 (in UpdateEAPOLWcbLenAndTransmit)
ke_free proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201F
	c.swsp	s0,0000000C
	lw	s0,a5,-00000108
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s1,a0
	addi	s2,a0,-00000004
	lw	s3,a0,-00000004
	bltu	s0,a0,00000000230503DE

l230503C6:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000C5
	addi	a1,a1,+00000388
	addi	a0,a0,+00000154
	jal	ra,0000000023054FF4

l230503DE:
	csrrci	zero,mstatus,00000008
	c.li	s4,00000000

l230503E4:
	c.bnez	s0,00000000230503F0

l230503E6:
	sw	s2,s4,+00000000
	sw	zero,s1,+00000FFC
	c.j	0000000023050468

l230503F0:
	c.lw	s0,4(a5)
	add	a4,a5,s0
	bne	a4,s2,0000000023050426

l230503FA:
	c.lw	s0,0(a4)
	c.add	a5,s3
	c.sw	s0,4(a5)
	add	a3,s0,a5
	bne	a4,a3,0000000023050412

l23050408:
	c.lw	a4,4(a3)
	c.add	a5,a3
	c.sw	s0,4(a5)
	c.lw	a4,0(a5)
	c.sw	s0,0(a5)

l23050412:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23050426:
	bgeu	s2,s0,000000002305046E

l2305042A:
	bne	s4,zero,0000000023050446

l2305042E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000E0
	addi	a1,a1,+00000388
	addi	a0,a0,+00000178
	jal	ra,0000000023054FF4

l23050446:
	sw	s2,s4,+00000000
	add	a5,s2,s3
	bne	s0,a5,0000000023050464

l23050452:
	c.lw	s0,0(a5)
	sw	a5,s1,+00000FFC
	c.lw	s0,4(a5)
	sub	s2,a5,s2
	c.add	s0,s2
	c.sw	s1,0(s0)
	c.j	0000000023050412

l23050464:
	sw	s0,s1,+00000FFC

l23050468:
	sw	s3,s1,+00000000
	c.j	0000000023050412

l2305046E:
	c.mv	s4,s0
	c.lw	s0,0(s0)
	c.j	00000000230503E4

;; ke_msg_alloc: 23050474
;;   Called from:
;;     23046BE0 (in mm_monitor_channel_req_handler)
;;     23046C8C (in mm_monitor_enable_req_handler)
;;     23046E66 (in mm_remain_on_channel_req_handler)
;;     23046EC2 (in mm_sta_add_req_handler)
;;     23046F5C (in mm_key_add_req_handler)
;;     23047002 (in mm_set_power_req_handler)
;;     2304713E (in mm_version_req_handler)
;;     2304737E (in mm_hw_config_handler)
;;     230474EC (in mm_hw_config_handler)
;;     230477BC (in mm_hw_config_handler)
;;     230482F8 (in mm_ps_change_ind)
;;     23048868 (in rxl_cntrl_evt)
;;     230488A8 (in rxl_cntrl_evt)
;;     2304B252 (in vif_mgmt_switch_channel)
;;     2304BBE0 (in rxu_mgt_frame_check)
;;     2304C474 (in rxu_cntrl_frame_handle)
;;     2304C7D0 (in scanu_confirm)
;;     2304C7E0 (in scanu_confirm)
;;     2304C820 (in scanu_confirm)
;;     2304C83A (in scanu_raw_send_cfm)
;;     2304D246 (in scanu_scan_next)
;;     2304D564 (in sm_delete_resources)
;;     2304D574 (in sm_delete_resources)
;;     2304D59A (in sm_delete_resources)
;;     2304D5C2 (in sm_delete_resources)
;;     2304D78E (in sm_scan_bss)
;;     2304D89E (in sm_join_bss)
;;     2304D9E2 (in sm_set_bss_param)
;;     2304D9F0 (in sm_set_bss_param)
;;     2304D9FE (in sm_set_bss_param)
;;     2304DA0C (in sm_set_bss_param)
;;     2304DA1C (in sm_set_bss_param)
;;     2304DAE6 (in sm_set_bss_param)
;;     2304DB8C (in sm_disconnect_process)
;;     2304E1CC (in sm_assoc_done)
;;     2304EFD2 (in apm_sta_delete)
;;     2304EFE4 (in apm_sta_delete)
;;     2304F0FC (in apm_start_cfm)
;;     2304F116 (in apm_start_cfm)
;;     2304F268 (in apm_set_bss_param)
;;     2304F276 (in apm_set_bss_param)
;;     2304F284 (in apm_set_bss_param)
;;     2304F292 (in apm_set_bss_param)
;;     2304F2A2 (in apm_set_bss_param)
;;     2304F38E (in apm_stop)
;;     2304F39E (in apm_stop)
;;     2304F3D0 (in apm_stop)
;;     2304F4DC (in apm_tx_int_ps_postpone)
;;     2304F61A (in apm_tx_int_ps_get_postpone)
;;     2304F6A4 (in apm_tx_int_ps_clear)
;;     2304F700 (in apm_sta_add)
;;     2304F91A (in apm_bcn_set)
;;     2304FB52 (in apm_assoc_req_handler)
;;     23050550 (in ke_msg_send_basic)
;;     2305B6D2 (in chan_switch_start)
;;     2305C5BA (in chan_bcn_detect_start)
;;     2305E046 (in mm_sta_del)
;;     2305E09E (in mm_send_connection_loss_ind)
;;     2305E13E (in mm_check_rssi)
;;     2305E18A (in mm_check_rssi)
;;     2305E1E0 (in mm_send_csa_traffic_ind)
;;     2305EB54 (in mm_bcn_transmit)
;;     2305EBDC (in mm_bcn_transmit)
;;     2305F31C (in scan_send_cancel_cfm)
;;     2305F372 (in scan_start_req_handler)
;;     23061076 (in me_rc_stats_req_handler)
;;     23061194 (in me_traffic_ind_req_handler)
;;     23061206 (in me_sta_del_req_handler)
;;     23061228 (in me_sta_del_req_handler)
;;     230612CE (in me_set_control_port_req_handler)
;;     23061406 (in me_config_req_handler)
;;     2306150E (in me_set_ps_disable_req_handler)
;;     230615A8 (in me_set_active_req_handler)
;;     23061640 (in me_sta_add_req_handler)
;;     230617D6 (in me_sta_add_req_handler)
;;     23061ED4 (in me_beacon_check)
;;     23063AE4 (in scanu_join_cfm_handler)
;;     23063BF4 (in sm_connect_req_handler)
;;     23063C84 (in sm_connect_req_handler)
;;     23063E6C (in mm_set_vif_state_cfm_handler)
;;     23063ED0 (in mm_set_vif_state_cfm_handler)
;;     230641E8 (in apm_sta_del_req_handler)
;;     2306432A (in apm_start_cac_req_handler)
;;     2306483E (in apm_start_req_handler)
;;     230649F2 (in cfg_start_req_handler)
;;     23064DDE (in dbg_get_sys_stat_req_handler)
;;     23064E0A (in dbg_mem_write_req_handler)
;;     23064E3A (in dbg_mem_read_req_handler)
ke_msg_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,a3,+0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.mv	s2,a2
	c.mv	s1,a3
	jal	ra,000000002305030E
	c.mv	s0,a0
	c.bnez	a0,00000000230504AE

l23050496:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000050
	addi	a1,a1,+00000388
	addi	a0,a0,-000000E8
	jal	ra,0000000023054FF4

l230504AE:
	sh	s4,s0,+00000004
	sh	s3,s0,+00000006
	sh	s2,s0,+00000008
	sh	s1,s0,+0000000A
	sw	zero,s0,+00000000
	c.addi	s0,0000000C
	c.mv	a2,s1
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_msg_send: 230504E0
;;   Called from:
;;     23046C5A (in mm_monitor_channel_req_handler)
;;     23046D16 (in mm_monitor_enable_req_handler)
;;     23046E7C (in mm_remain_on_channel_req_handler)
;;     23046EDC (in mm_sta_add_req_handler)
;;     23046FDA (in mm_key_add_req_handler)
;;     2304703E (in mm_set_power_req_handler)
;;     2304716C (in mm_version_req_handler)
;;     230473A4 (in mm_hw_config_handler)
;;     23048322 (in mm_ps_change_ind)
;;     2304887A (in rxl_cntrl_evt)
;;     230488BC (in rxl_cntrl_evt)
;;     2304B334 (in vif_mgmt_switch_channel)
;;     2304BD4E (in rxu_mgt_frame_check)
;;     2304C4B2 (in rxu_cntrl_frame_handle)
;;     2304C7F8 (in scanu_confirm)
;;     2304C804 (in scanu_confirm)
;;     2304C846 (in scanu_raw_send_cfm)
;;     2304D40E (in scanu_scan_next)
;;     2304D588 (in sm_delete_resources)
;;     2304D5AA (in sm_delete_resources)
;;     2304D5CE (in sm_delete_resources)
;;     2304D5EC (in sm_delete_resources)
;;     2304D7E4 (in sm_scan_bss)
;;     2304D8FA (in sm_join_bss)
;;     2304D9B0 (in sm_send_next_bss_param)
;;     2304DBC0 (in sm_disconnect_process)
;;     2304DDF4 (in sm_connect_ind)
;;     2304E1E2 (in sm_assoc_done)
;;     2304F014 (in apm_sta_delete)
;;     2304F02E (in apm_sta_delete)
;;     2304F04E (in apm_tx_cfm_handler)
;;     2304F146 (in apm_start_cfm)
;;     2304F1D0 (in apm_start_cfm)
;;     2304F236 (in apm_send_next_bss_param)
;;     2304F3BE (in apm_stop)
;;     2304F3E0 (in apm_stop)
;;     2304F408 (in apm_stop)
;;     2304F4FC (in apm_tx_int_ps_postpone)
;;     2304F632 (in apm_tx_int_ps_get_postpone)
;;     2304F6C2 (in apm_tx_int_ps_clear)
;;     2304F766 (in apm_sta_add)
;;     2304F97C (in apm_bcn_set)
;;     23050558 (in ke_msg_send_basic)
;;     23050568 (in ke_msg_forward_and_change_id)
;;     230556EE (in ipc_emb_msg_evt)
;;     2305B6E4 (in chan_switch_start)
;;     2305C620 (in chan_bcn_detect_start)
;;     2305E058 (in mm_sta_del)
;;     2305E0B0 (in mm_send_connection_loss_ind)
;;     2305E15E (in mm_check_rssi)
;;     2305E19E (in mm_check_rssi)
;;     2305E1F4 (in mm_send_csa_traffic_ind)
;;     2305EB68 (in mm_bcn_transmit)
;;     2305EBE8 (in mm_bcn_transmit)
;;     2305F32A (in scan_send_cancel_cfm)
;;     2305F3BE (in scan_start_req_handler)
;;     230610F6 (in me_rc_stats_req_handler)
;;     230611BA (in me_traffic_ind_req_handler)
;;     23061212 (in me_sta_del_req_handler)
;;     2306124E (in me_sta_del_req_handler)
;;     230612DE (in me_set_control_port_req_handler)
;;     2306147C (in me_config_req_handler)
;;     23061536 (in me_set_ps_disable_req_handler)
;;     230615CE (in me_set_active_req_handler)
;;     230617EA (in me_sta_add_req_handler)
;;     23061804 (in me_sta_add_req_handler)
;;     23061F48 (in me_beacon_check)
;;     23063B50 (in scanu_join_cfm_handler)
;;     23063CF4 (in sm_connect_req_handler)
;;     23063E88 (in mm_set_vif_state_cfm_handler)
;;     23063EE0 (in mm_set_vif_state_cfm_handler)
;;     23064222 (in apm_sta_del_req_handler)
;;     2306433A (in apm_start_cac_req_handler)
;;     2306484E (in apm_start_req_handler)
;;     230649FA (in cfg_start_req_handler)
;;     23064DEE (in dbg_get_sys_stat_req_handler)
;;     23064E1C (in dbg_mem_write_req_handler)
;;     23064E48 (in dbg_mem_read_req_handler)
ke_msg_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,-00000006
	c.li	a4,0000000E
	c.mv	s0,a0
	addi	s1,a0,-0000000C
	bgeu	a4,a5,0000000023050526

l230504F8:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B6
	addi	a1,a1,+00000388
	addi	a0,a0,+000001C4
	jal	ra,0000000023054FF4

l23050510:
	addi	a0,s0,-00000008
	jal	ra,0000000023009B1C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230503A2

l23050526:
	c.li	a4,0000000C
	bltu	a4,a5,0000000023050510

l2305052C:
	lui	a0,0004201F
	c.mv	a1,s1
	addi	a0,a0,-00000120
	jal	ra,000000002304FFBE
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00001000
	c.addi	sp,00000010
	jal	zero,00000000230501A8

;; ke_msg_send_basic: 2305054A
;;   Called from:
;;     23046E08 (in mm_set_ps_options_req_handler)
;;     23046EA6 (in mm_sta_del_req_handler)
;;     23046F38 (in mm_key_del_req_handler)
;;     230470DE (in mm_set_idle_req_handler)
;;     2304711E (in mm_reset_req_handler)
;;     230471EE (in mm_start_req_handler)
;;     23047238 (in mm_set_ps_mode_req_handler)
;;     2304748E (in mm_hw_config_handler)
;;     23047E58 (in ps_enable_cfm)
;;     23047F38 (in ps_disable_cfm)
;;     23050BB6 (in ke_timer_schedule)
;;     2305BCC0 (in chan_pre_switch_channel)
;;     2305BEE8 (in chan_ctxt_op_evt)
;;     2305E598 (in mm_tim_update_proceed)
;;     2305EC26 (in mm_bcn_updated)
;;     2305F486 (in mm_scan_channel_end_ind_handler)
;;     230611C8 (in me_traffic_ind_req_handler)
;;     2306125C (in me_sta_del_req_handler)
;;     230612EC (in me_set_control_port_req_handler)
;;     23061324 (in me_chan_config_req_handler)
;;     23061376 (in mm_set_ps_mode_cfm_handler)
;;     230613D0 (in mm_set_idle_cfm_handler)
;;     23061434 (in me_config_req_handler)
;;     230614CC (in me_set_ps_disable_req_handler)
;;     230615E8 (in me_set_active_req_handler)
;;     230640BA (in sm_disconnect_req_handler)
;;     230642A0 (in apm_stop_cac_req_handler)
;;     230642D4 (in apm_conf_max_sta_req_handler)
;;     230644EE (in apm_stop_req_handler)
;;     23064E6A (in dbg_set_sev_filter_req_handler)
;;     23064E8A (in dbg_set_mod_filter_req_handler)
ke_msg_send_basic proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; ke_msg_forward_and_change_id: 2305055C
;;   Called from:
;;     2304D0C8 (in scanu_frame_handler)
ke_msg_forward_and_change_id proc
	sh	a1,a0,+00000FF8
	sh	a2,a0,+00000FFA
	sh	a3,a0,+00000FFC
	jal	zero,00000000230504E0

;; ke_msg_free: 2305056C
;;   Called from:
;;     2304C7EE (in scanu_confirm)
;;     2304DDE2 (in sm_connect_ind)
;;     2304F05A (in apm_tx_cfm_handler)
;;     2304F068 (in apm_tx_cfm_handler)
;;     2304F1D8 (in apm_start_cfm)
;;     23050870 (in ke_task_schedule)
;;     2305E5A6 (in mm_tim_update_proceed)
;;     2305ED52 (in mm_bcn_updated)
;;     2305F45C (in mm_scan_channel_end_ind_handler)
ke_msg_free proc
	jal	zero,00000000230503A2

;; cmp_dest_id: 23050570
cmp_dest_id proc
	lhu	a0,a0,+00000006
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; ke_task_local: 2305057C
;;   Called from:
;;     23050648 (in ke_state_set)
;;     23050740 (in ke_state_get)
;;     230507FC (in ke_task_schedule)
ke_task_local proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000E
	c.mv	s0,a0
	bgeu	a5,a0,00000000230505A2

l2305058A:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B6
	addi	a1,a1,+00000388
	addi	a0,a0,+000001C4
	jal	ra,0000000023054FF4

l230505A2:
	sltiu	a0,s0,+0000000D
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ke_handler_search: 230505AE
;;   Called from:
;;     230508AE (in ke_task_schedule)
;;     230508F2 (in ke_task_schedule)
ke_handler_search proc
	lhu	a5,a1,+00000004
	c.li	a3,FFFFFFFF
	c.addi	a5,FFFFFFFF
	bne	a5,a3,00000000230505C8

l230505BA:
	c.li	a0,00000000
	c.jr	ra

l230505BE:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,00000000230505D0

l230505C4:
	c.li	a0,00000000
	c.j	0000000023050604

l230505C8:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080

l230505D0:
	c.lw	a1,0(a4)
	slli	s1,a5,00000003
	c.add	a4,s1
	lhu	a2,a4,+00000000
	bne	a2,a0,00000000230505BE

l230505E0:
	c.lw	a4,4(a5)
	c.mv	s0,a1
	c.bnez	a5,00000000230505FE

l230505E6:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000F4
	addi	a1,a1,+00000388
	addi	a0,a0,+000002B4
	jal	ra,0000000023054FF4

l230505FE:
	c.lw	s0,0(a5)
	c.add	a5,s1
	c.lw	a5,4(a0)

l23050604:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_state_set: 2305060E
;;   Called from:
;;     230470AA (in mm_set_idle_req_handler)
;;     23047126 (in mm_reset_req_handler)
;;     230471FE (in mm_start_req_handler)
;;     23047286 (in mm_force_idle_req_handler)
;;     230472BC (in mm_force_idle_req_handler)
;;     230474C6 (in mm_hw_config_handler)
;;     2304780C (in mm_hw_config_handler)
;;     2304B38A (in me_init)
;;     2304C818 (in scanu_confirm)
;;     2304C854 (in scanu_init)
;;     2304D4EA (in scanu_start)
;;     2304D646 (in sm_init)
;;     2304D7FC (in sm_scan_bss)
;;     2304D912 (in sm_join_bss)
;;     2304DB6E (in sm_set_bss_param)
;;     2304DC0A (in sm_disconnect)
;;     2304DDD8 (in sm_connect_ind)
;;     2304DE2C (in sm_connect_ind)
;;     2304DFF6 (in sm_auth_send)
;;     2304E17A (in sm_assoc_req_send)
;;     2304E1F2 (in sm_assoc_done)
;;     2304E4CC (in sm_deauth_handler)
;;     2304F0CC (in apm_init)
;;     2304F1FA (in apm_start_cfm)
;;     2304F372 (in apm_set_bss_param)
;;     2304F98E (in apm_bcn_set)
;;     2305D7C4 (in mm_active)
;;     2305D7E8 (in mm_reset)
;;     2305DB72 (in mm_hw_idle_evt)
;;     2305DCA4 (in mm_back_to_host_idle)
;;     2305DCC0 (in mm_force_idle_req)
;;     2305F07E (in scan_init)
;;     2305F148 (in scan_set_channel_request)
;;     2305F478 (in mm_scan_channel_end_ind_handler)
;;     2305F4FC (in mm_scan_channel_start_ind_handler)
;;     2305F9B8 (in bam_init)
;;     2306137E (in mm_set_ps_mode_cfm_handler)
;;     230613D8 (in mm_set_idle_cfm_handler)
;;     23061484 (in me_config_req_handler)
;;     2306153E (in me_set_ps_disable_req_handler)
;;     230615D6 (in me_set_active_req_handler)
;;     23063A54 (in mm_connection_loss_ind_handler)
;;     23063B58 (in scanu_join_cfm_handler)
;;     23063CD6 (in sm_connect_req_handler)
;;     23063F84 (in me_set_active_cfm_handler)
ke_state_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	andi	s1,a0,+000000FF
	c.li	a5,0000000D
	c.mv	s3,a0
	c.mv	s4,a1
	srli	s2,a0,00000008
	bgeu	a5,s1,0000000023050646

l2305062E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B2
	addi	a1,a1,+00000388
	addi	a0,a0,+000002D8
	jal	ra,0000000023054FF4

l23050646:
	c.mv	a0,s1
	jal	ra,000000002305057C
	c.bnez	a0,0000000023050666

l2305064E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B3
	addi	a1,a1,+00000388
	addi	a0,a0,+000002E8
	jal	ra,0000000023054FF4

l23050666:
	lui	a5,0002307C
	addi	a4,a5,+000001D4
	c.slli	s1,04
	c.add	a4,s1
	lhu	a4,a4,+0000000E
	addi	s0,a5,+000001D4
	bltu	s2,a4,0000000023050696

l2305067E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B4
	addi	a1,a1,+00000388
	addi	a0,a0,+000002FC
	jal	ra,0000000023054FF4

l23050696:
	add	a5,s0,s1
	c.lw	a5,8(s0)
	c.slli	s2,01
	c.add	s0,s2
	c.bnez	s0,00000000230506BA

l230506A2:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000B9
	addi	a1,a1,+00000388
	addi	a0,a0,+0000031C
	jal	ra,0000000023054FF4

l230506BA:
	lhu	a5,s0,+00000000
	beq	a5,s4,00000000230506FE

l230506C2:
	sh	s4,s0,+00000000
	lui	s1,00023050
	lui	s2,0004201F
	lui	s0,0004201F

l230506D2:
	addi	a1,s1,+00000570
	c.mv	a2,s3
	addi	a0,s2,-00000118
	jal	ra,0000000023064E96
	c.mv	a1,a0
	c.beqz	a0,00000000230506FE

l230506E4:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,-00000120
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008
	lui	a0,00001000
	jal	ra,00000000230501A8
	c.j	00000000230506D2

l230506FE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_state_get: 2305070E
;;   Called from:
;;     23047062 (in mm_set_idle_req_handler)
;;     23047096 (in mm_set_idle_req_handler)
;;     230470E6 (in mm_set_idle_req_handler)
;;     2304718C (in mm_start_req_handler)
;;     23047272 (in mm_force_idle_req_handler)
;;     230472E8 (in mm_hw_config_handler)
;;     230477FC (in mm_hw_config_handler)
;;     2304BB7C (in rxu_mgt_frame_check)
;;     2304BBB8 (in rxu_mgt_frame_check)
;;     2304C98A (in scanu_frame_handler)
;;     2304D60E (in sm_frame_tx_cfm_handler)
;;     2304E468 (in sm_deauth_handler)
;;     2304E486 (in sm_deauth_handler)
;;     2305D7CE (in mm_reset)
;;     2305DC68 (in mm_back_to_host_idle)
;;     2305EF0E (in bl_sleep)
;;     2305F336 (in scan_cancel_req_handler)
;;     2305F37A (in scan_start_req_handler)
;;     2305F3E2 (in mm_scan_channel_end_ind_handler)
;;     2305F4A4 (in mm_scan_channel_start_ind_handler)
;;     2306133C (in mm_set_ps_mode_cfm_handler)
;;     23061396 (in mm_set_idle_cfm_handler)
;;     230614E8 (in me_set_ps_disable_req_handler)
;;     2306157C (in me_set_active_req_handler)
;;     23063918 (in me_set_ps_disable_cfm_handler)
;;     23063924 (in me_set_ps_disable_cfm_handler)
;;     2306392C (in me_set_ps_disable_cfm_handler)
;;     23063950 (in me_set_ps_disable_cfm_handler)
;;     2306396C (in mm_bss_param_setting_handler)
;;     230639A0 (in sm_rsp_timeout_ind_handler)
;;     230639BA (in sm_rsp_timeout_ind_handler)
;;     230639D0 (in scanu_start_cfm_handler)
;;     23063A28 (in mm_connection_loss_ind_handler)
;;     23063A86 (in scanu_join_cfm_handler)
;;     23063BDC (in sm_connect_req_handler)
;;     23063BFC (in sm_connect_req_handler)
;;     23063DC2 (in rxu_mgt_ind_handler)
;;     23063DE4 (in rxu_mgt_ind_handler)
;;     23063E10 (in rxu_mgt_ind_handler)
;;     23063E32 (in mm_set_vif_state_cfm_handler)
;;     23063F1A (in me_set_active_cfm_handler)
;;     23063F26 (in me_set_active_cfm_handler)
;;     23063F4A (in me_set_active_cfm_handler)
;;     23063FB0 (in mm_sta_add_cfm_handler)
;;     2306409C (in sm_disconnect_req_handler)
;;     23064270 (in apm_stop_cac_req_handler)
;;     23064352 (in apm_start_cac_req_handler)
;;     230643BA (in me_set_ps_disable_cfm_handler)
;;     230643C6 (in me_set_ps_disable_cfm_handler)
;;     230643E6 (in me_set_ps_disable_cfm_handler)
;;     23064402 (in mm_bss_param_setting_handler)
;;     23064436 (in mm_bcn_change_cfm_handler)
;;     230644A2 (in apm_stop_req_handler)
;;     2306455E (in apm_start_req_handler)
;;     23064860 (in me_set_active_cfm_handler)
;;     2306486C (in me_set_active_cfm_handler)
;;     2306488C (in me_set_active_cfm_handler)
;;     230648DA (in hostapd_mgt_ind_handler)
ke_state_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	s0,a0,+000000FF
	c.li	a5,0000000D
	srli	s2,a0,00000008
	bgeu	a5,s0,000000002305073E

l23050726:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000D7
	addi	a1,a1,+00000388
	addi	a0,a0,+000002D8
	jal	ra,0000000023054FF4

l2305073E:
	c.mv	a0,s0
	jal	ra,000000002305057C
	c.bnez	a0,000000002305075E

l23050746:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000D8
	addi	a1,a1,+00000388
	addi	a0,a0,+000002E8
	jal	ra,0000000023054FF4

l2305075E:
	lui	a5,0002307C
	addi	a4,a5,+000001D4
	c.slli	s0,04
	c.add	a4,s0
	lhu	a4,a4,+0000000E
	addi	s1,a5,+000001D4
	bltu	s2,a4,000000002305078E

l23050776:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000D9
	addi	a1,a1,+00000388
	addi	a0,a0,+000002FC
	jal	ra,0000000023054FF4

l2305078E:
	c.add	s0,s1
	c.lw	s0,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	s2,01
	c.add	s2,a5
	lhu	a0,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ke_task_schedule: 230507A6
ke_task_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	csrrci	zero,mstatus,00000008
	lui	a0,0004201F
	addi	a0,a0,-00000120
	jal	ra,000000002305003A
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,0000000023050874

l230507CA:
	lhu	s2,a0,+00000006
	c.li	a5,0000000D
	c.mv	s0,a0
	andi	s3,s2,+000000FF
	lhu	s4,a0,+00000004
	srli	s2,s2,00000008
	bgeu	a5,s3,00000000230507FA

l230507E2:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000110
	addi	a1,a1,+00000388
	addi	a0,a0,+000002D8
	jal	ra,0000000023054FF4

l230507FA:
	c.mv	a0,s3
	jal	ra,000000002305057C
	c.bnez	a0,000000002305081A

l23050802:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000111
	addi	a1,a1,+00000388
	addi	a0,a0,+000002E8
	jal	ra,0000000023054FF4

l2305081A:
	lui	a5,0002307C
	addi	a4,a5,+000001D4
	c.slli	s3,04
	c.add	a4,s3
	lhu	a4,a4,+0000000E
	addi	s1,a5,+000001D4
	bltu	s2,a4,000000002305084A

l23050832:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000112
	addi	a1,a1,+00000388
	addi	a0,a0,+000002FC
	jal	ra,0000000023054FF4

l2305084A:
	c.add	s1,s3
	c.bnez	s1,0000000023050866

l2305084E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000116
	addi	a1,a1,+00000388
	addi	a0,a0,+0000032C
	jal	ra,0000000023054FF4

l23050866:
	c.lw	s1,0(a1)
	c.bnez	a1,000000002305089E

l2305086A:
	c.lw	s1,4(a1)
	c.bnez	a1,00000000230508F0

l2305086E:
	c.mv	a0,s0
	jal	ra,000000002305056C

l23050874:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	lw	a5,a5,-00000120
	c.bnez	a5,000000002305088A

l23050882:
	lui	a0,00001000
	jal	ra,00000000230501C0

l2305088A:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305089E:
	c.lw	s1,8(a5)
	c.slli	s2,01
	c.mv	a0,s4
	c.add	s2,a5
	lhu	a5,s2,+00000000
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,00000000230505AE
	c.mv	a5,a0
	c.beqz	a0,000000002305086A

l230508B6:
	lhu	a3,s0,+00000008
	lhu	a2,s0,+00000006
	lhu	a0,s0,+00000004
	addi	a1,s0,+0000000C
	c.jalr	a5
	c.li	a5,00000001
	beq	a0,a5,0000000023050874

l230508CE:
	c.li	a5,00000002
	beq	a0,a5,00000000230508FC

l230508D4:
	c.beqz	a0,000000002305086E

l230508D6:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+0000016C
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	ra,0000000023054FF4
	c.j	0000000023050874

l230508F0:
	c.mv	a0,s4
	jal	ra,00000000230505AE
	c.mv	a5,a0
	c.bnez	a0,00000000230508B6

l230508FA:
	c.j	000000002305086E

l230508FC:
	lui	a0,0004201F
	c.mv	a1,s0
	addi	a0,a0,-00000118
	jal	ra,000000002304FFBE
	c.j	0000000023050874

;; ke_msg_discard: 2305090C
ke_msg_discard proc
	c.li	a0,00000000
	c.jr	ra

;; ke_msg_save: 23050910
ke_msg_save proc
	c.li	a0,00000002
	c.jr	ra

;; ke_timer_hw_set: 23050914
;;   Called from:
;;     23050A60 (in ke_timer_set)
;;     23050AF6 (in ke_timer_clear)
;;     23050B8C (in ke_timer_schedule)
;;     23050BC4 (in ke_timer_schedule)
ke_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,0000000023050948

l2305091A:
	c.lw	a0,8(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000148
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000100
	c.bnez	a3,0000000023050942

l23050932:
	addi	a3,zero,+00000100
	sw	a3,a4,+00000088
	ori	a5,a5,+00000100

l2305093E:
	sw	a5,a4,+0000008C

l23050942:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l23050948:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000101
	c.j	000000002305093E

;; cmp_abs_time: 23050956
cmp_abs_time proc
	c.lw	a1,8(a5)
	c.lw	a0,8(a0)
	c.sub	a0,a5
	lui	a5,00011E1A
	addi	a5,a5,+00000301
	sltu	a0,a0,a5
	xori	a0,a0,+00000001
	c.jr	ra

;; cmp_timer_id: 2305096E
cmp_timer_id proc
	lhu	a4,a0,+00000004
	srli	a5,a1,00000010
	bne	a4,a5,000000002305098A

l2305097A:
	lhu	a0,a0,+00000006
	c.slli	a1,10
	c.srli	a1,00000010
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

l2305098A:
	c.li	a0,00000000
	c.jr	ra

;; ke_timer_set: 2305098E
;;   Called from:
;;     2304DFDA (in sm_auth_send)
;;     2304E172 (in sm_assoc_req_send)
;;     2304F1CA (in apm_start_cfm)
;;     23064122 (in apm_sta_connect_timeout_ind_handler)
ke_timer_set proc
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
	bne	a2,zero,0000000023050A8C

l230509AA:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000008C
	addi	a1,a1,+00000388
	addi	a0,a0,+0000035C

l230509BE:
	jal	ra,0000000023054FF4

l230509C2:
	lui	s3,0004201F
	addi	a5,s3,-00000124
	c.lw	a5,20(a5)
	addi	s3,s3,-00000124
	c.li	s2,00000000
	c.beqz	a5,00000000230509E8

l230509D4:
	lhu	a4,a5,+00000004
	bne	a4,s6,00000000230509E8

l230509DC:
	lhu	s2,a5,+00000006
	sub	s2,s2,s5
	sltiu	s2,s2,+00000001

l230509E8:
	slli	a2,s6,00000010
	lui	a1,00023051
	lui	s4,0004201F
	or	a2,a2,s5
	addi	a1,a1,-00000692
	addi	a0,s4,-00000110
	jal	ra,0000000023064E96
	c.mv	s1,a0
	c.bnez	a0,0000000023050A32

l23050A08:
	c.li	a0,0000000C
	jal	ra,000000002305030E
	c.mv	s1,a0
	c.bnez	a0,0000000023050A2A

l23050A12:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000009D
	addi	a1,a1,+00000388
	addi	a0,a0,+00000384
	jal	ra,0000000023054FF4

l23050A2A:
	sh	s6,s1,+00000004
	sh	s5,s1,+00000006

l23050A32:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	lui	a2,00023051
	addi	a2,a2,-000006AA
	c.add	s0,a5
	c.sw	s1,8(s0)
	c.mv	a1,s1
	addi	a0,s4,-00000110
	jal	ra,00000000230500A8
	bne	s2,zero,0000000023050A5C

l23050A54:
	lw	a5,s3,+00000014
	bne	a5,s1,0000000023050A64

l23050A5C:
	lw	a0,s3,+00000014
	jal	ra,0000000023050914

l23050A64:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,0000000023050AAE

l23050A72:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00004000
	c.addi16sp	00000020
	jal	zero,00000000230501A8

l23050A8C:
	lui	a5,00011E1A
	addi	a5,a5,+000002FF
	bgeu	a5,a2,00000000230509C2

l23050A98:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000008D
	addi	a1,a1,+00000388
	addi	a0,a0,+00000368
	c.j	00000000230509BE

l23050AAE:
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

;; ke_timer_clear: 23050AC2
;;   Called from:
;;     2304E20C (in sm_auth_handler)
;;     2304E342 (in sm_assoc_rsp_handler)
;;     2304F3AC (in apm_stop)
ke_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201F
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s1,s1,-00000124
	c.lw	s1,20(s0)
	c.beqz	s0,0000000023050B4C

l23050AD6:
	lhu	a4,s0,+00000004
	lui	a5,0004201F
	bne	a4,a0,0000000023050B32

l23050AE2:
	lhu	a4,s0,+00000006
	bne	a4,a1,0000000023050B32

l23050AEA:
	addi	a0,a5,-00000110
	jal	ra,000000002305003A
	c.lw	s1,20(s1)
	c.mv	a0,s1
	jal	ra,0000000023050914
	c.beqz	s1,0000000023050B24

l23050AFC:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	s1,8(a5)
	c.sub	a5,a4
	bge	a5,zero,0000000023050B24

l23050B0C:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000D7
	addi	a1,a1,+00000388
	addi	a0,a0,+00000334
	jal	ra,0000000023054FF4

l23050B24:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230503A2

l23050B32:
	slli	a2,a0,00000010
	c.or	a2,a1
	lui	a1,00023051
	addi	a1,a1,-00000692
	addi	a0,a5,-00000110
	jal	ra,0000000023064E96
	c.mv	s0,a0
	c.bnez	a0,0000000023050B24

l23050B4C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_timer_schedule: 23050B56
ke_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201F
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	addi	s1,s1,-00000124
	lui	s2,00044B00
	lui	s3,0004201F

l23050B72:
	lui	a0,00004000
	jal	ra,00000000230501C0
	c.lw	s1,20(s0)
	c.bnez	s0,0000000023050B90

l23050B7E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023050914

l23050B90:
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,0000000023050BC2

l23050BA0:
	addi	a0,s3,-00000110
	jal	ra,000000002305003A
	c.mv	s0,a0
	lhu	a1,a0,+00000006
	lhu	a0,a0,+00000004
	addi	a2,zero,+000000FF
	jal	ra,000000002305054A
	c.mv	a0,s0
	jal	ra,00000000230503A2
	c.j	0000000023050B72

l23050BC2:
	c.mv	a0,s0
	jal	ra,0000000023050914
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	blt	a5,zero,0000000023050BA0

l23050BD4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl60x_current_time_us: 23050BE2
;;   Called from:
;;     2305E102 (in mm_check_rssi)
bl60x_current_time_us proc
	lui	a5,00044B08
	lw	a4,a5,+000000A4
	lw	a5,a5,+000000A8
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; mac_ie_find: 23050BF4
;;   Called from:
;;     23009850 (in bl_rx_scanu_result_ind)
;;     2304C94A (in scanu_frame_handler)
;;     2304CA48 (in scanu_frame_handler)
;;     2304CB00 (in scanu_frame_handler)
;;     2304CD44 (in scanu_frame_handler)
;;     2304CDCC (in scanu_frame_handler)
;;     2304CE6C (in scanu_frame_handler)
;;     2304F9DA (in apm_probe_req_handler)
;;     2304FA08 (in apm_probe_req_handler)
;;     2304FBE4 (in apm_assoc_req_handler)
;;     2304FC50 (in apm_assoc_req_handler)
;;     2304FC78 (in apm_assoc_req_handler)
;;     2304FCC2 (in apm_assoc_req_handler)
;;     2304FD6A (in apm_assoc_req_handler)
;;     2305F056 (in scan_search_ds)
;;     230605A2 (in me_extract_rate_set)
;;     230605CC (in me_extract_rate_set)
;;     23060660 (in me_extract_power_constraint)
;;     23060686 (in me_extract_country_reg)
;;     230606FE (in me_extract_mobility_domain)
;;     2306074C (in me_extract_csa)
;;     2306075A (in me_extract_csa)
;;     23060770 (in me_extract_csa)
;;     2306077E (in me_extract_csa)
;;     23060790 (in me_extract_csa)
;;     23061DB0 (in me_beacon_check)
;;     23061E1A (in me_beacon_check)
mac_ie_find proc
	c.add	a1,a0

l23050BF6:
	bltu	a0,a1,0000000023050BFE

l23050BFA:
	c.li	a0,00000000

l23050BFC:
	c.jr	ra

l23050BFE:
	lbu	a5,a0,+00000000
	beq	a5,a2,0000000023050BFC

l23050C06:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	0000000023050BF6

;; mac_vsie_find: 23050C10
;;   Called from:
;;     23009896 (in bl_rx_scanu_result_ind)
;;     2304CC10 (in scanu_frame_handler)
;;     2304CF12 (in scanu_frame_handler)
;;     2304FD2C (in apm_assoc_req_handler)
;;     2304FE5A (in apm_assoc_req_handler)
mac_vsie_find proc
	c.add	a1,a0
	addi	a4,zero,+000000DD

l23050C16:
	bltu	a0,a1,0000000023050C36

l23050C1A:
	beq	a0,a1,0000000023050C6A

l23050C1E:
	lui	a0,0002307C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000003A4
	c.swsp	ra,00000084
	jal	ra,0000000023003A8A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23050C36:
	lbu	a5,a0,+00000000
	bne	a5,a4,0000000023050C60

l23050C3E:
	addi	a6,a0,+00000002
	c.li	a5,00000000

l23050C44:
	bne	a3,a5,0000000023050C4A

l23050C48:
	c.jr	ra

l23050C4A:
	add	a7,a6,a5
	c.addi	a5,00000001
	add	t1,a2,a5
	lbu	a7,a7,+00000000
	lbu	t1,t1,-00000001
	beq	t1,a7,0000000023050C44

l23050C60:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	0000000023050C16

l23050C6A:
	c.li	a0,00000000
	c.jr	ra

;; GetTxEAPOLBuffer: 23050C6E
;;   Called from:
;;     230512BC (in GeneratePWKMsg2)
;;     23051806 (in GenerateGrpMsg2)
;;     23051AF0 (in GeneratePWKMsg4)
;;     23054466 (in PrepDefaultEapolMsg)
GetTxEAPOLBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	c.mv	s0,a2
	addi	a0,a0,+000003BC
	addi	a2,s1,+00000408
	jal	ra,0000000023064D1E
	c.bnez	s0,0000000023050CD6

l23050CA6:
	c.li	a0,0000000C
	jal	ra,000000002305030E
	c.mv	s0,a0
	c.bnez	a0,0000000023050CC2

l23050CB0:
	c.li	s0,00000000

l23050CB2:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23050CC2:
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	addi	a0,zero,+00000200
	jal	ra,000000002305030E
	c.sw	s0,8(a0)
	c.beqz	a0,0000000023050CB0

l23050CD6:
	c.lw	s0,8(a5)
	sw	s3,s0,+00000000
	lui	a0,0002307C
	sw	a5,s2,+00000000
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s1,+00000408
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	0000000023050CB2

;; UpdateEAPOLWcbLenAndTransmit: 23050D02
;;   Called from:
;;     23051316 (in GeneratePWKMsg2)
;;     2305183E (in GenerateGrpMsg2)
;;     23051B20 (in GeneratePWKMsg4)
;;     23054556 (in GeneratePWKMsg1)
;;     23054644 (in GeneratePWKMsg3)
UpdateEAPOLWcbLenAndTransmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	c.mv	s4,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a2,s2,+00000430
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.lw	s0,0(a5)
	c.lw	s0,8(a3)
	addi	a4,s4,+00000004
	lbu	a0,a5,+00000001
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	a3,0000000E
	jal	ra,000000002304A74E
	c.lw	s0,8(a0)
	jal	ra,00000000230503A2
	c.mv	a0,s0
	jal	ra,00000000230503A2
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,+00000430
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; keyMgmtProcessMsgExt: 23050D80
;;   Called from:
;;     230531AA (in ProcessRxEAPOL_PwkMsg3)
;;     2305327A (in ProcessRxEAPOL_GrpMsg1)
keyMgmtProcessMsgExt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307C
	srl	a1,a1,s0
	lui	a0,0002307C
	addi	a2,s1,+00000450
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a2,s1,+00000450
	srl	a1,a1,s0
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; KeyMgmtInitSta: 23050DD4
;;   Called from:
;;     23050FF8 (in supplicantInitSession)
KeyMgmtInitSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+00000468
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a0,s3,+00000008
	addi	a0,a0,+00000054
	jal	ra,00000000230533C2
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	addi	a2,s1,+00000468
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; keyMgmtSta_StartSession: 23050E36
;;   Called from:
;;     23051014 (in supplicantInitSession)
keyMgmtSta_StartSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	c.mv	s6,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,+00000514
	jal	ra,0000000023064D1E
	lw	s4,s0,+00000008
	c.mv	a1,s6
	c.li	a2,00000006
	sw	s0,s4,+0000016C
	c.lw	s0,8(a0)
	addi	a0,a0,+0000002C
	jal	ra,000000002306CF80
	c.lw	s0,8(a0)
	c.li	a2,00000006
	c.mv	a1,s5
	addi	a0,a0,+00000026
	jal	ra,000000002306CF80
	lui	a1,00000989
	addi	a0,s4,+00000054
	addi	a1,a1,+00000680
	jal	ra,0000000023053342
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s2,+00000514
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; init_customApp_mibs: 23050ED0
;;   Called from:
;;     2305109A (in supplicantDisable)
;;     230514AA (in supplicantInit)
init_customApp_mibs proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a2,s2,+00000544
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.li	a2,00000003
	c.li	a1,00000000
	addi	a0,s0,+00000032
	jal	ra,000000002306D1BC
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,+00000035
	jal	ra,000000002306D1BC
	lhu	a5,s0,+00000036
	c.lwsp	t3,00000020
	addi	a2,s2,+00000544
	ori	a5,a5,+00000001
	sh	a5,s0,+00000036
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	a6,00000048
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; supplicantIsEnabled: 23050F4A
;;   Called from:
;;     23050FF0 (in supplicantInitSession)
;;     2305107C (in supplicantDisable)
supplicantIsEnabled proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s2,+00000558
	jal	ra,0000000023064D1E
	c.lw	s0,8(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023050FA2

l23050F82:
	lw	a1,s3,+00000120
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	srl	a1,a1,s1
	addi	a2,s2,+00000558
	jal	ra,0000000023064D1E
	c.lw	s0,8(a5)
	c.lw	a5,52(a0)
	c.srli	a0,00000008
	c.andi	a0,00000001

l23050FA2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantInitSession: 23050FB0
;;   Called from:
;;     2304E408 (in sm_assoc_rsp_handler)
supplicantInitSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s2,a2
	addi	a2,s1,+0000052C
	c.mv	s3,a3
	c.mv	s4,a4
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	jal	ra,0000000023050F4A
	c.beqz	a0,0000000023051018

l23050FF6:
	c.mv	a0,s0
	jal	ra,0000000023050DD4
	c.lw	s0,8(a0)
	c.mv	a2,s2
	c.mv	a1,s5
	c.addi	a0,00000006
	jal	ra,000000002306CF80
	c.lw	s0,8(a5)
	c.mv	a2,s4
	c.mv	a1,s3
	sb	s2,a5,+00000005
	c.mv	a0,s0
	jal	ra,0000000023050E36

l23051018:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,+0000052C
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; supplicantDisable: 23051048
;;   Called from:
;;     2305DFA8 (in mm_sta_del)
supplicantDisable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s2,+0000056C
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	jal	ra,0000000023050F4A
	c.beqz	a0,00000000230510C2

l23051082:
	c.lw	s0,8(a0)
	addi	a0,a0,+0000015C
	jal	ra,00000000230479AA
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	c.andi	a5,FFFFFFFE
	sb	a5,a4,+00000035
	c.lw	s0,8(a0)
	jal	ra,0000000023050ED0
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	addi	a2,s2,+0000056C
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l230510C2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantEnable: 230510D0
;;   Called from:
;;     2305DDC8 (in mm_sta_add)
supplicantEnable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s6,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	c.mv	s5,a2
	addi	a0,a0,+000003BC
	addi	a2,s1,+00000580
	c.mv	s4,a4
	c.mv	s3,a3
	c.li	s2,00000002
	jal	ra,0000000023064D1E
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000001
	sb	a5,a4,+00000035
	addi	a5,s6,-00000004
	bltu	s2,a5,00000000230511C6

l23051128:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000020
	sh	a5,a4,+00000036
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000004
	sb	a5,a4,+00000035
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000004E
	ori	a5,a5,+00000001
	sh	a5,a4,+0000004E
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,000000002306CF80
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,000000002306CF80
	c.lw	s0,8(a5)
	beq	s4,zero,00000000230511C0

l23051174:
	c.li	a4,00000006
	sb	a4,a5,+0000003D

l2305117A:
	c.lw	s0,8(a0)
	lui	a1,00023082
	c.li	a2,00000003
	addi	a1,a1,+000007F8

l23051186:
	addi	a0,a0,+0000003A
	jal	ra,000000002306CF80

l2305118E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s1,+00000580
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l230511C0:
	sb	s2,a5,+0000003D
	c.j	000000002305117A

l230511C6:
	c.li	a5,00000003
	bne	s6,a5,000000002305118E

l230511CC:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000008
	sh	a5,a4,+00000036
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,000000002306CF80
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,000000002306CF80
	c.lw	s0,8(a5)
	lui	a1,00023083
	c.li	a2,00000003
	sb	s2,a5,+0000003D
	c.lw	s0,8(a0)
	addi	a1,a1,-000007EC
	c.j	0000000023051186

;; keyMgmtFormatWpaRsnIe: 2305120A
;;   Called from:
;;     230512F8 (in GeneratePWKMsg2)
keyMgmtFormatWpaRsnIe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s4,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+00000594
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a2,s1,+00000594
	srl	a1,a1,s0
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	s8,00000004
	lbu	a0,s3,+00000001
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s4
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002305E50E

;; GeneratePWKMsg2: 23051270
;;   Called from:
;;     23051430 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
GeneratePWKMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s3,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s4,a2
	addi	a2,s3,+00000478
	c.mv	s5,a3
	jal	ra,0000000023064D1E
	lw	s1,s2,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	lw	s6,s2,+00000008
	jal	ra,0000000023050C6E
	c.beqz	a0,0000000023051350

l230512C2:
	c.lw	s1,8(a2)
	c.lwsp	a2,000000C4
	c.mv	s2,a0
	c.lwsp	t3,00000044
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023052A2A
	c.lwsp	t3,00000004
	c.li	a5,00000001
	lbu	a4,s0,+00000012
	beq	a4,a5,0000000023051306

l230512E4:
	c.lw	s1,8(a2)
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	addi	a1,s0,+00000071
	addi	a2,a2,+00000026
	c.mv	a0,s1
	jal	ra,000000002305120A
	sb	a0,s0,+0000006F
	c.srli	a0,00000008
	sb	a0,s0,+00000070

l23051306:
	c.lwsp	t3,00000044
	c.mv	a3,s5
	c.li	a2,00000001
	c.mv	a1,s4
	jal	ra,00000000230525CC
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023050D02
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	addi	a2,s3,+00000478
	jal	ra,0000000023064D1E
	c.li	a0,00000000

l2305133C:
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

l23051350:
	c.li	a0,00000001
	c.j	000000002305133C

;; KeyMgmtStaHsk_Recvd_PWKMsg1: 23051354
;;   Called from:
;;     23051CC4 (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg1 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	lui	a5,00044B00
	c.mv	s8,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000000
	srl	a1,a1,a5
	c.mv	s4,a0
	lui	s6,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s7,a2
	addi	a2,s6,+000004A8
	jal	ra,0000000023064D1E
	lw	s0,s2,+00000008
	c.mv	a0,s4
	addi	s3,s0,+00000054
	c.mv	a1,s3
	jal	ra,0000000023053098
	c.bnez	a0,00000000230513C6

l230513AA:
	c.li	s1,00000000

l230513AC:
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
	c.addi16sp	00000040
	c.jr	ra

l230513C6:
	c.mv	s5,a0
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023052B8A
	c.mv	s1,a0
	c.beqz	a0,0000000023051424

l230513D8:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023052C7C
	c.beqz	a0,00000000230513AA

l230513E6:
	lw	a0,s2,+00000008
	lbu	a1,a0,+00000005
	c.addi	a0,00000006
	jal	ra,0000000023053640
	c.mv	s1,a0
	c.beqz	a0,00000000230513AA

l230513F8:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023052CFE
	c.swsp	a0,00000000
	addi	a7,s0,+00000128
	c.mv	a0,s1
	addi	a6,s0,+000000A4
	addi	a5,s0,+00000094
	addi	a4,s0,+00000074
	c.mv	a3,s3
	c.mv	a2,s8
	c.mv	a1,s7
	jal	ra,0000000023052F22
	c.li	s1,00000001

l23051424:
	c.li	a3,00000000
	addi	a2,s0,+00000094
	addi	a1,s0,+00000074
	c.mv	a0,s4
	jal	ra,0000000023051270
	c.bnez	a0,000000002305146C

l23051436:
	c.li	a5,00000001
	bne	s1,a5,000000002305144A

l2305143C:
	addi	a1,s5,+00000009
	c.mv	a0,s3
	jal	ra,00000000230523D0
	sw	zero,s0,+000000CC

l2305144A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s6,+000004A8
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	00000000230513AC

l2305146C:
	c.li	s1,00000000
	c.j	000000002305144A

;; supplicantInit: 23051470
;;   Called from:
;;     2305157C (in allocSupplicantData)
supplicantInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a2,s2,+000005AC
	addi	a0,a0,+000003BC
	addi	s4,s0,+00000054
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	jal	ra,0000000023050ED0
	c.li	a2,00000004
	addi	a1,zero,+000000FF
	addi	a0,s0,+00000198
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000144
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002306D1BC
	c.li	a5,00000001
	c.mv	a0,s4
	sw	zero,s0,+00000158
	sw	a5,s0,+00000154
	sb	zero,s0,+00000150
	jal	ra,00000000230532E2
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,+000005AC
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; allocSupplicantData: 23051502
;;   Called from:
;;     2305EEBC (in bl_init)
allocSupplicantData proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s0,0002307C
	lui	a0,0002307C
	addi	a2,s0,+0000041C
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a5,s2,+00000008
	c.bnez	a5,0000000023051586

l23051538:
	lbu	a5,s2,+00000000
	c.beqz	a5,0000000023051568

l2305153E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+0000041C
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

l23051568:
	lui	a0,00042016
	addi	s1,a0,+000001E4
	c.lw	s1,0(a5)
	c.bnez	a5,000000002305153E

l23051574:
	c.li	a5,00000001
	addi	a0,a0,+000001E4
	c.sw	s1,0(a5)
	jal	ra,0000000023051470
	sw	s1,s2,+00000008
	c.j	000000002305153E

l23051586:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; keyMgmtGetKeySize: 23051592
;;   Called from:
;;     23051612 (in add_key_to_mac)
;;     23051910 (in add_mfp_key_to_mac)
keyMgmtGetKeySize proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s3,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s0
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+000005BC
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a2,s1,+000005BC
	srl	a1,a1,s0
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	lw	a0,s4,+00000008
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.mv	a1,s3
	c.lwsp	a2,00000068
	addi	a0,a0,+00000035
	c.addi16sp	00000020
	jal	zero,000000002305225A

;; add_key_to_mac: 230515FC
;;   Called from:
;;     2305176C (in keyMgmtKeyGroupTxDone.isra.1)
;;     230519EA (in keyMgmtPlumbPairwiseKey)
;;     2305469C (in ProcessPWKMsg4)
;;     23054962 (in InitGroupKey)
add_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	lbu	a5,a0,+00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	s0,00000010
	c.bnez	a5,000000002305161A

l23051612:
	jal	ra,0000000023051592
	andi	s0,a0,+000000FF

l2305161A:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	sltu	a5,zero,s2
	sb	a5,sp,+0000002F
	lbu	a4,s1,+00000002
	lbu	a5,s1,+00000000
	beq	s2,zero,0000000023051670

l2305163A:
	lbu	a3,s1,+00000001
	sb	a4,sp,+0000002D
	sb	a3,sp,+00000005
	c.bnez	a5,0000000023051668

l23051648:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	addi	a1,a1,+000000D8

l23051650:
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.li	a5,00000010
	sb	s0,sp,+00000008
	bne	s0,a5,00000000230516A4

l23051660:
	c.li	a5,00000002

l23051662:
	sb	a5,sp,+0000002C
	c.j	00000000230516C6

l23051668:
	c.mv	a2,s0
	addi	a1,s1,+000000C4
	c.j	0000000023051650

l23051670:
	c.li	a3,FFFFFFFF
	sb	a3,sp,+00000005
	sb	a4,sp,+0000002D
	c.bnez	a5,000000002305168E

l2305167C:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	lhu	a5,a1,+00000126
	addi	a1,a1,+00000100
	sb	a5,sp,+00000004
	c.j	0000000023051650

l2305168E:
	c.mv	a0,s1
	jal	ra,0000000023054DE2
	lhu	a5,a0,+000000F2
	c.mv	a2,s0
	addi	a1,a0,+000000CC
	sb	a5,sp,+00000004
	c.j	0000000023051650

l230516A4:
	addi	a5,zero,+00000020
	bne	s0,a5,00000000230516F8

l230516AC:
	c.li	a5,00000001
	sb	a5,sp,+0000002C
	beq	s2,zero,00000000230516C6

l230516B6:
	c.lwsp	tp,000001B4
	c.lwsp	t3,000000C4
	c.lwsp	zero,000001F4
	c.swsp	a3,0000008C
	c.lwsp	s0,000001B4
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a3,00000010

l230516C6:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,0002307C
	addi	a0,a0,+0000063C
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000004
	jal	ra,000000002305D926
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l230516F8:
	c.li	a5,0000000D
	bne	s0,a5,0000000023051702

l230516FE:
	c.li	a5,00000003
	c.j	0000000023051662

l23051702:
	c.li	a5,00000005
	bne	s0,a5,000000002305170E

l23051708:
	sb	zero,sp,+0000002C
	c.j	00000000230516C6

l2305170E:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000783
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	ra,0000000023054FF4
	c.j	00000000230516C6

;; keyMgmtKeyGroupTxDone.isra.1: 23051728
;;   Called from:
;;     23051836 (in GenerateGrpMsg2)
;;     23051B4C (in GeneratePWKMsg4)
keyMgmtKeyGroupTxDone.isra.1 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s1,+000005E8
	jal	ra,0000000023064D1E
	c.lw	s0,0(s0)
	addi	a5,zero,+000000FF
	lbu	a0,s0,+00000003
	beq	a0,a5,0000000023051768

l23051764:
	jal	ra,000000002305DA56

l23051768:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230515FC
	c.lw	s0,8(a5)
	sb	a0,s0,+00000003
	c.li	a4,00000001
	sw	a4,a5,+000000C8
	c.lw	s0,8(a5)
	lw	a3,a5,+000000CC
	c.bnez	a3,0000000023051792

l23051784:
	sw	a4,a5,+000000CC
	lbu	a0,s0,+00000001
	c.li	a1,00000000
	jal	ra,000000002304E4E8

l23051792:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s1,+000005E8
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GenerateGrpMsg2: 230517BE
;;   Called from:
;;     230518D8 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
GenerateGrpMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a2,s2,+00000498
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	lw	s6,s0,+00000008
	jal	ra,0000000023050C6E
	c.beqz	a0,0000000023051870

l2305180C:
	lw	a2,s4,+00000008
	c.mv	s0,a0
	c.lwsp	t3,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023052A2A
	c.lwsp	t3,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s5,+00000040
	jal	ra,00000000230525CC
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,0000000023051728
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,0000000023050D02
	lw	a1,s3,+00000120
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	srl	a1,a1,s1
	addi	a2,s2,+00000498
	jal	ra,0000000023064D1E
	c.li	a0,00000000

l2305185C:
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

l23051870:
	c.li	a0,00000001
	c.j	000000002305185C

;; KeyMgmtStaHsk_Recvd_GrpMsg1: 23051874
;;   Called from:
;;     23051CCC (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_GrpMsg1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(a5)
	srl	a1,a1,s3
	c.mv	s2,a0
	c.lw	a5,8(s0)
	lui	s4,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s4,+000004E0
	addi	s0,s0,+00000054
	jal	ra,0000000023064D1E
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230531E8
	c.bnez	a0,00000000230518D2

l230518BC:
	c.li	s1,00000000

l230518BE:
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

l230518D2:
	c.mv	s1,a0
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230517BE
	c.bnez	a0,00000000230518BC

l230518DE:
	addi	a1,s1,+00000009
	c.mv	a0,s0
	jal	ra,00000000230523D0
	lw	a1,s5,+00000120
	lui	a0,0002307C
	addi	a2,s4,+000004E0
	srl	a1,a1,s3
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	00000000230518BE

;; add_mfp_key_to_mac: 23051902
;;   Called from:
;;     23051A02 (in keyMgmtPlumbPairwiseKey)
add_mfp_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.swsp	s2,00000018
	c.mv	s2,a1
	jal	ra,0000000023051592
	andi	s1,a0,+000000FF
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lbu	a5,s0,+00000002
	sb	s1,sp,+00000008
	sb	a5,sp,+0000002D
	c.li	a5,00000005
	sb	a5,sp,+0000002C
	addi	a5,zero,-000000FC
	sh	a5,sp,+00000004
	lbu	a5,s0,+00000000
	beq	s2,zero,000000002305199A

l23051946:
	c.bnez	a5,0000000023051956

l23051948:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+000000D8

l23051950:
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80

l23051956:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,0002307C
	addi	a0,a0,+00000688
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000004
	jal	ra,000000002305D926
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a0,a0,+000006D8
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2305199A:
	c.bnez	a5,0000000023051956

l2305199C:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+00000100
	c.j	0000000023051950

;; keyMgmtPlumbPairwiseKey: 230519A6
;;   Called from:
;;     23051A6A (in keyMgmtKeyPairwiseTxDone.isra.2)
keyMgmtPlumbPairwiseKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+000005D0
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.lw	s0,8(a0)
	addi	a2,zero,+00000028
	addi	a1,a0,+00000128
	addi	a0,a0,+000000D8
	jal	ra,000000002306CF80
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230515FC
	c.lw	s0,8(a5)
	sb	a0,s0,+00000004
	lbu	a4,a5,+0000003D
	c.li	a5,00000006
	bne	a4,a5,0000000023051A0A

l230519FE:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023051902
	sb	a0,s0,+00000005

l23051A0A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s0,00000004
	srl	a1,a1,a5
	c.lwsp	a2,00000020
	addi	a2,s1,+000005D0
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; keyMgmtKeyPairwiseTxDone.isra.2: 23051A32
;;   Called from:
;;     23051B46 (in GeneratePWKMsg4)
;;     23051B9E (in GeneratePWKMsg4)
keyMgmtKeyPairwiseTxDone.isra.2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307C
	srl	a1,a1,s0
	c.mv	s3,a0
	lui	a0,0002307C
	addi	a2,s1,+00000600
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	s3,s3,+00000000
	c.mv	a0,s3
	jal	ra,00000000230519A6
	lw	a5,s3,+00000008
	c.li	a4,00000001
	lui	a0,0002307C
	sw	a4,a5,+000000D0
	lw	a1,s2,+00000120
	addi	a2,s1,+00000600
	addi	a0,a0,+000003D0
	srl	a1,a1,s0
	jal	ra,0000000023064D1E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; GeneratePWKMsg4: 23051AA0
;;   Called from:
;;     23051C00 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
GeneratePWKMsg4 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	lui	s2,00044B00
	c.mv	s8,a1
	lw	a1,s2,+00000120
	addi	s1,zero,+000003E8
	lui	s6,0002307C
	srl	a1,a1,s1
	lui	s5,0002307C
	c.mv	s0,a0
	c.mv	s7,a2
	addi	a0,s5,+000003BC
	addi	a2,s6,+00000488
	jal	ra,0000000023064D1E
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	lw	s9,s0,+00000008
	jal	ra,0000000023050C6E
	c.beqz	a0,0000000023051BA4

l23051AF6:
	lw	a2,s4,+00000008
	c.mv	s3,a0
	c.lwsp	a2,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s9
	addi	a2,a2,+00000026
	jal	ra,0000000023052A2A
	c.lwsp	a2,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s8,+00000040
	jal	ra,00000000230525CC
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,0000000023050D02
	lui	s3,0002307C
	beq	s7,zero,0000000023051B9C

l23051B2C:
	lw	a1,s2,+00000120
	lui	s4,0002307C
	addi	a2,s4,+0000061C
	srl	a1,a1,s1
	addi	a0,s5,+000003BC
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	jal	ra,0000000023051A32
	c.mv	a0,s0
	jal	ra,0000000023051728
	lw	a1,s2,+00000120
	addi	a2,s4,+0000061C
	addi	a0,s3,+000003D0
	srl	a1,a1,s1
	jal	ra,0000000023064D1E

l23051B64:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s3,+000003D0
	srl	a1,a1,a5
	addi	a2,s6,+00000488
	jal	ra,0000000023064D1E
	c.li	a0,00000000

l23051B82:
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

l23051B9C:
	c.mv	a0,s0
	jal	ra,0000000023051A32
	c.j	0000000023051B64

l23051BA4:
	c.li	a0,00000001
	c.j	0000000023051B82

;; KeyMgmtStaHsk_Recvd_PWKMsg3: 23051BA8
;;   Called from:
;;     23051C8C (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s0,0000000C
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(s0)
	srl	a1,a1,s3
	c.mv	s2,a0
	lui	s4,0002307C
	lui	a0,0002307C
	addi	a2,s4,+000004C4
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.lw	s0,8(s1)
	c.mv	a0,s2
	addi	s1,s1,+00000054
	c.mv	a1,s1
	jal	ra,000000002305312A
	c.mv	s0,a0
	c.beqz	a0,0000000023051C2A

l23051BF2:
	lbu	a2,a0,+00000004
	c.mv	a1,s1
	c.mv	a0,s2
	c.addi	a2,FFFFFFFE
	sltiu	a2,a2,+00000001
	jal	ra,0000000023051AA0
	c.bnez	a0,0000000023051C2A

l23051C06:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,00000000230523D0
	lw	a1,s5,+00000120
	lui	a0,0002307C
	addi	a2,s4,+000004C4
	srl	a1,a1,s3
	addi	a0,a0,+000003D0
	c.li	s0,00000000
	jal	ra,0000000023064D1E

l23051C2A:
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

;; ProcessKeyMgmtDataSta: 23051C3E
;;   Called from:
;;     23051DA2 (in ProcessEAPoLPkt)
ProcessKeyMgmtDataSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000008
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	s0,0002307C
	lui	a0,0002307C
	c.mv	s4,a2
	addi	a0,a0,+000003BC
	addi	a2,s0,+000004FC
	jal	ra,0000000023064D1E
	lbu	a5,s2,+00000006
	c.andi	a5,00000008
	c.beqz	a5,0000000023051CCA

l23051C82:
	lbu	a5,s2,+00000005
	c.andi	a5,00000001
	c.beqz	a5,0000000023051CBE

l23051C8A:
	c.mv	a0,s1
	jal	ra,0000000023051BA8

l23051C90:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000004FC
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l23051CBE:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023051354
	c.j	0000000023051C90

l23051CCA:
	c.mv	a0,s1
	jal	ra,0000000023051874
	c.j	0000000023051C90

;; ProcessEAPoLPkt: 23051CD2
;;   Called from:
;;     2304C2EE (in rxu_cntrl_frame_handle)
ProcessEAPoLPkt proc
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
	lui	s0,00044B00
	c.mv	s6,a1
	lw	a1,s0,+00000120
	addi	s3,zero,+000003E8
	lui	s4,0002307C
	srl	a1,a1,s3
	lui	s2,0002307C
	c.mv	s1,a0
	c.mv	s7,a2
	addi	a0,s2,+000003BC
	addi	a2,s4,+000003F8
	lui	s5,0002307C
	jal	ra,0000000023064D1E
	c.lw	s1,8(a5)
	lbu	a4,a5,+00000001
	c.li	a5,00000003
	bne	a4,a5,0000000023051DA8

l23051D20:
	lw	a1,s0,+00000120
	lui	s0,0002307C
	addi	a2,s0,+000003E4
	srl	a1,a1,s3
	addi	a0,s2,+000003BC
	jal	ra,0000000023064D1E
	c.lw	s1,0(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023051D9C

l23051D44:
	c.mv	a0,s1
	jal	ra,0000000023054804

l23051D4A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,+000003E4
	srl	a1,a1,a5
	addi	a0,s5,+000003D0
	c.li	s0,00000001
	jal	ra,0000000023064D1E

l23051D68:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s5,+000003D0
	srl	a1,a1,a5
	addi	a2,s4,+000003F8
	jal	ra,0000000023064D1E
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

l23051D9C:
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s1
	jal	ra,0000000023051C3E
	c.j	0000000023051D4A

l23051DA8:
	c.li	s0,00000000
	c.j	0000000023051D68

;; process_rsn_ie: 23051DAC
;;   Called from:
;;     23009882 (in bl_rx_scanu_result_ind)
;;     2304CEA0 (in scanu_frame_handler)
process_rsn_ie proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s7,a5
	lbu	a5,a0,+00000009
	c.mv	s2,a4
	lbu	a4,a0,+00000008
	c.slli	a5,08
	c.mv	s0,a0
	c.or	a5,a4
	c.li	a4,00000002
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s8,a3
	addi	s4,a0,+0000000E
	addi	s6,a0,+0000000A
	bne	a5,a4,0000000023051E2A

l23051DEE:
	lbu	a5,a0,+00000001
	lui	a1,00023083
	sb	zero,a0,+00000009
	c.addi	a5,FFFFFFFC
	sb	a5,a0,+00000001
	c.li	a5,00000001
	sb	a5,a0,+00000008
	c.li	a2,00000004
	addi	a1,a1,-000007FC
	c.mv	a0,s4
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051E1E

l23051E14:
	c.li	a2,00000004
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,000000002306CF80

l23051E1E:
	c.li	a2,0000000C
	addi	a1,s0,+00000012
	c.mv	a0,s4
	jal	ra,000000002306CF80

l23051E2A:
	c.li	a2,00000002
	c.mv	a1,s4
	addi	a0,sp,+0000000E
	jal	ra,000000002306CF80
	c.li	a5,00000000
	lui	s9,00023083
	lui	s10,00023083

l23051E40:
	lhu	a4,sp,+0000000E
	bltu	a5,a4,0000000023051F4E

l23051E48:
	c.li	a5,00000002
	bne	a4,a5,0000000023051E98

l23051E4E:
	c.li	a5,00000014
	sb	a5,s0,+00000001
	c.li	a2,00000002
	c.li	a5,00000001
	addi	a1,sp,+0000000E
	c.mv	a0,s4
	sh	a5,sp,+0000000E
	jal	ra,000000002306CF80
	addi	s3,s0,+00000014
	c.li	a2,00000004
	beq	s7,zero,0000000023051F96

l23051E70:
	lui	a1,00023083
	addi	a1,a1,-00000800

l23051E78:
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051E8C

l23051E80:
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80

l23051E8C:
	c.li	a2,00000002
	addi	a1,s0,+00000018
	c.mv	a0,s3
	jal	ra,000000002306CF80

l23051E98:
	lbu	a5,s2,+00000001
	c.andi	a5,00000001
	c.beqz	a5,0000000023051EEA

l23051EA0:
	lbu	a5,s2,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023051EAE

l23051EAA:
	bne	s7,zero,0000000023051EEA

l23051EAE:
	c.li	a5,00000001
	sb	a5,s8,+00000000
	addi	a5,zero,-00000040
	sb	a5,s0,+00000014
	lbu	a5,s0,+00000001
	lui	a1,00023083
	sb	zero,s0,+00000016
	c.addi	a5,00000002
	sb	a5,s0,+00000001
	sb	zero,s0,+00000017
	c.li	a2,00000004
	addi	a1,a1,-000007F4
	addi	a0,s0,+00000018
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000001
	c.addi	a5,00000004
	sb	a5,s0,+00000001

l23051EEA:
	lui	s3,00023083
	c.li	a2,00000004
	addi	a1,s3,-000007FC
	c.mv	a0,s6
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051FA0

l23051EFC:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000008

l23051F04:
	sb	a5,s5,+00000000

l23051F08:
	addi	s2,s0,+00000004
	c.li	a2,00000004
	addi	a1,s3,-000007FC
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051FBC

l23051F1A:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l23051F22:
	sb	a5,s1,+00000000

l23051F26:
	lbu	a0,s0,+00000001
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi	a0,00000002
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
	andi	a0,a0,+000000FF
	c.addi16sp	00000050
	c.jr	ra

l23051F4E:
	addi	s3,a5,+00000001
	slli	s11,s3,00000002
	c.addi	s11,00000002
	c.add	s11,s6
	c.li	a2,00000004
	addi	a1,s9,-00000800
	c.mv	a0,s11
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051F7A

l23051F68:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000020
	sb	a5,s2,+00000000

l23051F74:
	andi	a5,s3,+000000FF
	c.j	0000000023051E40

l23051F7A:
	c.li	a2,00000004
	addi	a1,s10,-000007F0
	c.mv	a0,s11
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051F74

l23051F88:
	lbu	a5,s2,+00000001
	ori	a5,a5,+00000001
	sb	a5,s2,+00000001
	c.j	0000000023051F74

l23051F96:
	lui	a1,00023083
	addi	a1,a1,-000007F0
	c.j	0000000023051E78

l23051FA0:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-00000800
	c.mv	a0,s6
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051F08

l23051FB2:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023051F04

l23051FBC:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-00000800
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051FD8

l23051FCE:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023051F22

l23051FD8:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000007F8
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051FF4

l23051FEA:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	0000000023051F22

l23051FF4:
	lui	a1,00023082
	c.li	a2,00000004
	addi	a1,a1,+000007FC
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023051F26

l23052006:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	0000000023051F22

;; process_wpa_ie: 23052010
;;   Called from:
;;     230098C8 (in bl_rx_scanu_result_ind)
;;     2304CF50 (in scanu_frame_handler)
process_wpa_ie proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s5,00000080
	lbu	a5,a0,+0000000D
	lbu	a4,a0,+0000000C
	c.mv	s0,a0
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000002
	c.mv	s1,a1
	c.mv	s2,a2
	addi	s4,a0,+0000000E
	lui	s3,00023083
	bne	a5,a4,0000000023052078

l23052040:
	c.li	a5,00000016
	sb	a5,a0,+00000001
	addi	s5,a0,+00000012
	c.li	a5,00000001
	sb	a5,a0,+0000000C
	sb	zero,a0,+0000000D
	c.li	a2,00000004
	addi	a1,s3,-000007E0
	c.mv	a0,s5
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002305206C

l23052062:
	c.li	a2,00000004
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002306CF80

l2305206C:
	c.li	a2,00000008
	addi	a1,s0,+00000016
	c.mv	a0,s5
	jal	ra,000000002306CF80

l23052078:
	c.li	a2,00000004
	addi	a1,s3,-000007E0
	c.mv	a0,s4
	jal	ra,000000002306CEF8
	c.bnez	a0,00000000230520CC

l23052086:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000008

l2305208E:
	sb	a5,s2,+00000000

l23052092:
	addi	s2,s0,+00000008
	c.li	a2,00000004
	addi	a1,s3,-000007E0
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,00000000230520E8

l230520A4:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l230520AC:
	sb	a5,s1,+00000000

l230520B0:
	lbu	a0,s0,+00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi	a0,00000002
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	andi	a0,a0,+000000FF
	c.addi16sp	00000020
	c.jr	ra

l230520CC:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000007E4
	c.mv	a0,s4
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023052092

l230520DE:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000004
	c.j	000000002305208E

l230520E8:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000007E4
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023052104

l230520FA:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	00000000230520AC

l23052104:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000007DC
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023052120

l23052116:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	00000000230520AC

l23052120:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000007E8
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,00000000230520B0

l23052132:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	00000000230520AC

;; keyMgmtStaRsnSecuredTimeoutHandler: 2305213C
keyMgmtStaRsnSecuredTimeoutHandler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	addi	a2,s0,-000006B0
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.beqz	s1,000000002305217E

l2305216C:
	c.lw	s1,120(a5)
	c.bnez	a5,000000002305217E

l23052170:
	lw	a5,s1,+00000118
	c.li	a1,0000000F
	lbu	a0,a5,+00000001
	jal	ra,000000002304E4E8

l2305217E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-000006B0
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; supplicantGenerateRand: 230521A6
;;   Called from:
;;     230530F4 (in GetKeyMsgNonceFromEAPOL)
;;     23054502 (in GeneratePWKMsg1)
;;     230549B4 (in GenerateGTK_internal)
;;     230549CC (in GenerateGTK_internal)
supplicantGenerateRand proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s4,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+00000700
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,0000000023036C90
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a2,s1,+00000700
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; ComputeEAPOL_MIC: 2305220A
;;   Called from:
;;     2305258C (in IsEAPOL_MICValid)
;;     23052670 (in KeyMgmtSta_PopulateEAPOLLengthMic)
ComputeEAPOL_MIC proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000004
	c.swsp	a0,00000084
	c.mv	a7,a2
	c.bnez	a4,000000002305221C

l23052216:
	lbu	a4,a0,+00000006
	c.andi	a4,00000007

l2305221C:
	c.li	a2,00000001
	addi	a5,a0,+00000051
	beq	a4,a2,000000002305223A

l23052226:
	c.li	a2,00000002
	beq	a4,a2,0000000023052248

l2305222C:
	c.mv	a2,a1
	c.mv	a3,a5
	c.mv	a1,a0
	c.mv	a0,a7
	jal	ra,0000000023065000
	c.j	0000000023052242

l2305223A:
	c.mv	a4,a5
	c.mv	a2,a7
	jal	ra,000000002306538C

l23052242:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23052248:
	c.mv	a4,a3
	c.li	a6,00000010
	c.mv	a3,a7
	c.li	a2,00000001
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,00000000230654AC
	c.j	0000000023052242

;; keyMgmtGetKeySize_internal: 2305225A
;;   Called from:
;;     230515F8 (in keyMgmtGetKeySize)
keyMgmtGetKeySize_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s0,0002307C
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,0002307C
	addi	a2,s0,+00000718
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.mv	a2,s0
	beq	s2,zero,00000000230522CE

l23052292:
	lbu	a5,s1,+00000004
	addi	s0,zero,+00000020
	c.andi	a5,00000008
	c.beqz	a5,00000000230522A0

l2305229E:
	c.li	s0,00000010

l230522A0:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	addi	a2,a2,+00000718
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230522CE:
	lbu	a5,s1,+00000003
	c.li	s0,00000010
	andi	a4,a5,+00000008
	c.bnez	a4,00000000230522A0

l230522DA:
	andi	a4,a5,+00000002
	c.li	s0,0000000D
	c.bnez	a4,00000000230522A0

l230522E2:
	c.andi	a5,00000001
	addi	s0,zero,+00000020
	c.beqz	a5,00000000230522A0

l230522EA:
	c.li	s0,00000005
	c.j	00000000230522A0

;; isApReplayCounterFresh: 230522EE
;;   Called from:
;;     230529D0 (in KeyMgmtSta_IsRxEAPOLValid)
isApReplayCounterFresh proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s0,0002307C
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	a0,0002307C
	addi	a2,s0,+00000734
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.lwsp	s0,000000C4
	lui	a6,00000FF0
	slli	a3,a4,00000018
	srli	a5,a4,00000018
	slli	a2,a4,00000008
	srli	a1,a4,00000008
	c.lui	a4,00010000
	and	a2,a2,a6
	c.add	a3,a5
	addi	a0,a4,-00000100
	c.add	a3,a2
	c.and	a1,a0
	c.add	a3,a1
	c.lw	s1,100(a1)
	c.mv	a2,s0
	c.li	s0,00000001
	bltu	a1,a3,00000000230523A2

l23052368:
	c.li	s0,00000000
	bne	a1,a3,00000000230523A2

l2305236E:
	c.lwsp	a2,000000C4
	c.li	s0,00000001
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.add	a5,a3
	slli	a3,a4,00000008
	and	a3,a3,a6
	c.srli	a4,00000008
	c.and	a4,a0
	c.add	a5,a3
	c.add	a5,a4
	c.lw	s1,96(a4)
	bltu	a4,a5,00000000230523A2

l23052392:
	c.li	s0,00000000
	bne	a4,a5,00000000230523A2

l23052398:
	c.or	a1,a4
	c.bnez	a1,00000000230523A2

l2305239C:
	c.lw	s1,104(s0)
	sltiu	s0,s0,+00000001

l230523A2:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	addi	a2,a2,+00000734
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; updateApReplayCounter: 230523D0
;;   Called from:
;;     23051442 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     230518E4 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
;;     23051C0C (in KeyMgmtStaHsk_Recvd_PWKMsg3)
updateApReplayCounter proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307C
	lui	a0,0002307C
	addi	a2,s0,+0000074C
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.li	a2,00000004
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	c.li	a2,00000004
	addi	a1,s2,+00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.lwsp	s0,000000A4
	lui	a0,00000FF0
	srli	a4,a3,00000018
	slli	a5,a3,00000018
	slli	a2,a3,00000008
	c.add	a5,a4
	c.and	a2,a0
	srli	a1,a3,00000008
	c.lui	a3,00010000
	c.add	a5,a2
	addi	a2,a3,-00000100
	c.lwsp	a2,000000A4
	c.and	a1,a2
	c.add	a5,a1
	slli	a4,a3,00000018
	srli	a1,a3,00000018
	c.add	a4,a1
	slli	a1,a3,00000008
	c.and	a1,a0
	c.srli	a3,00000008
	c.add	a4,a1
	c.and	a3,a2
	c.add	a4,a3
	c.sw	s1,100(a5)
	c.sw	s1,96(a4)
	c.or	a5,a4
	c.bnez	a5,0000000023052464

l23052460:
	c.li	a5,00000001
	c.sw	s1,104(a5)

l23052464:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s0,+0000074C
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; formEAPOLEthHdr: 23052490
;;   Called from:
;;     23052A82 (in KeyMgmtSta_PrepareEAPOLFrame)
;;     23054484 (in PrepDefaultEapolMsg)
formEAPOLEthHdr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	c.mv	s4,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,+00000764
	jal	ra,0000000023064D1E
	c.mv	a1,s5
	c.li	a2,00000006
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.mv	a1,s4
	c.li	a2,00000006
	addi	a0,s0,+00000006
	jal	ra,000000002306CF80
	addi	a5,zero,-00000078
	sb	a5,s0,+0000000C
	addi	a5,zero,-00000072
	sb	a5,s0,+0000000D
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s2,+00000764
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; IsEAPOL_MICValid: 23052518
;;   Called from:
;;     23052A10 (in KeyMgmtSta_IsRxEAPOLValid)
;;     23054678 (in ProcessPWKMsg4)
;;     2305479C (in ProcessPWKMsg2)
IsEAPOL_MICValid proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lui	s4,00044B00
	c.mv	s5,a1
	lw	a1,s4,+00000120
	addi	s2,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s2
	lui	s3,0002307C
	lui	a0,0002307C
	addi	a2,s3,+00000774
	addi	a0,a0,+000003BC
	addi	s1,s0,+00000051
	jal	ra,0000000023064D1E
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,000000002306CF80
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	lbu	a5,s0,+00000003
	lbu	a1,s0,+00000002
	c.mv	a2,s5
	c.slli	a5,08
	c.or	a5,a1
	slli	a1,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a1
	addi	a1,a5,+00000004
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s0
	c.li	a4,00000000
	c.li	a3,00000010
	jal	ra,000000002305220A
	c.li	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,000000002306CEF8
	c.bnez	a0,00000000230525C8

l2305259C:
	lw	a1,s4,+00000120
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	srl	a1,a1,s2
	addi	a2,s3,+00000774
	jal	ra,0000000023064D1E
	c.li	a0,00000001

l230525B6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230525C8:
	c.li	a0,00000000
	c.j	00000000230525B6

;; KeyMgmtSta_PopulateEAPOLLengthMic: 230525CC
;;   Called from:
;;     2305130E (in GeneratePWKMsg2)
;;     2305182E (in GenerateGrpMsg2)
;;     23051B18 (in GeneratePWKMsg4)
;;     2305463C (in GeneratePWKMsg3)
KeyMgmtSta_PopulateEAPOLLengthMic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	a3,00000084
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307C
	lui	a0,0002307C
	c.mv	s6,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,+00000788
	c.li	s4,00000000
	jal	ra,0000000023064D1E
	c.beqz	s0,000000002305268C

l2305260E:
	lbu	a1,s0,+00000070
	lbu	a5,s0,+0000006F
	c.lwsp	a2,000000C4
	c.slli	a1,08
	c.or	a1,a5
	addi	s4,a1,+0000005F
	c.slli	s4,10
	srli	s4,s4,00000010
	c.li	a5,00000003
	sb	a5,s0,+0000000F
	srli	a3,s4,00000008
	slli	a5,s4,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000010
	c.srli	a5,00000008
	srli	a3,a1,00000008
	sb	a5,s0,+00000011
	slli	a5,a1,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a1,a1,+00000063
	sb	a5,s0,+0000006F
	c.slli	a1,10
	c.srli	a5,00000008
	c.mv	a2,s5
	c.srli	a1,00000010
	addi	a0,s0,+0000000E
	sb	s6,s0,+0000000E
	sb	a5,s0,+00000070
	c.li	a3,00000010
	jal	ra,000000002305220A
	lw	a1,s3,+00000120
	lui	a0,0002307C
	addi	a2,s2,+00000788
	srl	a1,a1,s1
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E

l2305268C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s4
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

;; parseKeyKDE: 230526A2
;;   Called from:
;;     230527BC (in parseKeyKDE_DataType)
parseKeyKDE proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	addi	a2,s1,+000007AC
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lbu	a4,s0,+00000000
	addi	a5,zero,+000000DD
	beq	a4,a5,000000002305270A

l230526DC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s1,+000007AC
	addi	a0,a0,+000003D0
	c.li	s0,00000000
	jal	ra,0000000023064D1E

l230526FE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305270A:
	lbu	a4,s0,+00000001
	c.li	a5,00000007
	bgeu	a5,a4,00000000230526DC

l23052714:
	lui	a1,00023082
	c.li	a2,00000003
	addi	a1,a1,+000007F8
	addi	a0,s0,+00000002
	jal	ra,000000002306CEF8
	c.beqz	a0,00000000230526FE

l23052728:
	c.j	00000000230526DC

;; parseKeyKDE_DataType: 2305272A
;;   Called from:
;;     23052820 (in parseKeyDataGTK)
parseKeyKDE_DataType proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,0002307C
	lui	a0,0002307C
	c.mv	s5,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,+000007B8
	jal	ra,0000000023064D1E
	c.beqz	s0,000000002305279A

l2305276A:
	c.mv	s1,s0
	c.li	s4,00000002
	addi	s6,zero,+000000DD
	c.li	s7,FFFFFFFE

l23052774:
	blt	s4,s3,00000000230527B2

l23052778:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s2,+000007B8
	addi	a0,a0,+000003D0
	c.li	s0,00000000
	jal	ra,0000000023064D1E

l2305279A:
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

l230527B2:
	lbu	a5,s1,+00000000
	bne	a5,s6,00000000230527D4

l230527BA:
	c.mv	a0,s1
	jal	ra,00000000230526A2
	c.mv	s0,a0
	c.beqz	a0,00000000230527CC

l230527C4:
	lbu	a5,a0,+00000005
	beq	a5,s5,000000002305279A

l230527CC:
	lbu	a5,s1,+00000001
	c.bnez	a5,00000000230527D4

l230527D2:
	c.li	s3,00000002

l230527D4:
	lbu	a5,s1,+00000001
	sub	a4,s7,a5
	c.addi	a5,00000002
	c.add	s3,a4
	c.add	s1,a5
	c.j	0000000023052774

;; parseKeyDataGTK: 230527E4
;;   Called from:
;;     230531C2 (in ProcessRxEAPOL_PwkMsg3)
;;     23053272 (in ProcessRxEAPOL_GrpMsg1)
parseKeyDataGTK proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s0,a2
	addi	a2,s2,+000007D0
	jal	ra,0000000023064D1E
	c.mv	a0,s1
	c.li	a2,00000001
	c.mv	a1,s3
	jal	ra,000000002305272A
	c.mv	s1,a0
	c.beqz	a0,0000000023052866

l23052828:
	lbu	a2,a0,+00000001
	addi	a1,a0,+00000008
	c.mv	a0,s0
	c.addi	a2,FFFFFFFA
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000006
	addi	s3,s0,+00000018
	c.li	a2,00000008
	c.andi	a5,00000003
	sh	a5,s0,+00000026
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	c.addi	s0,00000010
	c.li	a2,00000008
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002306CF80

l23052866:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s2,+000007D0
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; KeyMgmtSta_ApplyKEK: 23052896
;;   Called from:
;;     230531A2 (in ProcessRxEAPOL_PwkMsg3)
;;     23053244 (in ProcessRxEAPOL_GrpMsg1)
KeyMgmtSta_ApplyKEK proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307C
	lui	a0,0002307C
	c.mv	s3,a2
	addi	a0,a0,+000003BC
	addi	a2,s1,+000007E0
	jal	ra,0000000023064D1E
	lbu	a5,s0,+00000042
	c.li	a2,00000001
	addi	a3,s0,+00000063
	c.slli	a5,08
	sh	a5,s2,+00000024
	lbu	a4,s0,+00000041
	c.or	a5,a4
	sh	a5,s2,+00000024
	c.li	a5,FFFFFFFF
	sw	a5,s2,+00000020
	lbu	a5,s0,+00000062
	lbu	a4,s0,+00000061
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	srli	a5,a4,00000008
	sb	a5,s0,+00000062
	lbu	a5,s0,+00000006
	sb	a4,s0,+00000061
	c.andi	a5,00000007
	bne	a5,a2,0000000023052956

l2305291A:
	addi	a5,zero,+00000100
	c.li	a2,00000010
	addi	a1,s0,+00000031
	c.mv	a0,s3
	jal	ra,0000000023053E42

l2305292A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,s1,+000007E0
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l23052956:
	srli	a2,a4,00000003
	c.mv	a5,a3
	c.li	a4,00000000
	c.addi	a2,FFFFFFFF
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,0000000023065260
	lbu	a5,s0,+00000062
	lbu	a4,s0,+00000061
	c.slli	a5,08
	c.or	a5,a4
	c.addi	a5,FFFFFFF8
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000061
	c.srli	a5,00000008
	sb	a5,s0,+00000062
	c.j	000000002305292A

;; KeyMgmtSta_IsRxEAPOLValid: 23052986
;;   Called from:
;;     230530D0 (in GetKeyMsgNonceFromEAPOL)
KeyMgmtSta_IsRxEAPOLValid proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s0,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,0002307C
	lui	a0,0002307C
	addi	a2,s2,+000007F4
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.bnez	s1,00000000230529C8

l230529BA:
	c.li	a0,00000000

l230529BC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230529C8:
	c.beqz	s0,00000000230529BA

l230529CA:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,00000000230522EE
	c.beqz	a0,00000000230529BA

l230529D6:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023052A02

l230529DE:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	addi	a2,s2,+000007F4
	jal	ra,0000000023064D1E
	c.li	a0,00000001
	c.j	00000000230529BC

l23052A02:
	lbu	a5,s0,+00000006
	c.andi	a5,00000008
	c.bnez	a5,0000000023052A18

l23052A0A:
	addi	a1,s1,+00000040
	c.mv	a0,s0
	jal	ra,0000000023052518
	c.bnez	a0,00000000230529DE

l23052A16:
	c.j	00000000230529BA

l23052A18:
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,s0,+00000011
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023052A0A

l23052A28:
	c.j	00000000230529BA

;; KeyMgmtSta_PrepareEAPOLFrame: 23052A2A
;;   Called from:
;;     230512D4 (in GeneratePWKMsg2)
;;     23051820 (in GenerateGrpMsg2)
;;     23051B0A (in GeneratePWKMsg4)
KeyMgmtSta_PrepareEAPOLFrame proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s1,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,0002307D
	lui	a0,0002307C
	c.mv	s4,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,-000007F0
	c.mv	s5,a3
	c.mv	s3,a4
	jal	ra,0000000023064D1E
	beq	s0,zero,0000000023052B78

l23052A6C:
	beq	s1,zero,0000000023052B78

l23052A70:
	addi	a2,zero,+00000072
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023052490
	lbu	a5,s1,+00000004
	sb	a5,s0,+00000012
	lbu	a5,s1,+00000006
	andi	a4,a5,+00000008
	lbu	a5,s0,+00000014
	c.andi	a5,FFFFFFF7
	c.or	a5,a4
	lbu	a4,s0,+00000013
	sb	a5,s0,+00000014
	c.andi	a5,FFFFFFF8
	ori	a4,a4,+00000001
	sb	a4,s0,+00000013
	lbu	a3,s1,+00000005
	c.andi	a4,FFFFFFFD
	c.andi	a3,00000002
	c.or	a4,a3
	sb	a4,s0,+00000013
	lbu	a4,s1,+0000000A
	lbu	a3,s1,+00000009
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,s1,+0000000B
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,s1,+0000000C
	c.slli	a3,18
	c.or	a3,a4
	srli	a4,a3,00000008
	sb	a3,s0,+00000017
	sb	a4,s0,+00000018
	srli	a4,a3,00000010
	c.srli	a3,00000018
	sb	a4,s0,+00000019
	sb	a3,s0,+0000001A
	lbu	a4,s1,+0000000E
	lbu	a3,s1,+0000000D
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,s1,+0000000F
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,s1,+00000010
	c.slli	a3,18
	c.or	a3,a4
	srli	a4,a3,00000008
	sb	a3,s0,+0000001B
	sb	a4,s0,+0000001C
	srli	a4,a3,00000010
	c.srli	a3,00000018
	sb	a4,s0,+0000001D
	sb	a3,s0,+0000001E
	lbu	a4,s1,+00000006
	c.andi	a4,00000007
	c.or	a5,a4
	sb	a5,s0,+00000014
	beq	s3,zero,0000000023052B48

l23052B3A:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+0000001F
	jal	ra,000000002306CF80

l23052B48:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s2,-000007F0
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l23052B78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; supplicantAkmIsWpaWpa2: 23052B8A
;;   Called from:
;;     230513D0 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23052CB2 (in supplicantAkmIsWpaWpa2Psk)
supplicantAkmIsWpaWpa2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a2,s1,-000007D0
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lui	a1,00023083
	c.li	a2,00000003
	addi	a1,a1,-000007EC
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023052BDE

l23052BCE:
	c.li	a0,00000001

l23052BD0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23052BDE:
	lui	a1,00023082
	c.li	a2,00000003
	addi	a1,a1,+000007F8
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023052BCE

l23052BF0:
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	srl	a1,a1,s0
	addi	a2,s1,-000007D0
	jal	ra,0000000023064D1E
	c.li	a0,00000000
	c.j	0000000023052BD0

;; supplicantAkmIsWpa2: 23052C0C
;;   Called from:
;;     23052D2E (in supplicantAkmUsesKdf)
supplicantAkmIsWpa2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a2,s1,-000007B8
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lui	a1,00023082
	c.li	a2,00000003
	addi	a1,a1,+000007F8
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023052C78

l23052C50:
	lw	a1,s2,+00000120
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	srl	a1,a1,s0
	addi	a2,s1,-000007B8
	jal	ra,0000000023064D1E
	c.li	a0,00000000

l23052C6A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23052C78:
	c.li	a0,00000001
	c.j	0000000023052C6A

;; supplicantAkmIsWpaWpa2Psk: 23052C7C
;;   Called from:
;;     230513E0 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
supplicantAkmIsWpaWpa2Psk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s1
	lui	s2,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s2,-000007A4
	jal	ra,0000000023064D1E
	c.mv	a0,s4
	jal	ra,0000000023052B8A
	c.beqz	a0,0000000023052CE2

l23052CB8:
	lbu	a5,s4,+00000003
	c.li	a4,00000002
	c.li	s0,00000001
	andi	a3,a5,+000000FB
	beq	a3,a4,0000000023052CD0

l23052CC8:
	addi	s0,a5,-00000004
	sltiu	s0,s0,+00000001

l23052CD0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23052CE2:
	lw	a1,s3,+00000120
	c.mv	s0,a0
	lui	a0,0002307C
	srl	a1,a1,s1
	addi	a2,s2,-000007A4
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	0000000023052CD0

;; supplicantAkmUsesKdf: 23052CFE
;;   Called from:
;;     23051400 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
supplicantAkmUsesKdf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s0,-00000788
	jal	ra,0000000023064D1E
	c.mv	a0,s1
	jal	ra,0000000023052C0C
	c.beqz	a0,0000000023052D46

l23052D34:
	lbu	a5,s1,+00000003
	c.li	a4,00000003
	c.li	a0,00000001
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023052D68

l23052D46:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a0,a0,+000003D0
	addi	a2,s0,-00000788
	jal	ra,0000000023064D1E
	c.li	a0,00000000

l23052D68:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; supplicantConstructContext: 23052D72
;;   Called from:
;;     23052EAA (in KeyMgmt_DerivePTK)
supplicantConstructContext proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s2,a2
	addi	a2,s1,-00000770
	c.mv	s0,a4
	c.mv	s3,a3
	addi	s6,s0,+00000006
	jal	ra,0000000023064D1E
	c.li	a2,00000006
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002306CEF8
	c.li	a2,00000006
	bge	a0,zero,0000000023052E3A

l23052DC6:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s5

l23052DD2:
	c.mv	a0,s6
	jal	ra,000000002306CF80
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	addi	a5,s0,+0000000C
	addi	a2,zero,+00000020
	addi	s0,s0,+0000002C
	bge	a0,zero,0000000023052E48

l23052DF4:
	c.mv	a1,s2
	c.mv	a0,a5
	jal	ra,000000002306CF80
	addi	a2,zero,+00000020
	c.mv	a1,s3

l23052E02:
	c.mv	a0,s0
	jal	ra,000000002306CF80
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s1,-00000770
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

l23052E3A:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s4
	c.j	0000000023052DD2

l23052E48:
	c.mv	a1,s3
	c.mv	a0,a5
	jal	ra,000000002306CF80
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.j	0000000023052E02

;; KeyMgmt_DerivePTK: 23052E58
;;   Called from:
;;     23052FA0 (in KeyMgmtSta_DeriveKeys)
KeyMgmt_DerivePTK proc
	c.addi16sp	FFFFFFD0
	c.swsp	a6,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	a3,00000084
	c.mv	s3,a5
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	c.mv	s6,a2
	addi	a0,a0,+000003BC
	addi	a2,s0,-00000754
	c.mv	s2,a4
	addi	s1,s2,+000000C8
	jal	ra,0000000023064D1E
	c.lwsp	a2,000000A4
	c.mv	a2,s6
	c.mv	a4,s1
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023052D72
	c.lwsp	s0,00000008
	lui	a2,0002307C
	beq	a6,zero,0000000023052F04

l23052EB8:
	addi	a7,zero,+00000180
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+000006E8
	addi	a1,zero,+00000020
	c.mv	a0,s3
	c.jal	0000000023053438

l23052ED2:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-00000754
	srl	a1,a1,a5
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000030
	jal	zero,0000000023064D1E

l23052F04:
	addi	a7,zero,+00000040
	c.mv	a6,s2
	addi	a5,zero,+0000004C
	c.mv	a4,s1
	c.li	a3,00000016
	addi	a2,a2,+000006E8
	addi	a1,zero,+00000020
	c.mv	a0,s3
	jal	ra,0000000023065614
	c.j	0000000023052ED2

;; KeyMgmtSta_DeriveKeys: 23052F22
;;   Called from:
;;     2305141E (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23054CFC (in KeyMgmtAp_DerivePTK)
KeyMgmtSta_DeriveKeys proc
	addi	sp,sp,-00000240
	sw	s0,sp,+00000238
	sw	s1,sp,+00000234
	sw	s2,sp,+00000230
	sw	s3,sp,+0000022C
	sw	s4,sp,+00000228
	sw	s5,sp,+00000224
	sw	s6,sp,+00000220
	sw	s7,sp,+0000021C
	sw	s8,sp,+00000218
	sw	s9,sp,+00000214
	sw	ra,sp,+0000023C
	c.swsp	a4,00000084
	lui	s3,00044B00
	c.mv	s8,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s5,a0
	srl	a1,a1,s1
	lui	s2,0002307D
	lui	a0,0002307C
	c.mv	s7,a2
	addi	a0,a0,+000003BC
	addi	a2,s2,-00000740
	c.mv	s9,a3
	c.mv	s4,a5
	c.mv	s6,a6
	c.mv	s0,a7
	jal	ra,0000000023064D1E
	beq	s5,zero,0000000023052FF2

l23052F8A:
	beq	s4,zero,0000000023052FF2

l23052F8E:
	c.beqz	s0,0000000023052FF2

l23052F90:
	lw	a6,sp,+00000240
	c.lwsp	a2,000000A4
	c.mv	a5,s5
	c.addi4spn	a4,0000001C
	c.mv	a2,s9
	c.mv	a1,s8
	c.mv	a0,s7
	jal	ra,0000000023052E58
	c.li	a2,00000010
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.li	a2,00000010
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	jal	ra,000000002306CF80
	c.li	a2,00000010
	c.addi4spn	a1,0000003C
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,0000004C
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,00000054
	addi	a0,s0,+00000018
	jal	ra,000000002306CF80
	lw	a1,s3,+00000120
	lui	a0,0002307C
	addi	a2,s2,-00000740
	srl	a1,a1,s1
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E

l23052FF2:
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
	addi	sp,sp,+00000240
	c.jr	ra

;; SetEAPOLKeyDescTypeVersion: 23053024
;;   Called from:
;;     230544A6 (in PrepDefaultEapolMsg)
SetEAPOLKeyDescTypeVersion proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	s4,00044B00
	lw	a1,s4,+00000120
	addi	s2,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,s2
	lui	s3,0002307D
	lui	a0,0002307C
	c.mv	s0,a2
	addi	a0,a0,+000003BC
	addi	a2,s3,-00000728
	jal	ra,0000000023064D1E
	lbu	a2,s1,+00000014
	c.li	a5,00000002
	sb	a5,s1,+00000012
	sltu	a5,zero,s0
	c.addi	a5,00000002
	c.andi	a2,FFFFFFF8
	c.or	a2,a5
	sb	a2,s1,+00000014
	lw	a1,s4,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	addi	a2,s3,-00000728
	c.lwsp	a2,00000068
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; GetKeyMsgNonceFromEAPOL: 23053098
;;   Called from:
;;     230513A4 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
;;     23053162 (in ProcessRxEAPOL_PwkMsg3)
;;     230531F8 (in ProcessRxEAPOL_GrpMsg1)
GetKeyMsgNonceFromEAPOL proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s1,-0000070C
	jal	ra,0000000023064D1E
	c.lw	s0,8(s0)
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023052986
	c.beqz	a0,0000000023053126

l230530D6:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,00000000230530F8

l230530DE:
	addi	a1,s0,+00000011
	addi	a2,zero,+00000020
	c.mv	a0,s2
	jal	ra,000000002306CF80
	addi	a1,zero,+00000020
	addi	a0,s2,+00000020
	jal	ra,00000000230521A6

l230530F8:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s1,-0000070C
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E

l23053118:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23053126:
	c.li	s0,00000000
	c.j	0000000023053118

;; ProcessRxEAPOL_PwkMsg3: 2305312A
;;   Called from:
;;     23051BEA (in KeyMgmtStaHsk_Recvd_PWKMsg3)
ProcessRxEAPOL_PwkMsg3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lui	a5,00044B00
	c.mv	s1,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	addi	a2,s2,-000006F4
	jal	ra,0000000023064D1E
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023053098
	c.bnez	a0,000000002305317A

l23053168:
	c.li	s0,00000000

l2305316A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305317A:
	c.li	a5,00000001
	sh	a5,s1,+000000F8
	sw	zero,s1,+000000F4
	lbu	a5,a0,+00000005
	c.mv	s0,a0
	c.andi	a5,00000010
	c.beqz	a5,00000000230531C6

l2305318E:
	addi	a0,s1,+00000108
	jal	ra,00000000230479AA
	addi	s3,s1,+000000AC
	c.mv	a1,s3
	c.mv	a0,s0
	addi	a2,s1,+00000050
	jal	ra,0000000023052896
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023050D80
	c.beqz	a0,0000000023053168

l230531B0:
	lbu	a5,s0,+00000062
	lbu	a1,s0,+00000061
	c.mv	a2,s3
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,s0,+00000063
	jal	ra,00000000230527E4

l230531C6:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s2,-000006F4
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	000000002305316A

;; ProcessRxEAPOL_GrpMsg1: 230531E8
;;   Called from:
;;     230518B6 (in KeyMgmtStaHsk_Recvd_GrpMsg1)
ProcessRxEAPOL_GrpMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a1
	jal	ra,0000000023053098
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s2,0002307D
	lui	a0,0002307C
	addi	a2,s2,-000006DC
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.bnez	s0,0000000023053238

l23053224:
	c.li	s0,00000000

l23053226:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23053238:
	addi	s3,s1,+000000AC
	addi	a2,s1,+00000050
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023052896
	c.li	a5,00000001
	c.sw	s1,116(a5)
	addi	a0,s1,+00000108
	jal	ra,00000000230479AA
	lbu	a3,s0,+00000004
	c.li	a4,00000002
	addi	a0,s0,+00000063
	lbu	a5,s0,+00000061
	lbu	a2,s0,+00000062
	bne	a3,a4,00000000230532A2

l2305326A:
	slli	a1,a2,00000008
	c.or	a1,a5
	c.mv	a2,s3
	jal	ra,00000000230527E4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023050D80
	c.beqz	a0,0000000023053224

l23053280:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s2,-000006DC
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.j	0000000023053226

l230532A2:
	c.slli	a2,08
	c.or	a2,a5
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002306CF80
	addi	s4,s1,+000000C4
	c.li	a2,00000008
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	addi	s3,s1,+000000BC
	c.li	a2,00000008
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000006
	c.srli	a5,00000004
	c.andi	a5,00000003
	sh	a5,s1,+000000D2
	c.j	0000000023053280

;; KeyMgmtResetCounter: 230532E2
;;   Called from:
;;     230514D8 (in supplicantInit)
KeyMgmtResetCounter proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	addi	a2,s0,-000006C4
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.beqz	s1,000000002305331A

l23053312:
	sw	zero,s1,+00000070
	sw	zero,s1,+0000006C

l2305331A:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-000006C4
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; keyMgmtSta_StartSession_internal: 23053342
;;   Called from:
;;     23050EA2 (in keyMgmtSta_StartSession)
keyMgmtSta_StartSession_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s2,00044B00
	c.mv	s3,a1
	lw	a1,s2,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a2,s1,-0000068C
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lw	a5,s0,+00000104
	c.bnez	a5,000000002305338A

l2305337C:
	lw	a1,s2,+00000120
	addi	a0,s0,+00000108
	c.add	a1,s3
	jal	ra,00000000230478F4

l2305338A:
	sw	zero,s0,+00000060
	sw	zero,s0,+00000064
	sw	zero,s0,+00000068
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,s1,-0000068C
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; KeyMgmtSta_InitSession: 230533C2
;;   Called from:
;;     23050E0E (in KeyMgmtInitSta)
KeyMgmtSta_InitSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307D
	lui	a0,0002307C
	addi	a2,s2,-00000668
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lui	a5,00023052
	addi	a5,a5,+0000013C
	sw	zero,s0,+00000074
	sw	zero,s0,+00000078
	sw	zero,s0,+00000080
	sw	zero,s0,+0000007C
	sw	a5,s0,+0000010C
	sw	s0,s0,+00000110
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	addi	a2,s2,-00000668
	c.lwsp	a6,00000048
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; bl_sha256_crypto_kdf: 23053438
;;   Called from:
;;     23052ED0 (in KeyMgmt_DerivePTK)
bl_sha256_crypto_kdf proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	addi	s0,a7,+000000FF
	c.swsp	s2,00000038
	c.swsp	s4,00000034
	add	s2,a4,a5
	c.mv	s4,a5
	c.srai	s0,00000008
	c.li	a5,00000001
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.swsp	ra,000000BC
	c.mv	s6,a0
	c.mv	s7,a1
	c.mv	s8,a2
	c.mv	s9,a3
	c.mv	s3,a4
	sh	a7,sp,+0000000E
	sh	a5,sp,+0000001E
	c.mv	s1,s2
	andi	s0,s0,+000000FF
	addi	s10,sp,+0000001E
	c.li	s5,00000002
	addi	s11,sp,+0000000E

l23053484:
	lhu	a5,sp,+0000001E
	bgeu	s0,a5,00000000230534B8

l2305348C:
	lhu	a2,sp,+0000000E
	c.mv	a1,s2
	c.mv	a0,a6
	c.srli	a2,00000003
	jal	ra,000000002306CF80
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

l230534B8:
	c.mv	a5,s1
	c.addi4spn	a4,00000030
	c.addi4spn	a3,00000020
	c.li	a2,00000004
	c.mv	a1,s7
	c.mv	a0,s6
	c.swsp	a6,00000004
	c.swsp	s10,00000010
	c.swsp	s5,00000018
	c.swsp	s8,00000090
	c.swsp	s9,00000098
	c.swsp	s3,00000014
	c.swsp	s4,0000001C
	c.swsp	s11,00000094
	c.swsp	s5,0000009C
	jal	ra,00000000230542A6
	lhu	a5,sp,+0000001E
	addi	s1,s1,+00000020
	c.lwsp	s0,00000008
	c.addi	a5,00000001
	sh	a5,sp,+0000001E
	c.j	0000000023053484

;; Bl_F: 230534EC
;;   Called from:
;;     23053604 (in Bl_PasswordHash)
;;     23053624 (in Bl_PasswordHash)
Bl_F proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,000000A4
	c.swsp	a6,00000004
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.mv	s0,a4
	c.mv	s2,a1
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s3,a2
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.mv	s5,a7
	c.swsp	s7,00000094
	c.swsp	a3,00000084
	c.mv	s6,a5
	jal	ra,000000002306D630
	c.lwsp	a2,000000A4
	addi	a5,s0,+00000004
	c.mv	a2,s0
	c.mv	a1,a3
	c.mv	s4,a0
	c.mv	a0,s1
	c.swsp	a5,0000000C
	c.swsp	s1,0000008C
	jal	ra,000000002306CF80
	c.lwsp	s0,00000008
	add	a4,s1,s0
	c.mv	a3,s3
	srai	a5,a6,00000018
	sb	a5,a4,+00000000
	srai	a5,a6,00000010
	sb	a5,a4,+00000001
	srai	a5,a6,00000008
	sb	a5,a4,+00000002
	sb	a6,a4,+00000003
	c.mv	a5,s2
	c.li	a6,00000014
	c.mv	a4,s4
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	jal	ra,00000000230654AC
	c.li	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,000000002306CF80
	c.li	s0,00000001
	c.swsp	s2,0000008C
	c.li	s7,00000014

l23053570:
	blt	s0,s6,000000002305358A

l23053574:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.addi16sp	00000050
	c.jr	ra

l2305358A:
	c.mv	a5,s1
	c.li	a6,00000014
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.swsp	s7,0000000C
	jal	ra,00000000230654AC
	c.li	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306CF80
	c.li	a5,00000000

l230535AA:
	add	a3,s5,a5
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	lbu	a2,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s7,00000000230535AA

l230535C6:
	c.addi	s0,00000001
	c.j	0000000023053570

;; Bl_PasswordHash: 230535CA
;;   Called from:
;;     2305363C (in bl60x_fw_password_hash)
Bl_PasswordHash proc
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
	jal	ra,000000002306D630
	addi	a5,zero,+0000003F
	bltu	a5,a0,0000000023053638

l230535EA:
	addi	a5,zero,+00000020
	c.li	a0,FFFFFFFF
	blt	a5,s1,000000002305362A

l230535F4:
	c.mv	a7,s0
	c.li	a6,00000002
	c.lui	a5,00001000
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000001C
	jal	ra,00000000230534EC
	c.li	a2,0000000C
	c.mv	a1,s0
	addi	a0,s0,+00000014
	jal	ra,000000002306CF80
	c.addi4spn	a0,0000001C
	c.mv	a7,s0
	c.li	a6,00000001
	c.lui	a5,00001000
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	jal	ra,00000000230534EC
	c.li	a0,00000000

l2305362A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

l23053638:
	c.li	a0,FFFFFFFF
	c.j	000000002305362A

;; bl60x_fw_password_hash: 2305363C
;;   Called from:
;;     23007086 (in wifi_mgmr_psk_cal)
bl60x_fw_password_hash proc
	jal	zero,00000000230535CA

;; pmkCacheFindPSK: 23053640
;;   Called from:
;;     230513F0 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
pmkCacheFindPSK proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a2,s1,-00000650
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023053A22
	c.mv	s0,a0
	c.beqz	a0,00000000230536B6

l23053680:
	addi	s0,a0,+00000020

l23053684:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s1,-00000650
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230536B6:
	lui	s4,00042046
	lbu	a5,s4,-00000090
	c.beqz	a5,0000000023053684

l230536C0:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023053AE8
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023053A22
	c.mv	s0,a0
	addi	a0,s4,-00000090
	jal	ra,000000002306D630
	addi	s0,s0,+00000020
	andi	a3,a0,+000000FF
	c.mv	a4,s0
	addi	a2,s4,-00000090
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023053C7A
	c.j	0000000023053684

;; pmkCacheSetPassphrase: 230536F0
;;   Called from:
;;     23065762 (in set_psk)
pmkCacheSetPassphrase proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	c.mv	s1,a2
	addi	a0,a0,+000003BC
	addi	a2,s0,-00000640
	c.mv	s3,a3
	jal	ra,0000000023064D1E
	c.beqz	s1,0000000023053760

l2305372E:
	lui	s2,00042046
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,s2,-00000090
	jal	ra,000000002306CF80
	c.mv	a3,s3
	c.mv	a2,s1
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023053AE8
	c.mv	a1,s5
	c.mv	a0,s4
	c.jal	0000000023053A22
	lbu	a1,a0,+00000040
	addi	a4,a0,+00000020
	c.mv	a3,s3
	addi	a2,s2,-00000090
	c.jal	0000000023053C7A

l23053760:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-00000640
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; pmkCacheInit: 23053790
;;   Called from:
;;     230672B8 (in supplicantRestoreDefaults)
pmkCacheInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307D
	srl	a1,a1,s0
	lui	a0,0002307C
	addi	a2,s1,-00000628
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lui	a0,00042046
	addi	a2,zero,+00000086
	c.li	a1,00000000
	addi	a0,a0,-00000118
	jal	ra,000000002306D1BC
	lui	a0,00042046
	addi	a2,zero,+00000040
	c.li	a1,00000000
	addi	a0,a0,-00000090
	jal	ra,000000002306D1BC
	lui	a5,00042046
	sb	zero,a5,+00000FB0
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-00000628
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; pmkCacheRomInit: 2305380C
;;   Called from:
;;     230672BC (in supplicantRestoreDefaults)
pmkCacheRomInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307D
	srl	a1,a1,s0
	lui	a0,0002307C
	addi	a2,s1,-00000618
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	lui	a5,00042046
	c.li	a4,00000002
	sw	a4,a5,+00000FBC
	lui	a5,00042046
	lui	a4,00042046
	addi	a5,a5,-00000118
	sw	a5,a4,+00000FB8
	lui	a5,00042046
	lui	a4,00042046
	addi	a5,a5,-00000090
	sw	a5,a4,+00000FB4
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-00000618
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; pmkCacheNewElement: 23053886
;;   Called from:
;;     23053B30 (in pmkCacheAddPSK)
pmkCacheNewElement proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s7,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	s8,0002307D
	srl	a1,a1,a5
	lui	a0,0002307C
	addi	a2,s8,-00000608
	addi	a0,a0,+000003BC
	c.li	s3,00000000
	c.li	s0,00000000
	lui	s5,00042046
	lui	s2,00042046
	lui	s4,00042046
	addi	s6,zero,+00000043
	jal	ra,0000000023064D1E

l230538D4:
	lw	a5,s5,-00000044
	blt	s0,a5,0000000023053916

l230538DC:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s8,-00000608
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
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

l23053916:
	lb	a4,s2,-00000050
	bne	a4,a5,0000000023053932

l2305391E:
	add	a5,s0,s6
	lw	a4,s4,-00000048
	c.add	a5,a4
	lbu	a4,a5,+00000042
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000042

l23053932:
	bne	s3,zero,0000000023053974

l23053936:
	add	s7,s0,s6
	lw	s1,s4,-00000048
	c.add	s1,s7
	lb	a5,s1,+00000042
	c.bnez	a5,0000000023053974

l23053946:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	lb	a5,s2,-00000050
	lw	a4,s5,-00000044
	bge	a5,a4,0000000023053964

l2305395E:
	c.addi	a5,00000001
	sb	a5,s2,+00000FB0

l23053964:
	lw	a5,s4,-00000048
	lbu	a4,s2,-00000050
	c.mv	s3,s1
	c.add	a5,s7
	sb	a4,a5,+00000042

l23053974:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	00000000230538D4

;; pmkCacheUpdateReplacementRank: 2305397C
;;   Called from:
;;     23053A7A (in pmkCacheFindPSKElement)
pmkCacheUpdateReplacementRank proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	addi	a2,s0,-000005F4
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.beqz	s1,00000000230539DA

l230539AC:
	lui	a5,00042046
	lb	a2,a5,-00000050
	lb	a5,s1,+00000042
	beq	a5,a2,00000000230539DA

l230539BC:
	lui	a5,00042046
	lw	a1,a5,-00000044
	lui	a5,00042046
	lw	a0,a5,-00000048
	addi	a6,zero,+00000043
	c.li	a5,00000000

l230539D2:
	blt	a5,a1,0000000023053A02

l230539D6:
	sb	a2,s1,+00000042

l230539DA:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-000005F4
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

l23053A02:
	add	a4,a5,a6
	lb	a7,s1,+00000042
	c.add	a4,a0
	lb	a3,a4,+00000042
	bge	a7,a3,0000000023053A1A

l23053A14:
	c.addi	a3,FFFFFFFF
	sb	a3,a4,+00000042

l23053A1A:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.j	00000000230539D2

;; pmkCacheFindPSKElement: 23053A22
;;   Called from:
;;     2305367A (in pmkCacheFindPSK)
;;     230536CE (in pmkCacheFindPSK)
;;     2305374E (in pmkCacheSetPassphrase)
;;     23053B28 (in pmkCacheAddPSK)
;;     23053B90 (in pmkCacheDeletePSK)
pmkCacheFindPSKElement proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s6,a0
	srl	a1,a1,a5
	lui	s5,0002307D
	lui	a0,0002307C
	addi	a2,s5,-000005D4
	addi	a0,a0,+000003BC
	c.li	s1,00000000
	c.li	s0,00000000
	lui	s7,00042046
	addi	s8,zero,+00000043
	lui	s3,00042046
	jal	ra,0000000023064D1E

l23053A70:
	lw	a5,s7,-00000044
	blt	s0,a5,0000000023053AB8

l23053A78:
	c.mv	a0,s1
	jal	ra,000000002305397C
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,0002307C
	srl	a1,a1,a5
	addi	a2,s5,-000005D4
	addi	a0,a0,+000003D0
	jal	ra,0000000023064D1E
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
	c.addi16sp	00000030
	c.jr	ra

l23053AB8:
	add	s4,s0,s8
	lw	a0,s3,-00000048
	c.add	a0,s4
	lb	a5,a0,+00000042
	c.beqz	a5,0000000023053AE0

l23053AC8:
	lbu	a5,a0,+00000040
	bne	a5,s2,0000000023053AE0

l23053AD0:
	c.mv	a2,s2
	c.mv	a1,s6
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023053AE0

l23053ADA:
	lw	s1,s3,-00000048
	c.add	s1,s4

l23053AE0:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023053A70

;; pmkCacheAddPSK: 23053AE8
;;   Called from:
;;     230536C8 (in pmkCacheFindPSK)
;;     23053748 (in pmkCacheSetPassphrase)
pmkCacheAddPSK proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,a5
	lui	s1,0002307D
	lui	a0,0002307C
	addi	a0,a0,+000003BC
	c.mv	s3,a2
	addi	a2,s1,-000005BC
	c.mv	s5,a3
	jal	ra,0000000023064D1E
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023053A22
	c.mv	s0,a0
	c.bnez	a0,0000000023053B42

l23053B30:
	jal	ra,0000000023053886
	c.mv	s0,a0
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,000000002306CF80
	sb	s2,s0,+00000040

l23053B42:
	beq	s3,zero,0000000023053B58

l23053B46:
	addi	a2,zero,+00000020
	c.mv	a1,s3
	addi	a0,s0,+00000020
	jal	ra,000000002306CF80
	sb	s5,s0,+00000041

l23053B58:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-000005BC
	c.lwsp	s4,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000020
	jal	zero,0000000023064D1E

;; pmkCacheDeletePSK: 23053B88
;;   Called from:
;;     230657C8 (in remove_psk)
pmkCacheDeletePSK proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023053A22
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s0,0002307D
	lui	a0,0002307C
	addi	a2,s0,-000005AC
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	c.beqz	s1,0000000023053BD6

l23053BBC:
	addi	a2,zero,+00000043
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	lui	a4,00042046
	lbu	a5,a4,-00000050
	c.addi	a5,FFFFFFFF
	sb	a5,a4,+00000FB0

l23053BD6:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-000005AC
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi	sp,00000010
	jal	zero,0000000023064D1E

;; pmkCacheGetHexNibble: 23053BFE
;;   Called from:
;;     23053D1C (in pmkCacheGeneratePSK)
;;     23053D26 (in pmkCacheGeneratePSK)
pmkCacheGetHexNibble proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,0002307D
	lui	a0,0002307C
	addi	a2,s2,-00000598
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	addi	a5,zero,+00000060
	bgeu	a5,s0,0000000023053C4E

l23053C38:
	addi	s0,s0,-00000057

l23053C3C:
	andi	a0,s0,+000000FF
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23053C4E:
	addi	a5,zero,+00000040
	bgeu	a5,s0,0000000023053C5C

l23053C56:
	addi	s0,s0,-00000037
	c.j	0000000023053C3C

l23053C5C:
	lw	a1,s3,+00000120
	lui	a0,0002307C
	addi	a2,s2,-00000598
	srl	a1,a1,s1
	addi	a0,a0,+000003D0
	addi	s0,s0,-00000030
	jal	ra,0000000023064D1E
	c.j	0000000023053C3C

;; pmkCacheGeneratePSK: 23053C7A
;;   Called from:
;;     230536EC (in pmkCacheFindPSK)
;;     2305375E (in pmkCacheSetPassphrase)
;;     2305442C (in KeyMgmtInit)
pmkCacheGeneratePSK proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s5,00000088
	lui	a5,00044B00
	c.swsp	a3,00000084
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s1,a0
	srl	a1,a1,a5
	lui	s2,0002307D
	lui	a0,0002307C
	c.mv	s0,a2
	c.mv	s4,a4
	addi	a2,s2,-00000580
	addi	a0,a0,+000003BC
	jal	ra,0000000023064D1E
	beq	s4,zero,0000000023053CD8

l23053CBC:
	c.beqz	s0,0000000023053CD8

l23053CBE:
	c.lwsp	a2,000000A4
	addi	a4,zero,+00000037
	addi	a5,a3,-00000008
	bltu	a4,a5,0000000023053D08

l23053CCC:
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002306862E

l23053CD8:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s0,00000114
	srl	a1,a1,a5
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	addi	a2,s2,-00000580
	c.lwsp	zero,00000158
	lui	a0,0002307C
	addi	a0,a0,+000003D0
	c.addi16sp	00000030
	jal	zero,0000000023064D1E

l23053D08:
	addi	a5,zero,+00000040
	bne	a3,a5,0000000023053CD8

l23053D10:
	c.li	s3,00000000
	addi	s5,zero,+00000040

l23053D16:
	lbu	a0,s0,+00000000
	c.addi	s0,00000002
	jal	ra,0000000023053BFE
	c.mv	s1,a0
	lbu	a0,s0,-00000001
	jal	ra,0000000023053BFE
	srai	a2,s3,00000001
	slli	a5,s1,00000004
	c.add	a2,s4
	c.or	a0,a5
	sb	a0,a2,+00000000
	c.addi	s3,00000002
	bne	s3,s5,0000000023053D16

l23053D40:
	c.j	0000000023053CD8

;; prepare_key: 23053D42
;;   Called from:
;;     23053E86 (in RC4_Encrypt)
prepare_key proc
	c.li	a5,00000000
	addi	a4,zero,+00000100

l23053D48:
	add	a3,a2,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023053D48

l23053D56:
	sb	zero,a2,+00000100
	sb	zero,a2,+00000101
	c.mv	a3,a2
	addi	t1,a2,+00000100
	c.li	a7,00000000
	c.li	a4,00000000

l23053D68:
	add	a5,a0,a4
	c.addi	a4,00000001
	or	a4,a4,a1
	lbu	a6,a3,+00000000
	lbu	a5,a5,+00000000
	c.addi	a3,00000001
	c.add	a5,a6
	c.add	a5,a7
	andi	a7,a5,+000000FF
	andi	a5,a5,+000000FF
	c.add	a5,a2
	lbu	t3,a5,+00000000
	sb	t3,a3,+00000FFF
	sb	a6,a5,+00000000
	andi	a4,a4,+000000FF
	bne	t1,a3,0000000023053D68

l23053D9E:
	c.jr	ra

;; rc4: 23053DA0
;;   Called from:
;;     23053E94 (in RC4_Encrypt)
rc4 proc
	lbu	t3,a3,+00000100
	lbu	a4,a3,+00000101
	c.li	a5,00000000

l23053DAA:
	add	a6,t3,a5
	andi	a6,a6,+000000FF
	blt	a5,a2,0000000023053DCE

l23053DB6:
	c.li	a7,00000000

l23053DB8:
	add	a5,a6,a7
	andi	a5,a5,+000000FF
	blt	a7,a1,0000000023053DF8

l23053DC4:
	sb	a5,a3,+00000100
	sb	a4,a3,+00000101
	c.jr	ra

l23053DCE:
	c.addi	a6,00000001
	andi	a6,a6,+000000FF
	c.add	a6,a3
	lbu	t1,a6,+00000000
	c.addi	a5,00000001
	c.slli	a5,10
	c.add	a4,t1
	andi	a4,a4,+000000FF
	add	a7,a3,a4
	lbu	t4,a7,+00000000
	c.srai	a5,00000010
	sb	t4,a6,+00000000
	sb	t1,a7,+00000000
	c.j	0000000023053DAA

l23053DF8:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	c.add	a5,a3
	lbu	a2,a5,+00000000
	c.add	a4,a2
	andi	a4,a4,+000000FF
	add	t1,a3,a4
	lbu	t3,t1,+00000000
	sb	t3,a5,+00000000
	sb	a2,t1,+00000000
	lbu	a5,a5,+00000000
	add	t1,a0,a7
	c.addi	a7,00000001
	c.add	a2,a5
	andi	a2,a2,+000000FF
	c.add	a2,a3
	lbu	a5,a2,+00000000
	lbu	a2,t1,+00000000
	c.slli	a7,10
	srai	a7,a7,00000010
	c.xor	a5,a2
	sb	a5,t1,+00000000
	c.j	0000000023053DB8

;; RC4_Encrypt: 23053E42
;;   Called from:
;;     23052926 (in KeyMgmtSta_ApplyKEK)
RC4_Encrypt proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	addi	s5,a2,+00000010
	addi	a7,zero,+00000020
	blt	a7,s5,0000000023053E98

l23053E5E:
	c.mv	s4,a0
	c.mv	a0,sp
	c.mv	s1,a3
	c.mv	s0,a2
	c.mv	s3,a5
	c.mv	s2,a4
	jal	ra,000000002306CF80
	c.li	a2,00000010
	c.mv	a1,s4
	add	a0,sp,s0
	jal	ra,000000002306CF80
	lui	s0,00042016
	addi	a2,s0,+00000380
	c.mv	a1,s5
	c.mv	a0,sp
	jal	ra,0000000023053D42
	addi	a3,s0,+00000380
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023053DA0

l23053E98:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; sha256_compress: 23053EAA
;;   Called from:
;;     2305414C (in sha256_vector)
;;     230541A2 (in sha256_vector)
;;     23054218 (in sha256_vector)
;;     2305426A (in sha256_vector)
sha256_compress proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	s1,a0,+00000008
	addi	s2,a2,+00000100
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a2
	c.mv	s4,a1
	addi	a2,zero,+00000020
	c.mv	s3,a0
	c.mv	a1,s1
	c.mv	a0,s2
	c.swsp	ra,0000008C
	jal	ra,000000002306CF80
	addi	a2,s4,+00000040
	c.mv	a3,s0

l23053ED8:
	lbu	a5,s4,+00000001
	lbu	a4,s4,+00000000
	c.addi	s4,00000004
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	lbu	a4,s4,-00000002
	c.srli	a5,00000010
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,s4,-00000001
	c.slli	a5,08
	c.addi	a3,00000004
	c.or	a5,a4
	sw	a5,a3,+00000FFC
	bne	s4,a2,0000000023053ED8

l23053F0C:
	addi	a4,s0,+00000040

l23053F10:
	lw	a3,a4,-00000008
	lw	a2,a4,-0000003C
	c.addi	a4,00000004
	srli	a1,a3,00000011
	slli	a5,a3,0000000F
	srli	a0,a3,00000013
	c.or	a5,a1
	slli	a1,a3,0000000D
	c.or	a1,a0
	c.xor	a5,a1
	c.srli	a3,0000000A
	lw	a1,a4,-00000044
	c.xor	a5,a3
	lw	a3,a4,-00000020
	srli	a0,a2,00000012
	c.add	a3,a1
	c.add	a5,a3
	slli	a1,a2,00000019
	srli	a3,a2,00000007
	c.or	a3,a1
	slli	a1,a2,0000000E
	c.or	a1,a0
	c.xor	a3,a1
	c.srli	a2,00000003
	c.xor	a3,a2
	c.add	a5,a3
	sw	a5,a4,+00000FFC
	bne	s2,a4,0000000023053F10

l23053F64:
	lui	a0,0002307D
	c.li	a1,00000000
	addi	a0,a0,-0000056C
	addi	a6,zero,+00000100

l23053F72:
	lw	a2,s0,+00000110
	lw	t3,s0,+00000118
	lw	t4,s0,+00000114
	slli	a4,a2,0000001A
	srli	a5,a2,00000006
	slli	a3,a2,00000015
	c.or	a5,a4
	srli	a4,a2,0000000B
	c.or	a4,a3
	c.xor	a5,a4
	srli	a3,a2,00000019
	slli	a4,a2,00000007
	c.or	a4,a3
	c.xor	a5,a4
	xor	a4,t3,t4
	c.and	a4,a2
	xor	a4,a4,t3
	c.add	a5,a4
	lw	a4,s0,+0000011C
	lw	a3,s0,+00000100
	lw	t1,s0,+0000010C
	c.add	a5,a4
	add	a4,a0,a1
	c.lw	a4,0(a4)
	lw	a7,s0,+00000104
	lw	t5,s0,+00000108
	c.add	a5,a4
	add	a4,s0,a1
	c.lw	a4,0(a4)
	sw	a2,s0,+00000114
	slli	a2,a3,0000001E
	c.add	a5,a4
	c.add	t1,a5
	srli	a4,a3,00000002
	c.or	a4,a2
	sw	t1,s0,+00000110
	slli	a2,a3,00000013
	srli	t1,a3,0000000D
	or	t1,t1,a2
	xor	a4,a4,t1
	srli	a2,a3,00000016
	slli	t1,a3,0000000A
	or	t1,t1,a2
	or	a2,a3,a7
	sw	a3,s0,+00000104
	and	a2,a2,t5
	and	a3,a3,a7
	xor	a4,a4,t1
	c.or	a3,a2
	c.add	a4,a3
	c.add	a5,a4
	sw	t3,s0,+0000011C
	sw	t4,s0,+00000118
	sw	t5,s0,+0000010C
	sw	a7,s0,+00000108
	sw	a5,s0,+00000100
	c.addi	a1,00000004
	bne	a1,a6,0000000023053F72

l23054036:
	addi	s3,s3,+00000028

l2305403A:
	c.lw	s1,0(a5)
	lw	a4,s2,+00000000
	c.addi	s1,00000004
	c.addi	s2,00000004
	c.add	a5,a4
	sw	a5,s1,+00000FFC
	bne	s3,s1,000000002305403A

l2305404E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; sha256_init: 23054060
;;   Called from:
;;     230540EE (in sha256_vector)
sha256_init proc
	c.li	a5,00000000
	c.sw	a0,0(a5)
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
	c.li	a6,00000000
	addi	a5,a5,-000002E7
	sw	zero,a0,+00000028
	sw	a6,a0,+00000004
	c.sw	a0,36(a5)
	c.jr	ra

;; sha256_vector: 230540C0
;;   Called from:
;;     230542EA (in hmac_sha256_vector)
;;     23054352 (in hmac_sha256_vector)
;;     230543A2 (in hmac_sha256_vector)
sha256_vector proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s5,00000098
	c.mv	s0,a4
	c.mv	s5,a0
	c.mv	a0,a4
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s11,0000008C
	c.swsp	a1,00000084
	c.mv	s9,a2
	c.mv	s2,a3
	addi	s4,a4,+00000070
	c.slli	s5,02
	jal	ra,0000000023054060
	c.li	s8,00000000
	addi	s6,zero,+00000040
	addi	s7,s0,+0000002C
	addi	s10,zero,+0000003F

l23054100:
	c.lw	s0,40(a5)
	bne	s8,s5,00000000230541F4

l23054106:
	addi	a4,zero,+0000003F
	bltu	a4,a5,00000000230541D6

l2305410E:
	c.lw	s0,0(a4)
	c.lw	s0,4(a2)
	slli	a3,a5,00000003
	c.add	a3,a4
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	s0,4(a4)
	addi	a4,a5,+00000001
	c.sw	s0,0(a3)
	c.add	a5,s0
	c.sw	s0,40(a4)
	addi	a3,zero,-00000080
	sb	a3,a5,+0000002C
	addi	a5,zero,+00000038
	bgeu	a5,a4,0000000023054154

l2305413A:
	addi	a4,zero,+0000003F

l2305413E:
	c.lw	s0,40(a5)
	bgeu	a4,a5,000000002305428A

l23054144:
	c.mv	a2,s4
	addi	a1,s0,+0000002C
	c.mv	a0,s0
	jal	ra,0000000023053EAA
	sw	zero,s0,+00000028

l23054154:
	addi	a4,zero,+00000037

l23054158:
	c.lw	s0,40(a5)
	bgeu	a4,a5,0000000023054298

l2305415E:
	c.lw	s0,0(a5)
	addi	a1,s0,+0000002C
	c.mv	a0,s0
	srli	a4,a5,00000018
	sb	a4,s0,+00000068
	srli	a4,a5,00000010
	sb	a4,s0,+00000069
	sb	a5,s0,+0000006B
	srli	a4,a5,00000008
	c.lw	s0,4(a5)
	sb	a4,s0,+0000006A
	c.mv	a2,s4
	srli	a4,a5,00000018
	sb	a4,s0,+00000064
	srli	a4,a5,00000010
	sb	a4,s0,+00000065
	srli	a4,a5,00000008
	sb	a5,s0,+00000067
	sb	a4,s0,+00000066
	jal	ra,0000000023053EAA
	addi	a5,s0,+00000008
	addi	s0,s0,+00000028

l230541AE:
	c.addi	a5,00000004
	lw	a4,a5,-00000004
	c.addi	s2,00000004
	srli	a3,a4,00000018
	sb	a3,s2,+00000FFC
	srli	a3,a4,00000010
	sb	a3,s2,+00000FFD
	srli	a3,a4,00000008
	sb	a3,s2,+00000FFE
	sb	a4,s2,+00000FFF
	bne	a5,s0,00000000230541AE

l230541D6:
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

l230541F4:
	c.lwsp	a2,000000C4
	add	a3,a4,s8
	lw	s3,a3,+00000000
	add	a3,s9,s8
	c.lw	a3,0(s1)
	bgeu	s6,a5,000000002305423A

l23054208:
	c.addi	s8,00000004
	c.j	0000000023054100

l2305420C:
	c.bnez	a0,0000000023054240

l2305420E:
	bgeu	s10,s1,0000000023054240

l23054212:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023053EAA
	blt	a0,zero,0000000023054208

l23054220:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	addi	s3,s3,+00000040
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	addi	s1,s1,-00000040

l2305423A:
	c.lw	s0,40(a0)
	c.bnez	s1,000000002305420C

l2305423E:
	c.j	0000000023054208

l23054240:
	sub	s11,s6,a0
	bgeu	s1,s11,000000002305424A

l23054248:
	c.mv	s11,s1

l2305424A:
	c.mv	a1,s3
	c.mv	a2,s11
	c.add	a0,s7
	jal	ra,000000002306CF80
	c.lw	s0,40(a5)
	c.add	s3,s11
	sub	s1,s1,s11
	c.add	a5,s11
	c.sw	s0,40(a5)
	bne	a5,s6,000000002305423A

l23054264:
	c.mv	a2,s4
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023053EAA
	blt	a0,zero,0000000023054208

l23054272:
	c.lw	s0,0(a5)
	c.lw	s0,4(a2)
	sw	zero,s0,+00000028
	addi	a3,a5,+00000200
	sltu	a5,a3,a5
	c.add	a5,a2
	c.sw	s0,0(a3)
	c.sw	s0,4(a5)
	c.j	000000002305423A

l2305428A:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	000000002305413E

l23054298:
	addi	a3,a5,+00000001
	c.sw	s0,40(a3)
	c.add	a5,s0
	sb	zero,a5,+0000002C
	c.j	0000000023054158

;; hmac_sha256_vector: 230542A6
;;   Called from:
;;     230534D6 (in bl_sha256_crypto_kdf)
hmac_sha256_vector proc
	addi	sp,sp,-00000260
	sw	s0,sp,+00000258
	sw	s1,sp,+00000254
	sw	s2,sp,+00000250
	sw	s3,sp,+0000024C
	sw	s4,sp,+00000248
	c.mv	s1,a5
	sw	ra,sp,+0000025C
	sw	s5,sp,+00000244
	sw	s6,sp,+00000240
	c.swsp	a0,00000084
	c.swsp	a1,00000004
	addi	a5,zero,+00000040
	c.mv	s2,a2
	c.mv	s3,a3
	c.mv	s4,a4
	c.addi4spn	s0,0000008C
	bgeu	a5,a1,00000000230542F6

l230542E0:
	c.addi4spn	a4,000000AC
	c.mv	a3,s0
	c.addi4spn	a2,00000008
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,00000000230540C0
	addi	a5,zero,+00000020
	c.swsp	s0,00000084
	c.swsp	a5,00000004

l230542F6:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,000000002306D1BC
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,000000002306CF80
	lui	a3,00036363
	c.addi4spn	a4,0000004C
	addi	a3,a3,+00000636

l23054316:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,0000000023054316

l23054326:
	c.addi4spn	a5,0000004C
	c.swsp	a5,0000008C
	c.addi4spn	a2,0000001C
	addi	a5,zero,+00000040
	c.addi4spn	a3,00000034
	c.swsp	a5,00000098
	c.li	a4,00000000
	slli	a5,s2,00000002
	c.mv	s5,a2
	c.mv	s6,a3

l2305433E:
	c.addi	a2,00000004
	c.addi	a3,00000004
	bne	a4,a5,00000000230543CC

l23054346:
	c.addi4spn	a4,000000AC
	c.mv	a3,s1
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,s2,+00000001
	jal	ra,00000000230540C0
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.addi4spn	a0,0000004C
	jal	ra,000000002306D1BC
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.addi4spn	a0,0000004C
	jal	ra,000000002306CF80
	lui	a3,0005C5C6
	c.addi4spn	a4,0000004C
	addi	a3,a3,-000003A4

l23054376:
	c.addi	a4,00000004
	lw	a5,a4,-00000004
	c.xor	a5,a3
	sw	a5,a4,+00000FFC
	bne	a4,s0,0000000023054376

l23054386:
	c.addi4spn	a5,0000004C
	c.swsp	a5,0000008C
	addi	a5,zero,+00000040
	c.swsp	a5,00000098
	c.addi4spn	a4,000000AC
	addi	a5,zero,+00000020
	c.mv	a3,s1
	c.mv	a2,s6
	c.mv	a1,s5
	c.li	a0,00000002
	c.swsp	s1,00000010
	c.swsp	a5,0000001C
	jal	ra,00000000230540C0
	lw	ra,sp,+0000025C
	lw	s0,sp,+00000258
	lw	s1,sp,+00000254
	lw	s2,sp,+00000250
	lw	s3,sp,+0000024C
	lw	s4,sp,+00000248
	lw	s5,sp,+00000244
	lw	s6,sp,+00000240
	addi	sp,sp,+00000260
	c.jr	ra

l230543CC:
	add	a1,s3,a4
	c.lw	a1,0(a1)
	c.sw	a2,0(a1)
	add	a1,s4,a4
	c.lw	a1,0(a1)
	c.addi	a4,00000004
	c.sw	a3,0(a1)
	c.j	000000002305433E

;; KeyMgmtInit: 230543E0
;;   Called from:
;;     23054926 (in InitGroupKey)
KeyMgmtInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s1,a0
	jal	ra,0000000023054DE2
	c.mv	s0,a0
	addi	a1,a0,+000000F4
	addi	a2,s1,+00000046
	addi	a0,a0,+000000CC
	jal	ra,0000000023054D84
	lw	a4,s0,+000000B8
	c.li	a5,00000001
	bne	a4,a5,0000000023054434

l2305440A:
	lbu	a1,s1,+0000002C
	addi	a2,s0,+00000018
	c.mv	a0,a2
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306D630
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	andi	a3,a0,+000000FF
	addi	a4,s0,+00000059
	addi	a0,s1,+0000000C
	jal	ra,0000000023053C7A
	sw	zero,s0,+000000B8

l23054434:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; PrepDefaultEapolMsg: 2305443E
;;   Called from:
;;     230544DC (in GeneratePWKMsg1)
;;     23054580 (in GeneratePWKMsg3)
PrepDefaultEapolMsg proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a2,00000084
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.mv	s3,a1
	jal	ra,0000000023054DF6
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023054DE2
	c.lwsp	a2,00000084
	c.mv	s4,a0
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,0000000023050C6E
	c.mv	s1,a0
	c.beqz	a0,00000000230544B0

l2305446E:
	c.lwsp	t3,00000044
	addi	a2,zero,+00000072
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lwsp	t3,00000044
	addi	a1,s0,+00000040
	addi	a2,s0,+00000046
	jal	ra,0000000023052490
	lw	a1,s2,+00000010
	lbu	a5,s2,+00000014
	c.lwsp	t3,00000044
	c.srli	a1,00000015
	c.andi	a5,00000008
	c.andi	a1,00000001
	c.li	a3,00000001
	c.bnez	a5,00000000230544A4

l2305449C:
	lbu	a3,s4,+00000008
	c.srli	a3,00000003
	c.andi	a3,00000001

l230544A4:
	c.li	a2,00000000
	jal	ra,0000000023053024
	c.lwsp	t3,000000E4
	sw	a5,s3,+00000000

l230544B0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; GeneratePWKMsg1: 230544C2
;;   Called from:
;;     23054706 (in GenerateApEapolMsg)
GeneratePWKMsg1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.swsp	a1,00000084
	jal	ra,0000000023054DF6
	c.lwsp	a2,00000084
	c.mv	s0,a0
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,000000002305443E
	c.beqz	a0,0000000023054568

l230544E2:
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,00000000230544F2

l230544EC:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l230544F2:
	c.lw	s0,32(a4)
	addi	s1,s1,+000000A4
	addi	a1,zero,+00000020
	c.mv	a0,s1
	c.swsp	a5,0000008C
	c.swsp	a4,0000000C
	jal	ra,00000000230521A6
	c.lwsp	s4,00000044
	c.lui	a2,00001000
	c.mv	a4,s1
	c.addi4spn	a3,00000018
	addi	a2,a2,-00000800
	addi	a1,s0,+00000014
	c.jal	0000000023054A20
	c.lwsp	s4,000000C4
	c.mv	a0,s2
	lbu	a1,a4,+00000070
	lbu	a5,a4,+0000006F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000054
	addi	a1,a1,+0000005F
	c.slli	a1,10
	c.srli	a1,00000010
	sb	a5,a4,+0000000E
	c.li	a5,00000003
	sb	a5,a4,+0000000F
	srli	a3,a1,00000008
	slli	a5,a1,00000008
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+00000010
	c.srli	a5,00000008
	sb	a5,a4,+00000011
	jal	ra,0000000023050D02
	c.li	a0,00000000

l2305455C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23054568:
	c.li	a0,00000001
	c.j	000000002305455C

;; GeneratePWKMsg3: 2305456C
;;   Called from:
;;     2305472E (in GenerateApEapolMsg)
GeneratePWKMsg3 proc
	c.addi16sp	FFFFFFD0
	c.mv	a2,a1
	c.addi4spn	a1,00000004
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s4,a0
	jal	ra,000000002305443E
	c.beqz	a0,0000000023054606

l23054586:
	c.mv	s1,a0
	c.mv	a0,s4
	jal	ra,0000000023054DF6
	c.mv	s0,a0
	c.mv	a0,s4
	jal	ra,0000000023054DE2
	c.lw	s0,28(a5)
	c.mv	s2,a0
	c.addi	a5,00000001
	c.sw	s0,28(a5)
	c.bnez	a5,00000000230545A6

l230545A0:
	c.lw	s0,32(a4)
	c.addi	a4,00000001
	c.sw	s0,32(a4)

l230545A6:
	lhu	a2,s0,+00000012
	c.swsp	a5,00000084
	c.lui	a5,FFFF8000
	c.slli	a2,0A
	c.and	a2,a5
	c.lui	a5,00001000
	c.lw	s0,32(a4)
	addi	a5,a5,-00000780
	c.or	a2,a5
	c.lwsp	tp,00000044
	addi	s3,s0,+00000014
	c.slli	a2,10
	c.swsp	a4,00000004
	c.addi4spn	a3,00000008
	addi	a4,s4,+000000A4
	c.srli	a2,00000010
	c.mv	a1,s3
	c.jal	0000000023054A20
	lhu	a5,s0,+00000012
	c.li	a3,00000000
	andi	a4,a5,+00000008
	c.bnez	a4,00000000230545EC

l230545DE:
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230545EC

l230545E4:
	lui	a3,0004201E
	addi	a3,a3,+000001F0

l230545EC:
	c.lwsp	tp,00000044
	c.li	a2,00000000
	addi	a1,s0,+00000012
	jal	ra,0000000023054D5A
	c.bnez	a0,000000002305460A

l230545FA:
	c.lw	s1,8(a0)
	jal	ra,0000000023035A72
	c.mv	a0,s1
	jal	ra,0000000023035A72

l23054606:
	c.li	a0,00000001
	c.j	000000002305464A

l2305460A:
	lhu	a5,s0,+00000012
	andi	a5,a5,+00000020
	c.beqz	a5,000000002305462C

l23054614:
	c.lwsp	tp,00000044
	addi	a2,s2,+00000008
	addi	a1,s2,+000000CC
	c.jal	0000000023054B2C
	c.lwsp	tp,00000044
	c.mv	a2,s3
	addi	a1,s0,+00000044
	c.jal	0000000023054C3A
	c.beqz	a0,00000000230545FA

l2305462C:
	c.lwsp	tp,00000044
	lbu	a2,s0,+00000054
	addi	a1,s0,+00000034
	lbu	a3,a0,+00000014
	c.andi	a3,00000007
	jal	ra,00000000230525CC
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,0000000023050D02
	c.li	a0,00000000

l2305464A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; ProcessPWKMsg4: 2305465A
;;   Called from:
;;     230548AE (in ProcessKeyMgmtDataAp)
ProcessPWKMsg4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023054DF6
	c.mv	s1,a0
	addi	a1,a0,+00000034
	lw	a0,s2,+00000008
	jal	ra,0000000023052518
	c.beqz	a0,00000000230546CA

l2305467E:
	c.li	a5,00000001
	sb	a5,s0,+000000E8
	c.li	a1,00000001
	sb	zero,s0,+000000E9
	sb	zero,s0,+000000E4
	sb	zero,s0,+000000E5
	sb	zero,s0,+000000E6
	sb	zero,s0,+000000E7
	c.mv	a0,s0
	jal	ra,00000000230515FC
	lbu	a0,s0,+00000001
	jal	ra,000000002304F6E8
	lhu	a5,s1,+00000012
	sb	zero,s1,+00000018
	c.li	a0,00000000
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230546BE

l230546B8:
	c.li	a5,0000000A
	sb	a5,s1,+00000016

l230546BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230546CA:
	c.li	a0,00000001
	c.j	00000000230546BE

;; GenerateApEapolMsg: 230546CE
;;   Called from:
;;     230547C6 (in ProcessPWKMsg2)
;;     230547F6 (in SendEAPOLMsgUsingBufDesc)
GenerateApEapolMsg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.swsp	a2,00000084
	jal	ra,0000000023054DF6
	andi	a5,s0,+00000001
	c.mv	s1,a0
	c.lwsp	a2,00000064
	c.bnez	a5,00000000230546F2

l230546EC:
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF

l230546F2:
	lbu	a4,s1,+0000000C
	sb	s0,s1,+00000016
	c.li	a5,00000001
	beq	a4,a5,0000000023054718

l23054700:
	bne	s0,a5,0000000023054726

l23054704:
	c.mv	a0,s2
	jal	ra,00000000230544C2

l2305470A:
	c.mv	s0,a0
	c.bnez	a0,0000000023054748

l2305470E:
	lbu	a5,s1,+00000016
	c.addi	a5,00000001
	sb	a5,s1,+00000016

l23054718:
	lbu	a5,s1,+00000018
	c.li	s0,00000000
	c.addi	a5,00000001
	sb	a5,s1,+00000018
	c.j	0000000023054748

l23054726:
	c.li	a5,00000003
	bne	s0,a5,0000000023054734

l2305472C:
	c.mv	a0,s2
	jal	ra,000000002305456C
	c.j	000000002305470A

l23054734:
	c.li	s0,00000001
	c.beqz	a1,0000000023054748

l23054738:
	c.lw	a1,8(a0)
	c.swsp	a1,00000084
	jal	ra,0000000023035A72
	c.lwsp	a2,00000064
	c.mv	a0,a1
	jal	ra,0000000023035A72

l23054748:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; ProcessPWKMsg2: 23054756
;;   Called from:
;;     230548A0 (in ProcessKeyMgmtDataAp)
ProcessPWKMsg2 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s0,00000014
	c.lw	a0,0(s0)
	c.mv	s1,a0
	c.mv	a0,s0
	c.jal	0000000023054DF6
	c.mv	s2,a0
	c.mv	a0,s0
	c.jal	0000000023054DE2
	c.lw	s1,8(s1)
	addi	s3,s2,+00000034
	addi	a1,s0,+00000040
	addi	a0,a0,+00000059
	c.swsp	zero,00000000
	addi	a7,s0,+000000C4
	addi	a6,s2,+00000044
	c.mv	a5,s3
	addi	a4,s1,+00000011
	addi	a3,s0,+000000A4
	addi	a2,s0,+00000030
	c.jal	0000000023054CEE
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023052518
	c.beqz	a0,00000000230547CA

l230547A2:
	sb	zero,s2,+00000018
	lbu	a5,s1,+00000064
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi	a5,00000002
	lui	a4,0004200E
	sb	a5,a4,+00000380
	c.li	a2,00000000
	c.li	a1,00000003
	c.addi16sp	00000030
	jal	zero,00000000230546CE

l230547CA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000001
	c.addi16sp	00000030
	c.jr	ra

;; SendEAPOLMsgUsingBufDesc: 230547DA
;;   Called from:
;;     230641C2 (in apm_sta_add_cfm_handler)
SendEAPOLMsgUsingBufDesc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.jal	0000000023054DF6
	lbu	a1,a0,+00000016
	c.lwsp	a2,00000084
	c.li	a0,00000000
	andi	a4,a1,+00000001
	c.beqz	a4,00000000230547FC

l230547F4:
	c.mv	a0,s0
	jal	ra,00000000230546CE
	c.li	a0,00000001

l230547FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ProcessKeyMgmtDataAp: 23054804
;;   Called from:
;;     23051D46 (in ProcessEAPoLPkt)
ProcessKeyMgmtDataAp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	0000000023054DF6
	lw	s2,s0,+00000008
	lbu	a5,s2,+00000005
	c.andi	a5,00000004
	c.beqz	a5,000000002305482E

l23054820:
	c.li	a0,00000001

l23054822:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305482E:
	c.mv	s1,a0
	c.li	a2,00000004
	addi	a1,s2,+00000009
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	c.li	a2,00000004
	addi	a1,s2,+0000000D
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.lwsp	s0,000000E4
	lui	a1,00000FF0
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.add	a4,a3
	slli	a3,a5,00000008
	c.and	a3,a1
	c.add	a3,a4
	srli	a4,a5,00000008
	c.lui	a5,00010000
	addi	a2,a5,-00000100
	c.lw	s1,32(a5)
	c.and	a4,a2
	c.add	a4,a3
	bne	a5,a4,0000000023054820

l23054874:
	c.lwsp	a2,000000E4
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.add	a4,a3
	slli	a3,a5,00000008
	c.and	a3,a1
	c.srli	a5,00000008
	c.add	a4,a3
	c.and	a5,a2
	c.add	a5,a4
	c.lw	s1,28(a4)
	bne	a4,a5,0000000023054820

l23054894:
	lbu	a5,s1,+00000016
	c.li	a4,00000002
	bne	a5,a4,00000000230548A6

l2305489E:
	c.mv	a0,s0
	jal	ra,0000000023054756
	c.j	0000000023054822

l230548A6:
	c.li	a4,00000004
	bne	a5,a4,0000000023054820

l230548AC:
	c.mv	a0,s0
	jal	ra,000000002305465A
	c.j	0000000023054822

;; InitStaKeyInfo: 230548B4
;;   Called from:
;;     2304FDAA (in apm_assoc_req_handler)
InitStaKeyInfo proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.jal	0000000023054DF6
	addi	s1,a0,+00000010
	c.mv	s0,a0
	addi	a2,zero,+00000048
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023054D92
	c.li	a5,00000001
	sb	a5,s0,+00000054
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; RemoveAPKeyInfo: 230548FC
;;   Called from:
;;     230644D4 (in apm_stop_req_handler)
RemoveAPKeyInfo proc
	lbu	a0,a0,+00000003
	addi	a5,zero,+000000FF
	beq	a0,a5,000000002305490C

l23054908:
	jal	zero,000000002305DA56

l2305490C:
	c.jr	ra

;; InitGroupKey: 2305490E
;;   Called from:
;;     23064782 (in apm_start_req_handler)
InitGroupKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.jal	0000000023054DE2
	c.mv	s0,a0
	sw	zero,a0,+00000114
	sw	zero,a0,+00000118
	c.mv	a0,s1
	jal	ra,00000000230543E0
	c.lw	s0,20(a5)
	c.beqz	a5,000000002305495E

l2305492E:
	c.lui	a4,0001F000
	addi	a4,a4,-000007B8
	add	a1,a5,a4
	lhu	a2,s0,+000000A6
	c.li	a3,00000000
	c.slli	a2,07
	sltu	a5,a5,a4
	addi	a0,a1,-0000007D
	sltu	a1,a0,a1
	c.addi	a5,FFFFFFFF
	c.add	a1,a5
	jal	ra,0000000023069564
	c.addi	a0,00000001
	sw	a0,s0,+00000114
	sw	a0,s0,+00000118

l2305495E:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230515FC
	c.lwsp	s0,00000004
	sb	a0,s1,+00000003
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,-0000046C
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; GenerateGTK_internal: 23054980
;;   Called from:
;;     23054D8E (in ROM_InitGTK)
GenerateGTK_internal proc
	c.addi16sp	FFFFFF70
	c.swsp	s1,000000C0
	c.mv	s1,a1
	lui	a1,0002307D
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,-00000458
	c.li	a2,00000014
	c.addi4spn	a0,00000004
	c.swsp	ra,000000C4
	jal	ra,000000002306CF80
	c.beqz	s0,0000000023054A14

l230549A2:
	c.beqz	s1,0000000023054A14

l230549A4:
	c.li	a2,00000006
	c.mv	a1,s2
	c.addi4spn	a0,00000058
	jal	ra,000000002306CF80
	addi	a1,zero,+00000020
	c.mv	a0,s1
	jal	ra,00000000230521A6
	addi	a2,zero,+00000020
	c.mv	a1,s1
	addi	a0,sp,+0000005E
	jal	ra,000000002306CF80
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,00000000230521A6
	c.addi4spn	a0,00000004
	jal	ra,000000002306D630
	c.mv	a3,a0
	addi	a7,zero,+00000020
	addi	a6,sp,+00000018
	addi	a5,zero,+00000026
	c.addi4spn	a4,00000058
	c.addi4spn	a2,00000004
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000038
	jal	ra,0000000023065614
	c.li	a2,00000010
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,00000028
	addi	a0,s0,+00000018
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.addi4spn	a1,00000030
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80

l23054A14:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.addi16sp	00000090
	c.jr	ra

;; PopulateKeyMsg: 23054A20
;;   Called from:
;;     23054516 (in GeneratePWKMsg1)
;;     230545D0 (in GeneratePWKMsg3)
PopulateKeyMsg proc
	beq	a0,zero,0000000023054B2A

l23054A24:
	beq	a1,zero,0000000023054B2A

l23054A28:
	lbu	a5,a1,+00000000
	andi	a1,a5,+00000004
	c.beqz	a1,0000000023054B0C

l23054A32:
	sb	zero,a0,+00000015
	addi	a5,zero,+00000020

l23054A3A:
	sb	a5,a0,+00000016

l23054A3E:
	lbu	a1,a0,+00000014
	ori	a5,a1,-00000080
	sb	a5,a0,+00000014
	slli	a5,a2,00000014
	bge	a5,zero,0000000023054B18

l23054A52:
	ori	a5,a1,-00000078
	sb	a5,a0,+00000014
	andi	a5,a2,+00000080
	c.beqz	a5,0000000023054A84

l23054A60:
	lbu	a5,a0,+00000013
	ori	a1,a1,-00000038
	c.srli	a2,0000000F
	ori	a5,a5,+00000001
	sb	a1,a0,+00000014
	andi	a5,a5,+000000ED
	slli	a1,a2,00000001
	c.or	a5,a1
	c.slli	a2,04

l23054A7E:
	c.or	a2,a5
	sb	a2,a0,+00000013

l23054A84:
	lw	a6,a3,+00000000
	lui	a7,00000FF0
	c.addi	a0,0000001F
	srli	a5,a6,00000018
	slli	a2,a6,00000018
	slli	a1,a6,00000008
	c.add	a2,a5
	and	a1,a1,a7
	c.add	a2,a1
	c.lui	a1,00010000
	addi	a1,a1,-00000100
	srli	a6,a6,00000008
	and	a6,a6,a1
	c.add	a2,a6
	srli	a5,a2,00000008
	sb	a2,a0,+00000FF8
	sb	a5,a0,+00000FF9
	srli	a5,a2,00000010
	c.srli	a2,00000018
	sb	a5,a0,+00000FFA
	sb	a2,a0,+00000FFB
	c.lw	a3,4(a3)
	srli	a2,a3,00000018
	slli	a5,a3,00000018
	c.add	a5,a2
	slli	a2,a3,00000008
	and	a2,a2,a7
	c.srli	a3,00000008
	c.and	a3,a1
	c.add	a5,a2
	c.add	a5,a3
	srli	a3,a5,00000008
	sb	a5,a0,+00000FFC
	sb	a3,a0,+00000FFD
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,a0,+00000FFE
	sb	a5,a0,+00000FFF
	addi	a2,zero,+00000020
	c.mv	a1,a4
	jal	zero,000000002306CF80

l23054B0C:
	c.andi	a5,00000008
	c.beqz	a5,0000000023054A3E

l23054B10:
	sb	zero,a0,+00000015
	c.li	a5,00000010
	c.j	0000000023054A3A

l23054B18:
	lbu	a5,a0,+00000013
	c.srli	a2,0000000F
	c.slli	a2,04
	andi	a5,a5,+000000EC
	ori	a5,a5,+00000003
	c.j	0000000023054A7E

l23054B2A:
	c.jr	ra

;; prepareKDE: 23054B2C
;;   Called from:
;;     2305461E (in GeneratePWKMsg3)
prepareKDE proc
	beq	a0,zero,0000000023054C38

l23054B30:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a1
	c.beqz	a1,0000000023054C2A

l23054B40:
	c.beqz	a2,0000000023054C2A

l23054B42:
	lbu	a5,a0,+0000006F
	addi	s1,a0,+00000071
	c.mv	s3,a2
	c.add	s1,a5
	addi	a5,zero,-00000023
	sb	a5,s1,+00000000
	c.li	a5,00000016
	sb	a5,s1,+00000001
	lui	a5,00023082
	lbu	a4,a5,+000007F8
	addi	a5,a5,+000007F8
	c.mv	s2,a0
	sb	a4,s1,+00000002
	lbu	a4,a5,+00000001
	lbu	a5,a5,+00000002
	c.li	a2,00000010
	sb	a4,s1,+00000003
	sb	a5,s1,+00000004
	c.li	a5,00000001
	sb	a5,s1,+00000005
	lbu	a5,s1,+00000006
	addi	a0,s1,+00000008
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000001
	sb	a5,s1,+00000006
	jal	ra,000000002306CF80
	lbu	a5,s3,+00000000
	addi	a0,s1,+00000018
	c.andi	a5,00000004
	c.beqz	a5,0000000023054BCE

l23054BA8:
	lbu	a5,s1,+00000001
	c.li	a2,00000008
	addi	a1,s0,+00000018
	c.addi	a5,00000010
	sb	a5,s1,+00000001
	jal	ra,000000002306CF80
	c.li	a2,00000008
	addi	a1,s0,+00000010
	addi	a0,s1,+00000020
	jal	ra,000000002306CF80
	addi	a0,s1,+00000028

l23054BCE:
	lbu	s0,s2,+00000070
	lbu	a5,s2,+0000006F
	c.slli	s0,08
	c.or	s0,a5
	lbu	a5,s1,+00000001
	c.addi	s0,00000002
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	srli	a5,s0,00000008
	sb	s0,s2,+0000006F
	sub	s0,zero,s0
	sb	a5,s2,+00000070
	c.andi	s0,00000007
	c.beqz	s0,0000000023054C2A

l23054BFA:
	addi	a5,zero,-00000023
	sb	a5,a0,+00000000
	addi	a2,s0,-00000001
	c.li	a1,00000000
	c.addi	a0,00000001
	jal	ra,000000002306D1BC
	lbu	a5,s2,+00000070
	lbu	a4,s2,+0000006F
	c.slli	a5,08
	c.or	a5,a4
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	sb	s0,s2,+0000006F
	c.srli	s0,00000008
	sb	s0,s2,+00000070

l23054C2A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23054C38:
	c.jr	ra

;; Encrypt_keyData: 23054C3A
;;   Called from:
;;     23054628 (in GeneratePWKMsg3)
Encrypt_keyData proc
	c.bnez	a0,0000000023054C50

l23054C3C:
	c.li	a0,00000000
	c.jr	ra

l23054C40:
	c.li	a0,00000000

l23054C42:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23054C50:
	c.beqz	a1,0000000023054C3C

l23054C52:
	c.beqz	a2,0000000023054C3C

l23054C54:
	lbu	a5,a2,+00000000
	andi	a4,a5,+00000008
	c.beqz	a4,0000000023054CE6

l23054C5E:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.li	a0,0000000C
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,000000002303598A
	c.mv	s1,a0
	c.beqz	a0,0000000023054C40

l23054C78:
	addi	a0,zero,+00000190
	jal	ra,000000002303598A
	c.sw	s1,8(a0)
	c.mv	s2,a0
	c.beqz	a0,0000000023054C40

l23054C86:
	c.mv	a1,s3
	c.li	a2,00000010
	c.mv	a0,sp
	jal	ra,000000002306CF80
	lbu	a2,s0,+00000070
	lbu	a5,s0,+0000006F
	addi	s3,s0,+00000071
	c.slli	a2,08
	c.or	a2,a5
	c.li	a4,00000000
	c.mv	a3,s3
	c.mv	a5,s2
	c.srli	a2,00000003
	c.li	a1,00000002
	c.mv	a0,sp
	jal	ra,000000002306517C
	lbu	a2,s0,+00000070
	lbu	a5,s0,+0000006F
	c.mv	a1,s2
	c.slli	a2,08
	c.or	a2,a5
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	srli	a5,a2,00000008
	sb	a2,s0,+0000006F
	sb	a5,s0,+00000070
	c.mv	a0,s3
	jal	ra,000000002306CF80
	c.lw	s1,8(a0)
	jal	ra,0000000023035A72
	c.mv	a0,s1
	jal	ra,0000000023035A72
	c.li	a0,00000001
	c.j	0000000023054C42

l23054CE6:
	srli	a0,a5,00000002
	c.andi	a0,00000001
	c.jr	ra

;; KeyMgmtAp_DerivePTK: 23054CEE
;;   Called from:
;;     23054796 (in ProcessPWKMsg2)
KeyMgmtAp_DerivePTK proc
	c.addi16sp	FFFFFFD0
	c.lwsp	a6,000001D0
	c.swsp	s0,00000014
	c.mv	s0,a7
	c.swsp	t1,00000000
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,0000000023052F22
	addi	s1,s0,+00000010
	c.mv	a1,s1
	c.li	a2,00000008
	c.addi4spn	a0,00000018
	jal	ra,000000002306CF80
	c.addi	s0,00000018
	c.mv	a1,s0
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,000000002306CF80
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,000000002306CF80
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; KeyData_CopyWPAWP2: 23054D2E
;;   Called from:
;;     23054D74 (in KeyData_UpdateKeyMaterial)
KeyData_CopyWPAWP2 proc
	c.beqz	a1,0000000023054D56

l23054D30:
	lbu	a2,a1,+00000001
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.addi	a2,00000002
	srli	a5,a2,00000008
	sb	a2,a0,+0000006F
	sb	a5,a0,+00000070
	addi	a0,a0,+00000071
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23054D56:
	c.li	a0,00000000
	c.jr	ra

;; KeyData_UpdateKeyMaterial: 23054D5A
;;   Called from:
;;     230545F4 (in GeneratePWKMsg3)
KeyData_UpdateKeyMaterial proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a5,a1,+00000000
	c.mv	a1,a2
	andi	a4,a5,+00000018
	c.bnez	a4,0000000023054D74

l23054D6A:
	andi	a5,a5,+00000020
	c.li	a4,00000001
	c.beqz	a5,0000000023054D7C

l23054D72:
	c.mv	a1,a3

l23054D74:
	jal	ra,0000000023054D2E
	sltu	a4,zero,a0

l23054D7C:
	c.lwsp	a2,00000020
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; ROM_InitGTK: 23054D84
;;   Called from:
;;     230543FC (in KeyMgmtInit)
ROM_InitGTK proc
	c.lui	a5,00010000
	c.addi	a5,00000001
	sw	zero,a0,+00000020
	c.sw	a0,36(a5)
	jal	zero,0000000023054980

;; InitKeyMgmtInfo: 23054D92
;;   Called from:
;;     230548E6 (in InitStaKeyInfo)
InitKeyMgmtInfo proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000001
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	sb	a5,a0,+00000006
	c.mv	s0,a0
	c.mv	s2,a2
	c.addi	a0,00000002
	c.li	a2,00000002
	c.mv	s1,a1
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,000000002306CF80
	c.li	a2,00000001
	c.mv	a1,s2
	addi	a0,s0,+00000004
	jal	ra,000000002306CF80
	c.lwsp	s0,000000C4
	sb	a4,s0,+00000005
	lbu	a5,s1,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023054DD6

l23054DD0:
	c.lwsp	a2,000000A4
	sh	a3,s0,+00000000

l23054DD6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; cm_GetApInfo: 23054DE2
;;   Called from:
;;     23051690 (in add_key_to_mac)
;;     230543EA (in KeyMgmtInit)
;;     2305445A (in PrepDefaultEapolMsg)
;;     23054592 (in GeneratePWKMsg3)
;;     2305476E (in ProcessPWKMsg2)
;;     23054918 (in InitGroupKey)
;;     23067346 (in ap_setpsk)
;;     2306739C (in ap_resetConfiguration)
cm_GetApInfo proc
	c.beqz	a0,0000000023054DF4

l23054DE4:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023054DF2

l23054DEE:
	c.lw	a0,76(a0)
	c.jr	ra

l23054DF2:
	c.li	a0,00000000

l23054DF4:
	c.jr	ra

;; cm_GetApData: 23054DF6
;;   Called from:
;;     23054452 (in PrepDefaultEapolMsg)
;;     230544D0 (in GeneratePWKMsg1)
;;     2305458A (in GeneratePWKMsg3)
;;     2305466A (in ProcessPWKMsg4)
;;     230546DE (in GenerateApEapolMsg)
;;     23054768 (in ProcessPWKMsg2)
;;     230547E4 (in SendEAPOLMsgUsingBufDesc)
;;     23054812 (in ProcessKeyMgmtDataAp)
;;     230548C8 (in InitStaKeyInfo)
;;     23054E18 (in cm_AllocAPResources)
;;     23054F12 (in cm_DeleteConnection)
;;     230673A4 (in ap_resetConfiguration)
cm_GetApData proc
	c.beqz	a0,0000000023054E0A

l23054DF8:
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023054E08

l23054E02:
	addi	a0,a0,+0000004C
	c.jr	ra

l23054E08:
	c.li	a0,00000000

l23054E0A:
	c.jr	ra

;; cm_AllocAPResources: 23054E0C
;;   Called from:
;;     23054E5C (in cm_AllocResources)
cm_AllocAPResources proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a0
	jal	ra,0000000023054DF6
	c.lw	a0,4(a5)
	c.bnez	a5,0000000023054E44

l23054E20:
	c.mv	s1,a0
	c.li	a0,0000000C
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.li	a0,00000001
	c.beqz	s0,0000000023054E46

l23054E2E:
	addi	a0,zero,+00000120
	jal	ra,000000002303598A
	c.sw	s0,8(a0)
	c.sw	s1,4(s0)
	c.lw	s0,8(a5)
	c.mv	a0,s2
	c.sw	s1,0(a5)
	jal	ra,000000002306742A

l23054E44:
	c.li	a0,00000000

l23054E46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; cm_AllocResources: 23054E52
;;   Called from:
;;     23054E92 (in cm_InitConnection)
cm_AllocResources proc
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023054E60

l23054E5C:
	jal	zero,0000000023054E0C

l23054E60:
	c.li	a0,00000000
	c.jr	ra

;; cm_InitConnection: 23054E64
;;   Called from:
;;     2306473C (in apm_start_req_handler)
cm_InitConnection proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,zero,+000000EC
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s1,a3
	c.mv	s2,a4
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,0000000023054EA4

l23054E82:
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.mv	a0,s0
	sb	s3,s0,+00000000
	jal	ra,0000000023054E52
	c.li	a5,00000001
	bne	a0,a5,0000000023054EB4

l23054E9C:
	c.mv	a0,s0
	jal	ra,0000000023035A72
	c.li	s0,00000000

l23054EA4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23054EB4:
	beq	s2,zero,0000000023054EC4

l23054EB8:
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000040
	jal	ra,000000002306CF80

l23054EC4:
	addi	s2,s0,+00000030
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,000000002306D1BC
	sb	zero,s0,+0000002C
	c.beqz	s1,0000000023054EA4

l23054EE6:
	c.mv	a1,s1
	c.li	a2,00000006
	c.mv	a0,s2
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,s0,+00000046
	jal	ra,000000002306CF80
	c.j	0000000023054EA4

;; cm_DeleteConnection: 23054EFE
;;   Called from:
;;     230644DC (in apm_stop_req_handler)
cm_DeleteConnection proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	c.mv	s1,a0
	bne	a4,a5,0000000023054F30

l23054F12:
	jal	ra,0000000023054DF6
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023054F30

l23054F1C:
	c.lw	a5,8(a0)
	jal	ra,0000000023035A72
	c.lw	s0,4(a0)
	jal	ra,0000000023035A72
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000

l23054F30:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023035A72

;; cm_SetPeerAddr: 23054F3E
;;   Called from:
;;     2304FDB6 (in apm_assoc_req_handler)
cm_SetPeerAddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	c.beqz	a1,0000000023054F56

l23054F4C:
	c.li	a2,00000006
	addi	a0,a0,+00000030
	jal	ra,000000002306CF80

l23054F56:
	c.beqz	s1,0000000023054F6C

l23054F58:
	addi	a0,s0,+00000040
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.li	a2,00000006
	c.addi	sp,00000010
	jal	zero,000000002306CF80

l23054F6C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; cm_SetComData: 23054F76
;;   Called from:
;;     23064756 (in apm_start_req_handler)
cm_SetComData proc
	c.beqz	a1,0000000023054FB2

l23054F78:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002306D630
	c.lwsp	a2,00000064
	sb	a0,s0,+0000002C
	addi	a2,zero,+00000020
	addi	a0,s0,+0000000C
	jal	ra,000000002306CF80
	lbu	a0,s0,+0000002C
	c.li	a5,0000001F
	bltu	a5,a0,0000000023054FAA

l23054FA4:
	c.add	s0,a0
	sb	zero,s0,+0000000C

l23054FAA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23054FB2:
	c.jr	ra

;; assert_rec: 23054FB4
;;   Called from:
;;     2304838C (in rxl_mpdu_transfer)
;;     2304844E (in rxl_timer_int_handler)
;;     23048538 (in rxl_mpdu_free)
;;     23048608 (in rxl_cntrl_evt)
;;     23049AC4 (in txl_payload_handle_backup)
;;     2304A2A2 (in txl_frame_get)
;;     2304C3E8 (in rxu_cntrl_frame_handle)
;;     2305CB16 (in hal_machw_idle_req)
;;     2305D1F4 (in hal_machw_gen_handler)
;;     2305D24A (in hal_machw_gen_handler)
;;     2305D268 (in hal_machw_gen_handler)
;;     2305D28E (in hal_machw_gen_handler)
;;     2305D648 (in hal_machw_rx_duration)
assert_rec proc
	lui	a5,0004200E
	lbu	a4,a5,+00000374
	c.li	a5,00000001
	bne	a4,a5,0000000023054FF2

l23054FC2:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	lw	a5,a5,-00000124
	blt	a5,zero,0000000023054FEC

l23054FD2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305CFBA
	lui	a0,00080000
	jal	ra,00000000230501A8
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23054FEC:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l23054FF2:
	c.jr	ra

;; assert_err: 23054FF4
;;   Called from:
;;     23046D68 (in mm_cfg_rssi_req_handler)
;;     23046DE0 (in mm_set_ps_options_req_handler)
;;     23046F24 (in mm_key_del_req_handler)
;;     23046F80 (in mm_key_add_req_handler)
;;     23046FA4 (in mm_key_add_req_handler)
;;     23046FC6 (in mm_key_add_req_handler)
;;     230470CE (in mm_set_idle_req_handler)
;;     230471A6 (in mm_start_req_handler)
;;     230472B4 (in mm_force_idle_req_handler)
;;     2304731C (in mm_hw_config_handler)
;;     2304735C (in mm_hw_config_handler)
;;     230474B4 (in mm_hw_config_handler)
;;     23047698 (in mm_hw_config_handler)
;;     23047A50 (in mm_timer_schedule)
;;     23048C4A (in rxl_hd_append)
;;     23048CC2 (in rxl_pd_append)
;;     23049590 (in blmac_abs_timer_set)
;;     23049730 (in txl_cntrl_halt_ac)
;;     23049DD4 (in txl_transmit_trigger)
;;     2304A3A0 (in txl_frame_push)
;;     2304A408 (in txl_frame_push_force)
;;     2304A890 (in txl_frame_send_eapol_frame)
;;     2304B65C (in me_mic_end)
;;     2304D9A2 (in sm_send_next_bss_param)
;;     2304EE86 (in txu_cntrl_cfm)
;;     2304F228 (in apm_send_next_bss_param)
;;     2304FFE0 (in co_list_push_back)
;;     23050022 (in co_list_push_front)
;;     23050068 (in co_list_extract)
;;     2305013E (in co_list_remove)
;;     2305015E (in co_list_remove)
;;     2305018C (in co_list_remove)
;;     230502A6 (in ke_evt_schedule)
;;     2305033C (in ke_malloc)
;;     23050368 (in ke_malloc)
;;     230503DA (in ke_free)
;;     23050442 (in ke_free)
;;     230504AA (in ke_msg_alloc)
;;     2305050C (in ke_msg_send)
;;     2305059E (in ke_task_local)
;;     230505FA (in ke_handler_search)
;;     23050642 (in ke_state_set)
;;     23050662 (in ke_state_set)
;;     23050692 (in ke_state_set)
;;     230506B6 (in ke_state_set)
;;     2305073A (in ke_state_get)
;;     2305075A (in ke_state_get)
;;     2305078A (in ke_state_get)
;;     230507F6 (in ke_task_schedule)
;;     23050816 (in ke_task_schedule)
;;     23050846 (in ke_task_schedule)
;;     23050862 (in ke_task_schedule)
;;     230508EA (in ke_task_schedule)
;;     230509BE (in ke_timer_set)
;;     23050A26 (in ke_timer_set)
;;     23050B20 (in ke_timer_clear)
;;     23051722 (in add_key_to_mac)
;;     23055252 (in ipc_emb_notify)
;;     230552FE (in ipc_emb_init)
;;     2305565A (in ipc_emb_msg_evt)
;;     230556B4 (in ipc_emb_msg_evt)
;;     230556C4 (in ipc_emb_msg_evt)
;;     2305573A (in mdm_txcbwmax_setf)
;;     23055D24 (in phy_hw_set_channel)
;;     23055D40 (in phy_hw_set_channel)
;;     23055F86 (in phy_init)
;;     23055FCC (in phy_init)
;;     23056090 (in phy_init)
;;     230560D6 (in phy_init)
;;     2305B18A (in intc_spurious)
;;     2305B27E (in mac_irq)
;;     2305B2CE (in blmac_pwr_mgt_setf)
;;     2305B36A (in chan_get_next_chan)
;;     2305B3F6 (in chan_get_next_chan)
;;     2305B500 (in chan_tbtt_insert)
;;     2305B566 (in chan_tbtt_insert)
;;     2305B71E (in chan_conn_less_delay_evt)
;;     2305B764 (in chan_conn_less_delay_evt)
;;     2305BDE6 (in chan_tx_cfm)
;;     2305C066 (in chan_scan_req)
;;     2305C348 (in chan_ctxt_del)
;;     2305C370 (in chan_ctxt_del)
;;     2305C58C (in chan_bcn_detect_start)
;;     2305C782 (in chan_ctxt_link)
;;     2305C7B0 (in chan_ctxt_link)
;;     2305C88A (in chan_ctxt_unlink)
;;     2305CAAE (in blmac_soft_reset_getf)
;;     2305CC26 (in hal_machw_init)
;;     2305CCE0 (in hal_machw_init)
;;     2305CDB8 (in hal_machw_init)
;;     2305CE12 (in hal_machw_init)
;;     2305CE68 (in hal_machw_init)
;;     2305CEBA (in hal_machw_init)
;;     2305CF82 (in hal_machw_init)
;;     2305D180 (in hal_machw_sleep_check)
;;     2305D54C (in blmac_encr_cntrl_pack.constprop.8)
;;     2305D56E (in blmac_encr_cntrl_pack.constprop.8)
;;     2305D5F2 (in hal_machw_rx_duration)
;;     2305D81E (in mm_tbtt_evt)
;;     2305D9F4 (in mm_sec_machwkey_wr)
;;     2305DA4C (in mm_sec_machwkey_wr)
;;     2305DC86 (in mm_back_to_host_idle)
;;     2305E9FE (in mm_bcn_transmit)
;;     2305EDEC (in mm_bcn_transmitted)
;;     2305F39A (in scan_start_req_handler)
;;     2305F400 (in mm_scan_channel_end_ind_handler)
;;     2305F4C2 (in mm_scan_channel_start_ind_handler)
;;     2305F884 (in txl_cfm_evt)
;;     230605F8 (in me_extract_rate_set)
;;     23060FF2 (in me_rc_set_rate_req_handler)
;;     2306135A (in mm_set_ps_mode_cfm_handler)
;;     230613B4 (in mm_set_idle_cfm_handler)
;;     23061AEA (in me_init_bcmc_rate)
;;     23061EF4 (in me_beacon_check)
;;     23061FC4 (in me_sta_bw_nss_max_upd)
;;     2306272E (in rc_update_counters)
;;     23062790 (in rc_update_counters)
;;     230628E6 (in rc_update_bw_nss_max)
;;     2306291A (in rc_update_bw_nss_max)
;;     2306293E (in rc_update_bw_nss_max)
;;     23062F44 (in rc_init)
;;     23062FE2 (in rc_init)
;;     23063032 (in rc_init)
;;     23063068 (in rc_init)
;;     230630D6 (in rc_init)
;;     2306311A (in rc_init)
;;     23063142 (in rc_init)
;;     230631AA (in rc_init)
;;     230631E0 (in rc_init)
;;     23063214 (in rc_init)
;;     230632C2 (in rc_init)
;;     2306350E (in rc_check)
;;     2306388E (in scanu_join_req_handler)
;;     2306394A (in me_set_ps_disable_cfm_handler)
;;     2306398A (in mm_bss_param_setting_handler)
;;     230639EE (in scanu_start_cfm_handler)
;;     23063AA8 (in scanu_join_cfm_handler)
;;     23063C54 (in sm_connect_req_handler)
;;     23063C72 (in sm_connect_req_handler)
;;     23063D34 (in sm_connect_req_handler)
;;     23063D5E (in sm_connect_req_handler)
;;     23063F44 (in me_set_active_cfm_handler)
;;     23063FCE (in mm_sta_add_cfm_handler)
;;     230643E0 (in me_set_ps_disable_cfm_handler)
;;     23064420 (in mm_bss_param_setting_handler)
;;     23064454 (in mm_bcn_change_cfm_handler)
;;     2306458A (in apm_start_req_handler)
;;     23064886 (in me_set_active_cfm_handler)
;;     230648B4 (in me_set_active_cfm_handler)
;;     23064DC2 (in dbg_test_print)
assert_err proc
	c.j	0000000023054FF4

;; assert_warn: 23054FF6
;;   Called from:
;;     2304B868 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2304BCDA (in rxu_mgt_frame_check)
;;     2304E2AA (in sm_auth_handler)
;;     2304F586 (in apm_tx_int_ps_get_postpone)
;;     2305B9BA (in chan_cde_evt)
;;     2305FB0E (in bam_send_air_action_frame)
;;     23061A5C (in me_legacy_rate_bitfield_build)
assert_warn proc
	c.jr	ra

;; coex_wifi_rf_forece_enable: 23054FF8
;;   Called from:
;;     230066DE (in cmd_wifi_coex_rf_force_off)
;;     230066E4 (in cmd_wifi_coex_rf_force_on)
coex_wifi_rf_forece_enable proc
	c.li	a1,00000000
	c.beqz	a0,0000000023054FFE

l23054FFC:
	c.li	a0,00000001

l23054FFE:
	jal	zero,000000002305792A

;; coex_wifi_pti_forece_enable: 23055002
;;   Called from:
;;     230066D2 (in cmd_wifi_coex_pti_force_off)
;;     230066D8 (in cmd_wifi_coex_pti_force_on)
coex_wifi_pti_forece_enable proc
	lui	a5,00044B00
	lw	a4,a5,+00000400
	c.beqz	a0,0000000023055042

l2305500C:
	lui	a3,000F0000
	c.or	a4,a3
	sw	a4,a5,+00000400
	lw	a4,a5,+00000400
	ori	a4,a4,+00000010

l2305501E:
	sw	a4,a5,+00000400
	lw	a2,a5,+00000400
	lui	a4,000FC000
	addi	a3,a4,-00000001
	slli	a4,a2,00000004
	bge	a4,zero,0000000023055046

l23055036:
	lw	a4,a5,+00000400
	c.and	a4,a3

l2305503C:
	sw	a4,a5,+00000400
	c.jr	ra

l23055042:
	c.andi	a4,FFFFFFEF
	c.j	000000002305501E

l23055046:
	lw	a4,a5,+00000400
	c.and	a4,a3
	lui	a3,00004000
	c.or	a4,a3
	c.j	000000002305503C

;; coex_wifi_pta_forece_enable: 23055054
;;   Called from:
;;     230066C6 (in cmd_wifi_coex_pta_force_off)
;;     230066CC (in cmd_wifi_coex_pta_force_on)
;;     2305521C (in wifi_main)
coex_wifi_pta_forece_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	lw	a5,s1,-0000036C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,a0,000000002305509E

l2305506E:
	lui	s0,0004200E
	addi	s1,s1,-0000036C
	c.mv	s2,a0
	addi	s0,s0,+00000390
	c.bnez	a5,00000000230550AE

l2305507E:
	jal	ra,0000000023033AF0
	lui	a4,0004200E
	addi	a4,a4,+00000388
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)

l23055094:
	sw	s2,s1,+00000000
	jal	ra,0000000023033AF0
	c.sw	s0,0(a0)

l2305509E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230550AE:
	c.li	a4,00000001
	bne	a5,a4,0000000023055094

l230550B4:
	jal	ra,0000000023033AF0
	lui	a4,0004200E
	addi	a4,a4,+0000038C
	c.lw	a4,0(a5)
	c.lw	s0,0(a3)
	c.sub	a5,a3
	c.add	a5,a0
	c.sw	a4,0(a5)
	csrrci	zero,mstatus,00000008
	jal	ra,000000002305EF50
	c.mv	s4,a0
	csrrsi	zero,mstatus,00000008
	addi	s3,zero,+000003E8
	bgeu	s3,a0,0000000023055094

l230550E0:
	auipc	ra,0001EFB7
	jalr	ra,ra,+00000408
	srl	a0,s4,s3
	jal	ra,0000000023033E10
	auipc	ra,0001EFB7
	jalr	ra,ra,+00000402
	c.j	0000000023055094

;; wifi_main: 230550FA
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
	jal	ra,00000000230571B4
	lw	a5,s0,+00000400
	lui	s2,00044B00
	lui	s3,0004201F
	ori	a5,a5,+00000001
	sw	a5,s0,+00000400
	jal	ra,0000000023056428
	jal	ra,000000002305B156
	jal	ra,000000002305B1A4
	c.jal	00000000230552A4
	jal	ra,000000002305EE5C
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
	lui	s4,0004200E
	andi	a5,a5,-00000021
	sw	a5,s0,+00000400
	lui	a5,00050100
	c.addi	a5,0000001F
	c.sw	a4,4(a5)
	lui	s0,00044900
	lui	s5,00040007
	lui	s1,00040000
	lui	s6,000005C2

l2305518C:
	lw	a5,s2,+00000120
	slli	a4,a5,0000000C
	lw	a5,s0,+00000084
	bge	a4,zero,0000000023055222

l2305519C:
	ori	a5,a5,+00000001

l230551A0:
	sw	a5,s0,+00000084
	addi	a5,s3,-00000124
	c.lw	a5,0(a5)
	c.bnez	a5,00000000230551AE

l230551AC:
	c.jal	0000000023055284

l230551AE:
	addi	a4,s4,+00000384
	c.lw	a4,0(a5)
	addi	a3,a5,+00000001
	c.sw	a4,0(a3)
	c.andi	a5,0000000F
	c.bnez	a5,0000000023055210

l230551BE:
	lw	a5,s5,+00000018
	c.srli	a5,00000018
	andi	a4,a5,+00000007
	c.beqz	a4,00000000230551F2

l230551CA:
	c.li	a3,00000003
	beq	a4,a3,00000000230551DA

l230551D0:
	c.lw	s1,20(a3)
	lui	a2,00000040
	c.or	a3,a2
	c.sw	s1,20(a3)

l230551DA:
	c.beqz	a4,00000000230551F2

l230551DC:
	c.li	a3,00000003
	beq	a4,a3,00000000230551F2

l230551E2:
	lui	a4,00040002
	c.lw	a4,64(a3)
	c.andi	a3,FFFFFFFC
	c.sw	a4,64(a3)
	c.lw	a4,68(a3)
	c.andi	a3,FFFFFFFE
	c.sw	a4,68(a3)

l230551F2:
	c.andi	a5,00000004
	c.beqz	a5,0000000023055210

l230551F6:
	c.lw	s1,20(a5)
	lui	a4,00040010
	or	a5,a5,s6
	c.sw	s1,20(a5)
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sw	a5,a4,+0000090C

l23055210:
	jal	ra,000000002305023A
	jal	ra,000000002305EEEE
	c.beqz	a0,0000000023055226

l2305521A:
	c.li	a0,00000000

l2305521C:
	jal	ra,0000000023055054
	c.j	000000002305518C

l23055222:
	c.andi	a5,FFFFFFFE
	c.j	00000000230551A0

l23055226:
	c.li	a0,00000001
	c.j	000000002305521C

;; ipc_emb_notify: 2305522A
;;   Called from:
;;     2305B28A (in mac_irq)
;;     2305B2A4 (in bl_irq_handler)
ipc_emb_notify proc
	lui	a5,0004200E
	lw	a4,a5,+00000394
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	s0,a5,+00000394
	c.bnez	a4,0000000023055256

l2305523E:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000093
	addi	a1,a1,+00000388
	addi	a0,a0,-000003C4
	jal	ra,0000000023054FF4

l23055256:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.lw	s0,0(a0)
	c.beqz	a5,0000000023055278

l23055262:
	c.addi4spn	a1,0000000C
	jal	ra,0000000023034CD6
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023055270

l2305526C:
	jal	ra,0000000023033E52

l23055270:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23055278:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,0000000023034A8C
	c.j	0000000023055270

;; ipc_emb_wait: 23055284
;;   Called from:
;;     230551AC (in wifi_main)
ipc_emb_wait proc
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023034906
	lui	a4,0004201E
	lw	a5,a4,+0000020C
	c.lwsp	a2,00000020
	c.addi	a5,00000001
	sw	a5,a4,+0000020C
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_init: 230552A4
;;   Called from:
;;     2305513C (in wifi_main)
ipc_emb_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,00000000230344BE
	lui	a5,0004200E
	lui	s0,0004201E
	sw	a0,a5,+00000394
	addi	a2,zero,+00000020
	addi	a0,s0,+00000210
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	lui	a5,00042040
	addi	a5,a5,+00000204
	addi	s0,s0,+00000210
	c.sw	s0,28(a5)
	lui	a5,00044800
	lw	a4,a5,+00000140
	lui	a5,00049504
	addi	a5,a5,+00000332
	beq	a4,a5,0000000023055302

l230552EA:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+000000BB
	addi	a1,a1,+00000388
	addi	a0,a0,-00000430
	jal	ra,0000000023054FF4

l23055302:
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

;; ipc_emb_tx_irq: 230553DE
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
	c.beqz	s0,0000000023055408

l230553F8:
	srli	a0,s0,00000001
	jal	ra,00000000230501A8
	sw	s0,s1,+00000110
	sw	s0,s1,+00000108

l23055408:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_tx_evt: 23055412
ipc_emb_tx_evt proc
	lui	a5,0002307D
	c.slli	a0,02
	addi	a5,a5,-00000444
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
	lui	s8,0004201E
	c.swsp	s9,00000080
	jal	ra,00000000230501C0
	addi	a5,s8,+00000210
	c.lw	a5,24(s0)
	lw	s4,a5,+0000001C
	addi	a5,zero,+00000330
	c.andi	s0,00000003
	add	s0,s0,a5
	c.lui	s1,00001000
	addi	s1,s1,-00000800
	lui	s3,00000441
	addi	s8,s8,+00000210
	c.li	s5,FFFFFFFF
	and	s1,s2,s1
	lui	s6,0004201F
	addi	s3,s3,-00000800
	lui	s7,00044800
	c.add	s0,s4

l2305547A:
	c.lw	s0,0(a5)
	beq	a5,s5,00000000230554A6

l23055480:
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

l230554A6:
	c.bnez	s1,00000000230554D2

l230554A8:
	addi	a5,s6,-00000124
	c.lw	a5,0(a5)
	and	a5,a5,s3
	c.beqz	a5,00000000230554D2

l230554B4:
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
	jal	zero,00000000230501A8

l230554D2:
	addi	a5,zero,+00000100
	addi	s9,s0,+00000054
	sw	a5,s7,+00000108
	addi	a2,zero,+000002CC
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,000000002306D1BC
	addi	a5,s0,+0000010C
	sw	a5,s0,+000000C4
	addi	a5,s0,+000000C4
	sw	a5,s0,+000000C0
	addi	a5,s0,+00000004

l230554FE:
	c.lw	a5,0(a4)
	c.addi	a5,00000004
	c.sw	a5,80(a4)
	bne	s9,a5,00000000230554FE

l23055508:
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
	jal	ra,000000002304EB44
	c.li	a5,00000001
	c.sw	s0,0(a5)
	lw	s0,s8,+00000018
	addi	a5,zero,+00000330
	c.addi	s0,00000001
	sw	s0,s8,+00000018
	c.andi	s0,00000003
	add	s0,s0,a5
	c.add	s0,s4
	c.j	000000002305547A

;; ipc_emb_cfmback_irq: 2305554A
ipc_emb_cfmback_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044800
	lw	s0,a5,+0000011C
	andi	a4,s0,+00000020
	c.beqz	a4,0000000023055572

l2305555E:
	addi	a4,zero,+00000020
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	lui	a0,00000040
	jal	ra,00000000230501A8

l23055572:
	c.andi	s0,00000010
	c.beqz	s0,0000000023055592

l23055576:
	lui	a5,00044800
	c.li	a4,00000010
	sw	a4,a5,+00000110
	sw	a4,a5,+00000108
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00000080
	c.addi	sp,00000010
	jal	zero,00000000230501A8

l23055592:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_txcfm_ind: 2305559A
;;   Called from:
;;     2305F8C0 (in txl_cfm_evt)
;;     2305F956 (in txl_cfm_flush)
ipc_emb_txcfm_ind proc
	c.slli	a0,07
	lui	a5,00044800
	sw	a0,a5,+00000100
	c.jr	ra

;; ipc_emb_msg_irq: 230555A6
ipc_emb_msg_irq proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00044800
	lw	a5,s0,+0000011C
	c.andi	a5,00000002
	c.beqz	a5,00000000230555C6

l230555B8:
	lui	a0,00002000
	jal	ra,00000000230501A8
	c.li	a5,00000002
	sw	a5,s0,+00000110

l230555C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb_msg_evt: 230555CE
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
	lui	s2,0004201E
	addi	s1,s1,+00000000
	lui	s3,0002307B
	lui	s4,0002307D
	addi	s2,s2,+00000210
	lui	s5,0002307D
	lui	s6,0002307C

l2305560A:
	c.andi	a5,00000002
	c.bnez	a5,0000000023055636

l2305560E:
	lui	a0,00002000
	jal	ra,00000000230501C0
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

l23055636:
	lui	a5,00044800
	c.li	a4,00000002
	sw	a4,a5,+00000108
	lhu	a0,s1,+0000000A
	c.addi	a0,0000000C
	jal	ra,000000002305030E
	c.mv	s0,a0
	c.bnez	a0,000000002305565E

l2305564E:
	addi	a2,zero,+000001D9
	addi	a1,s3,+00000388
	addi	a0,s4,-000003FC
	jal	ra,0000000023054FF4

l2305565E:
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

l23055682:
	lhu	a3,s0,+0000000A
	addi	a4,a5,-0000000C
	blt	a4,a3,00000000230556CA

l2305568E:
	lbu	a5,s2,+00000015
	addi	a4,a5,+00000001
	sb	a4,s2,+00000015
	sh	a5,s1,+00000008
	lhu	a5,s0,+00000006
	c.li	a4,0000000E
	bgeu	a4,a5,00000000230556DA

l230556A8:
	addi	a2,zero,+000000B6
	addi	a1,s3,+00000388
	addi	a0,s6,+000001C4
	jal	ra,0000000023054FF4

l230556B8:
	addi	a2,zero,+000001ED
	addi	a1,s3,+00000388
	addi	a0,s5,-000003E8
	jal	ra,0000000023054FF4
	c.j	00000000230556E0

l230556CA:
	add	a4,s1,a5
	c.lw	a4,0(a3)
	add	a4,s0,a5
	c.addi	a5,00000004
	c.sw	a4,0(a3)
	c.j	0000000023055682

l230556DA:
	c.li	a4,0000000C
	bltu	a4,a5,00000000230556B8

l230556E0:
	c.li	a5,00000004
	lui	s7,00044800
	sw	a5,s7,+00000100
	addi	a0,s0,+0000000C
	jal	ra,00000000230504E0
	lw	a5,s7,+00000104
	c.j	000000002305560A

;; ipc_emb_msg_dma_int_handler: 230556F8
ipc_emb_msg_dma_int_handler proc
	c.jr	ra

;; ipc_emb_dbg_dma_int_handler: 230556FA
ipc_emb_dbg_dma_int_handler proc
	lui	a5,00044A00
	addi	a4,zero,+00000080
	c.sw	a5,32(a4)
	lui	a5,00044800
	c.li	a4,00000001
	sw	a4,a5,+00000100
	c.jr	ra

;; ipc_emb_dump: 23055710
;;   Called from:
;;     23050208 (in bl_fw_statistic_dump)
ipc_emb_dump proc
	c.jr	ra

;; mdm_txcbwmax_setf: 23055712
;;   Called from:
;;     23055DE6 (in phy_hw_set_channel)
;;     230560FA (in phy_init)
mdm_txcbwmax_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a5,000FC000
	slli	s0,a0,00000018
	c.swsp	ra,00000084
	c.and	a5,s0
	c.beqz	a5,000000002305573E

l23055724:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,a2,-000004A8
	addi	a1,a1,+00000388
	addi	a0,a0,-000003AC
	jal	ra,0000000023054FF4

l2305573E:
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

;; phy_config_rxgain: 2305575C
;;   Called from:
;;     23055BD2 (in agc_config)
;;     23056BC0 (in phy_tcal_handle)
phy_config_rxgain proc
	lui	a4,0004200E
	addi	a4,a4,-00000364
	lb	a5,a4,+00000000
	beq	a5,a0,0000000023055878

l2305576C:
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

l23055878:
	c.jr	ra

;; agc_config: 2305587A
;;   Called from:
;;     2305621A (in phy_init)
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
	jal	ra,000000002305575C
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

;; mdm_reset: 23055CBE
;;   Called from:
;;     23055D68 (in phy_hw_set_channel)
;;     23055F4C (in phy_init)
;;     2305643E (in phy_rc_isr)
mdm_reset proc
	c.lui	a5,00001000
	lui	a4,00044C01
	addi	a5,a5,+00000111
	sw	a5,a4,+00000888
	sw	zero,a4,+00000888
	c.jr	ra

;; phy_powroffset_set: 23055CD2
;;   Called from:
;;     23039908 (in hal_board_cfg)
phy_powroffset_set proc
	lui	a4,00042016
	c.li	a5,00000000
	addi	a4,a4,+00000484
	c.li	a3,0000000E

l23055CDE:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023055CDE

l23055CF4:
	c.jr	ra

;; phy_hw_set_channel: 23055CF6
;;   Called from:
;;     23055EE6 (in phy_set_channel)
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
	c.beqz	a3,0000000023055D28

l23055D10:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000144
	addi	a1,a1,+00000388
	addi	a0,a0,-00000370
	jal	ra,0000000023054FF4

l23055D28:
	beq	s4,zero,0000000023055D44

l23055D2C:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000145
	addi	a1,a1,+00000388
	addi	a0,a0,-00000354
	jal	ra,0000000023054FF4

l23055D44:
	lui	s2,00044C0B
	lw	a5,s2,+00000390
	lui	s0,00044C01
	andi	a5,a5,-00000101
	sw	a5,s2,+00000390
	lw	a5,s0,-000007E0
	ori	a5,a5,+00000001
	sw	a5,s0,+00000820
	sw	zero,s0,+00000800
	jal	ra,0000000023055CBE
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
	jal	ra,0000000023055712
	lw	a5,s2,+00000000
	slli	a4,a5,0000000A
	bge	a4,zero,0000000023055DFC

l23055DF6:
	c.li	a5,00000001
	sw	a5,s2,+00000118

l23055DFC:
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,000000002306742E
	bne	s4,zero,0000000023055E60

l23055E08:
	c.lui	a5,FFFFF000
	addi	a4,a5,+00000694
	c.add	a4,s1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a0,00000000
	bltu	a3,a4,0000000023055E36

l23055E1E:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a0,0000000E
	beq	s1,a4,0000000023055E36

l23055E2A:
	addi	a0,a5,+00000699

l23055E2E:
	c.add	s1,a0
	c.li	a0,00000005
	xor	a0,s1,a0

l23055E36:
	lui	a1,00042016
	andi	a0,a0,+000000FF
	addi	a1,a1,+00000484
	jal	ra,0000000023057BB0
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
	jal	zero,0000000023056A90

l23055E60:
	c.li	a5,00000001
	c.li	a0,00000000
	bne	s4,a5,0000000023055E36

l23055E68:
	c.lui	a4,FFFFF000
	addi	a5,a4,-0000038D
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a3,zero,+00000334
	bltu	a3,a5,0000000023055E36

l23055E7C:
	addi	a0,a4,-00000388
	c.j	0000000023055E2E

;; phy_get_channel: 23055E82
;;   Called from:
;;     23047C14 (in ps_send_pspoll)
;;     23048340 (in rxl_mpdu_transfer)
;;     2304A556 (in txl_frame_send_null_frame)
;;     2304A662 (in txl_frame_send_qosnull_frame)
;;     2304A78E (in txl_frame_send_eapol_frame)
;;     2304BCB8 (in rxu_mgt_frame_check)
;;     2305FA02 (in bam_send_air_action_frame)
phy_get_channel proc
	lui	a5,0004201E
	addi	a5,a5,+00000230
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

;; phy_set_channel: 23055EB0
;;   Called from:
;;     23046C50 (in mm_monitor_channel_req_handler)
;;     23046D08 (in mm_monitor_enable_req_handler)
;;     230471C0 (in mm_start_req_handler)
;;     2304739E (in mm_hw_config_handler)
;;     2305BB98 (in chan_pre_switch_channel)
;;     2305C430 (in chan_ctxt_update)
phy_set_channel proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+00000048
	bgeu	a4,a5,0000000023055EC6

l23055EC4:
	c.beqz	a0,0000000023055F10

l23055EC6:
	c.li	a5,00000001
	bltu	a5,a0,0000000023055F10

l23055ECC:
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
	jal	ra,0000000023055CF6
	lui	a5,0004201E
	addi	a5,a5,+00000230
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

l23055F10:
	c.jr	ra

;; phy_get_version: 23055F12
;;   Called from:
;;     2304715E (in mm_version_req_handler)
phy_get_version proc
	lui	a5,00044C00
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	sw	zero,a1,+00000000
	c.jr	ra

;; phy_vht_supported: 23055F20
;;   Called from:
;;     23055FFE (in phy_init)
;;     23056114 (in phy_init)
phy_vht_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a4)
	c.li	a0,00000001
	slli	a3,a4,00000009
	blt	a3,zero,0000000023055F36

l23055F30:
	c.lw	a5,0(a0)
	c.srli	a0,00000019
	c.andi	a0,00000001

l23055F36:
	c.jr	ra

;; phy_init: 23055F38
;;   Called from:
;;     23046CF4 (in mm_monitor_enable_req_handler)
;;     230471AC (in mm_start_req_handler)
phy_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,00044C01
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	sw	zero,s0,+00000800
	c.mv	s2,a0
	jal	ra,0000000023055CBE
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
	c.beqz	a5,0000000023055F8A

l23055F70:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,a2,-000005F7
	addi	a1,a1,+00000388
	addi	a0,a0,-0000033C
	jal	ra,0000000023054FF4

l23055F8A:
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
	c.beqz	a5,0000000023055FD0

l23055FB6:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,a2,-00000679
	addi	a1,a1,+00000388
	addi	a0,a0,-00000300
	jal	ra,0000000023054FF4

l23055FD0:
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
	jal	ra,0000000023055F20
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
	c.beqz	a5,0000000023056094

l2305607A:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,a2,-000003F2
	addi	a1,a1,+00000388
	addi	a0,a0,-000002C0
	jal	ra,0000000023054FF4

l23056094:
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
	c.beqz	a5,00000000230560DA

l230560C0:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,a2,-0000048E
	addi	a1,a1,+00000388
	addi	a0,a0,-00000284
	jal	ra,0000000023054FF4

l230560DA:
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
	jal	ra,0000000023055712
	c.lw	s1,0(a5)
	lw	a4,s0,-000007DC
	c.srli	a5,00000012
	andi	a4,a4,-00000101
	andi	a5,a5,+00000100
	c.or	a5,a4
	sw	a5,s0,+00000824
	jal	ra,0000000023055F20
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
	bge	a3,zero,00000000230561EC

l230561C0:
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

l230561EC:
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
	jal	ra,000000002305587A
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
	lui	a5,0002307D
	lui	a3,00054C0B
	addi	a5,a5,-00000044
	lui	a4,00054C0A
	addi	a3,a3,-00000800

l2305625E:
	c.lw	a5,0(a2)
	c.addi	a4,00000004
	c.addi	a5,00000004
	sw	a2,a4,+00000FFC
	bne	a4,a3,000000002305625E

l2305626C:
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
	lui	a5,0004201E
	addi	a5,a5,+00000230
	c.sw	a5,0(a4)
	lui	a4,00000FF0
	addi	a4,a4,+000000FF
	c.sw	a5,4(a4)
	lui	a4,00005000
	addi	a4,a4,+000000FF
	c.sw	a5,8(a4)
	c.jal	000000002305692C
	c.jal	0000000023056444
	jal	ra,0000000023056AE4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023056B1C

;; phy_get_nss: 230562E0
;;   Called from:
;;     23061442 (in me_config_req_handler)
phy_get_nss proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000008
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_get_ntx: 230562F2
;;   Called from:
;;     2304A19A (in txl_frame_init)
;;     2304A1A2 (in txl_frame_init)
;;     2304A1F2 (in txl_frame_init)
;;     2304A1FA (in txl_frame_init)
;;     2305CF5C (in hal_machw_init)
;;     2305F564 (in txl_buffer_init)
;;     2305F56C (in txl_buffer_init)
;;     2305F5FA (in txl_buffer_init)
;;     2305F602 (in txl_buffer_init)
;;     23062F66 (in rc_init)
;;     230633AC (in rc_init)
phy_get_ntx proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,00000004
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.jr	ra

;; phy_stop: 23056304
;;   Called from:
;;     23047106 (in mm_reset_req_handler)
phy_stop proc
	c.jr	ra

;; phy_ldpc_tx_supported: 23056306
;;   Called from:
;;     23063082 (in rc_init)
phy_ldpc_tx_supported proc
	lui	a5,00044C00
	c.lw	a5,0(a0)
	c.srli	a0,0000001A
	c.andi	a0,00000001
	c.jr	ra

;; phy_get_mac_freq: 23056312
;;   Called from:
;;     2305CBCA (in hal_machw_init)
phy_get_mac_freq proc
	addi	a0,zero,+00000028
	c.jr	ra

;; phy_get_rf_gain_idx: 23056318
;;   Called from:
;;     2304947C (in tpc_update_vif_tx_power)
;;     23049498 (in tpc_update_vif_tx_power)
phy_get_rf_gain_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	lb	a1,a0,+00000000
	c.li	a5,0000000A
	c.li	a0,00000002
	add	a1,a1,a5
	jal	ra,0000000023057B00
	sb	a0,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_get_rf_gain_capab: 2305633C
;;   Called from:
;;     23060298 (in me_build_associate_req)
phy_get_rf_gain_capab proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.jal	0000000023056968
	sb	a0,s0,+00000000
	c.jal	0000000023056972
	c.lwsp	a2,00000064
	sb	a0,a1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bz_phy_reset: 2305635C
;;   Called from:
;;     2300E33C (in rf_reset)
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

;; mpif_clk_init: 23056428
;;   Called from:
;;     23055130 (in wifi_main)
mpif_clk_init proc
	c.jr	ra

;; phy_mdm_isr: 2305642A
phy_mdm_isr proc
	c.jr	ra

;; phy_rc_isr: 2305642C
phy_rc_isr proc
	lui	a4,00044C0B
	lw	a5,a4,+0000041C
	sw	a5,a4,+00000420
	andi	a5,a5,+00000100
	c.beqz	a5,0000000023056442

l2305643E:
	jal	zero,0000000023055CBE

l23056442:
	c.jr	ra

;; pa_init: 23056444
;;   Called from:
;;     230562CC (in phy_init)
pa_init proc
	lui	a5,00042016
	addi	a5,a5,+00000494
	addi	a2,a5,+00000230

l23056450:
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

l23056474:
	sb	zero,a4,+00000010
	sb	zero,a4,+00000008
	sb	zero,a4,+00000009
	sw	zero,a4,+0000000C
	c.addi	a3,FFFFFFFF
	c.addi	a4,0000000C
	c.bnez	a3,0000000023056474

l2305648A:
	addi	a5,a5,+0000008C
	bne	a5,a2,0000000023056450

l23056492:
	c.jr	ra

;; pa_input: 23056494
;;   Called from:
;;     23048742 (in rxl_cntrl_evt)
pa_input proc
	c.li	a2,00000003
	bltu	a2,a0,0000000023056594

l2305649A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a4,zero,+0000008C
	c.mv	s0,a0
	add	a3,s0,a4
	c.swsp	s1,00000080
	lui	s1,00042016
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	addi	a5,s1,+00000494
	c.lw	a1,32(a0)
	addi	s1,s1,+00000494
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
	c.bnez	a5,000000002305655A

l230564F2:
	c.lw	a1,40(a5)
	lbu	a0,a1,+0000003B
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	bltu	a2,a5,000000002305655A

l23056500:
	c.slli	a0,18
	c.srai	a0,00000018
	jal	ra,000000002306C8DC
	lui	a5,00023073
	lw	a2,a5,+00000018
	lw	a3,a5,+0000001C
	jal	ra,000000002306B444

l23056518:
	jal	ra,000000002306CB1C
	c.li	a5,0000000C
	addi	a4,zero,+0000008C
	add	a4,s0,a4
	add	a5,s2,a5
	c.add	a5,a4
	c.add	a5,s1
	c.fsw	a5,12(a0)
	c.li	a4,00000007
	c.li	a5,00000000
	beq	s2,a4,0000000023056540

l23056538:
	c.addi	s2,00000001
	slli	a5,s2,00000018
	c.srai	a5,00000018

l23056540:
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

l2305655A:
	lbu	a0,a1,+0000003C
	lbu	a5,a1,+0000003B
	c.slli	a0,08
	c.add	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	sub	a0,zero,a0
	jal	ra,000000002306C8DC
	lui	a5,0002307D
	lw	a2,a5,-00000228
	lw	a3,a5,-00000224
	jal	ra,000000002306B444
	lui	a5,0002307D
	lw	a2,a5,-00000220
	lw	a3,a5,-0000021C
	jal	ra,000000002306A8F8
	c.j	0000000023056518

l23056594:
	c.jr	ra

;; pa_adapt: 23056596
;;   Called from:
;;     23048748 (in rxl_cntrl_evt)
pa_adapt proc
	c.li	a5,00000003
	bltu	a5,a0,0000000023056836

l2305659C:
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000084
	c.swsp	s5,00000004
	c.swsp	s6,00000080
	c.swsp	s7,00000000
	addi	a5,a5,+00000398
	c.lw	a5,0(a2)
	lui	s0,00042016
	addi	a4,s0,+00000494
	c.addi	a2,00000001
	c.sw	a5,0(a2)
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	addi	s0,s0,+00000494
	c.add	a4,a5
	lb	t3,a4,+00000068
	bne	t3,zero,0000000023056740

l230565DA:
	addi	a4,a5,+0000005C
	c.add	a4,s0

l230565E0:
	lbu	a5,a4,+00000008
	beq	a5,zero,000000002305672C

l230565E8:
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	lb	s2,a4,+00000000
	add	a5,s0,a3
	lb	a1,a5,+00000073
	beq	a1,zero,0000000023056788

l23056600:
	lbu	a1,a5,+00000074
	c.li	a3,00000004
	bgeu	a3,a1,0000000023056754

l2305660A:
	sb	zero,a5,+00000074
	sb	zero,a5,+00000073
	sw	zero,a5,+00000078

l23056616:
	c.andi	a2,0000000F
	c.li	a5,0000000F
	bne	a2,a5,000000002305672C

l2305661E:
	addi	a5,zero,+0000008C
	add	a5,a0,a5
	c.li	a3,00000014
	c.mv	s1,a0
	c.add	a5,s0
	lb	a5,a5,+00000070
	sub	a5,s2,a5
	c.addi	a5,0000000A
	bltu	a3,a5,00000000230566A4

l2305663A:
	c.flw	fa4,4(a0)
	fmv.w.x	fa5,zero
	fle.s	a5,fa5,fa0
	beq	a5,zero,00000000230567F6

l23056648:
	lui	a5,0002307B
	flw	fa5,632(a5)
	flt.s	a5,fa5,fa0

l23056654:
	c.beqz	a5,00000000230566A4

l23056656:
	jal	ra,000000002306CA0C
	addi	a5,zero,-00000055
	c.mv	s4,a0
	c.mv	s5,a1
	bge	s2,a5,0000000023056804

l23056666:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,000000002306CA0C
	lui	a5,0002307D
	lw	a2,a5,-00000238
	lw	a3,a5,-00000234
	c.mv	s6,a0
	c.mv	s7,a1

l23056688:
	c.mv	a0,s4
	c.mv	a1,s5
	jal	ra,000000002306B444
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s6
	c.mv	a1,s7
	jal	ra,0000000023069DA8
	jal	ra,000000002306CB1C
	fsw	fa0,512(a0)

l230566A4:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	fle.s	a5,fa4,fa5
	beq	a5,zero,0000000023056828

l230566BE:
	lui	a5,0002307D
	flw	fa4,3516(a5)
	flt.s	a5,fa5,fa4

l230566CA:
	c.bnez	a5,000000002305672C

l230566CC:
	csrrci	zero,mstatus,00000008
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa4,fa5
	c.beqz	a5,00000000230566F2

l230566E8:
	c.jal	0000000023056838
	c.beqz	a0,00000000230566F2

l230566EC:
	c.jal	0000000023056838
	c.addi	a0,FFFFFFFF
	c.jal	0000000023056848

l230566F2:
	addi	a5,zero,+0000008C
	add	a5,s1,a5
	fmv.w.x	fa4,zero
	c.add	a5,s0
	flw	fa5,128(a5)
	flt.s	a5,fa5,fa4
	c.beqz	a5,000000002305671A

l2305670A:
	c.jal	0000000023056838
	addi	a5,zero,+0000003E
	bltu	a5,a0,000000002305671A

l23056714:
	c.jal	0000000023056838
	c.addi	a0,00000001
	c.jal	0000000023056848

l2305671A:
	addi	a0,zero,+0000008C
	add	s1,s1,a0
	c.add	s0,s1
	sw	zero,s0,+00000080
	csrrsi	zero,mstatus,00000008

l2305672C:
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

l23056740:
	addi	a4,t3,-00000001
	c.li	a3,0000000C
	add	a4,a4,a3
	c.addi	a5,00000008
	c.add	a5,a4
	add	a4,s0,a5
	c.j	00000000230565E0

l23056754:
	addi	a3,s2,+00000064
	addi	a6,zero,+00000064
	bltu	a6,a3,0000000023056616

l23056760:
	lb	a6,a5,+00000070
	c.li	a7,00000014
	sub	a3,s2,a6
	addi	t1,a3,+0000000A
	bgeu	a7,t1,000000002305677A

l23056772:
	c.addi	a1,00000001
	sb	a1,a5,+00000074
	c.j	0000000023056616

l2305677A:
	c.srai	a3,00000002
	c.add	a3,a6
	sb	zero,a5,+00000074
	sb	a3,a5,+00000070
	c.j	0000000023056616

l23056788:
	c.lw	a5,120(a1)
	c.li	a6,00000006
	bgeu	a6,a1,00000000230567F0

l23056790:
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

l230567AA:
	sub	a3,t3,a6
	or	a3,a3,t5
	add	a3,a3,t6
	c.add	a3,a1
	c.add	a3,s0
	lb	a3,a3,+00000008
	c.add	a5,a3
	bge	t1,a3,00000000230567C6

l230567C4:
	c.mv	t1,a3

l230567C6:
	bge	a3,a7,00000000230567CC

l230567CA:
	c.mv	a7,a3

l230567CC:
	c.addi	a6,00000001
	bne	a6,t4,00000000230567AA

l230567D2:
	sub	a5,a5,t1
	sub	a5,a5,a7
	c.li	a1,00000004
	xor	a5,a5,a1
	addi	a3,zero,+0000008C
	add	a3,a0,a3
	c.add	a3,s0
	sb	a5,a3,+00000070
	c.j	0000000023056616

l230567F0:
	c.addi	a1,00000001
	c.sw	a5,120(a1)
	c.j	0000000023056616

l230567F6:
	lui	a5,0002307D
	flw	fa5,3512(a5)
	flt.s	a5,fa0,fa5
	c.j	0000000023056654

l23056804:
	addi	s2,zero,+0000008C
	add	s2,s1,s2
	c.add	s2,s0
	flw	fa0,128(s2)
	jal	ra,000000002306CA0C
	lui	a5,0002307D
	c.mv	s6,a0
	c.mv	s7,a1
	lw	a2,a5,-00000230
	lw	a3,a5,-0000022C
	c.j	0000000023056688

l23056828:
	lui	a5,0002307D
	flw	fa4,3520(a5)
	flt.s	a5,fa4,fa5
	c.j	00000000230566CA

l23056836:
	c.jr	ra

;; hal_get_capcode: 23056838
;;   Called from:
;;     230566E8 (in pa_adapt)
;;     230566EC (in pa_adapt)
;;     2305670A (in pa_adapt)
;;     23056714 (in pa_adapt)
hal_get_capcode proc
	lui	a5,00040010
	lw	a0,a5,-0000077C
	c.srli	a0,00000016
	andi	a0,a0,+0000003F
	c.jr	ra

;; hal_set_capcode: 23056848
;;   Called from:
;;     230566F0 (in pa_adapt)
;;     23056718 (in pa_adapt)
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

;; hal_get_temperature: 23056868
;;   Called from:
;;     23056B52 (in phy_tcal_handle)
hal_get_temperature proc
	lui	a5,0004200E
	lhu	a5,a5,+0000039C
	sh	a5,a0,+00000000
	c.li	a0,00000001
	c.jr	ra

;; hal_set_temperature: 23056878
;;   Called from:
;;     23056BF8 (in phy_tcal_callback)
hal_set_temperature proc
	lui	a5,0004200E
	sh	a0,a5,+0000039C
	c.jr	ra

;; trpc_update_power: 23056882
;;   Called from:
;;     230493B0 (in bl_tpc_update_power_table)
trpc_update_power proc
	lui	a5,0004200D
	addi	a5,a5,+0000060C
	c.li	a3,00000000
	c.li	a1,00000008
	c.li	a2,00000018

l23056890:
	add	t1,a0,a3
	c.li	a4,00000000

l23056896:
	add	a6,t1,a4
	lb	a7,a6,+00000000
	add	a6,a5,a4
	c.addi	a4,00000001
	sb	a7,a6,+00000000
	bne	a4,a1,0000000023056896

l230568AC:
	c.addi	a3,00000008
	c.addi	a5,00000008
	bne	a3,a2,0000000023056890

l230568B4:
	c.jr	ra

;; trpc_power_get: 230568B6
;;   Called from:
;;     230493E6 (in bl_tpc_power_table_get)
trpc_power_get proc
	lui	a1,0004200D
	c.li	a2,00000018
	addi	a1,a1,+0000060C
	jal	zero,000000002306CF80

;; trpc_update_power_11b: 230568C4
;;   Called from:
;;     23049406 (in bl_tpc_update_power_rate_11b)
trpc_update_power_11b proc
	lui	a4,0004200D
	c.li	a5,00000000
	addi	a4,a4,+0000060C
	c.li	a3,00000004

l230568D0:
	add	a2,a0,a5
	lb	a1,a2,+00000000
	add	a2,a4,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,00000000230568D0

l230568E6:
	c.jr	ra

;; trpc_update_power_11g: 230568E8
;;   Called from:
;;     2304940A (in bl_tpc_update_power_rate_11g)
trpc_update_power_11g proc
	lui	a5,0004200D
	addi	a5,a5,+0000060C
	c.li	a4,00000000
	c.li	a3,00000008

l230568F4:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+00000007
	bne	a4,a3,00000000230568F4

l23056908:
	c.jr	ra

;; trpc_update_power_11n: 2305690A
;;   Called from:
;;     2304940E (in bl_tpc_update_power_rate_11n)
trpc_update_power_11n proc
	lui	a5,0004200D
	addi	a5,a5,+0000060C
	c.li	a4,00000000
	c.li	a3,00000008

l23056916:
	add	a2,a0,a4
	lb	a2,a2,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a2,a5,+0000000F
	bne	a4,a3,0000000023056916

l2305692A:
	c.jr	ra

;; trpc_init: 2305692C
;;   Called from:
;;     230562CA (in phy_init)
trpc_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a5,00001000
	lui	s0,0004201E
	addi	s0,s0,+0000023C
	addi	a5,a5,-00000676
	c.swsp	ra,00000084
	sh	a5,s0,+00000004
	jal	ra,0000000023059EDE
	sb	a0,s0,+00000000
	jal	ra,0000000023059EFC
	c.li	a5,0000001E
	sb	a5,s0,+00000002
	c.li	a5,00000019
	sb	a0,s0,+00000001
	sh	a5,s0,+00000006
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_rf_max_power: 23056968
;;   Called from:
;;     23056346 (in phy_get_rf_gain_capab)
trpc_get_rf_max_power proc
	lui	a5,0004201E
	lb	a0,a5,+0000023C
	c.jr	ra

;; trpc_get_rf_min_power: 23056972
;;   Called from:
;;     2305634C (in phy_get_rf_gain_capab)
trpc_get_rf_min_power proc
	lui	a5,0004201E
	lb	a0,a5,+0000023D
	c.jr	ra

;; trpc_get_power_idx: 2305697C
;;   Called from:
;;     23056A8C (in trpc_get_default_power_idx)
trpc_get_power_idx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a0
	c.li	a4,00000002
	bltu	a5,a0,0000000023056990

l2305698C:
	andi	a4,a0,+000000FF

l23056990:
	c.li	a7,00000003
	c.beqz	s0,0000000023056996

l23056994:
	c.li	a7,00000007

l23056996:
	lui	a3,0004201E
	addi	a5,a3,+0000023C
	lb	a0,a5,+00000000
	lbu	a5,a5,+00000002
	addi	a6,a3,+0000023C
	slli	t1,a5,00000018
	srai	t1,t1,00000018
	bge	a0,t1,00000000230569B8

l230569B6:
	c.mv	a5,a0

l230569B8:
	slli	a3,a5,00000018
	c.srai	a3,00000018
	bge	a2,a3,00000000230569C4

l230569C2:
	c.mv	a5,a2

l230569C4:
	c.slli	a5,18
	c.srai	a5,00000018
	bge	a7,a1,00000000230569CE

l230569CC:
	c.mv	a1,a7

l230569CE:
	slli	a3,a4,00000003
	lui	a4,0004200D
	addi	a4,a4,+0000060C
	c.add	a4,a3
	c.add	a1,a4
	lbu	a4,a1,+00000000
	slli	a3,a4,00000018
	c.srai	a3,00000018
	bge	a5,a3,00000000230569EE

l230569EC:
	c.mv	a4,a5

l230569EE:
	lbu	a5,a6,+00000001
	slli	a3,a4,00000018
	c.srai	a3,00000018
	slli	a2,a5,00000018
	c.srai	a2,00000018
	bge	a2,a3,0000000023056A04

l23056A02:
	c.mv	a5,a4

l23056A04:
	c.slli	a5,18
	addi	a4,zero,-000001FE
	c.srai	a5,00000018
	add	a5,a5,a4
	c.add	a5,a0
	addi	a0,zero,+00000200
	xor	a0,a5,a0
	jal	ra,000000002306C8DC
	lui	a5,0002307D
	lw	a2,a5,-00000218
	lw	a3,a5,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C718
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	c.beqz	s0,0000000023056A3C

l23056A3A:
	c.li	a5,00000000

l23056A3C:
	c.add	a5,a0
	andi	a5,a5,+000000FF
	c.li	a4,0000000F
	c.mv	a0,a5
	bgeu	a4,a5,0000000023056A4C

l23056A4A:
	c.li	a0,0000000F

l23056A4C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	a0,02
	andi	a0,a0,+000000FC
	c.addi	sp,00000010
	c.jr	ra

;; trpc_get_default_power_idx: 23056A5A
;;   Called from:
;;     2304941C (in tpc_update_tx_power)
;;     23049436 (in tpc_update_tx_power)
;;     2304950C (in tpc_get_vif_tx_power_vs_rate)
trpc_get_default_power_idx proc
	c.li	a5,00000002
	andi	a4,a0,+000000FF
	bgeu	a5,a0,0000000023056A66

l23056A64:
	c.li	a4,00000002

l23056A66:
	c.li	a5,00000003
	c.beqz	a0,0000000023056A6C

l23056A6A:
	c.li	a5,00000007

l23056A6C:
	bge	a5,a1,0000000023056A72

l23056A70:
	c.mv	a1,a5

l23056A72:
	lui	a5,0004200D
	slli	a3,a4,00000003
	addi	a5,a5,+0000060C
	c.add	a5,a3
	c.add	a5,a1
	lb	a2,a5,+00000000
	andi	a1,a1,+000000FF
	c.mv	a0,a4
	jal	zero,000000002305697C

;; trpc_update_vs_channel: 23056A90
;;   Called from:
;;     23055E5C (in phy_hw_set_channel)
trpc_update_vs_channel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	s0,s0,+0000023C
	c.swsp	ra,00000084
	sh	a0,s0,+00000004
	jal	ra,0000000023059EDE
	sb	a0,s0,+00000000
	jal	ra,0000000023059EFC
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; trpc_update_vs_temperature: 23056ABA
;;   Called from:
;;     23056B40 (in phy_tcal_txpwr)
trpc_update_vs_temperature proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	s0,s0,+0000023C
	c.swsp	ra,00000084
	sb	a0,s0,+00000006
	jal	ra,0000000023059EDE
	sb	a0,s0,+00000000
	jal	ra,0000000023059EFC
	sb	a0,s0,+00000001
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; phy_tcal_reset: 23056AE4
;;   Called from:
;;     230562CE (in phy_init)
phy_tcal_reset proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042016
	c.swsp	s0,00000004
	addi	a2,zero,+00000038
	addi	s0,a0,+000006C4
	c.li	a1,00000000
	addi	a0,a0,+000006C4
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
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

;; phy_tcal_start: 23056B1C
;;   Called from:
;;     230562DC (in phy_init)
phy_tcal_start proc
	lui	a5,00042016
	c.li	a4,00000001
	sb	a4,a5,+000006F8
	c.jr	ra

;; phy_tcal_txpwr: 23056B28
;;   Called from:
;;     23056B5C (in phy_tcal_handle)
phy_tcal_txpwr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023059FA4
	slli	a0,s0,00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.srai	a0,00000018
	c.addi	sp,00000010
	jal	zero,0000000023056ABA

;; phy_tcal_handle: 23056B44
;;   Called from:
;;     23056C0A (in phy_tcal_callback)
phy_tcal_handle proc
	c.addi	sp,FFFFFFE0
	addi	a0,sp,+0000000E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023056868
	c.beqz	a0,0000000023056BD6

l23056B58:
	lh	a0,sp,+0000000E
	jal	ra,0000000023056B28
	lhu	a5,sp,+0000000E
	addi	a4,zero,+0000007D
	slli	a3,a5,00000010
	c.srai	a3,00000010
	bge	a4,a3,0000000023056B76

l23056B72:
	addi	a5,zero,+0000007D

l23056B76:
	slli	a4,a5,00000010
	c.srai	a4,00000010
	addi	a3,zero,-00000028
	bge	a4,a3,0000000023056B88

l23056B84:
	addi	a5,zero,-00000028

l23056B88:
	slli	s2,a5,00000010
	sh	a5,sp,+0000000E
	c.addi	a5,FFFFFFE7
	c.slli	a5,10
	c.srai	a5,00000010
	srai	s2,s2,00000010
	blt	zero,a5,0000000023056BE2

l23056B9E:
	c.li	s0,FFFFFFFA
	add	a5,a5,s0
	srai	s0,a5,00000008

l23056BA8:
	lui	s1,00042016
	addi	a5,s1,+000006C4
	c.lw	a5,44(a5)
	addi	s1,s1,+000006C4
	beq	s0,a5,0000000023056BCE

l23056BBA:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s0
	jal	ra,000000002305575C
	csrrsi	zero,mstatus,00000008
	sw	s2,s1,+0000001C
	c.sw	s1,44(s0)

l23056BCE:
	lhu	a5,sp,+0000000E
	sh	a5,s1,+00000000

l23056BD6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23056BE2:
	c.li	s0,00000006
	add	s0,a5,s0
	c.srai	s0,00000008
	sub	s0,zero,s0
	c.slli	s0,10
	c.srai	s0,00000010
	c.j	0000000023056BA8

;; phy_tcal_callback: 23056BF4
;;   Called from:
;;     230050E4 (in wifi_mgmr_start)
phy_tcal_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023056878
	lui	a5,00042016
	lbu	a5,a5,+000006F8
	c.beqz	a5,0000000023056C0E

l23056C06:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023056B44

l23056C0E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl60x_check_mac_status: 23056C14
;;   Called from:
;;     23004C12 (in stateDisconnect_enter)
bl60x_check_mac_status proc
	lui	a5,0004200E
	lbu	a3,a5,+000003A0
	lui	a5,00042016
	addi	a5,a5,+000006FC
	c.li	a4,00000000
	lui	a2,0008801E

l23056C2A:
	blt	a4,a3,0000000023056C34

l23056C2E:
	sw	zero,a0,+00000000
	c.j	0000000023056C44

l23056C34:
	addi	a5,a5,+00000028
	lw	a1,a5,-00000014
	beq	a1,a2,0000000023056C48

l23056C40:
	c.li	a5,00000001
	c.sw	a0,0(a5)

l23056C44:
	c.li	a0,00000000
	c.jr	ra

l23056C48:
	c.addi	a4,00000001
	c.j	0000000023056C2A

;; helper_record_dump: 23056C4C
;;   Called from:
;;     23004C2E (in stateDisconnect_enter)
helper_record_dump proc
	c.addi16sp	FFFFFFD0
	lui	a0,0002307D
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	addi	a0,a0,-00000210
	lui	s0,00042016
	lui	s2,0002307D
	lui	s3,0002307D
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,+000006FC
	jal	ra,0000000023003A8A
	c.li	s1,00000000
	lui	s6,0004200E
	lui	s7,0002307D
	lui	s4,0002307D
	lui	s5,0002307D
	addi	s2,s2,-000000EC
	addi	s3,s3,-0000010C

l23056C96:
	lbu	a5,s6,+000003A0
	blt	s1,a5,0000000023056CBE

l23056C9E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	lui	a0,0002307D
	addi	a0,a0,-00000114
	c.addi16sp	00000030
	jal	zero,0000000023003AC6

l23056CBE:
	c.lw	s0,4(a3)
	c.lw	s0,0(a2)
	c.mv	a1,s1
	addi	a0,s7,-000001F0
	jal	ra,0000000023003AC6
	c.lw	s0,20(a2)
	lbu	a4,s0,+00000017
	c.lw	s0,20(a1)
	srli	a3,a2,00000008
	andi	a3,a3,+000001FF
	andi	a2,a2,+0000003F
	addi	a0,s4,-000001D4
	jal	ra,0000000023003AC6
	lhu	a4,s0,+0000001E
	lhu	a3,s0,+0000001C
	lhu	a2,s0,+0000001A
	lhu	a1,s0,+00000018
	addi	a0,s5,-00000198
	c.addi	s1,00000001
	jal	ra,0000000023003AC6
	lhu	a4,s0,+00000026
	lhu	a3,s0,+00000024
	lhu	a2,s0,+00000022
	lhu	a1,s0,+00000020
	lui	a0,0002307D
	addi	a0,a0,-00000164
	jal	ra,0000000023003AC6
	c.lw	s0,12(a4)
	c.lw	s0,8(a5)
	lui	a0,0002307D
	c.slli	a4,02
	c.slli	a5,02
	c.add	a4,s2
	c.add	a5,s3
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	addi	a0,a0,-00000128
	addi	s0,s0,+00000028
	jal	ra,0000000023003AC6
	c.j	0000000023056C96

;; helper_record_rc_rf_states: 23056D40
;;   Called from:
;;     23056DC6 (in helper_record_all_states)
helper_record_rc_rf_states proc
	lui	a5,00040001
	lw	a3,a5,+00000220
	lui	a4,00010000
	addi	a2,a4,-00000001
	c.and	a3,a2
	c.or	a3,a4
	sw	a3,a5,+00000220
	lw	a4,a5,+00000224
	lw	a4,a5,+00000220
	lui	a3,00020000
	c.addi	sp,FFFFFFF0
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,a5,+00000220
	lw	a5,a5,+00000224
	srli	a4,a5,0000001C
	c.andi	a4,00000007
	c.srli	a5,00000019
	c.sw	a0,0(a4)
	c.andi	a5,00000007
	c.sw	a1,0(a5)
	c.addi	sp,00000010
	c.jr	ra

;; helper_record_all_states: 23056D84
;;   Called from:
;;     2305CFF0 (in hal_machw_reset)
helper_record_all_states proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004200E
	addi	s2,s2,+000003A0
	lbu	a5,s2,+00000000
	addi	a2,zero,+00000028
	c.swsp	s0,00000004
	add	a5,a5,a2
	lui	s0,00044B00
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a4,00042016
	lw	a3,s0,+00000120
	addi	a4,a4,+000006FC
	add	s1,a4,a5
	c.sw	s1,4(a0)
	addi	a1,a5,+0000000C
	addi	a0,a5,+00000008
	c.sw	s1,0(a3)
	c.add	a1,a4
	c.add	a0,a4
	jal	ra,0000000023056D40
	lw	a5,s0,+00000500
	c.lui	a2,FFFF0000
	c.sw	s1,16(a5)
	lw	a5,s0,+00000504
	c.sw	s1,20(a5)
	lw	a5,s0,+00000510
	andi	a5,a5,-00000100
	ori	a5,a5,+00000031
	sw	a5,s0,+00000510
	lw	a3,s0,+00000510
	addi	a5,a2,+000000FF
	c.and	a3,a5
	sw	a3,s0,+00000510
	lw	a4,s0,+0000050C
	c.sw	s1,24(a4)
	lw	a3,s0,+00000510
	andi	a3,a3,-00000100
	ori	a3,a3,+0000000B
	sw	a3,s0,+00000510
	lw	a4,s0,+00000510
	c.lui	a3,00003000
	addi	a3,a3,-00000100
	c.and	a4,a5
	c.or	a4,a3
	sw	a4,s0,+00000510
	lw	a5,s0,+0000050C
	lui	a4,00044900
	c.sw	s1,28(a5)
	addi	a5,zero,+0000033A
	c.sw	a4,116(a5)
	c.lw	a4,104(a5)
	c.and	a5,a2
	ori	a5,a5,+00000014
	c.sw	a4,104(a5)
	lui	a5,00040000
	lw	a3,a5,+000000D0
	c.li	a3,00000004
	sw	a3,a5,+000000D0
	lw	a3,a5,+000000D4
	addi	a3,a5,+00000004
	sw	a3,a5,+000000D4
	lw	a3,a5,+000000D8
	lui	a3,00080000
	c.addi	a3,00000004
	sw	a3,a5,+000000D8
	lw	a3,a5,+000000DC
	lui	a3,000C0000
	c.addi	a3,00000004
	sw	a3,a5,+000000DC
	lw	a3,a5,+000000E0
	c.andi	a3,FFFFFFFE
	sw	a3,a5,+000000E0
	lw	a3,a5,+000000E0
	srli	a2,a3,00000011
	c.srli	a3,00000001
	sh	a3,s1,+00000022
	c.lui	a3,00001000
	sh	a2,s1,+00000020
	addi	a3,a3,-000004F7
	c.sw	a4,116(a3)
	lw	a4,a5,+000000E0
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+000000E0
	lw	a5,a5,+000000E0
	srli	a4,a5,00000011
	c.srli	a5,00000001
	sh	a5,s1,+00000024
	lbu	a5,s2,+00000000
	sh	a4,s1,+00000026
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	a5,00000001
	c.andi	a5,0000000F
	sb	a5,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; rf_fsm_ctrl_en_setf: 23056EC6
;;   Called from:
;;     230576BA (in rfc_init)
;;     2305785C (in rfc_config_channel)
;;     23057868 (in rfc_config_channel)
;;     23057936 (in rfc_coex_force_to)
;;     23057986 (in rfc_coex_force_to)
rf_fsm_ctrl_en_setf proc
	lui	a4,00040001
	c.lw	a4,4(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,4(a0)
	c.jr	ra

;; rf_gc_tbb_setf: 23056ED6
;;   Called from:
;;     230579C0 (in rfc_config_power_ble)
;;     23057A50 (in rfc_config_power_ble)
;;     23057A88 (in rfc_config_power_ble)
;;     23057AC0 (in rfc_config_power_ble)
;;     23057AEE (in rfc_config_power_ble)
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

;; rf_gc_tmx_setf: 23056EF2
;;   Called from:
;;     230579C8 (in rfc_config_power_ble)
;;     23057A58 (in rfc_config_power_ble)
;;     23057A8E (in rfc_config_power_ble)
;;     23057AC6 (in rfc_config_power_ble)
;;     23057AF4 (in rfc_config_power_ble)
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

;; rf_pa_ib_fix_setf: 23056F0E
;;   Called from:
;;     230579A0 (in rfc_config_power_ble)
;;     23057A30 (in rfc_config_power_ble)
;;     23057A68 (in rfc_config_power_ble)
;;     23057AA0 (in rfc_config_power_ble)
;;     23057ACE (in rfc_config_power_ble)
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

;; rf_pa_vbcas_setf: 23056F22
;;   Called from:
;;     230579AA (in rfc_config_power_ble)
;;     23057A3A (in rfc_config_power_ble)
;;     23057A72 (in rfc_config_power_ble)
;;     23057AAA (in rfc_config_power_ble)
;;     23057AD8 (in rfc_config_power_ble)
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

;; rf_pa_vbcore_setf: 23056F36
;;   Called from:
;;     230579B0 (in rfc_config_power_ble)
;;     23057A40 (in rfc_config_power_ble)
;;     23057A78 (in rfc_config_power_ble)
;;     23057AB0 (in rfc_config_power_ble)
;;     23057ADE (in rfc_config_power_ble)
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

;; rf_tmx_cs_setf: 23056F4C
;;   Called from:
;;     230579BA (in rfc_config_power_ble)
;;     23057A4A (in rfc_config_power_ble)
;;     23057A82 (in rfc_config_power_ble)
;;     23057ABA (in rfc_config_power_ble)
;;     23057AE8 (in rfc_config_power_ble)
rf_tmx_cs_setf proc
	lui	a4,00040001
	c.lw	a4,108(a5)
	c.andi	a5,FFFFFFF8
	c.or	a0,a5
	c.sw	a4,108(a0)
	c.jr	ra

;; rf_fsm_st_dbg_en_setf: 23056F5A
;;   Called from:
;;     230576A6 (in rfc_init)
;;     23057888 (in rfc_config_channel)
;;     230578AA (in rfc_config_channel)
rf_fsm_st_dbg_en_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000026C
	c.slli	a0,03
	c.andi	a5,FFFFFFF7
	c.or	a0,a5
	sw	a0,a4,+0000026C
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc3_setf: 23056F6E
;;   Called from:
;;     230574C8 (in rfc_init)
;;     23057B46 (in rfc_apply_tx_dvga)
;;     23057C90 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc2_setf: 23056F8E
;;   Called from:
;;     230574A2 (in rfc_init)
;;     23057B3E (in rfc_apply_tx_dvga)
;;     23057C6A (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc1_setf: 23056FAE
;;   Called from:
;;     2305746E (in rfc_init)
;;     23057B36 (in rfc_apply_tx_dvga)
;;     23057C3A (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc0_setf: 23056FD0
;;   Called from:
;;     23057434 (in rfc_init)
;;     23057B2E (in rfc_apply_tx_dvga)
;;     23057C00 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc0_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000630
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000630
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc7_setf: 23056FE8
;;   Called from:
;;     2305755E (in rfc_init)
;;     23057B66 (in rfc_apply_tx_dvga)
;;     23057D26 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc6_setf: 23057008
;;   Called from:
;;     2305753A (in rfc_init)
;;     23057B5E (in rfc_apply_tx_dvga)
;;     23057D02 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc5_setf: 23057028
;;   Called from:
;;     23057514 (in rfc_init)
;;     23057B56 (in rfc_apply_tx_dvga)
;;     23057CDC (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc4_setf: 2305704A
;;   Called from:
;;     230574EE (in rfc_init)
;;     23057B4E (in rfc_apply_tx_dvga)
;;     23057CB6 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc4_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000634
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000634
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc11_setf: 23057062
;;   Called from:
;;     230575F4 (in rfc_init)
;;     23057B86 (in rfc_apply_tx_dvga)
;;     23057DBC (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc10_setf: 23057082
;;   Called from:
;;     230575CC (in rfc_init)
;;     23057B7E (in rfc_apply_tx_dvga)
;;     23057D94 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc9_setf: 230570A2
;;   Called from:
;;     230575A6 (in rfc_init)
;;     23057B76 (in rfc_apply_tx_dvga)
;;     23057D6E (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc8_setf: 230570C4
;;   Called from:
;;     23057580 (in rfc_init)
;;     23057B6E (in rfc_apply_tx_dvga)
;;     23057D48 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc8_setf proc
	lui	a4,00040001
	lw	a5,a4,+00000638
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+00000638
	c.jr	ra

;; rf_tx_dvga_gain_qdb_gc15_setf: 230570DC
;;   Called from:
;;     23057694 (in rfc_init)
;;     23057BAC (in rfc_apply_tx_dvga)
;;     23057E5A (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc14_setf: 230570FC
;;   Called from:
;;     2305766C (in rfc_init)
;;     23057B9E (in rfc_apply_tx_dvga)
;;     23057E34 (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc13_setf: 2305711C
;;   Called from:
;;     23057644 (in rfc_init)
;;     23057B96 (in rfc_apply_tx_dvga)
;;     23057E0C (in rfc_apply_tx_power_offset)
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

;; rf_tx_dvga_gain_qdb_gc12_setf: 2305713E
;;   Called from:
;;     2305761C (in rfc_init)
;;     23057B8E (in rfc_apply_tx_dvga)
;;     23057DE4 (in rfc_apply_tx_power_offset)
rf_tx_dvga_gain_qdb_gc12_setf proc
	lui	a4,00040001
	lw	a5,a4,+0000063C
	andi	a0,a0,+0000007F
	andi	a5,a5,-00000080
	c.or	a0,a5
	sw	a0,a4,+0000063C
	c.jr	ra

;; wait_us: 23057156
;;   Called from:
;;     23057198 (in _print_channel_info)
;;     230571A6 (in _print_channel_info)
;;     23057756 (in rfc_init)
;;     23057766 (in rfc_init)
;;     23057846 (in rfc_config_channel)
;;     23057856 (in rfc_config_channel)
;;     23057862 (in rfc_config_channel)
;;     2305786E (in rfc_config_channel)
;;     23057882 (in rfc_config_channel)
;;     2305788E (in rfc_config_channel)
;;     230578A4 (in rfc_config_channel)
;;     230578B0 (in rfc_config_channel)
;;     2305793C (in rfc_coex_force_to)
;;     2305797A (in rfc_coex_force_to)
wait_us proc
	c.addi	sp,FFFFFFF0
	c.slli	a0,04
	c.swsp	a0,00000084

l2305715C:
	c.lwsp	a2,000000E4
	addi	a4,a5,-00000001
	c.swsp	a4,00000084
	c.bnez	a5,000000002305715C

l23057166:
	c.addi	sp,00000010
	c.jr	ra

;; rf_pa_etb_en_setf.constprop.16: 2305716A
;;   Called from:
;;     230579B4 (in rfc_config_power_ble)
;;     23057A44 (in rfc_config_power_ble)
;;     23057A7C (in rfc_config_power_ble)
;;     23057AB4 (in rfc_config_power_ble)
;;     23057AE2 (in rfc_config_power_ble)
rf_pa_etb_en_setf.constprop.16 proc
	lui	a4,00040001
	c.lw	a4,100(a5)
	c.andi	a5,FFFFFFF7
	c.sw	a4,100(a5)
	c.jr	ra

;; rf_pa_half_on_setf.constprop.17: 23057176
;;   Called from:
;;     230579A4 (in rfc_config_power_ble)
;;     23057A34 (in rfc_config_power_ble)
;;     23057A6C (in rfc_config_power_ble)
;;     23057AA4 (in rfc_config_power_ble)
;;     23057AD2 (in rfc_config_power_ble)
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

;; _print_channel_info: 2305718A
;;   Called from:
;;     230578B4 (in rfc_config_channel)
_print_channel_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000008

l23057192:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023057156
	c.bnez	s0,0000000023057192

l2305719E:
	c.li	s0,00000008

l230571A0:
	addi	a0,zero,+000003E8
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023057156
	c.bnez	s0,00000000230571A0

l230571AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rfc_init: 230571B4
;;   Called from:
;;     2300B024 (in ble_controller_init)
;;     23055118 (in wifi_main)
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
	beq	a0,a5,0000000023057256

l2305720C:
	bltu	a5,a0,0000000023057230

l23057210:
	lui	a5,000016E3
	addi	a5,a5,+00000600
	c.li	a0,00000000
	beq	s1,a5,0000000023057258

l2305721E:
	lui	a5,000018CC
	addi	a5,a5,-00000580
	c.li	a0,00000001
	beq	s1,a5,0000000023057258

l2305722C:
	c.li	a0,00000004
	c.j	0000000023057258

l23057230:
	lui	a5,00002626
	addi	a5,a5,-00000600
	beq	a0,a5,000000002305722C

l2305723C:
	lui	a5,00003197
	addi	a5,a5,+00000500
	c.li	a0,00000005
	beq	s1,a5,0000000023057258

l2305724A:
	lui	a5,0000249F
	bne	s1,a5,000000002305722C

l23057252:
	c.li	a0,00000003
	c.j	0000000023057258

l23057256:
	c.li	a0,00000002

l23057258:
	lui	s0,0004200E
	jal	ra,0000000023059226
	addi	s0,s0,+000003A1
	lbu	a0,s0,+00000000
	c.li	a1,00000001
	lui	s2,0004200E
	sltiu	a0,a0,+00000001
	jal	ra,000000002305AEAC
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lui	s0,000000F4
	addi	s0,s0,+00000240
	srl	s0,s1,s0
	c.mv	a0,s0
	jal	ra,000000002306C988
	lui	a5,00002626
	sw	a0,s2,+00000CA0
	sw	a1,s2,+00000CA4
	addi	a5,a5,-00000600
	beq	s1,a5,0000000023057798

l230572A2:
	lui	a5,0002307D
	flw	fa0,2004(a5)

l230572AA:
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
	lui	a5,0002307D
	flw	fa5,2008(a5)
	lui	a5,0002307D
	lw	a0,s0,+000001C4
	fmul.s	fa0,fa0,fa5
	flw	fa5,2012(a5)
	lui	a5,0002307D
	flw	fs1,2016(a5)
	lui	s4,0002307D
	fdiv.s	fa0,fa0,fa5
	and	s2,a0,s2
	lui	s3,000FFF00
	addi	s1,s1,-0000069C
	c.mv	s7,s1
	addi	s0,s0,+0000013C
	fdiv.s	fa0,fa0,fs0
	fmul.s	fa0,fa0,fs1
	jal	ra,000000002306CA0C
	lw	a2,s4,-00000218
	lw	a3,s4,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C814
	lui	a5,0002307D
	flw	fa0,2020(a5)
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
	jal	ra,000000002306CA0C
	lw	a2,s4,-00000218
	lw	a3,s4,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C814
	lui	a5,0002307D
	flw	fa0,2024(a5)
	and	a0,a0,s2
	or	a0,a0,s5
	fdiv.s	fa0,fa0,fs0
	sw	a0,s0,+0000008C
	lw	a0,s0,+00000090
	c.li	s5,00000000
	and	s3,a0,s3
	fmul.s	fa0,fa0,fs1
	jal	ra,000000002306CA0C
	lw	a2,s4,-00000218
	lw	a3,s4,-00000214
	c.li	s4,00000000
	jal	ra,0000000023069DA8
	jal	ra,000000002306C814
	and	a0,a0,s2
	or	a0,a0,s3
	c.lui	s3,00001000
	sw	a0,s0,+00000090
	addi	s8,s3,-0000064C
	addi	s6,s3,-00000648

l230573B6:
	c.mv	a0,s1
	jal	ra,0000000023059E4A
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023059E94
	bne	s1,s7,00000000230573CA

l230573C8:
	c.addi	s2,00000001

l230573CA:
	c.slli	s2,08
	andi	a5,s4,+00000001
	or	a0,s2,a0
	beq	a5,zero,00000000230577A2

l230573D8:
	srai	a5,s4,00000001
	c.slli	a0,10
	c.slli	a5,02
	or	s5,s5,a0
	c.add	a5,s0
	sw	s5,a5,+00000000

l230573EA:
	bne	s1,s8,00000000230573FA

l230573EE:
	srai	a5,s4,00000001
	c.slli	a5,02
	c.add	a5,s0
	sw	s5,a5,+00000000

l230573FA:
	c.addi	s1,00000004
	c.addi	s4,00000001
	bne	s1,s6,00000000230573B6

l23057402:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056FD0
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056FAE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056F8E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s11
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s10
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023056F6E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s9
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s8
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,000000002305704A
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s7
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s6
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023057028
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s5
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023057008
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023059F52
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023056FE8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023059F52
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570C4
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000009
	jal	ra,0000000023059F52
	lw	a5,s0,+00000644
	andi	a4,a5,-00000071
	c.lwsp	s0,000000E4
	c.slli	a5,04
	andi	a5,a5,+00000070
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570A2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023057082
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	and	s11,a2,s11
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s10
	or	a2,a2,s11
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023057062
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	and	s9,a2,s9
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s8
	or	a2,a2,s9
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002305713E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023059F52
	lw	a3,s0,+00000644
	and	s7,a3,s7
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s6
	or	a3,a3,s7
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002305711C
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023059F52
	lw	a4,s0,+00000644
	and	s5,a4,s5
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s4
	or	a4,a4,s5
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570FC
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023059F52
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	c.lui	s1,FFFF0000
	jal	ra,00000000230570DC
	c.lw	s0,4(a5)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.sw	s0,4(a5)
	c.li	a0,00000000
	jal	ra,0000000023056F5A
	lw	a5,s0,+00000268
	c.li	a0,00000001
	c.and	a5,s1
	or	s3,a5,s3
	sw	s3,s0,+00000268
	jal	ra,0000000023056EC6
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
	jal	ra,0000000023057156
	c.lw	s0,4(a5)
	c.li	a0,00000001
	c.andi	a5,FFFFFFF3
	ori	a5,a5,+00000004
	c.sw	s0,4(a5)
	jal	ra,0000000023057156
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

l23057798:
	lui	a5,0002307D
	flw	fa0,2000(a5)
	c.j	00000000230572AA

l230577A2:
	c.mv	s5,a0
	c.j	00000000230573EA

;; rfc_rxdfe_set_notch0: 230577A6
;;   Called from:
;;     23057910 (in rfc_config_channel)
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

;; rfc_config_channel: 230577E8
;;   Called from:
;;     23067430 (in rf_set_channel)
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
	jal	ra,0000000023057156
	lw	a5,s0,+00000268
	c.li	a0,0000000A
	c.and	s1,a5
	sw	s1,s0,+00000268
	jal	ra,0000000023057156
	c.li	a0,00000000
	jal	ra,0000000023056EC6
	c.li	a0,0000000A
	jal	ra,0000000023057156
	c.li	a0,00000001
	jal	ra,0000000023056EC6
	c.li	a0,0000000A
	jal	ra,0000000023057156
	lw	a5,s0,+0000026C
	c.li	a0,0000000A
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000001
	sw	a5,s0,+0000026C
	jal	ra,0000000023057156
	c.li	a0,00000001
	jal	ra,0000000023056F5A
	c.li	a0,0000000A
	jal	ra,0000000023057156
	lw	a5,s0,+0000026C
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFF8
	ori	a5,a5,+00000002
	sw	a5,s0,+0000026C
	jal	ra,0000000023057156
	c.li	a0,00000000
	jal	ra,0000000023056F5A
	c.li	a0,0000000A
	jal	ra,0000000023057156
	jal	ra,000000002305718A
	c.mv	a0,s2
	jal	ra,0000000023058F62
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.mv	a0,s2
	jal	ra,0000000023058F2E
	c.lwsp	a2,00000044
	jal	ra,000000002306C8DC
	lui	a5,0002307D
	lw	a2,a5,+000007C0
	lw	a3,a5,+000007C4
	jal	ra,000000002306A8F8
	lui	a5,0002307D
	lw	a2,a5,+000007C8
	lw	a3,a5,+000007CC
	jal	ra,000000002306B444
	lui	a5,0002307D
	lw	a2,a5,-00000218
	lw	a3,a5,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C718
	slli	a2,a0,00000018
	lbu	a0,sp,+0000000B
	c.srai	a2,00000018
	c.li	a1,00000001
	jal	ra,00000000230577A6
	lw	a5,s0,+00000228
	c.andi	a5,FFFFFFF7
	sw	a5,s0,+00000228
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; rfc_coex_force_to: 2305792A
;;   Called from:
;;     23054FFE (in coex_wifi_rf_forece_enable)
rfc_coex_force_to proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023056EC6
	c.li	a0,0000000A
	jal	ra,0000000023057156
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
	jal	ra,0000000023057156
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023056EC6

;; rfc_config_power_ble: 2305798A
;;   Called from:
;;     2300E22E (in rf_txpwr_dec)
;;     2300E26A (in rf_txpwr_inc)
;;     2300E2B2 (in rf_txpwr_max_set)
;;     2300E2C4 (in rf_txpwr_max_set)
;;     2300E37A (in ble_controller_set_tx_pwr)
;;     2300E38C (in ble_controller_set_tx_pwr)
rfc_config_power_ble proc
	c.li	a5,0000000F
	bltu	a5,a0,0000000023057AFC

l23057990:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000003
	c.mv	s0,a0
	blt	a5,a0,0000000023057A28

l2305799E:
	c.li	a0,00000001
	jal	ra,0000000023056F0E
	jal	ra,0000000023057176
	c.li	a0,00000004
	jal	ra,0000000023056F22
	c.li	a0,00000009
	jal	ra,0000000023056F36
	jal	ra,000000002305716A
	c.li	a0,00000005
	jal	ra,0000000023056F4C
	c.li	a0,00000002
	jal	ra,0000000023056ED6
	c.li	a0,00000005
	c.slli	s0,02
	jal	ra,0000000023056EF2
	c.addi	s0,FFFFFFEE

l230579CE:
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

l23057A28:
	c.li	a5,00000006
	blt	a5,a0,0000000023057A60

l23057A2E:
	c.li	a0,00000001
	jal	ra,0000000023056F0E
	jal	ra,0000000023057176
	c.li	a0,00000004
	jal	ra,0000000023056F22
	c.li	a0,00000009
	jal	ra,0000000023056F36
	jal	ra,000000002305716A
	c.li	a0,00000005
	jal	ra,0000000023056F4C
	c.li	a0,00000002
	jal	ra,0000000023056ED6
	c.li	a0,00000007
	c.slli	s0,02
	jal	ra,0000000023056EF2
	c.addi	s0,FFFFFFE2
	c.j	00000000230579CE

l23057A60:
	c.li	a5,00000009
	blt	a5,a0,0000000023057A98

l23057A66:
	c.li	a0,00000001
	jal	ra,0000000023056F0E
	jal	ra,0000000023057176
	c.li	a0,00000004
	jal	ra,0000000023056F22
	c.li	a0,00000009
	jal	ra,0000000023056F36
	jal	ra,000000002305716A
	c.li	a0,00000005
	jal	ra,0000000023056F4C
	c.li	a0,00000003
	jal	ra,0000000023056ED6
	c.li	a0,00000007
	jal	ra,0000000023056EF2
	c.addi	s0,FFFFFFF6

l23057A94:
	c.slli	s0,02
	c.j	00000000230579CE

l23057A98:
	c.li	a5,0000000B
	c.li	a0,00000001
	blt	a5,s0,0000000023057ACE

l23057AA0:
	jal	ra,0000000023056F0E
	jal	ra,0000000023057176
	c.li	a0,00000004
	jal	ra,0000000023056F22
	c.li	a0,00000009
	jal	ra,0000000023056F36
	jal	ra,000000002305716A
	c.li	a0,00000005
	jal	ra,0000000023056F4C
	c.li	a0,00000004
	jal	ra,0000000023056ED6
	c.li	a0,00000007
	jal	ra,0000000023056EF2
	c.addi	s0,FFFFFFF4
	c.j	0000000023057A94

l23057ACE:
	jal	ra,0000000023056F0E
	jal	ra,0000000023057176
	c.li	a0,00000004
	jal	ra,0000000023056F22
	c.li	a0,00000009
	jal	ra,0000000023056F36
	jal	ra,000000002305716A
	c.li	a0,00000005
	jal	ra,0000000023056F4C
	c.li	a0,00000006
	jal	ra,0000000023056ED6
	c.li	a0,00000007
	jal	ra,0000000023056EF2
	c.addi	s0,FFFFFFF1
	c.j	0000000023057A94

l23057AFC:
	c.li	a0,00000000
	c.jr	ra

;; rfc_get_power_level: 23057B00
;;   Called from:
;;     2305632C (in phy_get_rf_gain_idx)
rfc_get_power_level proc
	c.addi	sp,FFFFFFF0
	c.mv	a5,a0
	c.swsp	ra,00000084
	c.mv	a0,a1
	c.li	a1,00000000
	c.beqz	a5,0000000023057B16

l23057B0C:
	c.li	a4,00000001
	c.li	a1,00000001
	beq	a5,a4,0000000023057B16

l23057B14:
	c.li	a1,00000002

l23057B16:
	jal	ra,0000000023059F1A
	c.lwsp	a2,00000020
	c.slli	a0,02
	c.addi	sp,00000010
	c.jr	ra

;; rfc_apply_tx_dvga: 23057B22
;;   Called from:
;;     23059FFA (in rf_pri_tx_gain_comp)
rfc_apply_tx_dvga proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	lb	a0,a0,+00000000
	jal	ra,0000000023056FD0
	lb	a0,s0,+00000001
	jal	ra,0000000023056FAE
	lb	a0,s0,+00000002
	jal	ra,0000000023056F8E
	lb	a0,s0,+00000003
	jal	ra,0000000023056F6E
	lb	a0,s0,+00000004
	jal	ra,000000002305704A
	lb	a0,s0,+00000005
	jal	ra,0000000023057028
	lb	a0,s0,+00000006
	jal	ra,0000000023057008
	lb	a0,s0,+00000007
	jal	ra,0000000023056FE8
	lb	a0,s0,+00000008
	jal	ra,00000000230570C4
	lb	a0,s0,+00000009
	jal	ra,00000000230570A2
	lb	a0,s0,+0000000A
	jal	ra,0000000023057082
	lb	a0,s0,+0000000B
	jal	ra,0000000023057062
	lb	a0,s0,+0000000C
	jal	ra,000000002305713E
	lb	a0,s0,+0000000D
	jal	ra,000000002305711C
	lb	a0,s0,+0000000E
	jal	ra,00000000230570FC
	lb	a0,s0,+0000000F
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230570DC

;; rfc_apply_tx_power_offset: 23057BB0
;;   Called from:
;;     23055E42 (in phy_hw_set_channel)
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
	jal	ra,0000000023058EC4
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	lui	s0,00040001
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056FD0
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000001
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056FAE
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000002
	jal	ra,0000000023059F52
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
	jal	ra,0000000023056F8E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000003
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s10
	c.lwsp	s0,000000E4
	c.slli	a5,0C
	and	a5,a5,s9
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023056F6E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000004
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s8
	c.lwsp	s0,000000E4
	c.slli	a5,10
	and	a5,a5,s7
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,000000002305704A
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000005
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s6
	c.lwsp	s0,000000E4
	c.slli	a5,14
	and	a5,a5,s5
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023057028
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000006
	jal	ra,0000000023059F52
	lw	a5,s0,+00000640
	and	a4,a5,s4
	c.lwsp	s0,000000E4
	c.slli	a5,18
	and	a5,a5,s3
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023057008
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000007
	jal	ra,0000000023059F52
	c.lwsp	s0,000000E4
	lw	a4,s0,+00000640
	c.slli	a5,1C
	and	a4,a4,s2
	c.and	a5,s1
	c.or	a5,a4
	sw	a5,s0,+00000640
	c.lwsp	a2,00000044
	jal	ra,0000000023056FE8
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023059F52
	lw	a5,s0,+00000644
	andi	a4,a5,-00000008
	c.lwsp	s0,000000E4
	c.andi	a5,00000007
	c.or	a5,a4
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570C4
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,00000009
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	andi	a5,a2,-00000071
	c.lwsp	s0,00000084
	c.slli	a2,04
	andi	a2,a2,+00000070
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570A2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000A
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	andi	a5,a2,-00000701
	c.lwsp	s0,00000084
	c.slli	a2,08
	andi	a2,a2,+00000700
	c.or	a2,a5
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023057082
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000B
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	and	s10,a2,s10
	c.lwsp	s0,00000084
	c.slli	a2,0C
	and	a2,a2,s9
	or	a2,a2,s10
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,0000000023057062
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.li	a0,0000000C
	jal	ra,0000000023059F52
	lw	a2,s0,+00000644
	and	s8,a2,s8
	c.lwsp	s0,00000084
	c.slli	a2,10
	and	a2,a2,s7
	or	a2,a2,s8
	sw	a2,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002305713E
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000D
	jal	ra,0000000023059F52
	lw	a3,s0,+00000644
	and	s6,a3,s6
	c.lwsp	s0,000000A4
	c.slli	a3,14
	and	a3,a3,s5
	or	a3,a3,s6
	sw	a3,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,000000002305711C
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000E
	jal	ra,0000000023059F52
	lw	a4,s0,+00000644
	and	s4,a4,s4
	c.lwsp	s0,000000C4
	c.slli	a4,18
	and	a4,a4,s3
	or	a4,a4,s4
	sw	a4,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570FC
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.li	a0,0000000F
	jal	ra,0000000023059F52
	lw	a5,s0,+00000644
	and	s2,a5,s2
	c.lwsp	s0,000000E4
	c.slli	a5,1C
	c.and	a5,s1
	or	a5,a5,s2
	sw	a5,s0,+00000644
	c.lwsp	a2,00000044
	jal	ra,00000000230570DC
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

;; rf_pri_set_gain_table_regs: 23057E7A
;;   Called from:
;;     23058F2A (in rf_pri_update_tx_power_offset)
;;     2305B076 (in rf_pri_init)
rf_pri_set_gain_table_regs proc
	lui	a4,00040001
	lui	a5,00042017
	addi	a5,a5,-00000514
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

;; rf_pri_manu_pu: 23058044
;;   Called from:
;;     2305A126 (in rf_pri_txcal)
;;     2305A49C (in rf_pri_roscal)
;;     2305A6C4 (in rf_pri_rccal)
;;     2305A906 (in rf_pri_lo_acal)
;;     2305AA82 (in rf_pri_fcal)
rf_pri_manu_pu proc
	lui	a5,00040001
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	sw	zero,a5,+0000000C
	c.li	a4,00000005
	beq	a0,a4,00000000230580B2

l23058058:
	bltu	a4,a0,0000000023058080

l2305805C:
	c.li	a4,00000004
	beq	a0,a4,000000002305809C

l23058062:
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

l23058080:
	c.li	a4,00000007
	bltu	a4,a0,0000000023058062

l23058086:
	c.lw	a5,48(a4)
	lui	a3,00008F09
	addi	a3,a3,+000000FF
	c.and	a4,a3
	lui	a3,00000F00

l23058096:
	c.or	a4,a3
	c.sw	a5,48(a4)
	c.jr	ra

l2305809C:
	c.lw	a5,48(a4)
	lui	a3,0002CF90
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,00024F87

l230580AC:
	addi	a3,a3,-00000800
	c.j	0000000023058096

l230580B2:
	c.lw	a5,48(a4)
	lui	a3,000CF000
	addi	a3,a3,-00000701
	c.and	a4,a3
	lui	a3,000C6FF7
	c.j	00000000230580AC

;; rf_pri_save_state_for_cal: 230580C4
;;   Called from:
;;     2305A120 (in rf_pri_txcal)
;;     2305A496 (in rf_pri_roscal)
;;     2305A6BE (in rf_pri_rccal)
;;     2305A8FE (in rf_pri_lo_acal)
;;     2305AA7C (in rf_pri_fcal)
rf_pri_save_state_for_cal proc
	lui	a5,00040001
	c.lw	a5,4(a3)
	lui	a4,0004200E
	sw	a3,a4,+000003DC
	c.lw	a5,12(a3)
	lui	a4,0004200E
	sw	a3,a4,+000003E8
	c.lw	a5,28(a3)
	lui	a4,0004200E
	sw	a3,a4,+000003E4
	c.lw	a5,48(a3)
	lui	a4,0004200E
	sw	a3,a4,+000003D4
	lw	a3,a5,+000000B8
	lui	a4,0004200E
	sw	a3,a4,+000003CC
	lw	a3,a5,+000000C0
	lui	a4,0004200E
	sw	a3,a4,+000003F0
	lw	a3,a5,+000000C4
	lui	a4,0004200E
	sw	a3,a4,+000003F4
	lw	a3,a5,+00000084
	lui	a4,0004200E
	sw	a3,a4,+000003D8
	lw	a3,a5,+0000008C
	lui	a4,0004200E
	sw	a3,a4,+000003B8
	lw	a3,a5,+00000600
	lui	a4,0004200E
	sw	a3,a4,+000003BC
	lw	a3,a5,+0000060C
	lui	a4,0004200E
	sw	a3,a4,+000003C0
	lw	a3,a5,+00000618
	lui	a4,0004200E
	sw	a3,a4,+000003C4
	lw	a3,a5,+0000061C
	lui	a4,0004200E
	sw	a3,a4,+000003C8
	c.lw	a5,72(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000418
	lw	a3,a5,+0000020C
	lui	a4,0004200E
	sw	a3,a4,+000003F8
	lw	a3,a5,+00000214
	lui	a4,0004200E
	sw	a3,a4,+000003FC
	lw	a3,a5,+00000218
	lui	a4,0004200E
	sw	a3,a4,+00000400
	lw	a3,a5,+0000023C
	lui	a4,0004200E
	sw	a3,a4,+00000404
	lw	a3,a5,+00000240
	lui	a4,0004200E
	sw	a3,a4,+00000408
	lw	a3,a5,+00000244
	lui	a4,0004200E
	sw	a3,a4,+0000040C
	lw	a3,a5,+000000F0
	lui	a4,0004200E
	sw	a3,a4,+000003E0
	c.lw	a5,100(a3)
	lui	a4,0004200E
	sw	a3,a4,+000003D0
	c.lw	a5,88(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000414
	lw	a3,a5,+00000220
	lui	a4,0004200E
	sw	a3,a4,+000003EC
	c.lw	a5,112(a3)
	lui	a4,0004200E
	sw	a3,a4,+00000410
	lw	a4,a5,+000000A4
	lui	a5,0004200E
	sw	a4,a5,+0000041C
	c.jr	ra

;; rf_pri_restore_state_for_cal: 230581F2
;;   Called from:
;;     2305A3C2 (in rf_pri_txcal)
;;     2305A672 (in rf_pri_roscal)
;;     2305A898 (in rf_pri_rccal)
;;     2305A9EE (in rf_pri_lo_acal)
;;     2305AC68 (in rf_pri_fcal)
rf_pri_restore_state_for_cal proc
	lui	a5,0004200E
	lw	a4,a5,+000003DC
	lui	a5,00040001
	c.sw	a5,4(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003E8
	c.sw	a5,12(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003E4
	c.sw	a5,28(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003D4
	c.sw	a5,48(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003CC
	sw	a4,a5,+000000B8
	lui	a4,0004200E
	lw	a4,a4,+000003F0
	sw	a4,a5,+000000C0
	lui	a4,0004200E
	lw	a4,a4,+000003F4
	sw	a4,a5,+000000C4
	lui	a4,0004200E
	lw	a4,a4,+000003D8
	sw	a4,a5,+00000084
	lui	a4,0004200E
	lw	a4,a4,+000003B8
	sw	a4,a5,+0000008C
	lui	a4,0004200E
	lw	a4,a4,+000003BC
	sw	a4,a5,+00000600
	lui	a4,0004200E
	lw	a4,a4,+000003C0
	sw	a4,a5,+0000060C
	lui	a4,0004200E
	lw	a4,a4,+000003C4
	sw	a4,a5,+00000618
	lui	a4,0004200E
	lw	a4,a4,+000003C8
	sw	a4,a5,+0000061C
	lui	a4,0004200E
	lw	a4,a4,+00000418
	c.sw	a5,72(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003F8
	sw	a4,a5,+0000020C
	lui	a4,0004200E
	lw	a4,a4,+000003FC
	sw	a4,a5,+00000214
	lui	a4,0004200E
	lw	a4,a4,+00000400
	sw	a4,a5,+00000218
	lui	a4,0004200E
	lw	a4,a4,+00000404
	sw	a4,a5,+0000023C
	lui	a4,0004200E
	lw	a4,a4,+00000408
	sw	a4,a5,+00000240
	lui	a4,0004200E
	lw	a4,a4,+0000040C
	sw	a4,a5,+00000244
	lui	a4,0004200E
	lw	a4,a4,+000003E0
	sw	a4,a5,+000000F0
	lui	a4,0004200E
	lw	a4,a4,+000003D0
	c.sw	a5,100(a4)
	lui	a4,0004200E
	lw	a4,a4,+00000414
	c.sw	a5,88(a4)
	lui	a4,0004200E
	lw	a4,a4,+000003EC
	sw	a4,a5,+00000220
	lui	a4,0004200E
	lw	a4,a4,+00000410
	c.sw	a5,112(a4)
	lui	a4,0004200E
	lw	a4,a4,+0000041C
	sw	a4,a5,+000000A4
	c.jr	ra

;; rf_pri_singen_start: 23058320
;;   Called from:
;;     230589C0 (in rf_pri_rccal_iq)
;;     23058A1A (in rf_pri_rccal_iq)
;;     2305A220 (in rf_pri_txcal)
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

;; rf_pri_pm_pwr: 23058342
;;   Called from:
;;     2305884A (in rf_pri_txcal_search_core)
;;     23058894 (in rf_pri_txcal_search_core)
;;     230588AE (in rf_pri_txcal_search_core)
;;     230589E6 (in rf_pri_rccal_iq)
;;     23058A4C (in rf_pri_rccal_iq)
;;     23058A6E (in rf_pri_rccal_iq)
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

l23058364:
	lw	a4,a5,+00000618
	addi	a2,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,0000000023058364

l23058374:
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

;; rf_pri_start_txdfe: 2305839C
;;   Called from:
;;     230589C4 (in rf_pri_rccal_iq)
;;     23058A1E (in rf_pri_rccal_iq)
;;     2305A224 (in rf_pri_txcal)
;;     2305AD04 (in rf_pri_full_cal)
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

;; rf_pri_pm_pwr_avg: 230583D2
;;   Called from:
;;     230589E2 (in rf_pri_rccal_iq)
;;     23058C50 (in rf_pri_roscal_iq.isra.3)
;;     23058C8C (in rf_pri_roscal_iq.isra.3)
;;     2305A238 (in rf_pri_txcal)
;;     2305A278 (in rf_pri_txcal)
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

l23058404:
	lw	a4,a5,+00000618
	slli	a3,a4,00000003
	bge	a3,zero,0000000023058404

l23058410:
	c.beqz	a0,0000000023058430

l23058412:
	lw	a0,a5,+00000620

l23058416:
	lui	a3,00040001
	lw	a5,a3,+00000618
	lui	a4,000DFF00
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a0,07
	sw	a5,a3,+00000618
	c.srai	a0,00000007
	c.jr	ra

l23058430:
	lw	a0,a5,+00000624
	c.j	0000000023058416

;; rf_pri_txcal_config_hw: 23058436
;;   Called from:
;;     2305A3B4 (in rf_pri_txcal)
;;     2305AE42 (in rf_pri_restore_cal_reg)
rf_pri_txcal_config_hw proc
	lui	a4,0004200E
	lw	a1,a4,-00000344
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
	lw	a1,a4,-00000344
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
	lw	t1,a4,-00000344
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
	lw	a1,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a0,a4,-00000344
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
	lw	a3,a4,-00000344
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

;; rf_pri_fcal_meas: 230586D8
;;   Called from:
;;     2305AB4A (in rf_pri_fcal)
;;     2305AB64 (in rf_pri_fcal)
;;     2305AB8A (in rf_pri_fcal)
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
	auipc	ra,0001EFB4
	jalr	ra,ra,-000001EE
	lw	a5,s0,+000000AC
	ori	a5,a5,+00000010
	sw	a5,s0,+000000AC
	lui	a5,00040001

l2305870C:
	lw	a3,a5,+000000AC
	addi	a4,a5,+000000AC
	slli	a2,a3,0000000B
	bge	a2,zero,000000002305870C

l2305871C:
	lw	a0,a5,+000000A8
	lw	a5,a5,+000000AC
	c.srli	a0,00000010
	c.andi	a5,FFFFFFEF
	c.sw	a4,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_rccal_config.part.0: 23058732
;;   Called from:
;;     2305875E (in rf_pri_rccal_config)
;;     2305A854 (in rf_pri_rccal)
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

;; rf_pri_rccal_config: 2305875A
;;   Called from:
;;     23058A48 (in rf_pri_rccal_iq)
;;     23058A6A (in rf_pri_rccal_iq)
;;     2305A866 (in rf_pri_rccal)
rf_pri_rccal_config proc
	c.beqz	a0,0000000023058762

l2305875C:
	c.mv	a0,a1
	jal	zero,0000000023058732

l23058762:
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

;; rf_pri_txcal_config: 23058784
;;   Called from:
;;     23058824 (in rf_pri_txcal_search_core)
;;     23058882 (in rf_pri_txcal_search_core)
;;     230588A0 (in rf_pri_txcal_search_core)
;;     2305A292 (in rf_pri_txcal)
;;     2305A2CA (in rf_pri_txcal)
;;     2305A2E6 (in rf_pri_txcal)
;;     2305A2FE (in rf_pri_txcal)
;;     2305A318 (in rf_pri_txcal)
;;     2305A332 (in rf_pri_txcal)
rf_pri_txcal_config proc
	c.li	a5,00000002
	bne	a0,a5,00000000230587AA

l2305878A:
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

l230587AA:
	c.li	a5,00000003
	bne	a0,a5,00000000230587D0

l230587B0:
	bge	a1,zero,00000000230587B8

l230587B4:
	addi	a1,a1,+00000400

l230587B8:
	lui	a4,00040001
	lw	a5,a4,+00000600
	andi	a5,a5,-00000400
	c.or	a1,a5
	ori	a1,a1,+00000400
	sw	a1,a4,+00000600
	c.jr	ra

l230587D0:
	c.bnez	a0,00000000230587E8

l230587D2:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000C1000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,18

l230587E2:
	c.or	a1,a5
	c.sw	a3,112(a1)

l230587E6:
	c.jr	ra

l230587E8:
	c.li	a5,00000001
	bne	a0,a5,00000000230587E6

l230587EE:
	lui	a3,00040001
	c.lw	a3,112(a5)
	lui	a4,000FFC10
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.slli	a1,10
	c.j	00000000230587E2

;; rf_pri_txcal_search_core: 23058800
;;   Called from:
;;     2305A288 (in rf_pri_txcal)
;;     2305A2A2 (in rf_pri_txcal)
;;     2305A2C0 (in rf_pri_txcal)
;;     2305A2DC (in rf_pri_txcal)
;;     2305A2F6 (in rf_pri_txcal)
;;     2305A30E (in rf_pri_txcal)
;;     2305A328 (in rf_pri_txcal)
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
	jal	ra,0000000023058784
	c.li	a0,0000000A
	auipc	ra,0001EFB4
	jalr	ra,ra,-00000324
	lui	a4,00040001
	lw	a5,a4,+00000618
	c.lwsp	a2,000000A4
	lui	a2,000FFF00
	c.and	a5,a2
	c.slli	a3,0A
	c.or	a3,a5
	sw	a3,a4,+00000618
	jal	ra,0000000023058342
	c.mv	s11,a0
	c.li	s4,00000001
	c.li	s5,00000002
	addi	s6,zero,-00000200
	addi	s7,zero,+000001FF
	addi	s8,zero,+000007FF
	addi	s9,zero,+0000003F

l23058864:
	sub	s0,s2,s10
	add	s1,s2,s10
	bltu	s4,s3,00000000230588DE

l23058870:
	bge	s0,zero,0000000023058876

l23058874:
	c.li	s0,00000000

l23058876:
	bge	s9,s1,000000002305887E

l2305887A:
	addi	s1,zero,+0000003F

l2305887E:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023058784
	c.li	a0,0000000A
	srai	s10,s10,00000001
	auipc	ra,0001EFB4
	jalr	ra,ra,-00000386
	jal	ra,0000000023058342
	bltu	a0,s11,0000000023058904

l2305889C:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023058784
	c.li	a0,0000000A
	auipc	ra,0001EFB4
	jalr	ra,ra,-000003A0
	jal	ra,0000000023058342
	bgeu	a0,s11,00000000230588BA

l230588B6:
	c.mv	s11,a0
	c.mv	s2,s1

l230588BA:
	bne	s10,zero,0000000023058864

l230588BE:
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

l230588DE:
	bne	s3,s5,00000000230588F2

l230588E2:
	bge	s0,zero,00000000230588E8

l230588E6:
	c.li	s0,00000000

l230588E8:
	bge	s8,s1,000000002305887E

l230588EC:
	addi	s1,zero,+000007FF
	c.j	000000002305887E

l230588F2:
	bge	s0,s6,00000000230588FA

l230588F6:
	addi	s0,zero,-00000200

l230588FA:
	bge	s7,s1,000000002305887E

l230588FE:
	addi	s1,zero,+000001FF
	c.j	000000002305887E

l23058904:
	c.mv	s11,a0
	c.mv	s2,s0
	c.j	00000000230588BA

;; rf_pri_singen_config.constprop.8: 2305890A
;;   Called from:
;;     23058998 (in rf_pri_rccal_iq)
;;     23058A16 (in rf_pri_rccal_iq)
;;     2305A17A (in rf_pri_txcal)
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

;; rf_pri_rccal_iq: 23058948
;;   Called from:
;;     2305A6FA (in rf_pri_rccal)
;;     2305A702 (in rf_pri_rccal)
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
	beq	a0,zero,0000000023058A86

l23058968:
	andi	a4,a4,-00000401
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,00004000
	c.or	a4,a3

l2305897A:
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
	jal	ra,000000002305890A
	lw	a5,s0,+00000214
	lui	s4,000FFF00
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	ori	a5,a5,+000003FF
	sw	a5,s0,+00000218
	jal	ra,0000000023058320
	jal	ra,000000002305839C
	lw	a3,s0,+00000618
	c.lui	a4,00001000
	addi	a4,a4,-00000400
	and	a3,a3,s4
	c.or	a3,a4
	sw	a3,s0,+00000618
	addi	a1,zero,+00000400
	c.mv	a0,s2
	jal	ra,00000000230583D2
	jal	ra,0000000023058342
	jal	ra,000000002306C988
	lui	a5,0002307E
	lw	a3,a5,-0000070C
	lw	a2,a5,-00000710
	jal	ra,000000002306B444
	jal	ra,000000002306C814
	c.lw	s0,72(a4)
	c.lui	a3,00006000
	addi	a3,a3,+00000200
	c.and	a4,s1
	c.or	a4,a3
	c.sw	s0,72(a4)
	c.mv	s3,a0
	addi	a0,zero,+000000B5
	jal	ra,000000002305890A
	jal	ra,0000000023058320
	jal	ra,000000002305839C
	lw	a5,s0,+00000618
	lui	a4,0000002D
	addi	a4,a4,+00000400
	and	a5,a5,s4
	c.or	a5,a4
	sw	a5,s0,+00000618
	c.li	s1,00000000
	c.li	s0,00000006
	addi	s4,zero,+00000020

l23058A40:
	add	s5,s4,s1
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002305875A
	jal	ra,0000000023058342
	bgeu	s3,a0,0000000023058A56

l23058A54:
	c.mv	s1,s5

l23058A56:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,0000000023058A40

l23058A5E:
	addi	s4,zero,+0000003F
	c.li	s5,0000000A
	c.li	s6,00000005

l23058A66:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002305875A
	jal	ra,0000000023058342
	c.slli	s0,01
	bgeu	s3,a0,0000000023058A9C

l23058A78:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s1,00000001
	bne	s0,s6,0000000023058AA4

l23058A82:
	c.li	a0,00000003
	c.j	0000000023058AAC

l23058A86:
	ori	a4,a4,+00000400
	sw	a4,a5,+0000060C
	lw	a4,a5,+0000060C
	lui	a3,000FC000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.j	000000002305897A

l23058A9C:
	c.andi	s0,0000000F
	c.addi	s1,FFFFFFFF
	beq	s0,s5,0000000023058A82

l23058AA4:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,0000000023058A66

l23058AAA:
	c.li	a0,00000002

l23058AAC:
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

;; rf_pri_config_channel.constprop.9: 23058AC0
;;   Called from:
;;     2305A12A (in rf_pri_txcal)
;;     2305A4B0 (in rf_pri_roscal)
rf_pri_config_channel.constprop.9 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	lw	a2,s1,-00000344
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
	lw	a5,s1,-00000344
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
	lw	a3,a3,+00000674
	lui	s4,0002307A
	c.or	a5,a3
	sw	a5,a4,+000000C4
	lw	a5,a4,+000000C0
	c.lui	a3,FFFFF000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	sw	a5,a4,+000000C0

l23058B6E:
	lw	a5,s0,+000000B8
	c.li	a0,0000000A
	or	a5,a5,s5
	sw	a5,s0,+000000B8
	auipc	ra,0001EFB4
	jalr	ra,ra,-00000676
	lw	a5,s0,+000000B8
	addi	a0,zero,+00000032
	and	a5,a5,s2
	sw	a5,s0,+000000B8
	auipc	ra,0001EFB4
	jalr	ra,ra,-0000068E
	lw	a5,s0,+000000B0
	c.li	a0,0000000A
	or	a5,a5,s6
	sw	a5,s0,+000000B0
	auipc	ra,0001EFB4
	jalr	ra,ra,-000006A4
	lw	a5,s0,+000000B0
	addi	a0,zero,+00000032
	and	a5,a5,s3
	sw	a5,s0,+000000B0
	auipc	ra,0001EFB4
	jalr	ra,ra,-000006BC
	lw	a5,s0,+000000B4
	and	a5,a5,s7
	c.beqz	a5,0000000023058BDE

l23058BD4:
	addi	a0,s4,-00000304
	jal	ra,0000000023003AC6
	c.j	0000000023058B6E

l23058BDE:
	lw	a5,s1,-00000344
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
	lui	a0,0002307E
	andi	a2,a2,+000000FF
	c.li	a1,00000009
	addi	a0,a0,-000007CC
	c.addi16sp	00000030
	jal	zero,0000000023003AC6

;; rf_pri_roscal_iq.isra.3: 23058C0C
;;   Called from:
;;     2305A4C8 (in rf_pri_roscal)
;;     2305A5A4 (in rf_pri_roscal)
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

l23058C34:
	c.lw	s1,124(a5)
	add	s6,s4,s2
	beq	s3,zero,0000000023058CB8

l23058C3E:
	and	a4,a5,s5
	slli	a5,s6,00000008
	c.or	a5,a4

l23058C48:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,00000000230583D2
	blt	zero,a0,0000000023058C5A

l23058C58:
	c.mv	s2,s6

l23058C5A:
	c.addi	s0,FFFFFFFF
	srli	s4,s4,00000001
	c.bnez	s0,0000000023058C34

l23058C62:
	c.lui	s5,FFFFC000
	addi	s4,zero,+0000003F
	lui	s1,00040001
	addi	s5,s5,+000000FF
	c.li	s6,0000000A
	c.li	s7,00000005

l23058C74:
	c.lw	s1,124(a5)
	beq	s3,zero,0000000023058CC2

l23058C7A:
	and	a4,a5,s5
	slli	a5,s2,00000008
	c.or	a5,a4

l23058C84:
	c.sw	s1,124(a5)
	addi	a1,zero,+00000400
	c.mv	a0,s3
	jal	ra,00000000230583D2
	c.slli	s0,01
	bge	zero,a0,0000000023058CCC

l23058C96:
	c.addi	s0,00000001
	c.andi	s0,0000000F
	c.addi	s2,FFFFFFFF
	bne	s0,s7,0000000023058CD4

l23058CA0:
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

l23058CB8:
	andi	a5,a5,-00000040
	or	a5,s6,a5
	c.j	0000000023058C48

l23058CC2:
	andi	a5,a5,-00000040
	or	a5,a5,s2
	c.j	0000000023058C84

l23058CCC:
	c.andi	s0,0000000F
	c.addi	s2,00000001
	beq	s0,s6,0000000023058CA0

l23058CD4:
	c.addi	s4,FFFFFFFF
	bne	s4,zero,0000000023058C74

l23058CDA:
	c.j	0000000023058CA0

;; rf_pri_chipv: 23058CDC
;;   Called from:
;;     2305AEBA (in rf_pri_init)
rf_pri_chipv proc
	c.bnez	a0,0000000023058DD0

l23058CDE:
	lui	a5,0004200E
	lui	a4,00000060
	addi	a5,a5,-0000034C
	c.addi	a4,00000003
	c.sw	a5,0(a4)
	lui	a3,0002307E
	c.li	a4,00000006
	lui	a2,00042017
	lui	a1,00042017
	sh	a4,a5,+00000004
	addi	a3,a3,-000005C4
	c.li	a4,0000001C
	addi	a2,a2,-00000514
	addi	a1,a1,-00000354
	addi	a6,zero,+000001DC

l23058D12:
	addi	a5,a4,-0000001C

l23058D16:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a4,a5,0000000023058D16

l23058D32:
	c.addi	a4,0000001C
	bne	a4,a6,0000000023058D12

l23058D38:
	lui	a3,00042017
	lui	a4,0002307E
	c.li	a5,00000000
	addi	a3,a3,-00000584
	addi	a4,a4,-000005FC
	addi	a2,zero,+00000038

l23058D4E:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023058D4E

l23058D60:
	lui	a5,0002307E
	addi	a5,a5,-00000244
	lui	a4,00042017
	addi	a4,a4,-00000194
	addi	a3,a5,+00000080

l23058D74:
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
	bne	a3,a5,0000000023058D74

l23058D9A:
	lui	a5,0004200E
	addi	a5,a5,-00000350
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

l23058DD0:
	c.li	a5,00000001
	bne	a0,a5,0000000023058EC2

l23058DD6:
	lui	a5,0004200E
	lui	a4,00000050
	addi	a5,a5,-0000034C
	c.addi	a4,00000005
	c.sw	a5,0(a4)
	lui	a3,0002307E
	c.li	a4,00000005
	lui	a2,00042017
	lui	a1,00042017
	sh	a4,a5,+00000004
	addi	a3,a3,-00000404
	c.li	a4,0000001C
	addi	a2,a2,-00000514
	addi	a1,a1,-00000354
	addi	a6,zero,+000001DC

l23058E0A:
	addi	a5,a4,-0000001C

l23058E0E:
	add	a0,a3,a5
	c.lw	a0,0(a0)
	add	a7,a2,a5
	sw	a0,a7,+00000000
	add	a7,a1,a5
	sw	a0,a7,+00000000
	c.addi	a5,00000004
	bne	a5,a4,0000000023058E0E

l23058E2A:
	addi	a4,a5,+0000001C
	bne	a4,a6,0000000023058E0A

l23058E32:
	lui	a3,00042017
	lui	a4,00042017
	c.li	a5,00000000
	addi	a3,a3,-00000584
	addi	a4,a4,-0000054C
	addi	a2,zero,+00000038

l23058E48:
	add	a0,a4,a5
	c.lw	a0,0(a0)
	add	a1,a3,a5
	c.addi	a5,00000004
	c.sw	a1,0(a0)
	bne	a5,a2,0000000023058E48

l23058E5A:
	lui	a5,0002307E
	addi	a5,a5,-000001C4
	lui	a4,00042017
	addi	a4,a4,-00000194
	addi	a3,a5,+00000080

l23058E6E:
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
	bne	a5,a3,0000000023058E6E

l23058E94:
	lui	a5,0004200E
	addi	a5,a5,-00000350
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

l23058EC2:
	c.jr	ra

;; rf_pri_update_tx_power_offset: 23058EC4
;;   Called from:
;;     23057BCA (in rfc_apply_tx_power_offset)
rf_pri_update_tx_power_offset proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.add	a1,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lb	s1,a1,+00000000
	lui	s0,00042017
	lui	a1,00042017
	c.li	s2,00000004
	addi	a2,zero,+000001C0
	addi	a1,a1,-00000354
	addi	a0,s0,-00000514
	jal	ra,000000002306CF80
	or	s3,s1,s2
	c.li	a5,FFFFFFF6
	xor	s1,s1,s2
	add	s1,s1,a5
	addi	a5,s0,-00000514
	addi	a3,a5,+000001C0

l23058F06:
	c.lw	a5,20(a4)
	c.addi	a5,0000001C
	c.add	a4,s3
	sw	a4,a5,+00000FF8
	lw	a4,a5,-00000004
	c.add	a4,s1
	sw	a4,a5,+00000FFC
	bne	a5,a3,0000000023058F06

l23058F1E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023057E7A

;; rf_pri_get_notch_param: 23058F2E
;;   Called from:
;;     230578C6 (in rfc_config_channel)
rf_pri_get_notch_param proc
	c.lui	a4,00001000
	addi	a4,a4,-00000658
	c.li	a5,0000000D
	bltu	a4,a0,0000000023058F48

l23058F3A:
	c.lui	a5,FFFFF000
	addi	a5,a5,+00000694
	c.add	a0,a5
	c.li	a5,00000005
	srl	a5,a0,a5

l23058F48:
	slli	a0,a5,00000003
	lui	a5,0004200D
	addi	a5,a5,+000006A4
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	sb	a4,a1,+00000000
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_param: 23058F62
;;   Called from:
;;     230578BA (in rfc_config_channel)
rf_pri_update_param proc
	lui	a5,0004200E
	sw	zero,a5,+000003AC
	lui	a5,0004200E
	sw	zero,a5,+000003B0
	lui	a5,0004200E
	sw	zero,a5,+000003A8
	lui	a5,0004200E
	sw	zero,a5,+00000428
	c.lui	a5,00001000
	addi	a4,a5,-00000695
	bgeu	a4,a0,0000000023059132

l23058F8C:
	addi	a4,a5,-00000690
	bgeu	a4,a0,0000000023059132

l23058F94:
	addi	a4,a5,-00000686
	bgeu	a4,a0,0000000023059126

l23058F9C:
	addi	a4,a5,-00000677
	bgeu	a4,a0,000000002305912A

l23058FA4:
	addi	a4,a5,-00000668
	bgeu	a4,a0,000000002305912E

l23058FAC:
	addi	a3,a5,-00000659
	c.li	a4,00000008
	c.li	a5,00000007
	bltu	a3,a0,0000000023059024

l23058FB8:
	c.li	a5,00000004

l23058FBA:
	lui	a4,0002307E
	addi	a3,a4,-000007E4
	slli	a2,a5,00000002
	c.add	a3,a2
	lw	a7,a3,+00000000
	addi	a4,a4,-000007E4
	c.li	a6,00000000
	beq	a7,a0,0000000023058FDA

l23058FD6:
	sub	a6,a0,a7

l23058FDA:
	c.addi	a5,00000001
	lui	a3,0002307D
	c.slli	a5,02
	addi	a3,a3,+000007EC
	add	a1,a3,a2
	c.add	a4,a5
	c.add	a3,a5
	lw	t1,a1,+00000000
	c.lw	a4,0(a1)
	c.lw	a3,0(a4)
	lui	a3,0002307E
	addi	a3,a3,-000007FC
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

l23059024:
	lui	a1,0004200D
	addi	a2,a1,+00000714
	addi	a3,a5,+0000000F
	c.sw	a2,16(a3)
	addi	a3,zero,+00000037
	c.sub	a3,a4
	addi	a7,a1,+00000714
	addi	t1,a1,+00000714
	c.li	a1,00000014
	c.sw	a2,20(a3)
	c.li	a6,00000000
	c.li	a3,0000000A
	sub	a5,a1,a5
	c.li	t3,FFFFFFF6

l2305904E:
	lw	a1,a7,+00000010
	c.add	a1,a6
	c.sub	a1,a5
	c.li	a6,00000000
	bge	a3,a1,0000000023059060

l2305905C:
	sub	a6,a1,a3

l23059060:
	bge	a3,a1,0000000023059066

l23059064:
	c.mv	a1,a3

l23059066:
	sw	a1,a7,+0000000C
	c.addi	a3,FFFFFFFB
	c.addi	a7,FFFFFFFC
	bne	a3,t3,000000002305904E

l23059072:
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

l23059094:
	c.lw	a2,20(a5)
	sub	a5,a5,a7
	c.add	a5,a4
	blt	t4,a5,0000000023059136

l230590A0:
	c.sw	a2,24(a5)
	c.lw	a2,24(a1)
	c.li	a7,00000000
	bge	a1,a3,00000000230590AE

l230590AA:
	sub	a7,a3,a1

l230590AE:
	bge	a1,a3,00000000230590B4

l230590B2:
	c.mv	a1,a3

l230590B4:
	c.sw	a2,24(a1)
	c.addi	a3,00000005
	c.addi	a2,00000004
	bne	a3,t3,0000000023059094

l230590BE:
	c.li	a5,0000000F
	sw	a5,t1,+00000010
	c.lui	a4,00001000
	addi	a5,zero,+00000033
	sw	a5,t1,+00000014
	addi	a4,a4,-0000067B
	lui	a5,0004200E
	addi	a5,a5,-0000034C
	lui	a3,00040001
	bltu	a4,a0,000000002305913A

l230590E2:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000002
	c.andi	a4,FFFFFFF8

l230590EA:
	c.or	a5,a4
	c.sw	a3,108(a5)
	c.lui	a5,00001000
	lui	a4,0004200E
	addi	a3,a5,-00000676
	addi	a4,a4,+00000420
	beq	a0,a3,00000000230591EA

l23059100:
	bltu	a3,a0,0000000023059166

l23059104:
	addi	a3,a5,-0000068A
	beq	a0,a3,00000000230591CC

l2305910C:
	bltu	a3,a0,0000000023059144

l23059110:
	addi	a3,a5,-00000694
	beq	a0,a3,00000000230591B6

l23059118:
	addi	a5,a5,-0000068F
	beq	a0,a5,00000000230591C2

l23059120:
	sw	zero,a4,+00000000
	c.jr	ra

l23059126:
	c.li	a5,00000001
	c.j	0000000023058FBA

l2305912A:
	c.li	a5,00000002
	c.j	0000000023058FBA

l2305912E:
	c.li	a5,00000003
	c.j	0000000023058FBA

l23059132:
	c.li	a5,00000000
	c.j	0000000023058FBA

l23059136:
	c.add	a5,a6
	c.j	00000000230590A0

l2305913A:
	c.lw	a3,108(a4)
	lhu	a5,a5,+00000004
	c.andi	a4,FFFFFFF8
	c.j	00000000230590EA

l23059144:
	addi	a3,a5,-00000680
	beq	a0,a3,00000000230591D6

l2305914C:
	addi	a3,a5,-0000067B
	beq	a0,a3,00000000230591E0

l23059154:
	addi	a5,a5,-00000685
	bne	a0,a5,0000000023059120

l2305915C:
	lui	a5,00042017
	lw	a5,a5,-00000578
	c.j	00000000230591BE

l23059166:
	addi	a3,a5,-00000662
	beq	a0,a3,0000000023059208

l2305916E:
	bltu	a3,a0,0000000023059194

l23059172:
	addi	a3,a5,-0000066C
	beq	a0,a3,00000000230591F4

l2305917A:
	addi	a3,a5,-00000667
	beq	a0,a3,00000000230591FE

l23059182:
	addi	a5,a5,-00000671
	bne	a0,a5,0000000023059120

l2305918A:
	lui	a5,00042017
	lw	a5,a5,-00000568
	c.j	00000000230591BE

l23059194:
	addi	a3,a5,-00000658
	beq	a0,a3,0000000023059212

l2305919C:
	addi	a3,a5,-0000064C
	beq	a0,a3,000000002305921C

l230591A4:
	addi	a5,a5,-0000065D
	bne	a0,a5,0000000023059120

l230591AC:
	lui	a5,00042017
	lw	a5,a5,-00000558
	c.j	00000000230591BE

l230591B6:
	lui	a5,00042017
	lw	a5,a5,-00000584

l230591BE:
	c.sw	a4,0(a5)
	c.jr	ra

l230591C2:
	lui	a5,00042017
	lw	a5,a5,-00000580
	c.j	00000000230591BE

l230591CC:
	lui	a5,00042017
	lw	a5,a5,-0000057C
	c.j	00000000230591BE

l230591D6:
	lui	a5,00042017
	lw	a5,a5,-00000574
	c.j	00000000230591BE

l230591E0:
	lui	a5,00042017
	lw	a5,a5,-00000570
	c.j	00000000230591BE

l230591EA:
	lui	a5,00042017
	lw	a5,a5,-0000056C
	c.j	00000000230591BE

l230591F4:
	lui	a5,00042017
	lw	a5,a5,-00000564
	c.j	00000000230591BE

l230591FE:
	lui	a5,00042017
	lw	a5,a5,-00000560
	c.j	00000000230591BE

l23059208:
	lui	a5,00042017
	lw	a5,a5,-0000055C
	c.j	00000000230591BE

l23059212:
	lui	a5,00042017
	lw	a5,a5,-00000554
	c.j	00000000230591BE

l2305921C:
	lui	a5,00042017
	lw	a5,a5,-00000550
	c.j	00000000230591BE

;; rf_pri_xtalfreq: 23059226
;;   Called from:
;;     2305725C (in rfc_init)
rf_pri_xtalfreq proc
	bne	a0,zero,000000002305942E

l2305922A:
	lui	a5,0004200D
	lui	a4,00021639
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a3,000A6E7A
	addi	a5,a5,-00000358
	addi	a4,a4,-00000319
	addi	a3,a3,+000006A7
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200E
	addi	a4,zero,+00000500
	sh	a4,a5,+00000CAE
	lui	a5,0004200D
	addi	a5,a5,+000006A4
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

l23059426:
	c.sw	a5,92(a4)

l23059428:
	sw	zero,a5,+00000064
	c.j	000000002305964A

l2305942E:
	c.li	a4,00000001
	bne	a0,a4,0000000023059650

l23059434:
	lui	a5,0004200D
	lui	a4,0001ED21
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a3,000A6F1A
	addi	a5,a5,-00000358
	addi	a4,a4,-0000030E
	addi	a3,a3,+000006B1
	c.sw	a5,0(a3)
	sh	a4,a5,+00000004
	lui	a5,0004200E
	addi	a4,zero,+0000056B
	sh	a4,a5,+00000CAE
	lui	a5,0004200D
	lui	a4,000005B9
	addi	a5,a5,+000006A4
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

l23059648:
	c.sw	a5,100(a4)

l2305964A:
	sw	zero,a5,+0000006C

l2305964E:
	c.jr	ra

l23059650:
	c.li	a5,00000002
	bne	a0,a5,0000000023059842

l23059656:
	lui	a5,0004200D
	lui	a3,000190AB
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a2,000A6EFA
	addi	a5,a5,-00000358
	addi	a3,a3,-00000310
	addi	a2,a2,+000006AF
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	lui	a5,0004200E
	addi	a3,zero,+000006AB
	sh	a3,a5,+00000CAE
	lui	a5,0004200D
	addi	a5,a5,+000006A4
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
	c.j	0000000023059648

l23059842:
	c.li	a5,00000003
	bne	a0,a5,0000000023059A44

l23059848:
	lui	a5,0004200D
	lui	a3,00014DE4
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a2,000A6E7A
	addi	a5,a5,-00000358
	addi	a3,a3,-00000319
	addi	a2,a2,+000006A7
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	lui	a3,0004200E
	sh	a5,a3,+00000CAE
	lui	a5,0004200D
	addi	a5,a5,+000006A4
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
	c.j	0000000023059426

l23059A44:
	c.li	a5,00000004
	bne	a0,a5,0000000023059C48

l23059A4A:
	lui	a5,0004200D
	lui	a3,00014089
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a2,000A6E0A
	addi	a5,a5,-00000358
	addi	a3,a3,-00000320
	addi	a2,a2,+000006A0
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	lui	a3,0004200E
	addi	a5,a5,-000007AB
	sh	a5,a3,+00000CAE
	lui	a5,0004200D
	lui	a3,000002DC
	addi	a5,a5,+000006A4
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

l23059C48:
	c.li	a5,00000005
	bne	a0,a5,000000002305964E

l23059C4E:
	lui	a5,0004200D
	lui	a3,0000F690
	addi	a5,a5,+00000650
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
	addi	a5,a5,+00000624
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
	lui	a5,0004200E
	lui	a2,000A6E2A
	addi	a5,a5,-00000358
	addi	a3,a3,-0000031E
	addi	a2,a2,+000006A2
	c.sw	a5,0(a2)
	sh	a3,a5,+00000004
	c.lui	a5,00001000
	addi	a5,a5,-0000052B
	lui	a3,0004200E
	sh	a5,a3,+00000CAE
	lui	a5,0004200D
	addi	a5,a5,+000006A4
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
	jal	zero,0000000023059428

;; rf_pri_get_vco_freq_cw: 23059E4A
;;   Called from:
;;     230573B8 (in rfc_init)
rf_pri_get_vco_freq_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002306C988
	lui	a5,0002307D
	lw	a2,a5,-00000218
	lw	a3,a5,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C718
	c.li	a5,00000014
	bge	a5,a0,0000000023059E78

l23059E76:
	c.li	a0,00000014

l23059E78:
	lui	a5,0004200E
	lw	a5,a5,-00000344
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	andi	a0,a0,+000000FF
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_vco_idac_cw: 23059E94
;;   Called from:
;;     230573C0 (in rfc_init)
rf_pri_get_vco_idac_cw proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000069C
	c.add	a0,a5
	c.addi	sp,FFFFFFF0
	c.srli	a0,00000002
	c.swsp	ra,00000084
	jal	ra,000000002306C988
	lui	a5,0002307D
	lw	a2,a5,-00000218
	lw	a3,a5,-00000214
	jal	ra,0000000023069DA8
	jal	ra,000000002306C718
	c.li	a5,00000014
	bge	a5,a0,0000000023059EC2

l23059EC0:
	c.li	a0,00000014

l23059EC2:
	lui	a5,0004200E
	lw	a5,a5,-00000344
	c.addi	a0,00000008
	c.slli	a0,01
	c.add	a0,a5
	lhu	a0,a0,+0000000C
	c.lwsp	a2,00000020
	c.srli	a0,00000008
	c.andi	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; rf_pri_get_txgain_max: 23059EDE
;;   Called from:
;;     23056944 (in trpc_init)
;;     23056AA2 (in trpc_update_vs_channel)
;;     23056ACC (in trpc_update_vs_temperature)
rf_pri_get_txgain_max proc
	lui	a4,0004200E
	lui	a5,00042017
	lw	a0,a4,+00000420
	lw	a5,a5,-000004FC
	lui	a4,0004200E
	c.add	a5,a0
	lw	a0,a4,+00000424
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_min: 23059EFC
;;   Called from:
;;     2305694C (in trpc_init)
;;     23056AAA (in trpc_update_vs_channel)
;;     23056AD4 (in trpc_update_vs_temperature)
rf_pri_get_txgain_min proc
	lui	a4,0004200E
	lui	a5,00042017
	lw	a0,a4,+00000420
	lw	a5,a5,-00000358
	lui	a4,0004200E
	c.add	a5,a0
	lw	a0,a4,+00000424
	c.add	a0,a5
	c.jr	ra

;; rf_pri_get_txgain_index: 23059F1A
;;   Called from:
;;     23057B16 (in rfc_get_power_level)
rf_pri_get_txgain_index proc
	c.bnez	a1,0000000023059F1E

l23059F1C:
	c.addi	a0,FFFFFFE2

l23059F1E:
	lui	a5,0004200E
	lw	a1,a5,+00000420
	lui	a4,00042017
	lui	a5,0004200E
	lw	a6,a5,+00000424
	addi	a4,a4,-00000514
	c.li	a5,00000000
	c.li	a2,00000010

l23059F3A:
	c.lw	a4,24(a3)
	c.add	a3,a1
	c.add	a3,a6
	bge	a0,a3,0000000023059F4E

l23059F44:
	c.addi	a5,00000001
	c.addi	a4,0000001C
	bne	a5,a2,0000000023059F3A

l23059F4C:
	c.li	a5,0000000F

l23059F4E:
	c.mv	a0,a5
	c.jr	ra

;; rf_pri_query_txgain_table: 23059F52
;;   Called from:
;;     2305740C (in rfc_init)
;;     2305743E (in rfc_init)
;;     23057478 (in rfc_init)
;;     230574AC (in rfc_init)
;;     230574D2 (in rfc_init)
;;     230574F8 (in rfc_init)
;;     2305751E (in rfc_init)
;;     23057544 (in rfc_init)
;;     23057568 (in rfc_init)
;;     2305758A (in rfc_init)
;;     230575B0 (in rfc_init)
;;     230575D6 (in rfc_init)
;;     230575FE (in rfc_init)
;;     23057626 (in rfc_init)
;;     2305764E (in rfc_init)
;;     23057676 (in rfc_init)
;;     23057BD8 (in rfc_apply_tx_power_offset)
;;     23057C0A (in rfc_apply_tx_power_offset)
;;     23057C44 (in rfc_apply_tx_power_offset)
;;     23057C74 (in rfc_apply_tx_power_offset)
;;     23057C9A (in rfc_apply_tx_power_offset)
;;     23057CC0 (in rfc_apply_tx_power_offset)
;;     23057CE6 (in rfc_apply_tx_power_offset)
;;     23057D0C (in rfc_apply_tx_power_offset)
;;     23057D30 (in rfc_apply_tx_power_offset)
;;     23057D52 (in rfc_apply_tx_power_offset)
;;     23057D78 (in rfc_apply_tx_power_offset)
;;     23057D9E (in rfc_apply_tx_power_offset)
;;     23057DC6 (in rfc_apply_tx_power_offset)
;;     23057DEE (in rfc_apply_tx_power_offset)
;;     23057E16 (in rfc_apply_tx_power_offset)
;;     23057E3E (in rfc_apply_tx_power_offset)
rf_pri_query_txgain_table proc
	c.li	a5,0000000F
	bgeu	a5,a0,0000000023059F5A

l23059F58:
	c.li	a0,0000000F

l23059F5A:
	srli	a4,a0,00000001
	c.li	a5,00000007
	c.sub	a5,a4
	c.sw	a1,0(a5)
	c.li	a5,0000001C
	add	a0,a0,a5
	lui	a5,00042017
	addi	a5,a5,-00000514
	c.add	a0,a5
	c.lw	a0,20(a5)
	c.sw	a2,0(a5)
	c.jr	ra

;; rf_pri_update_dvga_os: 23059F7A
;;   Called from:
;;     23059FEA (in rf_pri_tx_gain_comp)
rf_pri_update_dvga_os proc
	lui	a5,00042017
	lui	a2,0004200D
	addi	a5,a5,-00000514
	c.li	a4,00000000
	addi	a2,a2,+00000748
	c.li	a1,00000010

l23059F8E:
	c.lw	a5,20(a3)
	add	a6,a2,a4
	c.addi	a4,00000001
	c.add	a3,a0
	sb	a3,a6,+00000000
	c.addi	a5,0000001C
	bne	a4,a1,0000000023059F8E

l23059FA2:
	c.jr	ra

;; rf_pri_tx_gain_comp: 23059FA4
;;   Called from:
;;     23056B30 (in phy_tcal_txpwr)
rf_pri_tx_gain_comp proc
	lui	a6,0004200E
	lw	a5,a6,+00000428
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a4,00000001
	addi	a6,a6,+00000428
	bne	a5,a4,0000000023059FFE

l23059FBA:
	lui	a5,0004200E
	lw	a5,a5,+000003A4
	bge	a0,a5,000000002305A016

l23059FC6:
	c.addi	a5,FFFFFFFB
	bge	a5,a0,000000002305A016

l23059FCC:
	lui	a5,0004200E
	lw	a5,a5,+000003AC
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200E
	sw	a5,a4,+00000424
	lui	a5,0004200E
	lb	a0,a5,+000003A8

l23059FEA:
	jal	ra,0000000023059F7A
	c.lwsp	a2,00000020
	lui	a0,0004200D
	addi	a0,a0,+00000748
	c.addi	sp,00000010
	jal	zero,0000000023057B22

l23059FFE:
	c.li	a4,FFFFFFFF
	bne	a5,a4,000000002305A016

l2305A004:
	lui	a5,0004200E
	lw	a5,a5,+000003A4
	bge	a5,a0,000000002305A016

l2305A010:
	c.addi	a5,00000005
	blt	a0,a5,0000000023059FCC

l2305A016:
	lui	a2,0004200D
	addi	a5,a2,+00000714
	c.li	a4,0000000C
	addi	a2,a2,+00000714
	c.li	a3,FFFFFFFF

l2305A026:
	c.lw	a5,48(a1)
	bge	a0,a1,000000002305A034

l2305A02C:
	c.addi	a4,FFFFFFFF
	c.addi	a5,FFFFFFFC
	bne	a4,a3,000000002305A026

l2305A034:
	bge	a4,zero,000000002305A03A

l2305A038:
	c.li	a4,00000000

l2305A03A:
	slli	a3,a4,00000002
	c.add	a3,a2
	lui	a1,0004200E
	addi	a7,zero,+00000022
	addi	a5,a4,-00000004
	c.lw	a3,0(a3)
	addi	a1,a1,+000003A4
	bge	a7,a0,000000002305A0B2

l2305A056:
	addi	a0,zero,+00000023
	blt	a0,a3,000000002305A068

l2305A05E:
	c.addi	a4,00000001
	slli	a3,a4,00000002
	c.add	a3,a2
	c.lw	a3,0(a3)

l2305A068:
	c.sw	a1,0(a3)

l2305A06A:
	lui	a4,0004200E
	lw	a3,a4,+000003B0
	addi	a4,a4,+000003B0
	bge	a3,a5,000000002305A0CE

l2305A07A:
	c.li	a3,00000001

l2305A07C:
	sw	a3,a6,+00000000

l2305A080:
	c.sw	a4,0(a5)
	bge	zero,a5,000000002305A0D6

l2305A086:
	c.addi	a5,00000001
	andi	a0,a5,+00000001
	c.bnez	a0,000000002305A090

l2305A08E:
	c.li	a0,FFFFFFFF

l2305A090:
	c.srai	a5,00000001

l2305A092:
	lui	a4,0004200E
	sw	a5,a4,+000003AC
	lui	a4,0004200E
	sw	a0,a4,+000003A8
	c.li	a4,FFFFFFF6
	add	a5,a5,a4
	lui	a4,0004200E
	sw	a5,a4,+00000424
	c.j	0000000023059FEA

l2305A0B2:
	blt	a3,a0,000000002305A0BC

l2305A0B6:
	addi	a5,a4,-00000005
	c.j	000000002305A068

l2305A0BC:
	c.addi	a4,00000001
	c.slli	a4,02
	c.add	a4,a2
	c.lw	a4,0(a4)
	bge	a7,a4,000000002305A0CA

l2305A0C8:
	c.mv	a4,a3

l2305A0CA:
	c.sw	a1,0(a4)
	c.j	000000002305A06A

l2305A0CE:
	bge	a5,a3,000000002305A080

l2305A0D2:
	c.li	a3,FFFFFFFF
	c.j	000000002305A07C

l2305A0D6:
	c.li	a0,00000000
	c.beqz	a5,000000002305A092

l2305A0DA:
	andi	a4,a5,+00000001
	c.li	a0,FFFFFFFF
	c.beqz	a4,000000002305A0E4

l2305A0E2:
	c.li	a0,00000001

l2305A0E4:
	c.addi	a5,FFFFFFFF
	c.li	a4,00000002
	xor	a5,a5,a4
	c.j	000000002305A092

;; rf_pri_txcal: 2305A0EE
;;   Called from:
;;     2305AD18 (in rf_pri_full_cal)
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
	jal	ra,00000000230580C4
	c.li	a0,00000005
	jal	ra,0000000023058044
	jal	ra,0000000023058AC0
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
	lui	a5,0004200E
	lhu	a5,a5,-0000034C
	lui	s1,000FFC10
	c.li	s2,00000007
	c.or	a5,a4
	c.sw	s0,108(a5)
	jal	ra,000000002305890A
	lui	a5,00010000
	lui	a6,00042017
	lui	a7,00042017
	c.addi	a5,FFFFFFFF
	addi	s3,a6,-00000194
	addi	s8,a7,-00000514
	c.swsp	a5,00000084
	c.addi	s4,FFFFFFFF
	c.addi	s5,FFFFFFFF
	c.addi	s6,FFFFFFFF
	c.addi	s7,FFFFFFFF
	c.addi	s1,FFFFFFFF

l2305A1A0:
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
	auipc	ra,0001EFB2
	jalr	ra,ra,+00000316
	lw	s9,s3,+0000000C
	srli	s10,s9,00000001

l2305A200:
	lw	a5,s0,+00000214
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000214
	lw	a5,s0,+00000218
	andi	a5,a5,-00000800
	or	a5,s9,a5
	sw	a5,s0,+00000218
	jal	ra,0000000023058320
	jal	ra,000000002305839C
	c.li	a0,0000000A
	auipc	ra,0001EFB2
	jalr	ra,ra,+000002DC
	addi	a1,zero,+00000400
	c.li	a0,00000001
	jal	ra,00000000230583D2
	srai	s11,a0,0000000A
	lui	a5,0002307E
	c.mv	a3,s11
	c.mv	a2,s10
	c.mv	a1,s9
	addi	a0,a5,-00000668
	jal	ra,0000000023003AC6
	addi	a4,zero,+00000140
	addi	t1,zero,+000000BF
	bge	a4,s11,000000002305A26C

l2305A25E:
	sub	s9,s9,s10

l2305A262:
	beq	s10,zero,000000002305A274

l2305A266:
	srli	s10,s10,00000001
	c.j	000000002305A200

l2305A26C:
	blt	t1,s11,000000002305A274

l2305A270:
	c.add	s9,s10
	c.j	000000002305A262

l2305A274:
	c.lui	a1,00001000
	c.li	a0,00000001
	jal	ra,00000000230583D2
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000000
	jal	ra,0000000023058800
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000000
	jal	ra,0000000023058784
	addi	a3,zero,+0000003D
	c.li	a2,00000010
	addi	a1,zero,+00000020
	c.li	a0,00000001
	jal	ra,0000000023058800
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
	jal	ra,0000000023058800
	c.mv	a1,a0
	c.swsp	a0,0000000C
	c.li	a0,00000000
	jal	ra,0000000023058784
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000080
	addi	a1,zero,+00000400
	c.li	a0,00000002
	jal	ra,0000000023058800
	c.mv	s9,a0
	c.mv	a1,a0
	c.li	a0,00000002
	jal	ra,0000000023058784
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,0000000023058800
	c.mv	a1,a0
	c.li	a0,00000003
	jal	ra,0000000023058784
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000040
	c.mv	a1,s9
	c.li	a0,00000002
	jal	ra,0000000023058800
	c.mv	a1,a0
	c.swsp	a0,00000088
	c.li	a0,00000002
	jal	ra,0000000023058784
	addi	a3,zero,+0000007A
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,0000000023058800
	c.mv	a1,a0
	c.swsp	a0,00000008
	c.li	a0,00000003
	jal	ra,0000000023058784
	lui	s11,0004200E
	lw	a3,s11,-00000344
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
	lui	a0,0002307E
	andi	a3,a3,-00000400
	andi	a2,a4,+000003FF
	c.or	a3,a2
	c.sw	a5,12(a3)
	c.mv	a2,t3
	c.mv	a3,t4
	c.mv	a1,t1
	addi	a0,a0,-00000644
	jal	ra,0000000023003AC6
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s3,00000010
	addi	s8,s8,+00000038
	bne	s2,a5,000000002305A1A0

l2305A3B4:
	jal	ra,0000000023058436
	c.lw	s0,28(a5)
	c.lui	a4,FFFFD000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.sw	s0,28(a5)
	jal	ra,00000000230581F2
	c.lw	s0,20(a5)
	lui	a4,00000F00
	c.or	a5,a4
	c.sw	s0,20(a5)
	c.lw	s0,112(a5)
	lw	a3,s11,-00000344
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
	lw	a4,s11,-00000344
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

;; rf_pri_roscal: 2305A44A
;;   Called from:
;;     2305AD10 (in rf_pri_full_cal)
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
	c.bnez	a3,000000002305A490

l2305A476:
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

l2305A490:
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s0,20(a5)
	jal	ra,00000000230580C4
	c.li	a0,00000003
	jal	ra,0000000023058044
	c.lw	s0,28(a5)
	lui	s1,0004200E
	lui	s5,000FFC10
	ori	a5,a5,+00000200
	c.sw	s0,28(a5)
	jal	ra,0000000023058AC0
	c.lw	s0,72(a5)
	c.lui	a4,FFFF9000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00006000
	addi	a4,a4,+00000300
	c.or	a5,a4
	c.sw	s0,72(a5)
	c.li	a0,00000001
	jal	ra,0000000023058C0C
	lw	a4,s1,-00000344
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
	lui	a0,0002307E
	and	a5,a5,s5
	or	a5,a5,s4
	sw	a5,s0,+0000016C
	addi	a0,a0,-00000708
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	lui	a0,0002307E
	c.mv	a1,s2
	c.lw	a4,88(a5)
	addi	a0,a0,-000006F4
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
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	lui	a0,0002307E
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,-000006E0
	addi	s6,s6,+000000FF
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s5,a5,s5
	or	s4,s4,s5
	sw	s4,s0,+00000168
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	lui	a0,0002307E
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,-000006CC
	c.lui	s4,FFFFF000
	andi	a5,a5,-00000040
	or	a5,a5,s3
	c.sw	a4,72(a5)
	lw	a5,s0,+00000168
	addi	s4,s4,+0000003F
	andi	a5,a5,-00000040
	or	a5,s2,a5
	sw	a5,s0,+00000168
	jal	ra,0000000023003AC6
	c.li	a0,00000000
	jal	ra,0000000023058C0C
	lw	a4,s1,-00000344
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
	lui	a0,0002307E
	and	a5,a5,s8
	or	a5,a5,s7
	sw	a5,s0,+0000016C
	addi	a0,a0,-000006B8
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	slli	s5,s2,00000008
	lui	a0,0002307E
	c.lw	a4,88(a5)
	c.mv	a1,s2
	addi	a0,a0,-000006A4
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,88(a5)
	lw	a5,s0,+0000016C
	and	a5,a5,s6
	or	a5,a5,s5
	sw	a5,s0,+0000016C
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	lui	a0,0002307E
	c.mv	a1,s2
	c.lw	a4,80(a5)
	addi	a0,a0,-00000690
	and	a5,a5,s4
	or	a5,a5,s3
	c.sw	a4,80(a5)
	lw	a5,s0,+00000168
	and	s8,a5,s8
	or	s7,s7,s8
	sw	s7,s0,+00000168
	jal	ra,0000000023003AC6
	lw	a4,s1,-00000344
	lui	a0,0002307E
	c.mv	a1,s2
	c.lw	a4,72(a5)
	addi	a0,a0,-0000067C
	and	s4,a5,s4
	or	s3,s4,s3
	sw	s3,a4,+00000048
	lw	a5,s0,+00000168
	and	s6,a5,s6
	or	s5,s5,s6
	sw	s5,s0,+00000168
	jal	ra,0000000023003AC6
	jal	ra,00000000230581F2
	c.lw	s0,20(a5)
	c.lui	a4,0000C000
	c.or	a5,a4
	c.j	000000002305A476

;; rf_pri_rccal: 2305A67E
;;   Called from:
;;     2305AD14 (in rf_pri_full_cal)
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
	c.bnez	a3,000000002305A6B4

l2305A6A4:
	sw	a5,s2,+00000014

l2305A6A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305A6B4:
	lui	a4,00000040
	c.or	a5,a4
	sw	a5,s2,+00000014
	jal	ra,00000000230580C4
	c.li	a0,00000004
	jal	ra,0000000023058044
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
	jal	ra,0000000023058948
	c.mv	s1,a0
	c.li	a0,00000000
	jal	ra,0000000023058948
	lw	a4,s2,+00000080
	lui	s2,0004200E
	lw	a5,s2,-00000344
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
	lui	a0,0002307E
	andi	a4,a4,+0000003F
	andi	a3,a3,+0000003F
	andi	a2,a2,+0000003F
	andi	a1,a1,+0000003F
	addi	a0,a0,-0000075C
	jal	ra,0000000023003AC6
	lw	a4,s2,-00000344
	c.lw	a4,8(a5)
	c.lw	a4,8(a3)
	andi	a5,a5,+0000003F
	c.srli	a3,00000006
	andi	a3,a3,+0000003F
	bgeu	a5,a3,000000002305A7B2

l2305A7AA:
	c.lw	a4,8(a5)
	c.srli	a5,00000006
	andi	a5,a5,+0000003F

l2305A7B2:
	c.lw	a4,8(a3)
	c.srli	a3,0000000C
	andi	a3,a3,+0000003F
	bgeu	a5,a3,000000002305A7C6

l2305A7BE:
	c.lw	a4,8(a5)
	c.srli	a5,0000000C
	andi	a5,a5,+0000003F

l2305A7C6:
	c.lw	a4,8(a3)
	c.srli	a3,00000012
	andi	a3,a3,+0000003F
	bgeu	a5,a3,000000002305A7DA

l2305A7D2:
	c.lw	a4,8(a5)
	c.srli	a5,00000012
	andi	a5,a5,+0000003F

l2305A7DA:
	addi	a2,zero,+00000027
	c.li	a3,00000018
	bge	a2,a5,000000002305A7EA

l2305A7E4:
	addi	a3,zero,+0000003F
	c.sub	a3,a5

l2305A7EA:
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
	jal	ra,0000000023058732
	lw	a5,s2,-00000344
	c.li	a0,00000000
	c.lw	a5,8(a1)
	c.srli	a1,00000006
	andi	a1,a1,+0000003F
	jal	ra,000000002305875A
	lw	a5,s2,-00000344
	lui	a0,0002307E
	addi	a0,a0,-00000760
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
	jal	ra,0000000023003AC6
	jal	ra,00000000230581F2
	c.li	a5,00000002
	beq	s1,a5,000000002305A8A6

l2305A8A2:
	bne	s0,a5,000000002305A8BE

l2305A8A6:
	lui	a3,00040001
	c.lw	a3,20(a5)
	lui	a4,000FFF40
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000080
	c.or	a5,a4
	c.sw	a3,20(a5)
	c.j	000000002305A6A8

l2305A8BE:
	lui	a4,00040001
	c.lw	a4,20(a5)
	lui	a3,000000C0
	c.or	a5,a3
	c.sw	a4,20(a5)
	c.j	000000002305A6A8

;; rf_pri_lo_acal: 2305A8CE
;;   Called from:
;;     2305AD0C (in rf_pri_full_cal)
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
	jal	ra,00000000230580C4
	c.li	a0,00000006
	c.lui	s5,FFFFE000
	jal	ra,0000000023058044
	addi	s3,s3,+00000650
	c.li	s2,00000000
	lui	s0,00040001
	c.addi	s4,FFFFFFFF
	lui	s6,0004200E
	addi	s5,s5,+000000FF

l2305A91E:
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
	lw	a5,s6,-00000344
	c.add	a5,a3
	lhu	a5,a5,+0000000C
	andi	a5,a5,+000000FF
	c.or	a5,a4
	sw	a5,s0,+000000A0
	lw	a5,s3,+00000000
	sw	a5,s0,+000000C4
	auipc	ra,0001EFB2
	jalr	ra,ra,-00000476

l2305A984:
	lw	a5,s0,+000000A0
	slli	a3,s1,00000010
	c.li	a0,00000001
	and	a5,a5,s4
	c.or	a5,a3
	sw	a5,s0,+000000A0
	bne	s8,s9,000000002305AA18

l2305A99C:
	auipc	ra,0001EFB2
	jalr	ra,ra,-00000496
	lw	a5,s0,+000000A4
	slli	a4,a5,00000013
	blt	a4,zero,000000002305A9B8

l2305A9B0:
	c.li	a5,0000001E
	bltu	a5,s1,000000002305A9B8

l2305A9B6:
	c.addi	s1,00000001

l2305A9B8:
	lw	a5,s6,-00000344
	c.slli	s7,01
	andi	a4,s1,+0000001F
	c.add	s7,a5
	lhu	a5,s7,+0000000C
	c.slli	a4,08
	lui	a0,0002307E
	and	a5,a5,s5
	c.or	a5,a4
	sh	a5,s7,+0000000C
	c.mv	a1,s2
	c.mv	a2,s1
	addi	a0,a0,-00000780
	jal	ra,0000000023003AC6
	c.addi	s2,00000001
	c.li	a5,00000015
	c.addi	s3,00000004
	bne	s2,a5,000000002305A91E

l2305A9EE:
	jal	ra,00000000230581F2
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

l2305AA18:
	auipc	ra,0001EFB2
	jalr	ra,ra,-00000512
	lw	a4,s0,+000000A4
	c.li	a5,00000001
	sll	a5,a5,s8
	slli	a3,a4,00000013
	bge	a3,zero,000000002305AA38

l2305AA32:
	c.sub	s1,a5

l2305AA34:
	c.addi	s8,FFFFFFFF
	c.j	000000002305A984

l2305AA38:
	c.add	s1,a5
	c.j	000000002305AA34

;; rf_pri_fcal: 2305AA3C
;;   Called from:
;;     2305AD08 (in rf_pri_full_cal)
rf_pri_fcal proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200E
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
	addi	a5,a5,-00000358
	lhu	s4,a5,+00000000
	lhu	s5,a5,+00000002
	lhu	s3,a5,+00000004
	c.lw	s0,20(a5)
	c.lui	s1,FFFF0000
	c.lui	s2,00010000
	andi	a5,a5,-00000031
	ori	a5,a5,+00000010
	c.sw	s0,20(a5)
	jal	ra,00000000230580C4
	c.li	a0,00000007
	jal	ra,0000000023058044
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
	lui	s7,0002307E
	and	a4,a5,s1
	lui	a5,0004200E
	lhu	a5,a5,-00000352
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
	auipc	ra,0001EFB2
	jalr	ra,ra,-000005F4
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001EFB2
	jalr	ra,ra,-00000616
	lw	a5,s0,+000000A4
	addi	a0,zero,+00000032
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000002
	sw	a5,s0,+000000A4
	auipc	ra,0001EFB2
	jalr	ra,ra,-00000630

l2305AB3E:
	c.li	s2,00000006
	addi	s0,zero,+00000080

l2305AB44:
	beq	s2,s9,000000002305AB56

l2305AB48:
	c.mv	a0,s0
	jal	ra,00000000230586D8
	bltu	a0,s4,000000002305ABC0

l2305AB52:
	bltu	s5,a0,000000002305ABCE

l2305AB56:
	bgeu	s8,s0,000000002305ABD6

l2305AB5A:
	addi	s1,s0,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,00000000230586D8
	addi	s2,s0,-00000026
	lui	a5,00042017
	c.slli	s2,10
	sh	a0,a5,+000009CC
	addi	s4,a5,-00000634
	srli	s2,s2,00000010
	addi	s5,a5,-00000634

l2305AB82:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a0,s1
	jal	ra,00000000230586D8
	sh	a0,s4,+00000002
	bltu	s3,a0,000000002305AB9C

l2305AB96:
	c.addi	s4,00000002
	bne	s1,s2,000000002305AB82

l2305AB9C:
	lui	a2,0004200D
	lui	s1,00042017
	c.li	a3,00000000
	c.li	a5,00000000
	addi	a2,a2,+00000624
	addi	s1,s1,-000005E4
	c.addi	s0,00000002
	addi	a6,zero,+0000002A

l2305ABB6:
	add	a4,a2,a3
	lhu	a0,a4,+00000000
	c.j	000000002305AC34

l2305ABC0:
	sll	a1,s6,s2
	c.sub	s0,a1

l2305ABC6:
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s2,FFFFFFFF
	c.j	000000002305AB44

l2305ABCE:
	sll	a1,s6,s2
	c.add	s0,a1
	c.j	000000002305ABC6

l2305ABD6:
	c.mv	a1,s0
	addi	a0,s7,-000007B8
	lui	s0,00040001
	jal	ra,0000000023003AC6
	lw	a5,s0,+000000C0
	c.lui	s2,00010000
	addi	a0,zero,+00000032
	c.and	a5,s1
	sw	a5,s0,+000000C0
	lw	a4,s0,+000000B8
	or	a4,a4,s2
	sw	a4,s0,+000000B8
	auipc	ra,0001EFB2
	jalr	ra,ra,-000006FA
	lw	a5,s0,+000000C0
	addi	a0,zero,+00000032
	or	a5,a5,s2
	sw	a5,s0,+000000C0
	lw	a5,s0,+000000B8
	c.and	a5,s1
	sw	a5,s0,+000000B8
	auipc	ra,0001EFB2
	jalr	ra,ra,-0000071C
	c.j	000000002305AB3E

l2305AC2C:
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010

l2305AC34:
	slli	a1,a5,00000001
	c.add	a1,s5
	lhu	a1,a1,+00000000
	slli	a4,a5,00000010
	c.srli	a4,00000010
	bltu	a1,a0,000000002305AC2C

l2305AC48:
	add	a1,s1,a3
	sub	a0,s0,a4
	sh	a0,a1,+00000000
	bge	zero,a5,000000002305ACD2

l2305AC58:
	addi	a5,a4,-00000001
	c.slli	a5,10
	c.srai	a5,00000010

l2305AC60:
	c.addi	a3,00000002
	bne	a3,a6,000000002305ABB6

l2305AC66:
	c.mv	s0,s1
	jal	ra,00000000230581F2
	c.li	s1,00000000
	lui	s4,0004200E
	lui	s3,0002307E
	c.li	s2,00000015

l2305AC78:
	lw	a4,s4,-00000344
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
	addi	a0,s3,-000007A4
	jal	ra,0000000023003AC6
	c.addi	s0,00000002
	bne	s1,s2,000000002305AC78

l2305ACAC:
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

l2305ACD2:
	c.li	a5,00000000
	c.j	000000002305AC60

;; rf_pri_full_cal: 2305ACD6
;;   Called from:
;;     2305B0AC (in rf_pri_init)
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
	jal	ra,000000002305839C
	jal	ra,000000002305AA3C
	jal	ra,000000002305A8CE
	jal	ra,000000002305A44A
	jal	ra,000000002305A67E
	jal	ra,000000002305A0EE
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

;; rf_pri_restore_cal_reg: 2305AD48
;;   Called from:
;;     2305B09E (in rf_pri_init)
rf_pri_restore_cal_reg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	lw	a2,s1,-00000344
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
	lw	a1,s1,-00000344
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
	lw	a3,s1,-00000344
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
	jal	ra,0000000023058436
	lw	a3,s1,-00000344
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
	lw	a3,s1,-00000344
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

;; rf_pri_init: 2305AEAC
;;   Called from:
;;     23057272 (in rfc_init)
rf_pri_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,0000000023058CDC
	lui	a4,0004200E
	addi	a4,a4,+000003B4
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
	c.bnez	a5,000000002305AF22

l2305AF18:
	c.li	a0,0000000A
	auipc	ra,0001EFB1
	jalr	ra,ra,+000005F6

l2305AF22:
	lui	a2,0004200E
	addi	a2,a2,-00000350
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
	jal	ra,0000000023057E7A
	lw	a5,s1,+00000404
	or	a5,a5,s2
	sw	a5,s1,+00000404
	lw	a5,s1,+0000041C
	ori	a5,a5,+000000FF
	sw	a5,s1,+0000041C
	c.bnez	s0,000000002305B0A2

l2305B094:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002305AD48

l2305B0A2:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002305ACD6

;; rf_pri_update_power_offset: 2305B0B0
;;   Called from:
;;     230493C4 (in bl_tpc_update_power_table)
rf_pri_update_power_offset proc
	lui	a3,00042017
	lui	a4,00042017
	c.li	a5,00000000
	addi	a3,a3,-0000054C
	addi	a4,a4,-00000584
	addi	a1,zero,+00000038

l2305B0C6:
	add	a2,a0,a5
	c.lw	a2,0(a2)
	add	a6,a3,a5
	sw	a2,a6,+00000000
	add	a6,a4,a5
	sw	a2,a6,+00000000
	c.addi	a5,00000004
	bne	a5,a1,000000002305B0C6

l2305B0E2:
	c.jr	ra

;; phyif_utils_decode: 2305B0E4
;;   Called from:
;;     2304BA3C (in rxu_mgt_frame_check)
phyif_utils_decode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,+00000006
	c.li	a3,00000001
	c.mv	s0,a1
	c.andi	a4,00000007
	lbu	a5,a0,+00000013
	bgeu	a3,a4,000000002305B126

l2305B0FC:
	lbu	a0,a0,+00000014
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,10
	c.srai	a0,00000010
	addi	a5,zero,+0000007A
	xor	a0,a0,a5

l2305B110:
	fcvt.s.w	fa5,a0
	c.lwsp	a2,00000020
	fcvt.w.s	a0,fa5
	sb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2305B126:
	c.lw	a0,0(a4)
	c.li	a3,00000003
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	bltu	a3,a4,000000002305B0FC

l2305B132:
	slli	a0,a5,00000018
	c.srai	a0,00000018
	sub	a0,zero,a0
	jal	ra,000000002306C8DC
	lui	a5,00023073
	lw	a2,a5,+00000018
	lw	a3,a5,+0000001C
	jal	ra,000000002306B444
	jal	ra,000000002306C718
	c.j	000000002305B110

;; sysctrl_init: 2305B156
;;   Called from:
;;     23055134 (in wifi_main)
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

;; intc_spurious: 2305B176
intc_spurious proc
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000036
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	zero,0000000023054FF4

;; intc_enable_irq: 2305B18E
;;   Called from:
;;     2305B1AC (in intc_init)
;;     2305B1B4 (in intc_init)
;;     2305B1BC (in intc_init)
;;     2305B1C2 (in intc_init)
;;     2305B1C8 (in intc_init)
;;     2305B1CE (in intc_init)
;;     2305B1D4 (in intc_init)
;;     2305B1DA (in intc_init)
;;     2305B1E0 (in intc_init)
;;     2305B1E6 (in intc_init)
;;     2305B1EC (in intc_init)
;;     2305B1F4 (in intc_init)
;;     2305B1FC (in intc_init)
;;     2305B204 (in intc_init)
;;     2305B20C (in intc_init)
;;     2305B214 (in intc_init)
;;     2305B21C (in intc_init)
;;     2305B224 (in intc_init)
;;     2305B22C (in intc_init)
;;     2305B232 (in intc_init)
;;     2305B23C (in intc_init)
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

;; intc_init: 2305B1A4
;;   Called from:
;;     23055138 (in wifi_main)
intc_init proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+0000003F
	c.swsp	ra,00000084
	jal	ra,000000002305B18E
	addi	a0,zero,+0000003E
	jal	ra,000000002305B18E
	addi	a0,zero,+0000003D
	jal	ra,000000002305B18E
	c.li	a0,00000018
	jal	ra,000000002305B18E
	c.li	a0,00000019
	jal	ra,000000002305B18E
	c.li	a0,0000001A
	jal	ra,000000002305B18E
	c.li	a0,0000001B
	jal	ra,000000002305B18E
	c.li	a0,0000001C
	jal	ra,000000002305B18E
	c.li	a0,0000001D
	jal	ra,000000002305B18E
	c.li	a0,0000001E
	jal	ra,000000002305B18E
	c.li	a0,0000001F
	jal	ra,000000002305B18E
	addi	a0,zero,+00000020
	jal	ra,000000002305B18E
	addi	a0,zero,+00000021
	jal	ra,000000002305B18E
	addi	a0,zero,+00000023
	jal	ra,000000002305B18E
	addi	a0,zero,+00000037
	jal	ra,000000002305B18E
	addi	a0,zero,+00000035
	jal	ra,000000002305B18E
	addi	a0,zero,+00000032
	jal	ra,000000002305B18E
	addi	a0,zero,+00000034
	jal	ra,000000002305B18E
	addi	a0,zero,+00000036
	jal	ra,000000002305B18E
	c.li	a0,0000000A
	jal	ra,000000002305B18E
	c.lwsp	a2,00000020
	c.li	a0,0000000B
	c.addi	sp,00000010
	jal	zero,000000002305B18E

;; mac_irq: 2305B240
mac_irq proc
	lui	a5,00044910
	c.lw	a5,0(a4)
	c.bnez	a4,000000002305B24C

l2305B248:
	c.lw	a5,4(a5)
	c.beqz	a5,000000002305B28E

l2305B24C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	a5,00044910
	c.lw	a5,64(a5)
	slli	a4,a5,00000002
	lui	a5,0002307E
	addi	a5,a5,-00000144
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.bnez	s0,000000002305B282

l2305B26A:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000009D
	addi	a1,a1,+00000388
	addi	a0,a0,-00000044
	jal	ra,0000000023054FF4

l2305B282:
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305522A

l2305B28E:
	c.jr	ra

;; bl_irq_handler: 2305B290
;;   Called from:
;;     23009EA8 (in bl_output)
bl_irq_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300A9B8
	lui	a0,00040000
	jal	ra,00000000230501A8
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305522A

;; blmac_pwr_mgt_setf: 2305B2A8
;;   Called from:
;;     2305BC0E (in chan_pre_switch_channel)
;;     2305BC2A (in chan_pre_switch_channel)
;;     2305BD2E (in chan_goto_idle_cb)
;;     2305BEC4 (in chan_ctxt_op_evt)
blmac_pwr_mgt_setf proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	slli	s0,a0,00000002
	c.swsp	ra,00000084
	andi	a5,s0,-00000005
	c.beqz	a5,000000002305B2D2

l2305B2B8:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-000006AE
	addi	a1,a1,+00000388
	addi	a0,a0,-00000020
	jal	ra,0000000023054FF4

l2305B2D2:
	lui	a5,00044B00
	c.lw	a5,76(a0)
	c.andi	a0,FFFFFFFB
	c.or	a0,s0
	c.sw	a5,76(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_get_next_chan: 2305B2E6
;;   Called from:
;;     2305BA0C (in chan_cde_evt)
;;     2305BEA2 (in chan_ctxt_op_evt)
;;     2305C538 (in chan_bcn_to_evt)
chan_get_next_chan proc
	c.addi	sp,FFFFFFF0
	lui	a3,0004201E
	addi	a5,a3,+000002D0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a5,32(s0)
	c.lw	a5,16(s1)
	lui	a5,00044B00
	lw	s2,a5,+00000120
	addi	a3,a3,+000002D0
	c.beqz	s0,000000002305B330

l2305B30A:
	c.beqz	s1,000000002305B316

l2305B30C:
	lbu	a4,s1,+0000000A
	c.li	a5,00000002
	beq	a4,a5,000000002305B3FA

l2305B316:
	c.lui	a4,00001000
	c.lw	a3,68(a5)
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,000000002305B3FA

l2305B326:
	lbu	a4,s0,+00000016
	c.li	a5,00000004
	beq	a4,a5,000000002305B3FA

l2305B330:
	c.beqz	s1,000000002305B3A2

l2305B332:
	c.lw	s1,4(a5)
	c.lw	a3,68(a4)
	c.sub	a5,a4
	bge	a5,zero,000000002305B3A2

l2305B33C:
	lbu	a5,s1,+00000008
	addi	a3,zero,+000005D8
	lui	a4,0004201C
	add	a5,a5,a3
	addi	a4,a4,-00000308
	c.add	a4,a5
	c.lw	a4,64(s0)
	c.bnez	s0,000000002305B36E

l2305B356:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000129
	addi	a1,a1,+00000388
	addi	a0,a0,+00000168
	jal	ra,0000000023054FF4

l2305B36E:
	c.lw	s1,4(a5)
	c.lui	a4,00001000
	addi	a4,a4,+00000400
	c.add	a4,s2
	c.sub	a4,a5
	bge	a4,zero,000000002305B3E0

l2305B37E:
	lhu	a4,s0,+00000012
	lhu	a2,s0,+00000014
	c.li	a3,00000000
	bgeu	a2,a4,000000002305B394

l2305B38C:
	c.sub	a4,a2
	slli	a3,a4,00000010
	c.srli	a3,00000010

l2305B394:
	sub	a5,a5,s2
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,000000002305B3FA

l2305B3A2:
	lui	a3,0004201E
	addi	a5,a3,+00000244
	lbu	a2,a5,+00000016
	c.li	a4,00000000
	c.beqz	a2,000000002305B3BA

l2305B3B2:
	lhu	a4,a5,+00000012
	addi	s0,a3,+00000244

l2305B3BA:
	lbu	a3,a5,+00000032
	c.beqz	a3,000000002305B3D2

l2305B3C0:
	lhu	a3,a5,+0000002E
	bltu	a3,a4,000000002305B3D2

l2305B3C8:
	lui	s0,0004201E
	c.mv	a4,a3
	addi	s0,s0,+00000260

l2305B3D2:
	lbu	a3,a5,+0000004E
	c.beqz	a3,000000002305B3E0

l2305B3D8:
	lhu	a5,a5,+0000004A
	bgeu	a5,a4,000000002305B408

l2305B3E0:
	c.bnez	s0,000000002305B3FA

l2305B3E2:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000175
	addi	a1,a1,+00000388
	addi	a0,a0,+00000168
	jal	ra,0000000023054FF4

l2305B3FA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305B408:
	lui	s0,0004201E
	addi	s0,s0,+0000027C
	c.j	000000002305B3FA

;; chan_conn_less_delay_prog: 2305B412
;;   Called from:
;;     2305BEFC (in chan_ctxt_op_evt)
;;     2305C0BC (in chan_scan_req)
;;     2305C19A (in chan_roc_req)
chan_conn_less_delay_prog proc
	lui	a5,0004201E
	addi	a5,a5,+000002D0
	lbu	a4,a5,+00000070
	lui	a0,0004201E
	addi	a0,a0,+00000328
	ori	a4,a4,+00000010
	sb	a4,a5,+00000070
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00007000
	addi	a5,a5,+00000530
	c.add	a1,a5
	jal	zero,00000000230478F4

;; chan_upd_nb_rem_slots.isra.3: 2305B442
;;   Called from:
;;     2305B7E8 (in chan_tbtt_switch_evt)
;;     2305BE9A (in chan_ctxt_op_evt)
;;     2305C512 (in chan_bcn_to_evt)
chan_upd_nb_rem_slots.isra.3 proc
	lui	a5,0004201E
	lw	a5,a5,+0000033C
	lhu	a4,a0,+00000000
	c.sub	a1,a5
	c.srli	a1,0000000A
	c.slli	a1,10
	c.srli	a1,00000010
	bgeu	a4,a1,000000002305B45C

l2305B45A:
	c.mv	a1,a4

l2305B45C:
	sub	a1,a4,a1
	sh	a1,a0,+00000000
	c.jr	ra

;; chan_tbtt_detect_conflict.isra.8: 2305B466
;;   Called from:
;;     2305B518 (in chan_tbtt_insert)
;;     2305B54A (in chan_tbtt_insert)
chan_tbtt_detect_conflict.isra.8 proc
	sub	a4,a0,a1
	c.mv	a3,a0
	blt	a4,zero,000000002305B480

l2305B470:
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.add	a5,a1
	c.sub	a5,a0
	c.li	a0,00000001
	bge	a5,zero,000000002305B496

l2305B480:
	c.sub	a1,a3
	c.li	a0,00000000
	blt	a1,zero,000000002305B496

l2305B488:
	c.lui	a0,00003000
	addi	a0,a0,-00000800
	c.add	a0,a4
	xori	a0,a0,-00000001
	c.srli	a0,0000001F

l2305B496:
	c.jr	ra

;; chan_tbtt_insert: 2305B498
;;   Called from:
;;     2305B86A (in chan_tbtt_schedule)
;;     2305B8C0 (in chan_tbtt_schedule)
chan_tbtt_insert proc
	c.addi16sp	FFFFFFC0
	lui	a5,0004201E
	c.swsp	s2,00000018
	lw	s2,a5,+000002E0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.mv	s3,a0
	c.li	s6,00000000
	c.li	s0,00000000
	c.li	s1,00000000
	lui	s7,0002307B
	lui	s8,0002307E
	c.li	s9,00000002

l2305B4CE:
	bne	s2,zero,000000002305B4F0

l2305B4D2:
	c.li	s2,00000001

l2305B4D4:
	addi	s4,zero,+000000FF
	lui	s5,0002307B
	lui	s7,0002307E
	c.li	s8,00000001
	lui	s9,0004201E
	lui	s10,0004201E
	lui	s11,0004201E
	c.j	000000002305B598

l2305B4F0:
	bne	s2,s3,000000002305B504

l2305B4F4:
	addi	a2,zero,+00000668
	addi	a1,s7,+00000388
	addi	a0,s8,+000001A4
	jal	ra,0000000023054FF4

l2305B504:
	lbu	a5,s2,+0000000A
	lw	s4,s3,+00000004
	lw	s5,s2,+00000004
	beq	a5,s9,000000002305B542

l2305B514:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305B466
	c.beqz	a0,000000002305B53A

l2305B51E:
	lbu	a4,s3,+00000009
	lbu	a5,s2,+00000009
	bgeu	a5,a4,000000002305B550

l2305B52A:
	c.bnez	s0,000000002305B52E

l2305B52C:
	c.mv	s0,s2

l2305B52E:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF

l2305B534:
	lw	s2,s2,+00000000
	c.j	000000002305B4CE

l2305B53A:
	bltu	s4,s5,000000002305B4D2

l2305B53E:
	c.mv	s6,s2
	c.j	000000002305B534

l2305B542:
	bltu	s4,s5,000000002305B550

l2305B546:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305B466
	c.beqz	a0,000000002305B53E

l2305B550:
	c.mv	s0,s3
	c.li	s1,00000001
	c.li	s2,00000000
	c.j	000000002305B4D4

l2305B558:
	c.bnez	s0,000000002305B56A

l2305B55A:
	addi	a2,zero,+000006B1
	addi	a1,s5,+00000388
	addi	a0,s7,+000001BC
	jal	ra,0000000023054FF4

l2305B56A:
	beq	s0,s3,000000002305B58C

l2305B56E:
	lbu	a5,s0,+0000000A
	bne	a5,s8,000000002305B582

l2305B576:
	addi	a0,s10,+000002F8
	jal	ra,00000000230479AA
	sb	zero,s0,+0000000A

l2305B582:
	c.mv	a1,s0
	addi	a0,s9,+000002E0
	jal	ra,0000000023050046

l2305B58C:
	c.mv	a1,s0
	addi	a0,s11,+000002E8
	jal	ra,000000002304FFBE
	c.lw	s0,0(s0)

l2305B598:
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	bne	s1,s4,000000002305B558

l2305B5A2:
	beq	s2,zero,000000002305B5D2

l2305B5A6:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.lwsp	a6,0000004C
	c.lwsp	a2,0000006C
	c.mv	a2,s3
	c.mv	a1,s6
	c.lwsp	a2,00000178
	c.lwsp	zero,000001D8
	lui	a0,0004201E
	addi	a0,a0,+000002E0
	c.addi16sp	00000040
	jal	zero,00000000230500F2

l2305B5D2:
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

;; chan_upd_ctxt_status: 2305B5F0
;;   Called from:
;;     2305B6B2 (in chan_switch_start)
;;     2305B6C2 (in chan_switch_start)
;;     2305BA08 (in chan_cde_evt)
;;     2305BBB4 (in chan_pre_switch_channel)
;;     2305BD4A (in chan_goto_idle_cb)
chan_upd_ctxt_status proc
	lui	a5,00044B00
	lw	a3,a5,+00000120
	c.li	a4,00000002
	bne	a1,a4,000000002305B628

l2305B5FE:
	lbu	a4,a0,+00000017
	c.li	a5,00000000
	bltu	a1,a4,000000002305B610

l2305B608:
	c.lui	a5,00001000
	addi	a5,a5,-00000060

l2305B60E:
	c.add	a5,a3

l2305B610:
	sb	a1,a0,+00000016
	c.bnez	a5,000000002305B676

l2305B616:
	c.li	a5,00000003
	beq	a1,a5,000000002305B68C

l2305B61C:
	lui	a0,0004201E
	addi	a0,a0,+00000318
	jal	zero,00000000230479AA

l2305B628:
	c.li	a2,00000004
	c.li	a5,00000000
	bne	a1,a2,000000002305B610

l2305B630:
	lbu	a2,a0,+00000017
	bltu	a4,a2,000000002305B66A

l2305B638:
	lui	a2,0004201E
	addi	a2,a2,+000002D0
	lbu	a6,a2,+00000072
	c.li	a4,00000001
	bgeu	a4,a6,000000002305B672

l2305B64A:
	lhu	a4,a0,+00000012
	lhu	a6,a0,+00000014
	bgeu	a6,a4,000000002305B672

l2305B656:
	sub	a4,a4,a6
	c.slli	a4,10
	c.srli	a4,00000010
	bgeu	a1,a4,000000002305B672

l2305B662:
	c.sw	a2,108(a3)
	slli	a5,a4,0000000A
	c.j	000000002305B60E

l2305B66A:
	lhu	a5,a0,+00000012
	c.slli	a5,0A
	c.j	000000002305B60E

l2305B672:
	c.li	a1,00000005
	c.j	000000002305B610

l2305B676:
	lui	a4,0004201E
	sw	a0,a4,+00000320
	lui	a0,0004201E
	c.mv	a1,a5
	addi	a0,a0,+00000318
	jal	zero,00000000230478F4

l2305B68C:
	c.jr	ra

;; chan_switch_start: 2305B68E
;;   Called from:
;;     2305B742 (in chan_conn_less_delay_evt)
;;     2305B81C (in chan_tbtt_switch_evt)
;;     2305BA20 (in chan_cde_evt)
;;     2305BE86 (in chan_ctxt_op_evt)
;;     2305C17A (in chan_roc_req)
;;     2305C550 (in chan_bcn_to_evt)
;;     2305C824 (in chan_ctxt_link)
;;     2305C95E (in chan_ctxt_unlink)
chan_switch_start proc
	lui	a5,0004201E
	addi	a5,a5,+000002D0
	c.lw	a5,32(a3)
	bne	a3,a0,000000002305B6B6

l2305B69C:
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002305B6E8

l2305B6A6:
	lbu	a4,a3,+00000017
	c.li	a5,00000002
	bltu	a5,a4,000000002305B6E8

l2305B6B0:
	c.li	a1,00000004
	jal	zero,000000002305B5F0

l2305B6B6:
	c.lw	a5,36(a3)
	c.bnez	a3,000000002305B6E8

l2305B6BA:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a1,00000002
	c.sw	a5,36(a0)
	jal	ra,000000002305B5F0
	c.li	a3,00000004
	addi	a2,zero,+000000FF
	c.li	a1,00000000
	addi	a0,zero,+00000060
	jal	ra,0000000023050474
	lui	a5,0002305C
	addi	a5,a5,-00000328
	c.sw	a0,0(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

l2305B6E8:
	c.jr	ra

;; chan_conn_less_delay_evt: 2305B6EA
chan_conn_less_delay_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a5,s0,+000002D0
	c.swsp	ra,00000084
	lbu	a5,a5,+00000070
	addi	s0,s0,+000002D0
	andi	a4,a5,+00000001
	c.beqz	a4,000000002305B746

l2305B706:
	c.andi	a5,00000004
	c.beqz	a5,000000002305B722

l2305B70A:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+000002C0
	addi	a1,a1,+00000388
	addi	a0,a0,+0000007C
	jal	ra,0000000023054FF4

l2305B722:
	lbu	a5,s0,+00000070
	lui	a0,0004201E
	addi	a0,a0,+000002B4
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000004
	sb	a5,s0,+00000070

l2305B738:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002305B780

l2305B73C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305B68E

l2305B746:
	andi	a4,a5,+00000002
	c.beqz	a4,000000002305B780

l2305B74C:
	c.andi	a5,00000008
	c.beqz	a5,000000002305B768

l2305B750:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+000002CE
	addi	a1,a1,+00000388
	addi	a0,a0,+000000B0
	jal	ra,0000000023054FF4

l2305B768:
	lbu	a5,s0,+00000070
	lui	a0,0004201E
	addi	a0,a0,+00000298
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000070
	c.j	000000002305B738

l2305B780:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_evt: 2305B788
;;   Called from:
;;     2305B8FA (in chan_tbtt_schedule)
chan_tbtt_switch_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a5,00044B00
	lui	s0,0004201E
	lw	s3,a5,+00000120
	addi	a5,s0,+000002D0
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002305B820

l2305B7AE:
	addi	s0,s0,+000002D0
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002305B820

l2305B7BA:
	lbu	a4,a0,+00000008
	addi	a3,zero,+000005D8
	lui	a5,0004201C
	add	a4,a4,a3
	addi	a5,a5,-00000308
	c.add	a5,a4
	lw	s2,a5,+00000040
	c.lw	s0,36(a5)
	c.beqz	a5,000000002305B7DC

l2305B7D8:
	bne	a5,s2,000000002305B820

l2305B7DC:
	sb	zero,a0,+00000009
	c.mv	s1,a0
	c.lw	s0,32(a0)
	c.mv	a1,s3
	c.addi	a0,00000012
	jal	ra,000000002305B442
	lhu	a5,s2,+00000014
	c.li	a3,0000000A
	c.mv	a4,a5
	bgeu	a3,a5,000000002305B7FA

l2305B7F8:
	c.li	a4,0000000A

l2305B7FA:
	c.sub	a5,a4
	sh	a5,s2,+00000014
	sw	s3,s0,+0000006C
	c.li	a5,00000002
	sb	a5,s1,+0000000A
	c.lw	s0,36(a5)
	c.bnez	a5,000000002305B820

l2305B80E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002305B68E

l2305B820:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_tbtt_schedule: 2305B82E
;;   Called from:
;;     2305C4A4 (in chan_tbtt_switch_update)
;;     2305C4FC (in chan_bcn_to_evt)
;;     2305C944 (in chan_ctxt_unlink)
chan_tbtt_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,0004201E
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s0,s0,+000002D0
	c.bnez	a0,000000002305B862

l2305B84A:
	c.lw	s0,16(a0)
	c.bnez	a0,000000002305B8CE

l2305B84E:
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

l2305B862:
	lui	s1,0004201C
	lui	s2,0004201B
	jal	ra,000000002305B498
	lui	s3,0004201E
	addi	s1,s1,-00000308
	addi	s4,zero,+000005D8
	addi	s2,s2,-000007F8
	addi	s5,zero,+000001B0
	c.li	s6,00000004

l2305B884:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002305B84A

l2305B888:
	addi	a0,s3,+000002E8
	jal	ra,000000002305003A
	lbu	a5,a0,+00000008
	add	a5,a5,s4
	c.add	a5,s1
	lbu	a4,a5,+00000056
	c.bnez	a4,000000002305B8C6

l2305B8A0:
	lbu	a5,a5,+00000060
	add	a5,a5,s5
	c.add	a5,s2
	c.lw	a5,4(a5)

l2305B8AC:
	c.lw	a0,4(a4)
	c.add	a5,a4
	c.sw	a0,4(a5)
	lbu	a5,a0,+00000009
	bltu	s6,a5,000000002305B8C0

l2305B8BA:
	c.addi	a5,00000001
	sb	a5,a0,+00000009

l2305B8C0:
	jal	ra,000000002305B498
	c.j	000000002305B884

l2305B8C6:
	lhu	a5,a5,+0000033E
	c.slli	a5,0A
	c.j	000000002305B8AC

l2305B8CE:
	lbu	a5,a0,+0000000A
	c.bnez	a5,000000002305B84E

l2305B8D4:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	a0,4(a5)
	c.sub	a5,a4
	addi	a5,a5,-000007D0
	bge	a5,zero,000000002305B8FE

l2305B8E8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002305B788

l2305B8FE:
	c.sw	s0,48(a0)
	c.li	a5,00000001
	sb	a5,a0,+0000000A
	c.lwsp	s8,00000004
	c.lw	a0,4(a1)
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,0004201E
	addi	a0,a0,+000002F8
	c.addi16sp	00000020
	jal	zero,00000000230478F4

;; chan_cde_evt: 2305B926
;;   Called from:
;;     2305BB74 (in chan_pre_switch_channel)
;;     2305BF4A (in chan_ctxt_op_evt)
;;     2305C83E (in chan_ctxt_link)
;;     2305C91A (in chan_ctxt_unlink)
chan_cde_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	lui	s2,0004201E
	lw	s3,a5,+00000120
	addi	a5,s2,+000002D0
	lbu	a4,a5,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002305BAD4

l2305B94E:
	addi	s2,s2,+000002D0
	lbu	s0,s2,+00000070
	andi	s0,s0,+0000002C
	bne	s0,zero,000000002305BAD4

l2305B95E:
	lw	a1,s2,+00000068
	c.mv	s1,a0
	lui	a0,0004201E
	c.add	a1,s3
	addi	a0,a0,+00000308
	jal	ra,00000000230478F4
	lui	a4,0004201D
	addi	a5,a4,-00000758
	c.lw	a5,8(a5)
	lui	a3,0004201C
	sw	s3,s2,+0000006C
	addi	s4,a4,-00000758
	c.li	s3,00000000
	addi	a3,a3,-000003B8
	addi	a1,zero,+00000024

l2305B992:
	c.bnez	a5,000000002305BA24

l2305B994:
	lw	a5,s2,+00000068
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	srl	a5,a5,a4
	beq	s0,a5,000000002305B9BE

l2305B9A6:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000268
	addi	a1,a1,+00000388
	addi	a0,a0,+0000002C
	jal	ra,0000000023054FF6

l2305B9BE:
	beq	s3,zero,000000002305BA58

l2305B9C2:
	beq	s0,s3,000000002305BA58

l2305B9C6:
	sub	s0,s0,s3
	addi	a5,zero,+00000028
	add	s0,s0,a5
	c.li	a1,0000000A
	c.slli	s0,10
	c.srli	s0,00000010
	xor	s0,s0,s3

l2305B9DC:
	lw	a4,s4,+00000008
	lui	a0,0004201C
	lui	a6,0004201B
	addi	a0,a0,-000003B8
	addi	a7,zero,+00000024
	c.li	t1,0000000A
	addi	a6,a6,-000007F8
	addi	t3,zero,+000001B0
	addi	s0,s0,+00000032

l2305B9FE:
	c.bnez	a4,000000002305BA60

l2305BA00:
	lw	a0,s2,+00000020
	c.beqz	a0,000000002305BA0C

l2305BA06:
	c.li	a1,00000001
	jal	ra,000000002305B5F0

l2305BA0C:
	jal	ra,000000002305B2E6
	c.bnez	s1,000000002305BAD0

l2305BA12:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002305B68E

l2305BA24:
	c.lw	a5,64(a2)
	c.beqz	a2,000000002305BA54

l2305BA28:
	lbu	a4,a5,+00000057
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	add	a4,a4,a1
	c.add	a4,a3
	lbu	a4,a4,+00000021
	c.andi	a4,00000003
	c.bnez	a4,000000002305BA46

l2305BA40:
	lbu	a4,a5,+00000058
	c.bnez	a4,000000002305BA4C

l2305BA46:
	c.addi	s3,00000001
	andi	s3,s3,+000000FF

l2305BA4C:
	sh	zero,a2,+00000010
	sh	zero,a2,+00000014

l2305BA54:
	c.lw	a5,0(a5)
	c.j	000000002305B992

l2305BA58:
	c.li	s0,00000000
	addi	a1,zero,+00000032
	c.j	000000002305B9DC

l2305BA60:
	c.lw	a4,64(a3)
	c.beqz	a3,000000002305BABE

l2305BA64:
	lbu	a2,a4,+00000057
	lhu	a5,a3,+00000010
	add	a2,a2,a7
	c.add	a2,a0
	lbu	a2,a2,+00000021
	c.andi	a2,00000003
	c.bnez	a2,000000002305BA80

l2305BA7A:
	lbu	a2,a4,+00000058
	c.bnez	a2,000000002305BAC2

l2305BA80:
	c.add	a5,s0

l2305BA82:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+00000010
	sh	a5,a3,+00000012
	lbu	a5,a4,+00000056
	c.bnez	a5,000000002305BAC6

l2305BA94:
	lbu	a5,a4,+00000060
	add	a5,a5,t3
	c.add	a5,a6
	c.lw	a5,4(a2)

l2305BAA0:
	lw	a5,s2,+00000068
	srl	a5,a5,a2
	c.bnez	a5,000000002305BAAC

l2305BAAA:
	c.li	a5,00000001

l2305BAAC:
	andi	a5,a5,+000000FF
	add	a5,a5,t1
	lhu	a2,a3,+00000014
	c.add	a5,a2
	sh	a5,a3,+00000014

l2305BABE:
	c.lw	a4,0(a4)
	c.j	000000002305B9FE

l2305BAC2:
	c.add	a5,a1
	c.j	000000002305BA82

l2305BAC6:
	lhu	a5,a4,+0000033E
	slli	a2,a5,0000000A
	c.j	000000002305BAA0

l2305BAD0:
	sw	a0,s2,+00000024

l2305BAD4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_pre_switch_channel: 2305BAE4
;;   Called from:
;;     2305BDB6 (in chan_goto_idle_cb)
;;     2305BE04 (in chan_tx_cfm)
chan_pre_switch_channel proc
	lui	a0,0004201E
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+00000318
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lui	s0,0004201E
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,00000000230479AA
	addi	a5,s0,+000002D0
	lbu	a5,a5,+00000070
	addi	s0,s0,+000002D0
	andi	a5,a5,+00000020
	c.beqz	a5,000000002305BB38

l2305BB16:
	lbu	a5,s0,+00000072
	c.li	a4,00000001
	bgeu	a4,a5,000000002305BB2C

l2305BB20:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002305BB2C

l2305BB24:
	sb	a4,a5,+00000016
	sw	zero,s0,+00000024

l2305BB2C:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000021
	sb	a5,s0,+00000070

l2305BB38:
	lbu	a5,s0,+00000070
	c.lw	s0,36(a4)
	andi	a3,a5,+00000008
	c.bnez	a3,000000002305BB5C

l2305BB44:
	c.andi	a5,00000004
	c.beqz	a5,000000002305BB66

l2305BB48:
	lui	a5,0004201E
	addi	a5,a5,+000002B4

l2305BB50:
	c.beqz	a4,000000002305BB58

l2305BB52:
	c.li	a3,00000001
	sb	a3,a4,+00000016

l2305BB58:
	c.sw	s0,36(a5)
	c.j	000000002305BB78

l2305BB5C:
	lui	a5,0004201E
	addi	a5,a5,+00000298
	c.j	000000002305BB50

l2305BB66:
	c.bnez	a4,000000002305BB78

l2305BB68:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002305BC14

l2305BB72:
	c.li	a0,00000001
	jal	ra,000000002305B926

l2305BB78:
	c.lw	s0,36(s1)
	beq	s1,zero,000000002305BCC6

l2305BB7E:
	lhu	a4,s1,+0000000A
	lhu	a3,s1,+00000008
	lhu	a2,s1,+00000006
	lbu	a1,s1,+00000005
	lbu	a0,s1,+00000004
	c.li	a5,00000000
	lui	s2,00044B00
	jal	ra,0000000023055EB0
	lb	a0,s1,+0000000C
	jal	ra,0000000023049412
	c.li	a5,00000010
	sw	a5,s2,+000000DC
	c.li	a1,00000004
	c.mv	a0,s1
	c.sw	s0,32(s1)
	sw	zero,s0,+00000024
	jal	ra,000000002305B5F0
	lbu	a5,s1,+00000017
	c.li	a4,00000003
	beq	a5,a4,000000002305BCB2

l2305BBC2:
	c.li	a4,00000004
	beq	a5,a4,000000002305BBE6

l2305BBC8:
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002305BC1C

l2305BBD6:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,000000002305BC1C

l2305BBDC:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bgeu	a5,a4,000000002305BC58

l2305BBE6:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	ori	a4,a4,+00000002
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	lui	a5,00044B00
	c.lw	a5,76(a5)
	c.li	a0,00000000
	c.srli	a5,00000002
	c.andi	a5,00000001
	sb	a5,s0,+00000073
	jal	ra,000000002305B2A8
	c.j	000000002305BC7C

l2305BC14:
	bne	a4,a5,000000002305BB78

l2305BC18:
	c.lw	s0,8(a5)
	c.j	000000002305BB58

l2305BC1C:
	lui	a5,0004201D
	c.li	a0,00000000
	lw	s2,a5,-00000750
	lw	s3,s0,+00000020
	jal	ra,000000002305B2A8

l2305BC2E:
	beq	s2,zero,000000002305BBDC

l2305BC32:
	lw	a5,s2,+00000040
	bne	s3,a5,000000002305BC52

l2305BC3A:
	lbu	a5,s2,+00000056
	c.bnez	a5,000000002305BC52

l2305BC40:
	lbu	a5,s2,+00000058
	c.beqz	a5,000000002305BC52

l2305BC46:
	lbu	a0,s2,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002304A522

l2305BC52:
	lw	s2,s2,+00000000
	c.j	000000002305BC2E

l2305BC58:
	lui	a5,0004201D
	lw	s2,a5,-00000750
	lui	s3,0004201C
	addi	s3,s3,-000003B8
	addi	s4,zero,+00000024
	c.li	s5,00000001

l2305BC6E:
	bne	s2,zero,000000002305BC90

l2305BC72:
	lbu	a4,s1,+00000017
	c.li	a5,00000002
	bltu	a5,a4,000000002305BBE6

l2305BC7C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002305D7B6

l2305BC90:
	lw	a5,s2,+00000040
	bne	s1,a5,000000002305BCAC

l2305BC98:
	lbu	a5,s2,+00000057
	c.mv	a0,s2
	add	a5,a5,s4
	c.add	a5,s3
	sb	s5,a5,+00000023
	jal	ra,000000002304B11C

l2305BCAC:
	lw	s2,s2,+00000000
	c.j	000000002305BC6E

l2305BCB2:
	sw	zero,s2,+00000220
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	addi	a0,zero,+00000061
	jal	ra,000000002305054A
	c.j	000000002305BC72

l2305BCC6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; chan_goto_idle_cb: 2305BCD8
chan_goto_idle_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lui	s1,0004201E
	jal	ra,000000002305DCA8
	addi	a5,s1,+000002D0
	lw	s2,a5,+00000020
	beq	s2,zero,000000002305BDA2

l2305BD00:
	addi	s1,s1,+000002D0
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000020
	c.bnez	a5,000000002305BDA2

l2305BD0E:
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002305BD22

l2305BD1C:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.beqz	a5,000000002305BDA2

l2305BD22:
	lui	a5,0004201D
	c.li	a0,00000001
	lw	s0,a5,-00000750
	c.li	s3,00000000
	jal	ra,000000002305B2A8
	addi	s4,zero,+000000FF
	c.li	s5,00000006
	lui	s6,0002305C

l2305BD3C:
	c.bnez	s0,000000002305BD66

l2305BD3E:
	sb	s3,s1,+00000071
	beq	s3,zero,000000002305BDA2

l2305BD46:
	c.lw	s1,36(a0)
	c.li	a1,00000003
	jal	ra,000000002305B5F0
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
	jal	zero,000000002305D7B6

l2305BD66:
	c.lw	s0,64(a5)
	bne	s2,a5,000000002305BD9E

l2305BD6C:
	lbu	a5,s0,+00000056
	c.bnez	a5,000000002305BD9E

l2305BD72:
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002305BD9E

l2305BD78:
	lbu	a5,s0,+00000060
	beq	a5,s4,000000002305BD9E

l2305BD80:
	lbu	s7,s2,+00000016
	sb	s5,s2,+00000016
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	addi	a1,s6,-00000246
	jal	ra,000000002304A522
	c.bnez	a0,000000002305BD9A

l2305BD98:
	c.addi	s3,00000001

l2305BD9A:
	sb	s7,s2,+00000016

l2305BD9E:
	c.lw	s0,0(s0)
	c.j	000000002305BD3C

l2305BDA2:
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
	jal	zero,000000002305BAE4

;; chan_tx_cfm: 2305BDBA
chan_tx_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a5,s0,+000002D0
	c.swsp	ra,00000084
	lbu	a5,a5,+00000071
	addi	s0,s0,+000002D0
	c.bnez	a5,000000002305BDEA

l2305BDD2:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000048F
	addi	a1,a1,+00000388
	addi	a0,a0,+000001CC
	jal	ra,0000000023054FF4

l2305BDEA:
	lbu	a5,s0,+00000071
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000071
	c.bnez	a5,000000002305BE08

l2305BDFA:
	jal	ra,000000002305DCA8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305BAE4

l2305BE08:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; chan_ctxt_op_evt: 2305BE10
;;   Called from:
;;     2305C220 (in chan_roc_req)
chan_ctxt_op_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s2,a0,+00000016
	c.li	a5,00000002
	bltu	s2,a5,000000002305BE32

l2305BE26:
	c.li	s3,00000003
	bgeu	s3,s2,000000002305BE40

l2305BE2C:
	c.li	a4,00000004
	beq	s2,a4,000000002305BE56

l2305BE32:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305BE40:
	lui	a5,0004201E
	addi	a5,a5,+000002D0
	lbu	a4,a5,+00000070
	ori	a4,a4,+00000020
	sb	a4,a5,+00000070
	c.j	000000002305BE32

l2305BE56:
	lbu	a4,a0,+00000017
	lui	s0,0004201E
	c.mv	s1,a0
	addi	s0,s0,+000002D0
	bltu	a5,a4,000000002305BEAA

l2305BE68:
	c.li	a5,00000001
	sb	a5,a0,+00000016
	lbu	a4,s0,+00000072
	bne	a4,a5,000000002305BE8A

l2305BE76:
	c.lw	s0,8(s1)

l2305BE78:
	c.mv	a0,s1

l2305BE7A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002305B68E

l2305BE8A:
	bgeu	a5,a4,000000002305BE78

l2305BE8E:
	lui	a5,00044B00
	lw	s2,a5,+00000120
	c.addi	a0,00000012
	c.mv	a1,s2
	jal	ra,000000002305B442
	sw	s2,s0,+0000006C
	jal	ra,000000002305B2E6
	c.mv	s1,a0
	c.j	000000002305BE78

l2305BEAA:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFD
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000073
	jal	ra,000000002305B2A8
	sw	zero,s0,+00000020
	lbu	a5,s1,+00000017
	bne	a5,s3,000000002305BF0E

l2305BED4:
	lbu	a5,s0,+00000070
	addi	a2,zero,+000000FF
	c.li	a1,00000002
	c.andi	a5,FFFFFFF7
	addi	a0,zero,+00000062
	sb	a5,s0,+00000070
	jal	ra,000000002305054A

l2305BEEC:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000017
	lbu	a5,s0,+00000070
	andi	a4,a5,+00000003
	c.beqz	a4,000000002305BF30

l2305BEFC:
	jal	ra,000000002305B412

l2305BF00:
	lbu	a4,s0,+00000072
	c.li	a5,00000001
	bne	a4,a5,000000002305BF38

l2305BF0A:
	c.lw	s0,8(a0)
	c.j	000000002305BE7A

l2305BF0E:
	bne	a5,s2,000000002305BEEC

l2305BF12:
	lhu	a5,s1,+0000000E
	c.bnez	a5,000000002305BF24

l2305BF18:
	lbu	a5,s0,+00000070
	andi	a5,a5,-00000041
	sb	a5,s0,+00000070

l2305BF24:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	000000002305BEEC

l2305BF30:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	000000002305BF00

l2305BF38:
	bgeu	a5,a4,000000002305BF4E

l2305BF3C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002305B926

l2305BF4E:
	jal	ra,000000002305DCA8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002305DC62

;; chan_init: 2305BF62
;;   Called from:
;;     2305D7A6 (in mm_init)
chan_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201E
	c.swsp	s3,0000008C
	addi	a2,zero,+00000074
	lui	s3,0004201E
	c.li	a1,00000000
	addi	a0,s0,+000002D0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	addi	s1,s3,+00000244
	jal	ra,000000002306D1BC
	c.li	s2,00000000
	addi	s3,s3,+00000244
	addi	s5,zero,+000000FF
	c.li	s6,FFFFFFFF
	c.li	s7,00000002
	c.li	s8,00000003
	c.li	s4,00000005

l2305BFA4:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	sh	s5,s1,+0000000E
	sb	s6,s1,+00000017
	blt	s7,s2,000000002305C014

l2305BFBA:
	c.mv	a1,s1
	addi	a0,s0,+000002D0
	jal	ra,000000002304FFBE

l2305BFC4:
	c.addi	s2,00000001
	c.addi	s1,0000001C
	bne	s2,s4,000000002305BFA4

l2305BFCC:
	lui	a4,0002305B
	addi	a5,s0,+000002D0
	addi	a4,a4,+00000788
	c.sw	a5,44(a4)
	lui	a4,0002305C
	addi	a4,a4,-000006DA
	c.sw	a5,60(a4)
	lui	a4,0002305C
	addi	a4,a4,-000001F0
	c.sw	a5,76(a4)
	lui	a4,0002305B
	addi	a4,a4,+000006EA
	sw	zero,a5,+00000040
	c.sw	a5,92(a4)
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

l2305C014:
	bne	s2,s8,000000002305BFC4

l2305C018:
	sh	zero,s3,+0000005E
	sb	zero,s3,+00000059
	c.j	000000002305BFC4

;; chan_scan_req: 2305C022
;;   Called from:
;;     2305F0F8 (in scan_set_channel_request)
chan_scan_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201E
	addi	a5,s0,+00000244
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s2,a2
	lbu	a2,a5,+0000006B
	addi	a5,zero,+000000FF
	c.mv	s3,a0
	c.mv	s1,a1
	addi	s0,s0,+00000244
	beq	a2,a5,000000002305C06E

l2305C04C:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-0000075F
	addi	a1,a1,+00000388
	addi	a0,a0,+0000017C
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,0000000023054FF4
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4

l2305C06E:
	addi	a5,zero,+000000FF
	sb	a4,s0,+0000006D
	lui	a4,0004201E
	addi	a4,a4,+000002D0
	sh	a5,s0,+00000062
	addi	a5,zero,+00000301
	sh	a5,s0,+0000006A
	lbu	a5,a4,+00000070
	c.srli	a3,0000000A
	sh	a3,s0,+00000066
	ori	a3,a5,+00000002
	sb	s3,s0,+00000058
	sh	s1,s0,+0000005C
	sh	s1,s0,+0000005A
	sb	s2,s0,+00000060
	sb	a3,a4,+00000070
	c.andi	a5,00000010
	c.bnez	a5,000000002305C0C0

l2305C0B0:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,000000002305B412

l2305C0C0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; chan_roc_req: 2305C0CE
;;   Called from:
;;     23046E54 (in mm_remain_on_channel_req_handler)
chan_roc_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+00000000
	c.beqz	s1,000000002305C0E8

l2305C0DE:
	c.li	a5,00000001
	beq	s1,a5,000000002305C1A0

l2305C0E4:
	c.li	s1,00000001
	c.j	000000002305C17E

l2305C0E8:
	lui	a5,0004201E
	addi	a5,a5,+00000244
	lbu	a3,a5,+00000087
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002305C0E4

l2305C0FC:
	c.li	a4,00000004
	sb	a4,a5,+00000087
	lbu	a4,a0,+00000002
	sb	a4,a5,+00000074
	lbu	a4,a0,+00000003
	sb	a4,a5,+00000075
	lhu	a4,a0,+00000004
	sh	a4,a5,+00000076
	lhu	a4,a0,+00000006
	sh	a4,a5,+00000078
	lhu	a4,a0,+00000008
	sh	a1,a5,+0000007E
	sh	a4,a5,+0000007A
	c.li	a4,00000001
	sb	a4,a5,+00000086
	c.lw	a0,12(a3)
	addi	a4,zero,+000003E8
	add	a4,a4,a3
	c.srli	a4,0000000A
	sh	a4,a5,+00000082
	lbu	a4,a0,+00000001
	sb	a4,a5,+00000089
	lb	a4,a0,+00000010
	sb	a4,a5,+0000007C
	lui	a5,0004201E
	addi	a5,a5,+000002D0
	lbu	a4,a5,+00000070
	c.bnez	a1,000000002305C18C

l2305C162:
	ori	a4,a4,+00000004
	sb	a4,a5,+00000070
	c.lw	a5,36(a5)
	c.beqz	a5,000000002305C172

l2305C16E:
	c.li	s1,00000000
	c.j	000000002305C17E

l2305C172:
	lui	a0,0004201E
	addi	a0,a0,+000002B4
	jal	ra,000000002305B68E

l2305C17E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305C18C:
	ori	a3,a4,+00000001
	sb	a3,a5,+00000070
	andi	s1,a4,+00000010
	c.bnez	s1,000000002305C16E

l2305C19A:
	jal	ra,000000002305B412
	c.j	000000002305C17E

l2305C1A0:
	lui	s2,0004201E
	addi	a5,s2,+00000244
	lbu	a4,a5,+00000087
	addi	a5,zero,+000000FF
	addi	s2,s2,+00000244
	beq	a4,a5,000000002305C16E

l2305C1B8:
	lbu	a5,s2,+00000086
	lui	s0,0004201E
	c.li	a4,00000003
	addi	s0,s0,+000002D0
	bltu	a4,a5,000000002305C206

l2305C1CA:
	c.li	a4,00000002
	bgeu	a5,a4,000000002305C232

l2305C1D0:
	beq	a5,s1,000000002305C226

l2305C1D4:
	c.li	a5,FFFFFFFF
	sb	a5,s2,+00000087
	lbu	a5,s0,+00000070
	c.li	a4,00000010
	andi	a3,a5,+00000012
	bne	a3,a4,000000002305C16E

l2305C1E8:
	lui	a0,0004201E
	c.andi	a5,FFFFFFEF
	addi	a0,a0,+00000328
	sb	a5,s0,+00000070
	jal	ra,00000000230479AA
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000070
	c.j	000000002305C16E

l2305C206:
	c.li	a4,00000004
	bne	a5,a4,000000002305C1D4

l2305C20C:
	lui	a0,0004201E
	addi	a0,a0,+00000318
	jal	ra,00000000230479AA
	lui	a0,0004201E
	addi	a0,a0,+000002B4
	jal	ra,000000002305BE10
	c.j	000000002305C1D4

l2305C226:
	lbu	a5,s0,+00000070
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000070
	c.j	000000002305C1D4

l2305C232:
	lbu	a5,s0,+00000070
	sw	zero,s0,+00000024
	c.andi	a5,FFFFFFFB
	sb	a5,s0,+00000070
	c.j	000000002305C1D4

;; chan_ctxt_add: 2305C242
;;   Called from:
;;     2304B2AC (in vif_mgmt_switch_channel)
;;     2304D96E (in sm_add_chan_ctx)
;;     23062094 (in me_add_chan_ctx)
;;     23064382 (in apm_start_cac_req_handler)
chan_ctxt_add proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201E
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s4,a1
	addi	s3,a5,+00000244
	c.li	s2,00000000
	addi	s0,a5,+00000244
	addi	s6,zero,+000000FF
	c.li	s5,00000003

l2305C26C:
	lbu	a5,s3,+00000017
	beq	a5,s6,000000002305C29A

l2305C274:
	c.li	a2,00000008
	addi	a1,s3,+00000004
	c.mv	a0,s1
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002305C29A

l2305C282:
	sb	s2,s4,+00000000

l2305C286:
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

l2305C29A:
	c.addi	s2,00000001
	c.addi	s3,0000001C
	bne	s2,s5,000000002305C26C

l2305C2A2:
	lui	a0,0004201E
	addi	a0,a0,+000002D0
	jal	ra,000000002305003A
	c.mv	a4,a0
	c.li	a0,00000001
	c.beqz	a4,000000002305C286

l2305C2B4:
	sub	a5,a4,s0
	lui	s0,000B6DB7
	c.srai	a5,00000002
	addi	s0,s0,-00000249
	add	a5,a5,s0
	c.li	a0,00000000
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000017
	sb	a5,s4,+00000000
	lbu	a5,s1,+00000000
	sb	a5,a4,+00000004
	lbu	a5,s1,+00000001
	sb	a5,a4,+00000005
	lhu	a5,s1,+00000004
	sh	a5,a4,+00000008
	lhu	a5,s1,+00000006
	sh	a5,a4,+0000000A
	lhu	a5,s1,+00000002
	sh	a5,a4,+00000006
	lb	a5,s1,+00000008
	sb	a5,a4,+0000000C
	c.j	000000002305C286

;; chan_ctxt_del: 2305C306
;;   Called from:
;;     2305C93E (in chan_ctxt_unlink)
chan_ctxt_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,0000001C
	add	s1,a0,s1
	lui	a5,0004201E
	addi	a4,a5,+00000244
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	addi	s0,a5,+00000244
	c.add	s1,a4
	lbu	a3,s1,+00000017
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002305C34C

l2305C332:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-00000677
	addi	a1,a1,+00000388
	addi	a0,a0,+000000E4
	jal	ra,0000000023054FF4

l2305C34C:
	c.li	a5,0000001C
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a5,a5,+00000018
	c.beqz	a5,000000002305C374

l2305C35A:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-00000675
	addi	a1,a1,+00000388
	addi	a0,a0,+0000010C
	jal	ra,0000000023054FF4

l2305C374:
	lui	a0,0004201E
	c.mv	a1,s1
	addi	a0,a0,+000002D0
	jal	ra,000000002304FFBE
	c.mv	a0,s1
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.li	a0,0000001C
	add	a0,s2,a0
	addi	a5,zero,+000000FF
	c.add	s0,a0
	sh	a5,s0,+0000000E
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000017
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; chan_ctxt_update: 2305C3AE
;;   Called from:
;;     230477D8 (in mm_hw_config_handler)
chan_ctxt_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000000
	c.li	a2,0000001C
	lbu	a3,a0,+00000001
	add	a4,a4,a2
	lui	a5,0004201E
	addi	a5,a5,+00000244
	c.add	a5,a4
	sb	a3,a5,+00000004
	lbu	a4,a0,+00000002
	sb	a4,a5,+00000005
	lhu	a4,a0,+00000006
	sh	a4,a5,+00000008
	lhu	a4,a0,+00000008
	sh	a4,a5,+0000000A
	lhu	a4,a0,+00000004
	sh	a4,a5,+00000006
	lb	a4,a0,+0000000A
	sb	a4,a5,+0000000C
	lui	a4,0004201E
	lw	s1,a4,+000002F0
	bne	s1,a5,000000002305C444

l2305C406:
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	jal	ra,00000000230483EA
	c.li	a0,00000000
	jal	ra,0000000023048552
	csrrsi	zero,mstatus,00000008
	lbu	a0,s0,+00000001
	lhu	a4,s0,+00000008
	lhu	a3,s0,+00000006
	lhu	a2,s0,+00000004
	lbu	a1,s0,+00000002
	c.li	a5,00000000
	jal	ra,0000000023055EB0
	c.lwsp	s0,00000004
	lb	a0,s1,+0000000C
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023049412

l2305C444:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; chan_tbtt_switch_update: 2305C44E
;;   Called from:
;;     23048774 (in rxl_cntrl_evt)
;;     2305D8A4 (in mm_tbtt_evt)
;;     2305E4AC (in mm_sta_tbtt)
chan_tbtt_switch_update proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002305C4A8

l2305C452:
	lbu	a5,a5,+00000016
	c.beqz	a5,000000002305C4A8

l2305C458:
	c.lui	a5,FFFFF000
	addi	a5,a5,+0000063C
	c.add	a1,a5
	c.lw	a0,72(a5)
	beq	a5,a1,000000002305C4A8

l2305C466:
	lui	a5,0004201E
	c.sw	a0,72(a1)
	lbu	a4,a5,+00000342
	c.li	a5,00000001
	bgeu	a5,a4,000000002305C4A8

l2305C476:
	lbu	a4,a0,+0000004E
	c.li	a5,00000002
	beq	a4,a5,000000002305C4A8

l2305C480:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,a0,+00000044
	sb	zero,a0,+0000004E
	lui	a0,0004201E
	c.mv	a1,s0
	addi	a0,a0,+000002E0
	jal	ra,0000000023050046
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305B82E

l2305C4A8:
	c.jr	ra

;; chan_bcn_to_evt: 2305C4AA
;;   Called from:
;;     2304AC58 (in vif_mgmt_bcn_to_evt)
chan_bcn_to_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	a5,00044B00
	lbu	a4,a0,+0000004E
	lw	s1,a5,+00000120
	c.li	a5,00000002
	bne	a4,a5,000000002305C554

l2305C4CA:
	addi	s3,a0,+00000044
	lui	s0,0004201E
	sb	zero,a0,+0000004E
	lui	a0,0004201E
	addi	s4,s0,+000002D0
	c.mv	a1,s3
	addi	a0,a0,+000002E0
	lw	s2,s4,+00000020
	jal	ra,0000000023050046
	lbu	a4,s4,+00000072
	c.li	a5,00000001
	addi	s0,s0,+000002D0
	bgeu	a5,a4,000000002305C554

l2305C4FA:
	c.mv	a0,s3
	jal	ra,000000002305B82E
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002305C554

l2305C508:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002305C554

l2305C50C:
	c.mv	a1,s1
	addi	a0,s2,+00000012
	jal	ra,000000002305B442
	lhu	a4,s2,+00000014
	c.beqz	a4,000000002305C536

l2305C51C:
	c.lw	s0,108(a5)
	sub	a5,s1,a5
	c.srli	a5,0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a4,a5,000000002305C52E

l2305C52C:
	c.mv	a5,a4

l2305C52E:
	sub	a5,a4,a5
	sh	a5,s2,+00000014

l2305C536:
	c.sw	s0,108(s1)
	jal	ra,000000002305B2E6
	c.lw	s0,32(a5)
	beq	a5,a0,000000002305C554

l2305C542:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002305B68E

l2305C554:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; chan_bcn_detect_start: 2305C564
;;   Called from:
;;     23047758 (in mm_hw_config_handler)
;;     2305E4FE (in mm_sta_tbtt)
chan_bcn_detect_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,64(s0)
	c.mv	s3,a0
	c.bnez	s0,000000002305C590

l2305C576:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-000004E7
	addi	a1,a1,+00000388
	addi	a0,a0,+0000001C
	jal	ra,0000000023054FF4

l2305C590:
	lui	s1,0004201E
	addi	s1,s1,+000002D0
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000040
	c.bnez	a5,000000002305C630

l2305C5A2:
	lbu	a4,s1,+00000072
	c.li	a5,00000001
	bgeu	a5,a4,000000002305C630

l2305C5AC:
	c.li	a3,00000014
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,zero,+00000046
	lbu	s2,s3,+00000060
	jal	ra,0000000023050474
	sb	zero,a0,+00000000
	lbu	a4,s3,+00000057
	addi	a3,zero,+000001B0
	add	s2,s2,a3
	sb	a4,a0,+00000001
	lbu	a4,s0,+00000004
	c.lui	a3,FFFFF000
	addi	a3,a3,-00000388
	sb	a4,a0,+00000002
	lbu	a4,s0,+00000005
	sb	a4,a0,+00000003
	lhu	a4,s0,+00000006
	sh	a4,a0,+00000004
	lhu	a4,s0,+00000008
	sh	a4,a0,+00000006
	lhu	a4,s0,+0000000A
	sh	a4,a0,+00000008
	lui	a4,0004201B
	addi	a4,a4,-000007F8
	c.add	a4,s2
	c.lw	a4,4(a4)
	c.add	a4,a3
	addi	a3,zero,+000003E8
	srl	a4,a4,a3
	c.sw	a0,12(a4)
	lb	a4,s0,+0000000C
	sb	a4,a0,+00000010
	jal	ra,00000000230504E0
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000040
	sb	a5,s1,+00000070

l2305C630:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; chan_is_on_channel: 2305C63E
;;   Called from:
;;     23047AE8 (in ps_uapsd_timer_handle)
;;     23047BCC (in ps_dpsm_update)
;;     23047DA2 (in ps_set_mode)
;;     230494B4 (in tpc_update_vif_tx_power)
;;     2305C672 (in chan_is_tx_allowed)
;;     2305E4B2 (in mm_sta_tbtt)
;;     2305EF42 (in bl_sleep)
chan_is_on_channel proc
	lui	a5,0004201E
	lw	a5,a5,+000002F0
	c.beqz	a5,000000002305C66A

l2305C648:
	lbu	a3,a5,+00000017
	c.li	a4,00000002
	bltu	a4,a3,000000002305C65C

l2305C652:
	c.lw	a0,64(a0)
	c.sub	a0,a5

l2305C656:
	sltiu	a0,a0,+00000001
	c.jr	ra

l2305C65C:
	lbu	a5,a5,+00000019
	lbu	a0,a0,+00000057
	sub	a0,a5,a0
	c.j	000000002305C656

l2305C66A:
	c.li	a0,00000000
	c.jr	ra

;; chan_is_tx_allowed: 2305C66E
;;   Called from:
;;     23049664 (in txl_cntrl_tx_check)
chan_is_tx_allowed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305C63E
	c.beqz	a0,000000002305C690

l2305C678:
	lui	a5,0004201E
	addi	a5,a5,+000002D0
	c.lw	a5,36(a4)
	c.beqz	a4,000000002305C690

l2305C684:
	c.lw	a5,32(a5)
	lbu	a0,a5,+00000016
	c.addi	a0,FFFFFFFA
	sltiu	a0,a0,+00000001

l2305C690:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; chan_is_on_operational_channel: 2305C696
;;   Called from:
;;     2305EB3E (in mm_bcn_transmit)
chan_is_on_operational_channel proc
	lui	a5,0004201E
	lw	a4,a5,+000002F0
	c.li	a5,00000000
	c.beqz	a4,000000002305C6B6

l2305C6A2:
	lbu	a2,a4,+00000017
	c.li	a3,00000002
	c.li	a5,00000000
	bltu	a3,a2,000000002305C6B6

l2305C6AE:
	c.lw	a0,64(a5)
	c.sub	a5,a4
	sltiu	a5,a5,+00000001

l2305C6B6:
	c.mv	a0,a5
	c.jr	ra

;; chan_update_tx_power: 2305C6BA
;;   Called from:
;;     230494AE (in tpc_update_vif_tx_power)
;;     2305C838 (in chan_ctxt_link)
;;     2305C954 (in chan_ctxt_unlink)
chan_update_tx_power proc
	lbu	a5,a0,+00000018
	c.beqz	a5,000000002305C72A

l2305C6C0:
	lui	a4,0004201C
	addi	a5,a4,-00000308
	c.lw	a5,64(a3)
	addi	a4,a4,-00000308
	addi	a5,zero,+0000007F
	bne	a0,a3,000000002305C6F4

l2305C6D6:
	lbu	a3,a4,+00000059
	lbu	a5,a4,+0000005A
	slli	a2,a3,00000018
	slli	a1,a5,00000018
	c.srai	a1,00000018
	c.srai	a2,00000018
	bge	a2,a1,000000002305C6F0

l2305C6EE:
	c.mv	a5,a3

l2305C6F0:
	c.slli	a5,18
	c.srai	a5,00000018

l2305C6F4:
	lw	a3,a4,+00000618
	bne	a0,a3,000000002305C71A

l2305C6FC:
	lbu	a3,a4,+00000632
	slli	a2,a3,00000018
	c.srai	a2,00000018
	bge	a5,a2,000000002305C70C

l2305C70A:
	c.mv	a3,a5

l2305C70C:
	lb	a4,a4,+00000631
	slli	a5,a3,00000018
	c.srai	a5,00000018
	blt	a4,a5,000000002305C724

l2305C71A:
	addi	a4,zero,+0000007F
	bne	a5,a4,000000002305C726

l2305C722:
	c.jr	ra

l2305C724:
	c.mv	a5,a4

l2305C726:
	sb	a5,a0,+0000000C

l2305C72A:
	c.jr	ra

;; chan_ctxt_link: 2305C72C
;;   Called from:
;;     2304B2D2 (in vif_mgmt_switch_channel)
;;     2304B2F6 (in vif_mgmt_switch_channel)
;;     23063AF2 (in scanu_join_cfm_handler)
;;     23064392 (in apm_start_cac_req_handler)
;;     23064612 (in apm_start_req_handler)
chan_ctxt_link proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.li	s2,0000001C
	c.swsp	s3,00000084
	add	s2,a1,s2
	c.mv	s3,a0
	addi	a4,zero,+000005D8
	c.swsp	s1,00000088
	c.mv	s1,a1
	lui	a1,0004201E
	addi	a5,a1,+00000244
	lui	a0,0004201C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	add	a4,s3,a4
	c.add	s2,a5
	addi	a5,a0,-00000308
	c.swsp	ra,0000008C
	addi	s0,a1,+00000244
	addi	s4,a0,-00000308
	c.add	a5,a4
	c.lw	a5,64(a5)
	c.beqz	a5,000000002305C786

l2305C76C:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-00000664
	addi	a1,a1,+00000388
	addi	a0,a0,+00000130
	jal	ra,0000000023054FF4

l2305C786:
	c.li	a5,0000001C
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a4,a5,+00000017
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002305C7B4

l2305C79A:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-00000663
	addi	a1,a1,+00000388
	addi	a0,a0,+000000E4
	jal	ra,0000000023054FF4

l2305C7B4:
	c.li	a1,0000001C
	add	a1,s1,a1
	addi	a0,zero,+000005D8
	c.lui	a4,0000D000
	addi	a4,a4,-00000800
	add	a0,s3,a0
	c.add	a1,s0
	lui	s0,0004201E
	lbu	s1,a1,+00000018
	addi	s0,s0,+000002D0
	c.lw	s0,104(a5)
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.add	a5,a4
	c.sw	s0,104(a5)
	c.add	a0,s4
	sw	s2,a0,+00000040
	sb	s1,a1,+00000018
	c.li	a5,00000001
	bne	s1,a5,000000002305C828

l2305C7F2:
	lbu	a5,s0,+00000072
	lui	a0,0004201E
	sb	s1,a1,+00000016
	c.addi	a5,00000001
	c.mv	a1,s2
	addi	a0,a0,+000002D8
	sb	a5,s0,+00000072
	jal	ra,000000002304FFBE
	c.lw	s0,36(a5)
	c.bnez	a5,000000002305C844

l2305C812:
	lbu	a5,s0,+00000070
	c.andi	a5,0000000C
	c.bnez	a5,000000002305C828

l2305C81A:
	lbu	a5,s0,+00000072
	bne	a5,s1,000000002305C83C

l2305C822:
	c.mv	a0,s2
	jal	ra,000000002305B68E

l2305C828:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002305C6BA

l2305C83C:
	c.li	a0,00000000
	jal	ra,000000002305B926
	c.j	000000002305C828

l2305C844:
	sb	s1,a5,+00000016
	sw	zero,s0,+00000024
	c.j	000000002305C828

;; chan_ctxt_unlink: 2305C84E
;;   Called from:
;;     2304B262 (in vif_mgmt_switch_channel)
;;     2304D5DA (in sm_delete_resources)
;;     2304F3EC (in apm_stop)
;;     2306427C (in apm_stop_cac_req_handler)
chan_ctxt_unlink proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201C
	addi	a5,s1,-00000308
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s2,a0
	addi	s1,s1,-00000308
	c.add	a5,a4
	c.lw	a5,64(s0)
	c.bnez	s0,000000002305C88E

l2305C874:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-0000061C
	addi	a1,a1,+00000388
	addi	a0,a0,+00000150
	jal	ra,0000000023054FF4

l2305C88E:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	lui	a0,0004201E
	addi	a0,a0,+000002E0
	addi	a1,s2,+00000044
	c.add	a1,s1
	c.add	s1,s2
	jal	ra,0000000023050046
	sb	zero,s1,+0000004E
	sw	zero,s1,+00000040
	lbu	a5,s0,+00000018
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000018
	lbu	a5,s0,+00000016
	c.beqz	a5,000000002305C934

l2305C8C2:
	lui	s1,0004201E
	addi	a3,s1,+000002D0
	c.lw	a3,104(a5)
	c.lui	a4,FFFF4000
	addi	a4,a4,-00000800
	c.add	a5,a4
	c.sw	a3,104(a5)
	lbu	a5,s0,+00000018
	addi	s1,s1,+000002D0
	c.bnez	a5,000000002305C942

l2305C8E0:
	lui	a0,0004201E
	c.mv	a1,s0
	addi	a0,a0,+000002D8
	lw	s2,s1,+00000024
	jal	ra,0000000023050046
	sb	zero,s0,+00000016
	lbu	a5,s1,+00000072
	c.lw	s1,32(a4)
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s1,+00000072
	bne	a4,s0,000000002305C920

l2305C90A:
	sw	zero,s1,+00000020

l2305C90E:
	bne	s2,zero,000000002305C928

l2305C912:
	c.li	a4,00000001
	bgeu	a4,a5,000000002305C958

l2305C918:
	c.li	a0,00000000
	jal	ra,000000002305B926
	c.j	000000002305C934

l2305C920:
	bne	s2,s0,000000002305C90E

l2305C924:
	sw	zero,s1,+00000024

l2305C928:
	lbu	a5,s1,+00000070
	ori	a5,a5,+00000020
	sb	a5,s1,+00000070

l2305C934:
	lbu	a5,s0,+00000018
	c.bnez	a5,000000002305C942

l2305C93A:
	lbu	a0,s0,+00000017
	jal	ra,000000002305C306

l2305C942:
	c.li	a0,00000000
	jal	ra,000000002305B82E
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002305C6BA

l2305C958:
	bne	a5,a4,000000002305C934

l2305C95C:
	c.lw	s1,8(a0)
	jal	ra,000000002305B68E
	c.j	000000002305C934

;; hal_dma_init: 2305C964
;;   Called from:
;;     2305D7AA (in mm_init)
hal_dma_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a0,s0,+00000344
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002304FFB4
	lui	s1,00044A00
	lw	a5,s1,+000000A4
	lui	a0,0004201E
	addi	s0,s0,+00000344
	addi	a0,a0,+0000034C
	sh	a5,s0,+00000018
	jal	ra,000000002304FFB4
	lw	a5,s1,+000000AC
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	sh	a5,s0,+0000001A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hal_dma_push: 2305C9A6
;;   Called from:
;;     2304D52A (in scanu_start)
hal_dma_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,8(a5)
	c.mv	s1,a1
	c.lw	a0,4(s0)
	c.beqz	a5,000000002305CA1A

l2305C9B6:
	lui	a5,00023083
	addi	a5,a5,-000007D4
	c.add	a5,a1
	lbu	a5,a5,+00000000
	ori	a4,a5,+00000010
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00001000
	c.or	a5,a4
	sh	a5,s0,+0000000A
	csrrci	zero,mstatus,00000008
	slli	a5,a1,00000003
	c.mv	a1,a0
	lui	a0,0004201E
	addi	a0,a0,+00000344
	c.add	a0,a5
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008

l2305C9F0:
	lhu	a2,s0,+00000008
	c.lw	s0,0(a1)
	c.lw	s0,4(a0)
	jal	ra,000000002306CF80
	c.beqz	s1,000000002305CA20

l2305C9FE:
	c.li	a5,00000001
	beq	s1,a5,000000002305CA30

l2305CA04:
	lui	s0,0002307E

l2305CA08:
	addi	a0,zero,+000003E8
	jal	ra,0000000023033E10
	addi	a0,s0,+000001E0
	jal	ra,0000000023003A8A
	c.j	000000002305CA08

l2305CA1A:
	sh	zero,s0,+0000000A
	c.j	000000002305C9F0

l2305CA20:
	addi	a0,zero,+00000040

l2305CA24:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230501A8

l2305CA30:
	lui	a0,00010000
	c.j	000000002305CA24

;; hal_dma_evt: 2305CA36
hal_dma_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.bnez	a0,000000002305CA72

l2305CA42:
	addi	a0,zero,+00000040

l2305CA46:
	jal	ra,00000000230501C0
	csrrci	zero,mstatus,00000008
	lui	a5,0004201E
	slli	s0,s1,00000003
	addi	a5,a5,+00000344
	c.add	s0,a5

l2305CA5C:
	c.mv	a0,s0
	jal	ra,000000002305003A
	csrrsi	zero,mstatus,00000008
	c.bnez	a0,000000002305CA78

l2305CA68:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305CA72:
	lui	a0,00010000
	c.j	000000002305CA46

l2305CA78:
	c.lw	a0,8(a5)
	c.beqz	a5,000000002305CA82

l2305CA7C:
	c.lw	a0,12(a0)
	c.mv	a1,s1
	c.jalr	a5

l2305CA82:
	csrrci	zero,mstatus,00000008
	c.j	000000002305CA5C

;; blmac_soft_reset_getf: 2305CA88
;;   Called from:
;;     2305CB6C (in hal_machw_stop)
;;     2305CB8A (in hal_machw_init)
blmac_soft_reset_getf proc
	c.addi	sp,FFFFFFF0
	lui	a5,00044B08
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,80(s0)
	andi	a5,s0,-00000002
	c.beqz	a5,000000002305CAB2

l2305CA9A:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000011D
	addi	a1,a1,+00000388
	addi	a0,a0,+00000218
	jal	ra,0000000023054FF4

l2305CAB2:
	andi	a0,s0,+000000FF
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; blmac_wt_2_crypt_clk_ratio_setf: 2305CABE
;;   Called from:
;;     2305CD22 (in hal_machw_init)
blmac_wt_2_crypt_clk_ratio_setf proc
	lui	a4,00044B00
	lw	a5,a4,+000000F0
	c.andi	a5,FFFFFFFC
	c.or	a0,a5
	sw	a0,a4,+000000F0
	c.jr	ra

;; blmac_rx_flow_cntrl_en_setf.constprop.9: 2305CAD0
;;   Called from:
;;     2305CEFE (in hal_machw_init)
;;     2305D022 (in hal_machw_reset)
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

;; blmac_key_sto_ram_reset_setf.constprop.12: 2305CAE4
;;   Called from:
;;     2305CF48 (in hal_machw_init)
;;     2305D112 (in hal_machw_monitor_mode)
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

;; hal_machw_idle_req: 2305CAF8
;;   Called from:
;;     230470A2 (in mm_set_idle_req_handler)
;;     230471F6 (in mm_start_req_handler)
;;     2304727E (in mm_force_idle_req_handler)
;;     23047804 (in mm_hw_config_handler)
hal_machw_idle_req proc
	lui	a5,00044B00
	c.lw	a5,56(a4)
	c.andi	a4,0000000F
	c.bnez	a4,000000002305CB1A

l2305CB02:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+000000E1
	addi	a1,a1,+00000388
	addi	a0,a0,+00000588
	jal	zero,0000000023054FB4

l2305CB1A:
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
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	ori	a4,a4,+00000004
	c.sw	a5,4(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; hal_machw_stop: 2305CB60
;;   Called from:
;;     23047102 (in mm_reset_req_handler)
hal_machw_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l2305CB6C:
	jal	ra,000000002305CA88
	c.bnez	a0,000000002305CB6C

l2305CB72:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_machw_init: 2305CB78
;;   Called from:
;;     2305D77E (in mm_init)
hal_machw_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,00044B08
	c.li	a4,00000001
	c.sw	a5,80(a4)

l2305CB8A:
	jal	ra,000000002305CA88
	c.bnez	a0,000000002305CB8A

l2305CB90:
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
	jal	ra,0000000023056312
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
	c.beqz	a5,000000002305CC2A

l2305CC10:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-000002A7
	addi	a1,a1,+00000388
	addi	a0,a0,+000005B0
	jal	ra,0000000023054FF4

l2305CC2A:
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
	c.beqz	a5,000000002305CCE4

l2305CCCA:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,-0000015E
	addi	a1,a1,+00000388
	addi	a0,a0,+000005F4
	jal	ra,0000000023054FF4

l2305CCE4:
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
	bgeu	a5,s1,000000002305CD22

l2305CD16:
	addi	a5,zero,+0000003B
	c.li	a0,00000002
	bgeu	a5,s1,000000002305CD22

l2305CD20:
	c.li	a0,00000001

l2305CD22:
	jal	ra,000000002305CABE
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
	c.beqz	a5,000000002305CDBC

l2305CDA2:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,+0000028A
	addi	a1,a1,+00000388
	addi	a0,a0,+0000063C
	jal	ra,0000000023054FF4

l2305CDBC:
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
	c.beqz	a5,000000002305CE16

l2305CDFC:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,+000002A4
	addi	a1,a1,+00000388
	addi	a0,a0,+00000680
	jal	ra,0000000023054FF4

l2305CE16:
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
	c.beqz	s0,000000002305CE6C

l2305CE52:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,a2,+000002BE
	addi	a1,a1,+00000388
	addi	a0,a0,+000006C0
	jal	ra,0000000023054FF4

l2305CE6C:
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
	bltu	a4,a5,000000002305CEBE

l2305CEA6:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000124
	addi	a1,a1,+00000388
	addi	a0,a0,+00000708
	jal	ra,0000000023054FF4

l2305CEBE:
	lui	a0,0002307E
	c.li	a3,00000008
	c.li	a2,00000011
	c.li	a1,00000002
	addi	a0,a0,+00000750
	jal	ra,0000000023003AC6
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
	jal	ra,000000002305CAD0
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
	jal	ra,000000002305CAE4
	sw	s1,s0,+00000510
	lw	a5,s0,+00000310
	ori	a5,a5,+00000080
	sw	a5,s0,+00000310
	jal	ra,00000000230562F2
	c.addi	a0,00000001
	slli	s0,a0,0000001A
	lui	a5,000E0000
	c.and	a5,s0
	c.beqz	a5,000000002305CF86

l2305CF6E:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,s2,+00000539
	addi	a1,a1,+00000388
	addi	a0,a0,+00000788
	jal	ra,0000000023054FF4

l2305CF86:
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

;; hal_machw_disable_int: 2305CFBA
;;   Called from:
;;     23054FD6 (in assert_rec)
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

;; hal_machw_reset: 2305CFD8
;;   Called from:
;;     2305DCB0 (in mm_force_idle_req)
;;     2305EED0 (in bl_reset_evt)
hal_machw_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002305CFF4

l2305CFE8:
	lui	a0,0002307E
	addi	a0,a0,+00000208
	jal	ra,0000000023056D84

l2305CFF4:
	lui	a5,00044B00
	c.lw	a5,76(a4)
	lui	s0,00044B00
	andi	a4,a4,-00000081
	c.sw	a5,76(a4)
	sw	zero,a5,+00000038
	addi	a4,zero,+0000007C
	c.sw	a5,84(a4)

l2305D00E:
	c.lw	s0,56(a5)
	c.andi	a5,0000000F
	c.bnez	a5,000000002305D00E

l2305D014:
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,000000002305CAD0
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

;; hal_machw_search_addr: 2305D070
;;   Called from:
;;     2304C12A (in rxu_cntrl_frame_handle)
;;     2304FAE2 (in apm_auth_handler)
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

l2305D0AC:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000002
	blt	a3,zero,000000002305D0AC

l2305D0B8:
	slli	a4,a5,00000003
	addi	a0,zero,+000000FF
	blt	a4,zero,000000002305D0CE

l2305D0C4:
	srli	a0,a5,00000010
	c.addi	a0,FFFFFFF8
	andi	a0,a0,+000000FF

l2305D0CE:
	c.jr	ra

;; hal_machw_monitor_mode: 2305D0D0
;;   Called from:
;;     23047524 (in mm_hw_config_handler)
hal_machw_monitor_mode proc
	lui	a5,00044B08
	c.lw	a5,116(a4)
	lui	a3,0004201E
	addi	a3,a3,+00000360
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
	jal	zero,000000002305CAE4

;; hal_machw_sleep_check: 2305D116
;;   Called from:
;;     2305EF3A (in bl_sleep)
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

l2305D136:
	sll	a4,a6,a5
	c.and	a4,a0
	c.beqz	a4,000000002305D18E

l2305D13E:
	slli	a3,a5,00000002
	c.add	a3,a7
	lw	t4,a3,+00000000
	lw	a4,a2,+00000120
	sub	a4,t1,a4
	c.add	a4,t4
	bge	a4,zero,000000002305D18E

l2305D156:
	c.lw	a3,0(a4)
	lw	a3,a2,+00000120
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.sub	a5,a3
	c.add	a5,a4
	c.li	s0,00000000
	bge	a5,zero,000000002305D184

l2305D16C:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000208
	addi	a1,a1,+00000388
	addi	a0,a0,+000007C8
	jal	ra,0000000023054FF4

l2305D184:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305D18E:
	c.addi	a5,00000001
	bne	a5,a1,000000002305D136

l2305D194:
	c.li	s0,00000001
	c.j	000000002305D184

;; hal_machw_gen_handler: 2305D198
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
	c.beqz	a5,000000002305D1BE

l2305D1B6:
	lui	a0,00000400
	jal	ra,00000000230501A8

l2305D1BE:
	lui	a5,00000080
	c.addi	a5,00000002
	c.and	a5,s0
	c.beqz	a5,000000002305D1D0

l2305D1C8:
	lui	a0,00000200
	jal	ra,00000000230501A8

l2305D1D0:
	andi	a5,s0,+00000004
	c.beqz	a5,000000002305D1F8

l2305D1D6:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,000000002305D292

l2305D1E0:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000008C
	addi	a1,a1,+00000388
	addi	a0,a0,+000005D8
	jal	ra,0000000023054FB4

l2305D1F8:
	andi	a5,s0,+00000008
	c.beqz	a5,000000002305D26C

l2305D1FE:
	lui	a5,00044B08
	lw	s1,a5,+00000084
	sw	s1,a5,+00000088
	andi	a5,s1,+00000100
	c.beqz	a5,000000002305D218

l2305D210:
	lui	a0,00004000
	jal	ra,00000000230501A8

l2305D218:
	andi	a5,s1,+00000040
	c.beqz	a5,000000002305D222

l2305D21E:
	jal	ra,000000002304849E

l2305D222:
	andi	a5,s1,+00000080
	c.beqz	a5,000000002305D230

l2305D228:
	lui	a0,00008000
	jal	ra,00000000230501A8

l2305D230:
	andi	a5,s1,+00000001
	c.beqz	a5,000000002305D24E

l2305D236:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000022F
	addi	a1,a1,+00000388
	addi	a0,a0,+00000244
	jal	ra,0000000023054FB4

l2305D24E:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002305D2BA

l2305D254:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000232
	addi	a1,a1,+00000388
	addi	a0,a0,+00000260

l2305D268:
	jal	ra,0000000023054FB4

l2305D26C:
	andi	a5,s0,+00000080
	c.beqz	a5,000000002305D32A

l2305D272:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000278
	addi	a1,a1,+00000388
	addi	a0,a0,+00000328

l2305D286:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023054FB4

l2305D292:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	lui	a0,00000800
	andi	a5,a5,-00000021
	sw	a5,a4,+0000008C
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFB
	c.sw	a5,4(a4)
	jal	ra,00000000230501A8
	c.j	000000002305D1F8

l2305D2BA:
	andi	a5,s1,+00000004
	c.beqz	a5,000000002305D2D6

l2305D2C0:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000233
	addi	a1,a1,+00000388
	addi	a0,a0,+00000288
	c.j	000000002305D268

l2305D2D6:
	andi	a5,s1,+00000008
	c.beqz	a5,000000002305D2F2

l2305D2DC:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000234
	addi	a1,a1,+00000388
	addi	a0,a0,+000002B0
	c.j	000000002305D268

l2305D2F2:
	andi	a5,s1,+00000010
	c.beqz	a5,000000002305D30E

l2305D2F8:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000235
	addi	a1,a1,+00000388
	addi	a0,a0,+000002D8
	c.j	000000002305D268

l2305D30E:
	andi	s1,s1,+00000020
	c.beqz	s1,000000002305D26C

l2305D314:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000236
	addi	a1,a1,+00000388
	addi	a0,a0,+00000300
	c.j	000000002305D268

l2305D32A:
	andi	a5,s0,+00000100
	c.beqz	a5,000000002305D346

l2305D330:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000279
	addi	a1,a1,+00000388
	addi	a0,a0,+00000354
	c.j	000000002305D286

l2305D346:
	slli	a5,s0,00000013
	bge	a5,zero,000000002305D364

l2305D34E:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027A
	addi	a1,a1,+00000388
	addi	a0,a0,+00000384
	c.j	000000002305D286

l2305D364:
	slli	a5,s0,00000012
	bge	a5,zero,000000002305D382

l2305D36C:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027B
	addi	a1,a1,+00000388
	addi	a0,a0,+000003AC
	c.j	000000002305D286

l2305D382:
	slli	a5,s0,00000011
	bge	a5,zero,000000002305D3A0

l2305D38A:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027C
	addi	a1,a1,+00000388
	addi	a0,a0,+000003DC
	c.j	000000002305D286

l2305D3A0:
	slli	a5,s0,00000010
	bge	a5,zero,000000002305D3BE

l2305D3A8:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027D
	addi	a1,a1,+00000388
	addi	a0,a0,+0000040C
	c.j	000000002305D286

l2305D3BE:
	slli	a5,s0,0000000F
	bge	a5,zero,000000002305D3DC

l2305D3C6:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027E
	addi	a1,a1,+00000388
	addi	a0,a0,+0000043C
	c.j	000000002305D286

l2305D3DC:
	slli	a5,s0,0000000E
	bge	a5,zero,000000002305D3FA

l2305D3E4:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+0000027F
	addi	a1,a1,+00000388
	addi	a0,a0,+0000046C
	c.j	000000002305D286

l2305D3FA:
	slli	a5,s0,0000000A
	bge	a5,zero,000000002305D418

l2305D402:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000280
	addi	a1,a1,+00000388
	addi	a0,a0,+0000049C
	c.j	000000002305D286

l2305D418:
	slli	a5,s0,00000009
	bge	a5,zero,000000002305D436

l2305D420:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000281
	addi	a1,a1,+00000388
	addi	a0,a0,+000004D0
	c.j	000000002305D286

l2305D436:
	slli	a5,s0,00000007
	bge	a5,zero,000000002305D454

l2305D43E:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000282
	addi	a1,a1,+00000388
	addi	a0,a0,+000004F8
	c.j	000000002305D286

l2305D454:
	slli	a5,s0,00000006
	bge	a5,zero,000000002305D472

l2305D45C:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000283
	addi	a1,a1,+00000388
	addi	a0,a0,+0000052C
	c.j	000000002305D286

l2305D472:
	slli	a5,s0,0000000B
	bge	a5,zero,000000002305D490

l2305D47A:
	lui	a1,0002307B
	lui	a0,0002307E
	addi	a2,zero,+00000284
	addi	a1,a1,+00000388
	addi	a0,a0,+00000560
	c.j	000000002305D286

l2305D490:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mm_rx_filter_set: 2305D49A
;;   Called from:
;;     2305D76C (in mm_env_init)
;;     2305DBEC (in mm_hw_info_set)
;;     2305DC0A (in mm_hw_ap_info_set)
;;     2305DC40 (in mm_hw_ap_info_reset)
mm_rx_filter_set proc
	lui	a5,0004201E
	addi	a5,a5,+00000360
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.jr	ra

;; element_notify_status_enabled: 2305D4B0
element_notify_status_enabled proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_ap_setf: 2305D4B4
;;   Called from:
;;     2305DB80 (in mm_hw_info_set)
;;     2305DBF6 (in mm_hw_ap_info_set)
;;     2305DC2C (in mm_hw_ap_info_reset)
blmac_ap_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ascii_to_hex: 2305D4C4
;;   Called from:
;;     2305DEC8 (in mm_sta_add)
;;     2305DED4 (in mm_sta_add)
ascii_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,000000002305D4EA

l2305D4D4:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,000000002305D4EC

l2305D4E2:
	addi	a5,a5,-00000057

l2305D4E6:
	andi	a0,a5,+000000FF

l2305D4EA:
	c.jr	ra

l2305D4EC:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,000000002305D4EA

l2305D4FA:
	addi	a5,a5,-00000037
	c.j	000000002305D4E6

;; element_notify_time_last_received_set: 2305D500
element_notify_time_last_received_set proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_encr_cntrl_pack.constprop.8: 2305D504
;;   Called from:
;;     2305D908 (in mm_sec_machwaddr_wr)
;;     2305D9B6 (in mm_sec_machwkey_wr)
;;     2305DAC2 (in mm_sec_machwkey_del)
;;     2305DB44 (in mm_sec_machwaddr_del)
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
	c.beqz	a5,000000002305D550

l2305D536:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000078D
	addi	a1,a1,+00000388
	addi	a0,a0,-000007F4
	jal	ra,0000000023054FF4

l2305D550:
	c.slli	s1,02
	andi	a5,s1,-0000000D
	c.beqz	a5,000000002305D572

l2305D558:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-0000078C
	addi	a1,a1,+00000388
	addi	a0,a0,-000007B8
	jal	ra,0000000023054FF4

l2305D572:
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

;; element_notify_keepalive_received: 2305D5B0
element_notify_keepalive_received proc
	c.li	a0,00000000
	c.jr	ra

;; hal_machw_rx_duration: 2305D5B4
;;   Called from:
;;     2305E334 (in mm_check_beacon)
;;     2305E33E (in mm_check_beacon)
hal_machw_rx_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a0,40(a4)
	lui	a5,0002307E
	addi	a5,a5,+000007FC
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	c.add	a5,a4
	lbu	s1,a5,+00000000
	c.mv	s0,a0
	c.mv	s2,a1
	andi	a5,s1,-00000080
	c.beqz	a5,000000002305D5F6

l2305D5DC:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,a2,-00000567
	addi	a1,a1,+00000388
	addi	a0,a0,-0000077C
	jal	ra,0000000023054FF4

l2305D5F6:
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

l2305D61A:
	lw	a3,a4,+00000168
	addi	a5,a4,+00000168
	slli	a2,a3,00000001
	bge	a2,zero,000000002305D61A

l2305D62A:
	c.lw	a5,0(a4)
	slli	a3,a4,00000001
	blt	a3,zero,000000002305D65C

l2305D634:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a0,a0,-0000073C
	addi	a2,zero,+00000105
	addi	a1,a1,+00000388
	jal	ra,0000000023054FB4
	addi	a0,zero,+000001F4

l2305D650:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305D65C:
	c.lw	a5,0(a0)
	c.slli	a0,10
	c.srli	a0,00000010
	c.j	000000002305D650

;; mm_env_max_ampdu_duration_set: 2305D664
;;   Called from:
;;     23047636 (in mm_hw_config_handler)
;;     2304778C (in mm_hw_config_handler)
;;     2305D776 (in mm_env_init)
mm_env_max_ampdu_duration_set proc
	lui	a3,00044B00
	lw	a4,a3,+00000200
	addi	a5,zero,+00000096
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a4,000000002305D690

l2305D678:
	lw	a4,a3,+00000200
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a4,000000002305D690

l2305D686:
	lw	a5,a3,+00000200
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l2305D690:
	lui	a4,0004201E
	addi	a3,a4,+00000360
	sh	a5,a3,+00000008
	lui	a2,00044B00
	lw	a3,a2,+00000204
	addi	a4,a4,+00000360
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,000000002305D6CC

l2305D6B4:
	lw	a3,a2,+00000204
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,000000002305D6CC

l2305D6C2:
	lw	a5,a2,+00000204
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l2305D6CC:
	sh	a5,a4,+0000000A
	lui	a2,00044B00
	lw	a3,a2,+00000208
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,000000002305D6FC

l2305D6E4:
	lw	a3,a2,+00000208
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,000000002305D6FC

l2305D6F2:
	lw	a5,a2,+00000208
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l2305D6FC:
	sh	a5,a4,+0000000C
	lui	a2,00044B00
	lw	a3,a2,+0000020C
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,000000002305D72C

l2305D714:
	lw	a3,a2,+0000020C
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,000000002305D72C

l2305D722:
	lw	a5,a2,+0000020C
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l2305D72C:
	sh	a5,a4,+0000000E
	sh	a5,a4,+00000010
	c.jr	ra

;; mm_env_init: 2305D736
;;   Called from:
;;     2305D782 (in mm_init)
mm_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	addi	a0,s0,+00000360
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	addi	a5,s0,+00000360
	addi	a4,zero,+00000101
	sh	a4,a5,+00000022
	lui	a4,00080000
	xori	a4,a4,-00000022
	sh	zero,a5,+00000012
	sw	zero,a5,+00000004
	c.sw	a5,0(a4)
	jal	ra,000000002305D49A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305D664

;; mm_init: 2305D77A
;;   Called from:
;;     2304710E (in mm_reset_req_handler)
;;     2305EE86 (in bl_init)
mm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305CB78
	jal	ra,000000002305D736
	jal	ra,000000002304AC5E
	jal	ra,0000000023048D76
	jal	ra,00000000230492E2
	jal	ra,0000000023047CC0
	jal	ra,00000000230495E4
	jal	ra,00000000230483A4
	jal	ra,00000000230478E8
	jal	ra,000000002305F064
	jal	ra,000000002305BF62
	jal	ra,000000002305C964
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305E808

;; mm_active: 2305D7B6
;;   Called from:
;;     23046D0C (in mm_monitor_enable_req_handler)
;;     230470F0 (in mm_set_idle_req_handler)
;;     230471F2 (in mm_start_req_handler)
;;     2305BC8C (in chan_pre_switch_channel)
;;     2305BD62 (in chan_goto_idle_cb)
;;     2305D7DC (in mm_reset)
;;     2305DC98 (in mm_back_to_host_idle)
mm_active proc
	lui	a5,00044B00
	addi	a4,zero,+00000030
	c.sw	a5,56(a4)
	c.li	a1,00000001
	c.li	a0,00000000
	jal	zero,000000002305060E

;; mm_reset: 2305D7C8
;;   Called from:
;;     2305EEDC (in bl_reset_evt)
mm_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000001
	bne	a0,a5,000000002305D7E0

l2305D7D8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305D7B6

l2305D7E0:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002305060E

;; mm_tbtt_evt: 2305D7EC
mm_tbtt_evt proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201F
	c.swsp	s0,0000000C
	lw	s0,a5,-00000124
	lui	a5,00000600
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.and	s0,a5
	bne	s0,a5,000000002305D822

l2305D80A:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000321
	addi	a1,a1,+00000388
	addi	a0,a0,-00000698
	jal	ra,0000000023054FF4

l2305D822:
	c.mv	a0,s0
	jal	ra,00000000230501C0
	lui	a5,0004201D
	lw	s0,a5,-00000750
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,0000000023049734
	csrrsi	zero,mstatus,00000008
	c.li	s1,00000002
	lui	s2,00044B00
	lui	s3,00044B08

l2305D852:
	c.bnez	s0,000000002305D864

l2305D854:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002305E9BC

l2305D864:
	lbu	a5,s0,+00000056
	bne	a5,s1,000000002305D8A8

l2305D86C:
	lbu	a5,s0,+00000341
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000341
	c.bnez	a5,000000002305D8A8

l2305D87C:
	lbu	a5,s0,+00000340
	c.mv	a0,s0
	sb	a5,s0,+00000341
	jal	ra,000000002304B166
	c.lw	s0,64(a3)
	lw	a4,s2,+00000120
	lw	a5,s3,+00000040
	c.beqz	a3,000000002305D8A8

l2305D896:
	lhu	a1,s0,+0000033E
	c.slli	a5,05
	c.add	a5,a4
	c.slli	a1,0A
	c.add	a1,a5
	c.mv	a0,s0
	jal	ra,000000002305C44E

l2305D8A8:
	c.lw	s0,0(s0)
	c.j	000000002305D852

;; mm_sec_machwaddr_wr: 2305D8AC
;;   Called from:
;;     2305DD04 (in mm_sta_add)
mm_sec_machwaddr_wr proc
	c.addi	sp,FFFFFFF0
	addi	a4,zero,+000001B0
	c.swsp	s0,00000004
	addi	s0,a0,+00000008
	add	a0,a0,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
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
	jal	ra,000000002305D504
	lui	a4,00044B00

l2305D910:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,000000002305D910

l2305D91C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_sec_machwkey_wr: 2305D926
;;   Called from:
;;     23046FCC (in mm_key_add_req_handler)
;;     230516E8 (in add_key_to_mac)
;;     23051978 (in add_mfp_key_to_mac)
;;     2305DE76 (in mm_sta_add)
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
	bne	s2,a5,000000002305D9DA

l2305D944:
	lbu	a5,a0,+00000000
	slli	s0,s3,00000002
	c.li	a4,FFFFFFFF
	c.add	s0,a5
	lui	a5,00044B00
	andi	s0,s0,+000000FF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	c.mv	a1,s0
	jal	ra,000000002304AFAE

l2305D966:
	lbu	a3,s1,+00000028
	c.li	a5,00000003
	bltu	a5,a3,000000002305DA38

l2305D970:
	lui	a4,00023083
	lui	a5,00023083
	addi	a4,a4,-000007D0
	addi	a5,a5,-000007CC
	c.add	a4,a3
	c.add	a5,a3
	lbu	a7,a4,+00000000
	lbu	a3,a5,+00000000

l2305D98C:
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
	jal	ra,000000002305D504
	lui	a4,00044B00

l2305D9BE:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,000000002305D9BE

l2305D9CA:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305D9DA:
	c.li	a5,0000000B
	bgeu	a5,s2,000000002305D9F8

l2305D9E0:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000003E4
	addi	a1,a1,+00000388
	addi	a0,a0,-000006EC
	jal	ra,0000000023054FF4

l2305D9F8:
	addi	s0,s2,+00000008
	andi	s0,s0,+000000FF
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023049018
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.add	a5,s2
	lhu	a4,a5,+00000020
	lhu	a3,a5,+0000001E
	c.slli	a4,10
	c.or	a4,a3
	lui	a3,00044B00
	sw	a4,a3,+000000BC
	lhu	a5,a5,+00000022
	sw	a5,a3,+000000C0
	c.j	000000002305D966

l2305DA38:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000429
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	ra,0000000023054FF4
	c.li	a3,00000000
	c.li	a7,00000001
	c.j	000000002305D98C

;; mm_sec_machwkey_del: 2305DA56
;;   Called from:
;;     23046F2C (in mm_key_del_req_handler)
;;     2304EFF8 (in apm_sta_delete)
;;     23051764 (in keyMgmtKeyGroupTxDone.isra.1)
;;     23054908 (in RemoveAPKeyInfo)
;;     2305DF90 (in mm_sta_del)
;;     2305DF98 (in mm_sta_del)
;;     2305DFA0 (in mm_sta_del)
;;     2305E00E (in mm_sta_del)
mm_sec_machwkey_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000007
	c.mv	s0,a0
	bgeu	a5,a0,000000002305DADE

l2305DA64:
	addi	a5,a0,-00000008
	addi	a4,zero,+000001B0
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a0,0004201B
	addi	a0,a0,-000007F8
	c.add	a0,a5
	lhu	a5,a0,+00000020
	lhu	a4,a0,+0000001E
	c.slli	a5,10
	c.or	a5,a4
	lui	a4,00044B00
	sw	a5,a4,+000000BC
	lhu	a5,a0,+00000022
	sw	a5,a4,+000000C0
	jal	ra,000000002304910E

l2305DA9E:
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
	jal	ra,000000002305D504
	lui	a4,00044B00

l2305DACA:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,000000002305DACA

l2305DAD6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305DADE:
	lui	a5,00044B00
	c.li	a4,FFFFFFFF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	srai	a5,a0,00000002
	addi	a0,zero,+000005D8
	add	a5,a5,a0
	lui	a0,0004201C
	addi	a0,a0,-00000308
	andi	a1,s0,+00000003
	c.add	a0,a5
	jal	ra,000000002304B0CC
	c.j	000000002305DA9E

;; mm_sec_machwaddr_del: 2305DB0C
;;   Called from:
;;     2305DFDA (in mm_sta_del)
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
	jal	ra,000000002305D504
	lui	a4,00044B00

l2305DB4C:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,000000002305DB4C

l2305DB58:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_hw_idle_evt: 2305DB5E
mm_hw_idle_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000800
	c.swsp	ra,00000084
	jal	ra,00000000230501C0
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002305060E

;; mm_hw_info_set: 2305DB76
;;   Called from:
;;     2304AD46 (in vif_mgmt_register)
mm_hw_info_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002305D4B4
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
	lui	a4,0004201E
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000360
	c.addi	sp,00000010
	jal	zero,000000002305D49A

;; mm_hw_ap_info_set: 2305DBF0
;;   Called from:
;;     2304AE70 (in vif_mgmt_register)
mm_hw_ap_info_set proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002305D4B4
	lui	a5,0003507A
	lui	a4,0004201E
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000360
	jal	ra,000000002305D49A
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

;; mm_hw_ap_info_reset: 2305DC26
;;   Called from:
;;     2304AFA8 (in vif_mgmt_unregister)
mm_hw_ap_info_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002305D4B4
	lui	a5,00035038
	lui	a4,0004201E
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000360
	jal	ra,000000002305D49A
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

;; mm_back_to_host_idle: 2305DC62
;;   Called from:
;;     2305BF5E (in chan_ctxt_op_evt)
mm_back_to_host_idle proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002305070E
	c.li	a5,00000003
	beq	a0,a5,000000002305DC8A

l2305DC72:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000052A
	addi	a1,a1,+00000388
	addi	a0,a0,-00000718
	jal	ra,0000000023054FF4

l2305DC8A:
	lui	a5,0004201E
	lbu	a5,a5,+00000382
	c.bnez	a5,000000002305DC9C

l2305DC94:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305D7B6

l2305DC9C:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002305060E

;; mm_force_idle_req: 2305DCA8
;;   Called from:
;;     2305BCF0 (in chan_goto_idle_cb)
;;     2305BDFA (in chan_tx_cfm)
;;     2305BF4E (in chan_ctxt_op_evt)
mm_force_idle_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	jal	ra,000000002305CFD8
	jal	ra,000000002304894A
	jal	ra,0000000023049EF6
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002305060E
	lui	a5,0004201E
	sh	zero,a5,+00000372
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_sta_add: 2305DCD6
;;   Called from:
;;     23046ED2 (in mm_sta_add_req_handler)
;;     230616C2 (in me_sta_add_req_handler)
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
	jal	ra,0000000023048E52
	c.mv	s2,a0
	c.bnez	a0,000000002305DD42

l2305DCFA:
	lbu	s1,s7,+00000011
	lbu	a0,s3,+00000000
	c.mv	a1,s1
	jal	ra,000000002305D8AC
	sb	a0,s0,+00000000
	addi	a0,zero,+000005D8
	add	a0,s1,a0
	lui	s0,0004201C
	addi	a5,s0,-00000308
	addi	s0,s0,-00000308
	c.add	a5,a0
	lbu	a4,a5,+00000056
	c.bnez	a4,000000002305DD42

l2305DD28:
	lbu	a4,a5,+000003E8
	c.bnez	a4,000000002305DD5C

l2305DD2E:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lbu	a4,s3,+00000000
	c.li	s2,00000000
	c.add	s0,s1
	sb	a4,s0,+00000060

l2305DD42:
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

l2305DD5C:
	lbu	a3,s3,+00000000
	lui	s4,0004201D
	addi	a4,s4,-00000610
	sb	a3,a4,+00000001
	lw	a4,a5,+000003E8
	c.lui	a3,00013000
	addi	a3,a3,-00000800
	c.and	a4,a3
	c.beqz	a4,000000002305DDE4

l2305DD7A:
	lui	a4,0004201D
	lw	a2,a4,-00000310
	lbu	a1,a5,+0000037E
	addi	a0,a0,+0000037F
	lbu	a5,a2,+00000181
	c.add	a0,s0
	c.beqz	a5,000000002305DDDE

l2305DD92:
	addi	a2,a2,+00000181

l2305DD96:
	jal	ra,0000000023065704

l2305DD9A:
	addi	a2,zero,+000005D8
	add	a2,s1,a2
	c.lui	a4,00012000
	add	a5,s0,a2
	lw	a3,a5,+000003E8
	c.and	a4,a3
	beq	a4,zero,000000002305DF06

l2305DDB2:
	lbu	a4,a5,+000003EF
	addi	a3,a2,+000003EE
	addi	a2,a2,+000003ED
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000004

l2305DDC4:
	addi	a0,s4,-00000610
	jal	ra,00000000230510D0

l2305DDCC:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a5,a5,+00000056
	c.beqz	a5,000000002305DD2E

l2305DDDC:
	c.j	000000002305DD42

l2305DDDE:
	addi	a2,a2,+00000141
	c.j	000000002305DD96

l2305DDE4:
	lbu	a5,a5,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,000000002305DD9A

l2305DDEC:
	lui	s5,0004201D
	addi	s6,s5,-00000310
	lw	a0,s6,+00000000
	addi	s5,s5,-00000310
	addi	a0,a0,+00000141
	jal	ra,000000002306D630
	lw	a2,s6,+00000000
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a2,a2,+00000141
	addi	a0,a0,-000006D8
	jal	ra,0000000023003AC6
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lbu	a5,s7,+00000011
	lw	a0,s6,+00000000
	sb	a5,sp,+0000002D
	addi	a0,a0,+00000141
	addi	a5,zero,-00000100
	sh	a5,sp,+00000004
	jal	ra,000000002306D630
	andi	a5,a0,+000000FF
	sb	a5,sp,+00000008
	c.li	a4,00000005
	beq	a5,a4,000000002305DE5E

l2305DE50:
	c.li	a4,0000000D
	bne	a5,a4,000000002305DE84

l2305DE56:
	c.li	a5,00000003
	sb	a5,sp,+0000002C
	c.j	000000002305DE62

l2305DE5E:
	sb	zero,sp,+0000002C

l2305DE62:
	lw	a1,s5,+00000000
	andi	a2,a0,+000000FF
	c.addi4spn	a0,0000000C
	addi	a1,a1,+00000141
	jal	ra,000000002306CF80

l2305DE74:
	c.addi4spn	a0,00000004
	jal	ra,000000002305D926
	lui	a5,0004200E
	sb	a0,a5,+00000CC0
	c.j	000000002305DD9A

l2305DE84:
	c.li	a4,0000000A
	beq	a5,a4,000000002305DEB4

l2305DE8A:
	c.li	a4,0000001A
	bne	a5,a4,000000002305DEEE

l2305DE90:
	c.li	a5,00000003

l2305DE92:
	sb	a5,sp,+0000002C
	andi	a5,a0,+00000001
	andi	s8,a0,+000000FF
	c.beqz	a5,000000002305DEA4

l2305DEA0:
	andi	s8,a0,+000000FE

l2305DEA4:
	bne	s8,zero,000000002305DEB8

l2305DEA8:
	lbu	a5,sp,+00000008
	c.srli	a5,00000001
	sb	a5,sp,+00000008
	c.j	000000002305DE74

l2305DEB4:
	c.li	a5,00000000
	c.j	000000002305DE92

l2305DEB8:
	lw	s5,s5,+00000000
	c.li	s7,00000000
	addi	s5,s5,+00000141

l2305DEC2:
	lbu	a0,s5,+00000000
	c.addi	s5,00000002
	jal	ra,000000002305D4C4
	c.mv	s6,a0
	lbu	a0,s5,-00000001
	c.slli	s6,04
	jal	ra,000000002305D4C4
	srai	a5,s7,00000001
	c.addi4spn	a4,00000030
	c.add	a5,a4
	c.add	s6,a0
	sb	s6,a5,+00000FDC
	c.addi	s7,00000002
	blt	s7,s8,000000002305DEC2

l2305DEEC:
	c.j	000000002305DEA8

l2305DEEE:
	lui	a0,0002307F
	addi	a0,a0,-000006C0
	jal	ra,0000000023003AC6
	lbu	a0,s3,+00000000
	c.li	s2,00000001
	jal	ra,0000000023048FC6
	c.j	000000002305DD42

l2305DF06:
	lbu	a4,a5,+000003E9
	c.andi	a4,00000008
	beq	a4,zero,000000002305DDCC

l2305DF10:
	addi	a3,a2,+000003EC
	addi	a2,a2,+000003EB
	lbu	a4,a5,+000003EF
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000003
	c.j	000000002305DDC4

;; mm_sta_del: 2305DF24
;;   Called from:
;;     23046E9A (in mm_sta_del_req_handler)
mm_sta_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	addi	s5,zero,+000001B0
	add	a5,a0,s5
	c.swsp	s2,00000008
	lui	s2,0004201B
	addi	s2,s2,-000007F8
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s6,00000000
	c.add	a5,s2
	lbu	s6,a5,+0000001A
	addi	s4,zero,+000005D8
	lui	s1,0004201C
	add	s4,s6,s4
	addi	s0,s1,-00000308
	c.mv	s3,a0
	c.add	s0,s4
	lbu	a4,s0,+00000056
	c.bnez	a4,000000002305E014

l2305DF66:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	lbu	a5,s0,+000003E8
	c.beqz	a5,000000002305DFD8

l2305DF72:
	lw	a5,s0,+000003E8
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.and	a5,a4
	addi	s1,s1,-00000308
	c.beqz	a5,000000002305DFF6

l2305DF84:
	lui	s5,0004201D
	addi	s2,s5,-00000610
	lbu	a0,s2,+00000004
	jal	ra,000000002305DA56
	lbu	a0,s2,+00000003
	jal	ra,000000002305DA56
	lbu	a0,s2,+00000005
	jal	ra,000000002305DA56
	addi	a0,s5,-00000610
	jal	ra,0000000023051048
	lw	a0,s2,+00000008
	c.li	a1,00000000
	addi	a2,zero,+00000022
	c.addi	a0,00000004
	jal	ra,000000002306D1BC
	lbu	a1,s0,+0000037E
	addi	a0,s4,+0000037F
	c.add	a0,s1
	jal	ra,000000002306578E

l2305DFCA:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	c.add	s1,s6
	sb	zero,s1,+000003E8

l2305DFD8:
	c.mv	a0,s3
	jal	ra,000000002305DB0C
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
	jal	zero,0000000023048FC6

l2305DFF6:
	lbu	a5,s0,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,000000002305DFCA

l2305DFFE:
	lui	a5,0004200E
	lbu	a0,a5,-00000340
	addi	a5,zero,+000000FF
	beq	a0,a5,000000002305DFCA

l2305E00E:
	jal	ra,000000002305DA56
	c.j	000000002305DFCA

l2305E014:
	lbu	a4,a5,+0000001C
	c.li	a5,00000001
	bne	a4,a5,000000002305DFD8

l2305E01E:
	lbu	a5,s0,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000034A
	c.bnez	a5,000000002305DFD8

l2305E02E:
	lbu	s1,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s1,0000000A
	andi	s1,s1,+000000FF
	add	s5,s1,s5
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,0000000023050474
	c.add	s2,s5
	sb	zero,s2,+0000001C
	sb	s1,a0,+00000000
	sb	zero,a0,+00000001
	jal	ra,00000000230504E0
	lbu	a1,s0,+00000057
	c.mv	a0,s0
	c.addi	a1,0000000A
	andi	a1,a1,+000000FF
	jal	ra,000000002304F65C
	c.j	000000002305DFD8

;; mm_cfg_element_keepalive_timestamp_update: 2305E06E
;;   Called from:
;;     2304C16A (in rxu_cntrl_frame_handle)
mm_cfg_element_keepalive_timestamp_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023033AF0
	lui	a5,0004201E
	addi	a5,a5,+00000360
	c.lw	a5,36(a4)
	c.sw	a5,40(a0)
	c.addi	a4,00000001
	c.sw	a5,36(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_send_connection_loss_ind: 2305E08C
;;   Called from:
;;     23047DF6 (in ps_enable_cfm)
;;     23047EF6 (in ps_disable_cfm)
;;     2304B346 (in vif_mgmt_switch_channel)
;;     2305E0C2 (in mm_ap_probe_cfm)
mm_send_connection_loss_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000001
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000006
	addi	a0,zero,+00000043
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	lbu	a5,s0,+00000057
	sb	a5,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; mm_ap_probe_cfm: 2305E0B4
mm_ap_probe_cfm proc
	slli	a4,a1,00000008
	bge	a4,zero,000000002305E0C2

l2305E0BC:
	sb	zero,a0,+00000074
	c.jr	ra

l2305E0C2:
	jal	zero,000000002305E08C

;; mm_check_rssi: 2305E0C6
;;   Called from:
;;     2305E292 (in mm_check_beacon)
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
	lui	s4,0004200E
	c.addi4spn	a0,00000008
	c.mv	s3,a1
	c.swsp	a5,00000004
	c.swsp	a6,00000084
	addi	s4,s4,+00000430
	jal	ra,0000000023050BE2
	beq	s6,zero,000000002305E134

l2305E10A:
	c.lwsp	s0,000000A4
	lw	a4,s4,+00000000
	lw	a2,s4,+00000004
	c.lwsp	a2,000000E4
	sub	a4,a3,a4
	sltu	a3,a3,a4
	c.sub	a5,a2
	c.sub	a5,a3
	blt	zero,a5,000000002305E134

l2305E126:
	c.bnez	a5,000000002305E162

l2305E128:
	lui	a5,000001E8
	addi	a5,a5,+00000480
	bgeu	a5,a4,000000002305E162

l2305E134:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,0000000023050474
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	sw	a4,s4,+00000000
	sw	a5,s4,+00000004
	jal	ra,00000000230504E0

l2305E162:
	c.beqz	s1,000000002305E1A6

l2305E164:
	slli	a5,s5,00000018
	c.srai	a5,00000018
	bne	s2,zero,000000002305E1BA

l2305E16E:
	bge	s3,s6,000000002305E178

l2305E172:
	c.sub	s1,a5
	slt	s2,s3,s1

l2305E178:
	lbu	a5,s0,+00000078
	beq	a5,s2,000000002305E1A2

l2305E180:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,0000000023050474
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	jal	ra,00000000230504E0

l2305E1A2:
	sb	s2,s0,+00000078

l2305E1A6:
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

l2305E1BA:
	bge	s6,s3,000000002305E178

l2305E1BE:
	c.add	s1,a5
	slt	s1,s1,s3
	xori	s2,s1,+00000001
	c.j	000000002305E178

;; mm_send_csa_traffic_ind: 2305E1CA
;;   Called from:
;;     2305E248 (in mm_check_beacon)
;;     2305E478 (in mm_sta_tbtt)
;;     23061E6E (in me_beacon_check)
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
	jal	ra,0000000023050474
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; mm_check_beacon: 2305E1F8
;;   Called from:
;;     23048754 (in rxl_cntrl_evt)
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
	lui	a5,0004200E
	addi	a5,a5,+0000042C
	c.lw	a5,0(a4)
	sb	zero,a1,+00000074
	c.mv	s0,a1
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lbu	a5,a1,+0000007A
	c.mv	s3,a2
	c.mv	s6,a3
	lw	s4,a1,+00000070
	c.beqz	a5,000000002305E250

l2305E242:
	lbu	a0,s0,+00000057
	c.li	a1,00000001
	jal	ra,000000002305E1CA
	sb	zero,s0,+0000007A

l2305E250:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	lui	a5,00001C9C
	addi	a5,a5,+00000380
	c.sub	a5,a4
	c.lw	s0,108(a4)
	c.add	a5,a4
	bge	a5,zero,000000002305E288

l2305E26A:
	lui	a5,0004201E
	lbu	a5,a5,+00000383
	c.beqz	a5,000000002305E288

l2305E274:
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002304A522
	c.bnez	a0,000000002305E288

l2305E282:
	lw	a5,s1,+00000120
	c.sw	s0,108(a5)

l2305E288:
	lb	a1,s5,+00000033
	c.mv	a0,s0
	addi	s1,s7,-00000024
	jal	ra,000000002305E0C6
	c.li	a2,00000000
	c.li	a1,00000004
	addi	a0,s2,+00000020
	jal	ra,0000000023064CC4
	c.slli	s1,10
	addi	s8,s2,+00000024
	c.srli	s1,00000010
	sw	zero,s6,+00000000
	c.li	s11,00000001
	c.li	a5,00000005
	c.li	a4,FFFFFFFE

l2305E2B4:
	bltu	s11,s1,000000002305E3FC

l2305E2B8:
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
	bne	s2,zero,000000002305E330

l2305E31C:
	lw	a5,s6,+00000000
	c.li	s2,00000001
	c.beqz	a5,000000002305E330

l2305E324:
	lbu	s2,a5,+00000002
	bne	s2,zero,000000002305E330

l2305E32C:
	lbu	s2,a5,+00000003

l2305E330:
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,000000002305D5B4
	c.li	a1,00000018
	c.mv	s6,a0
	c.mv	a0,s5
	jal	ra,000000002305D5B4
	c.mv	s5,a0
	srai	a3,s1,0000001F
	c.mv	a1,s8
	c.mv	a2,s1
	c.mv	a0,s3
	jal	ra,0000000023069564
	add	a1,a1,s1
	sub	a5,s3,s5
	sltu	a3,s3,a5
	sub	s8,s8,a3
	add	a4,a0,s1
	sltu	a0,a0,s1
	c.add	a1,a0
	bltu	a1,s8,000000002305E378

l2305E370:
	bne	s8,a1,000000002305E37A

l2305E374:
	bgeu	a4,a5,000000002305E37A

l2305E378:
	c.mv	a5,a4

l2305E37A:
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
	bge	a5,zero,000000002305E3B2

l2305E3B0:
	c.add	a3,s1

l2305E3B2:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,00044B08
	lw	a5,a5,+000000A4
	c.sub	a1,a5
	c.lw	s0,36(a5)
	c.add	a1,a3
	beq	a1,a5,000000002305E3D4

l2305E3CC:
	addi	a0,s0,+00000018
	jal	ra,00000000230478F4

l2305E3D4:
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

l2305E3FC:
	lbu	s9,s8,+00000001
	lbu	a3,s8,+00000000
	addi	s10,s8,+00000002
	addi	a2,s9,+00000001
	bge	a2,s1,000000002305E2B8

l2305E410:
	bne	a3,a5,000000002305E428

l2305E414:
	sw	s8,s6,+00000000

l2305E418:
	sub	a3,a4,s9
	c.add	s1,a3
	c.slli	s1,10
	c.srli	s1,00000010
	add	s8,s10,s9
	c.j	000000002305E2B4

l2305E428:
	c.mv	a2,a0
	c.mv	a1,s9
	c.mv	a0,s10
	c.swsp	a4,00000084
	jal	ra,0000000023064CC4
	c.lwsp	a2,000000C4
	c.li	a5,00000005
	c.j	000000002305E418

;; mm_sta_tbtt: 2305E43A
mm_sta_tbtt proc
	lbu	a5,a0,+00000058
	c.beqz	a5,000000002305E50C

l2305E440:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a0,+00000079
	c.mv	s0,a0
	c.beqz	a5,000000002305E47C

l2305E450:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a0,+00000079
	c.li	a4,00000001
	bltu	a4,a5,000000002305E46C

l2305E460:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304B23C

l2305E46C:
	c.li	a4,00000002
	bne	a5,a4,000000002305E47C

l2305E472:
	lbu	a0,a0,+00000057
	c.li	a1,00000000
	jal	ra,000000002305E1CA

l2305E47C:
	lbu	a4,s0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a3
	addi	a5,a5,-000007F8
	addi	a0,s0,+00000018
	c.add	a5,a4
	c.lw	a5,4(s1)
	c.lw	s0,36(a5)
	c.add	s1,a5
	c.mv	a1,s1
	jal	ra,00000000230478F4
	c.mv	a0,s0
	jal	ra,000000002304B166
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002305C44E
	c.mv	a0,s0
	jal	ra,000000002305C63E
	c.beqz	a0,000000002305E502

l2305E4B8:
	c.lw	s0,4(a5)
	addi	a4,zero,+00000064
	ori	a5,a5,+00000001
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000074
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000074
	bgeu	a4,a5,000000002305E4F0

l2305E4D6:
	lbu	a0,s0,+00000060
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,0002305E
	addi	a1,a1,+000000B4
	c.addi	sp,00000010
	jal	zero,000000002304A522

l2305E4F0:
	bne	a5,a4,000000002305E502

l2305E4F4:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002305C564

l2305E502:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305E50C:
	c.jr	ra

;; mm_get_rsn_wpa_ie: 2305E50E
;;   Called from:
;;     2305126C (in keyMgmtFormatWpaRsnIe)
mm_get_rsn_wpa_ie proc
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,0004201B
	c.addi	sp,FFFFFFF0
	addi	a5,a5,-000007F8
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,zero,+000005D8
	c.mv	a3,a1
	lui	a1,0004201C
	addi	a1,a1,-00000308
	c.add	a5,a0
	lbu	a5,a5,+0000001A
	c.mv	a0,a3
	add	a5,a5,a4
	add	s0,a1,a5
	lbu	a2,s0,+00000411
	addi	a5,a5,+000003F1
	c.add	a1,a5
	jal	ra,000000002306CF80
	lbu	a0,s0,+00000411
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update_proceed: 2305E55C
;;   Called from:
;;     2305E9B8 (in mm_tim_update)
;;     2305EE30 (in mm_bcn_transmitted)
mm_tim_update_proceed proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a3,a0,+00000000
	c.mv	s0,a0
	lbu	a5,a0,+00000003
	lbu	t3,a0,+00000002
	c.bnez	a3,000000002305E5B0

l2305E572:
	addi	a3,zero,+000005D8
	add	a5,a5,a3
	lui	a4,0004201C
	addi	a4,a4,-00000308
	c.add	a4,a5
	beq	t3,zero,000000002305E5AA

l2305E588:
	c.li	a5,00000001
	sb	a5,a4,+00000346

l2305E58E:
	lhu	a1,s0,-00000004
	addi	a0,zero,+00000042
	c.li	a2,00000000
	jal	ra,000000002305054A
	addi	a0,s0,-0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305056C

l2305E5AA:
	sb	zero,a4,+00000346
	c.j	000000002305E58E

l2305E5B0:
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
	beq	t3,zero,000000002305E6B0

l2305E5F6:
	bne	t1,zero,000000002305E58E

l2305E5FA:
	c.or	a2,a1
	addi	a1,zero,+000005D8
	add	a1,a5,a1
	lui	a3,0004201C
	sb	a2,a7,+00000000
	addi	a2,a3,-00000308
	addi	a3,a3,-00000308
	c.add	a2,a1
	lhu	a1,a2,+0000033C
	lbu	t1,a2,+00000344
	c.addi	a1,00000001
	sh	a1,a2,+0000033C
	lui	a1,00042046
	addi	a1,a1,-00000570
	bgeu	a6,t1,000000002305E646

l2305E630:
	andi	t1,a6,+000000FE
	sb	t1,a2,+00000344
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a0,t1
	c.add	a2,a1
	c.sw	a2,28(a0)

l2305E646:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	c.add	a2,a3
	lbu	a0,a2,+00000345
	bgeu	a0,a6,000000002305E66A

l2305E658:
	sb	a6,a2,+00000345
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a2,a1
	sw	a7,a2,+00000020

l2305E66A:
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
	c.j	000000002305E58E

l2305E6B0:
	beq	t1,zero,000000002305E58E

l2305E6B4:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	xori	a3,a3,-00000001
	c.and	a3,a1
	lui	a1,0004201C
	sb	a3,a7,+00000000
	addi	a3,a1,-00000308
	addi	a1,a1,-00000308
	c.add	a3,a2
	lhu	a7,a3,+0000033C
	c.addi	a7,FFFFFFFF
	c.slli	a7,10
	srli	a7,a7,00000010
	sh	a7,a3,+0000033C
	beq	a7,zero,000000002305E7AC

l2305E6E8:
	lbu	a7,a3,+00000344
	andi	a2,a6,+000000FE
	addi	t1,zero,+000000FB
	beq	a7,a2,000000002305E766

l2305E6F8:
	addi	a3,zero,+000005D8
	add	a3,a5,a3
	c.add	a3,a1
	lbu	a2,a3,+00000345
	bne	a2,a6,000000002305E732

l2305E70A:
	lbu	a2,a3,+00000345
	add	a6,a2,a0
	c.beqz	a2,000000002305E71C

l2305E714:
	lbu	a7,a6,+00000000
	beq	a7,zero,000000002305E7A4

l2305E71C:
	addi	a2,zero,+00000028
	add	a2,a5,a2
	lui	a3,00042046
	addi	a3,a3,-00000570
	c.add	a3,a2
	sw	a6,a3,+00000020

l2305E732:
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
	c.j	000000002305E58E

l2305E760:
	c.addi	a2,00000001
	sb	a2,a3,+00000344

l2305E766:
	lbu	a2,a3,+00000344
	beq	a2,t1,000000002305E77A

l2305E76E:
	add	a7,a2,a0
	lbu	a7,a7,+00000000
	beq	a7,zero,000000002305E760

l2305E77A:
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
	c.j	000000002305E6F8

l2305E7A4:
	c.addi	a2,FFFFFFFF
	sb	a2,a3,+00000345
	c.j	000000002305E70A

l2305E7AC:
	c.li	a1,00000006
	sh	a1,a3,+0000033A
	lui	a1,0004201C
	addi	a1,a1,+00000028
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
	c.j	000000002305E58E

;; mm_bcn_init: 2305E808
;;   Called from:
;;     2305D7B2 (in mm_init)
mm_bcn_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a0,s0,+0000038C
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	lui	a5,00042044
	addi	s0,s0,+0000038C
	addi	a5,a5,+00000110
	c.sw	s0,16(a5)
	lui	a5,0002305F
	addi	a5,a5,-0000040C
	c.sw	s0,20(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201E
	addi	a0,a0,+000003A8
	c.addi	sp,00000010
	jal	zero,000000002304FFB4

;; mm_bcn_init_vif: 2305E84A
;;   Called from:
;;     2304AE80 (in vif_mgmt_register)
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
	jal	ra,000000002304A03E
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
	jal	ra,000000002306D1BC
	sw	s2,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000010
	lw	a5,s0,+000000CC
	sw	zero,a5,+00000024
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000010
	lui	a5,0002305F
	addi	a5,a5,-00000244
	sw	a5,s0,+0000032C
	sw	s0,s0,+00000330
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update: 2305E99E
;;   Called from:
;;     23046E22 (in mm_tim_update_req_handler)
mm_tim_update proc
	lui	a5,0004201E
	lw	a5,a5,+00000390
	c.beqz	a5,000000002305E9B8

l2305E9A8:
	addi	a1,a0,-0000000C
	lui	a0,0004201E
	addi	a0,a0,+000003A8
	jal	zero,000000002304FFBE

l2305E9B8:
	jal	zero,000000002305E55C

;; mm_bcn_transmit: 2305E9BC
;;   Called from:
;;     2305D860 (in mm_tbtt_evt)
;;     2305ED30 (in mm_bcn_updated)
mm_bcn_transmit proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	a5,0004201D
	lui	s2,0004201E
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lw	s0,a5,-00000750
	addi	a5,s2,+0000038C
	c.lw	a5,4(a5)
	addi	s2,s2,+0000038C
	c.beqz	a5,000000002305EA02

l2305E9EA:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000339
	addi	a1,a1,+00000388
	addi	a0,a0,-00000628
	jal	ra,0000000023054FF4

l2305EA02:
	lbu	a5,s2,+00000009
	c.beqz	a5,000000002305EA26

l2305EA08:
	c.li	a5,00000001
	sb	a5,s2,+00000008

l2305EA0E:
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

l2305EA26:
	lui	s5,00042045
	lui	s3,0004201C
	lui	s6,0004201B
	lui	s4,0004201E
	sb	zero,s2,+00000008
	addi	s5,s5,+00000360
	addi	s3,s3,-00000370
	addi	s6,s6,-000007F8
	addi	s4,s4,+00000210

l2305EA4A:
	c.beqz	s0,000000002305EA0E

l2305EA4C:
	lbu	a4,s0,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002305EBB8

l2305EA56:
	lbu	a5,s0,+00000342
	beq	a5,zero,000000002305EBB8

l2305EA5E:
	lbu	a4,s0,+00000341
	lbu	a5,s0,+00000340
	bne	a4,a5,000000002305EBB8

l2305EA6A:
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
	bne	a4,zero,000000002305EBBC

l2305EAAE:
	lbu	a4,s0,+00000346
	c.bnez	a4,000000002305EAD8

l2305EAB4:
	lui	a1,00023083
	lw	a1,a1,-000007D8
	lw	a4,s4,+00000018
	c.and	a4,a1
	addi	a1,zero,+00000330
	add	a4,a4,a1
	lw	a1,s4,+0000001C
	c.add	a4,a1
	c.lw	a4,0(a1)
	andi	a4,a2,+000000FE
	c.beqz	a1,000000002305EADC

l2305EAD8:
	ori	a4,a2,+00000001

l2305EADC:
	lbu	a2,a5,+00000003
	sb	a2,s0,+00000343

l2305EAE4:
	ori	a4,a4,+00000001
	sb	a4,a5,+00000004
	lbu	a5,s0,+00000343
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000343
	lbu	a5,s0,+00000347
	c.beqz	a5,000000002305EB34

l2305EAFC:
	c.addi	a5,FFFFFFFF
	lbu	a2,s0,+00000348
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000347
	c.beqz	a2,000000002305EB26

l2305EB0C:
	c.lw	a3,20(a4)
	c.add	a4,a2
	sb	a5,a4,+00000000
	lbu	a4,s0,+00000349
	c.beqz	a4,000000002305EB26

l2305EB1A:
	c.lw	a3,20(a5)
	lbu	a2,s0,+00000347
	c.add	a5,a4
	sb	a2,a5,+00000000

l2305EB26:
	lbu	s7,s0,+00000347
	bne	s7,zero,000000002305EBCE

l2305EB2E:
	c.li	a5,00000001
	sb	a5,s0,+00000347

l2305EB34:
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023049514
	c.mv	a0,s0
	jal	ra,000000002305C696
	c.beqz	a0,000000002305EBB8

l2305EB44:
	lbu	s7,s0,+00000057
	c.li	a1,0000000D
	c.li	a3,00000003
	c.li	a2,00000000
	c.addi	s7,0000000A
	addi	a0,zero,+0000004A
	jal	ra,0000000023050474
	andi	s7,s7,+000000FF
	sb	s7,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,00000000230504E0
	lbu	a5,s0,+00000057
	c.li	a1,00000004
	c.mv	a0,s1
	sb	a5,s0,+0000008F
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000090
	jal	ra,000000002304A376
	c.beqz	a0,000000002305EB8E

l2305EB84:
	lw	a5,s2,+00000004
	c.addi	a5,00000001
	sw	a5,s2,+00000004

l2305EB8E:
	lbu	s1,s0,+00000057
	addi	a5,zero,+000001B0
	c.addi	s1,0000000A
	add	s1,s1,a5
	c.add	s1,s6
	lbu	a5,s1,+00000032
	c.andi	a5,00000002
	c.beqz	a5,000000002305EBB8

l2305EBA6:
	c.li	a5,00000009
	c.sw	s1,52(a5)
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304911E
	sw	zero,s1,+00000034

l2305EBB8:
	c.lw	s0,0(s0)
	c.j	000000002305EA4A

l2305EBBC:
	lbu	a1,s0,+00000346
	andi	a4,a2,+000000FE
	c.andi	a1,00000002
	c.beqz	a1,000000002305EAE4

l2305EBC8:
	ori	a4,a2,+00000001
	c.j	000000002305EAE4

l2305EBCE:
	lbu	s8,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004E
	jal	ra,0000000023050474
	sb	s8,a0,+00000000
	sb	s7,a0,+00000001
	jal	ra,00000000230504E0
	lbu	a5,s0,+00000347
	c.bnez	a5,000000002305EB34

l2305EBF2:
	c.j	000000002305EB2E

;; mm_bcn_updated: 2305EBF4
;;   Called from:
;;     2305EDB8 (in mm_bcn_update)
mm_bcn_updated proc
	c.addi16sp	FFFFFFD0
	c.swsp	s8,00000004
	lui	s8,0004201E
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
	addi	s1,s8,+0000038C
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.li	a2,00000000
	lhu	a1,a5,-00000004
	addi	a0,zero,+00000040
	addi	s2,a5,-0000000C
	jal	ra,000000002305054A
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
	jal	ra,0000000023061D54
	lhu	a4,s3,+00000006
	c.lw	s1,20(a5)
	lui	a0,00042046
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	c.sw	s1,24(a5)
	lbu	a4,s3,+00000008
	addi	a0,a0,-00000598
	addi	s8,s8,+0000038C
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
	c.beqz	a5,000000002305ED56

l2305ECAE:
	lui	a5,00042046
	addi	a5,a5,-000005D4

l2305ECB6:
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
	c.beqz	a4,000000002305ED26

l2305ED18:
	c.lw	a3,20(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000347

l2305ED26:
	lbu	a5,s8,+00000008
	sb	zero,s8,+00000009
	c.beqz	a5,000000002305ED34

l2305ED30:
	jal	ra,000000002305E9BC

l2305ED34:
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
	jal	zero,000000002305056C

l2305ED56:
	lui	a5,00042045
	addi	a5,a5,+000000B4
	c.j	000000002305ECB6

;; mm_bcn_update: 2305ED60
;;   Called from:
;;     2305EE00 (in mm_bcn_transmitted)
;;     2305EE58 (in mm_bcn_change)
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
	jal	ra,000000002306CF80
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a5,0004201E
	addi	a5,a5,+0000038C
	c.li	a4,00000001
	lui	a0,0004201C
	sb	zero,a5,+0000000A
	sb	a4,a5,+00000009
	addi	a0,a0,-00000308
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.add	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	jal	zero,000000002305EBF4

;; mm_bcn_transmitted: 2305EDBC
mm_bcn_transmitted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	c.swsp	s1,00000080
	addi	a5,s0,+0000038C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a5,4(a5)
	c.mv	s1,a0
	addi	s0,s0,+0000038C
	c.bnez	a5,000000002305EDF0

l2305EDD8:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000244
	addi	a1,a1,+00000388
	addi	a0,a0,-00000614
	jal	ra,0000000023054FF4

l2305EDF0:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,4(a5)
	c.bnez	a5,000000002305EE36

l2305EDF8:
	lbu	a5,s0,+0000000A
	c.beqz	a5,000000002305EE04

l2305EDFE:
	c.lw	s0,0(a0)
	jal	ra,000000002305ED60

l2305EE04:
	lui	s2,0004201E

l2305EE08:
	c.lw	s0,28(a5)
	c.bnez	a5,000000002305EE26

l2305EE0C:
	lbu	a4,s1,+00000347
	c.li	a5,00000001
	bne	a4,a5,000000002305EE36

l2305EE16:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304B23C

l2305EE26:
	addi	a0,s2,+000003A8
	jal	ra,000000002305003A
	c.addi	a0,0000000C
	jal	ra,000000002305E55C
	c.j	000000002305EE08

l2305EE36:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change: 2305EE42
;;   Called from:
;;     23046E34 (in mm_bcn_change_req_handler)
mm_bcn_change proc
	lui	a5,0004201E
	addi	a5,a5,+0000038C
	c.lw	a5,4(a4)
	c.sw	a5,0(a0)
	c.beqz	a4,000000002305EE58

l2305EE50:
	c.li	a4,00000001
	sb	a4,a5,+0000000A
	c.jr	ra

l2305EE58:
	jal	zero,000000002305ED60

;; bl_init: 2305EE5C
;;   Called from:
;;     2305513E (in wifi_main)
bl_init proc
	lui	a5,0004201E
	lui	a4,0004200E
	addi	a5,a5,+000003B8
	c.addi	sp,FFFFFFF0
	sw	a5,a4,+00000438
	lui	a5,0004201E
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sw	zero,a5,+000003B4
	lui	s0,0004201D
	jal	ra,0000000023064CF4
	jal	ra,000000002304B370
	jal	ra,000000002305D77A
	jal	ra,00000000230502B6
	addi	a2,zero,+000000EC
	c.li	a1,00000000
	addi	a0,s0,-00000610
	jal	ra,000000002306D1BC
	addi	a5,s0,-00000610
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000004
	sb	zero,a5,+00000000
	sb	a4,a5,+00000003
	jal	ra,00000000230672E6
	addi	a0,s0,-00000610
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023051502

;; bl_reset_evt: 2305EEC0
bl_reset_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	lui	a0,00080000
	jal	ra,00000000230501C0
	jal	ra,000000002305CFD8
	jal	ra,000000002304894A
	jal	ra,0000000023049EF6
	jal	ra,000000002305D7C8
	jal	ra,000000002304B144
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sleep: 2305EEEE
;;   Called from:
;;     23055214 (in wifi_main)
bl_sleep proc
	lui	a5,0004201F
	lw	a5,a5,-00000124
	c.beqz	a5,000000002305EF06

l2305EEF8:
	c.li	a0,00000000
	c.jr	ra

l2305EEFC:
	c.li	a0,00000000

l2305EEFE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305EF06:
	c.addi	sp,FFFFFFF0
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002305070E
	c.bnez	a0,000000002305EEFC

l2305EF14:
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002305EEFC

l2305EF22:
	c.lw	a5,4(a5)
	c.bnez	a5,000000002305EEFC

l2305EF26:
	lui	a5,0004201D
	lw	s0,a5,-00000750

l2305EF2E:
	c.bnez	s0,000000002305EF40

l2305EF30:
	lui	a5,0004201C
	lw	a5,a5,-00000320
	c.bnez	a5,000000002305EEFC

l2305EF3A:
	jal	ra,000000002305D116
	c.j	000000002305EEFE

l2305EF40:
	c.mv	a0,s0
	jal	ra,000000002305C63E
	c.beqz	a0,000000002305EF4C

l2305EF48:
	c.lw	s0,4(a5)
	c.bnez	a5,000000002305EEFC

l2305EF4C:
	c.lw	s0,0(s0)
	c.j	000000002305EF2E

;; bl_nap_calculate: 2305EF50
;;   Called from:
;;     230550CE (in coex_wifi_pta_forece_enable)
bl_nap_calculate proc
	lui	a5,00044B08
	lw	a6,a5,+0000008C
	lui	a2,00044B00
	c.li	a4,00000000
	c.li	a0,FFFFFFFF
	c.li	a7,00000001
	addi	t1,a2,+00000128
	c.li	a1,00000009

l2305EF68:
	sll	a5,a7,a4
	and	a5,a5,a6
	c.beqz	a5,000000002305EF8A

l2305EF72:
	slli	a5,a4,00000002
	c.add	a5,t1
	c.lw	a5,0(a5)
	lw	a3,a2,+00000120
	bgeu	a3,a5,000000002305EF92

l2305EF82:
	c.sub	a5,a3

l2305EF84:
	bgeu	a5,a0,000000002305EF8A

l2305EF88:
	c.mv	a0,a5

l2305EF8A:
	c.addi	a4,00000001
	bne	a4,a1,000000002305EF68

l2305EF90:
	c.jr	ra

l2305EF92:
	c.addi	a3,FFFFFFFF
	sub	a5,a3,a5
	c.j	000000002305EF84

;; rx_swdesc_init: 2305EF9A
;;   Called from:
;;     230483AC (in rxl_init)
rx_swdesc_init proc
	lui	a5,0004201E
	lui	a4,00042041
	addi	a5,a5,+000003C4
	addi	a4,a4,+00000000
	c.sw	a5,4(a4)
	lui	a4,00042041
	addi	a4,a4,+00000064
	c.sw	a5,36(a4)
	lui	a4,00042041
	addi	a4,a4,+000000C8
	c.sw	a5,68(a4)
	lui	a4,00042041
	addi	a4,a4,+0000012C
	c.sw	a5,100(a4)
	lui	a4,00042041
	addi	a4,a4,+00000190
	sw	a4,a5,+00000084
	lui	a4,00042041
	addi	a4,a4,+000001F4
	sw	a4,a5,+000000A4
	lui	a4,00042041
	addi	a4,a4,+00000258
	sw	a4,a5,+000000C4
	lui	a4,00042041
	addi	a4,a4,+000002BC
	sw	a4,a5,+000000E4
	lui	a4,00042041
	addi	a4,a4,+00000320
	sw	a4,a5,+00000104
	lui	a4,00042041
	addi	a4,a4,+00000384
	sw	a4,a5,+00000124
	lui	a4,00042041
	addi	a4,a4,+000003E8
	sw	a4,a5,+00000144
	lui	a4,00042041
	addi	a4,a4,+0000044C
	sw	a4,a5,+00000164
	lui	a4,00042041
	addi	a4,a4,+000004B0
	sw	a4,a5,+00000184
	c.jr	ra

;; scan_search_ds: 2305F038
;;   Called from:
;;     2305F172 (in dma_cb)
;;     2305F184 (in scan_ie_download)
scan_search_ds proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	s0,s0,+00000564
	c.lw	s0,16(a5)
	c.swsp	ra,00000084
	lui	a0,00042046
	lhu	a1,a5,+0000014C
	c.li	a2,00000003
	addi	a0,a0,-000002FC
	jal	ra,0000000023050BF4
	c.sw	s0,20(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scan_init: 2305F064
;;   Called from:
;;     2305D7A2 (in mm_init)
scan_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,+00000564
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,000000002305060E
	lui	a5,0002305F
	addi	a4,s0,+00000564
	addi	a5,a5,+0000016E
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

;; scan_set_channel_request: 2305F0C4
;;   Called from:
;;     2305F17A (in dma_cb)
;;     2305F188 (in scan_ie_download)
;;     2305F44C (in mm_scan_channel_end_ind_handler)
scan_set_channel_request proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201E
	addi	s1,s1,+00000564
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
	jal	ra,000000002305C022
	c.lw	s1,20(a1)
	c.beqz	a1,000000002305F13C

l2305F100:
	lbu	a3,s0,+00000002
	lhu	a4,s0,+00000000
	c.bnez	a3,000000002305F14C

l2305F10A:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,000000002305F138

l2305F120:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,000000002305F138

l2305F12C:
	addi	a5,a2,+00000699

l2305F130:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l2305F138:
	sb	a5,a1,+00000002

l2305F13C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000002
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002305060E

l2305F14C:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,000000002305F138

l2305F154:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,000000002305F138

l2305F168:
	addi	a5,a2,-00000388
	c.j	000000002305F130

;; dma_cb: 2305F16E
dma_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002305F038
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305F0C4

;; scan_ie_download: 2305F17E
;;   Called from:
;;     2305F3B8 (in scan_start_req_handler)
scan_ie_download proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002305F038
	jal	ra,000000002305F0C4
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

;; scan_probe_req_tx: 2305F1AC
;;   Called from:
;;     2305F4F4 (in mm_scan_channel_start_ind_handler)
scan_probe_req_tx proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201E
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
	addi	a5,a5,+00000564
	c.lw	a5,16(s1)
	lbu	s5,a5,+0000001A
	addi	a4,zero,+000005D8
	lbu	a5,s1,+0000014E
	lui	s2,0004201C
	addi	s2,s2,-00000308
	add	a5,a5,a4
	lui	s3,0004201C
	addi	s7,s1,+000000FD
	c.li	s4,00000000
	addi	s3,s3,-00000370
	c.add	s2,a5
	addi	s2,s2,+00000050

l2305F1F8:
	lbu	a5,s1,+00000150
	blt	s4,a5,000000002305F218

l2305F200:
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

l2305F218:
	c.li	a5,00000006
	add	a5,s5,a5
	c.li	a0,00000001
	c.add	a5,s1
	lbu	a5,a5,+00000002
	c.bnez	a5,000000002305F22C

l2305F228:
	lbu	a0,s1,+00000151

l2305F22C:
	lbu	a5,s7,-00000001
	lhu	a1,s1,+0000014C
	c.addi	a5,0000001A
	c.add	a1,a5
	jal	ra,000000002304A24A
	c.mv	s6,a0
	c.beqz	a0,000000002305F200

l2305F240:
	c.lw	a0,104(s0)
	addi	a5,zero,+00000040
	lui	a1,00023082
	lw	s8,a0,+0000006C
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	addi	a1,a1,+000007F0
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s1,+00000140
	addi	a0,s0,+0000015C
	jal	ra,000000002306CF80
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

l2305F2B2:
	bne	a4,a5,000000002305F2F6

l2305F2B6:
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
	jal	ra,000000002304A376
	c.j	000000002305F1F8

l2305F2F6:
	add	a3,s7,a5
	lbu	a2,a3,+00000000
	add	a3,s0,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000166
	c.j	000000002305F2B2

;; scan_send_cancel_cfm: 2305F30A
;;   Called from:
;;     2305F354 (in scan_cancel_req_handler)
;;     2305F46C (in mm_scan_channel_end_ind_handler)
scan_send_cancel_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000001
	c.li	a2,00000002
	addi	a0,a0,-000007FC
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; scan_cancel_req_handler: 2305F32E
scan_cancel_req_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000002
	c.swsp	a3,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002305070E
	c.lwsp	a2,000000A4
	c.beqz	a0,000000002305F350

l2305F33E:
	lui	a5,0004201E
	c.li	a4,00000001
	sb	a4,a5,+0000057F

l2305F348:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2305F350:
	c.mv	a1,a3
	c.li	a0,00000001
	jal	ra,000000002305F30A
	c.j	000000002305F348

;; scan_start_req_handler: 2305F35A
scan_start_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.lui	a0,00001000
	c.mv	s2,a3
	c.swsp	s1,00000080
	c.li	a3,00000001
	c.mv	s1,a1
	addi	a0,a0,-000007FF
	c.mv	a1,s2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.mv	s0,a0
	c.li	a0,00000002
	jal	ra,000000002305070E
	c.bnez	a0,000000002305F3D0

l2305F380:
	lbu	a5,s1,+0000014F
	c.bnez	a5,000000002305F39E

l2305F386:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000046
	addi	a1,a1,+00000388
	addi	a0,a0,-00000578
	jal	ra,0000000023054FF4

l2305F39E:
	lui	a5,0004201E
	sb	zero,s0,+00000000
	addi	a5,a5,+00000564
	c.mv	a0,s1
	c.sw	a5,16(s1)
	sb	zero,a5,+0000001A
	sh	s2,a5,+00000018
	c.li	s1,00000001
	jal	ra,000000002305F17E

l2305F3BC:
	c.mv	a0,s0
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305F3D0:
	c.li	a5,00000008
	sb	a5,s0,+00000000
	c.li	s1,00000000
	c.j	000000002305F3BC

;; mm_scan_channel_end_ind_handler: 2305F3DA
mm_scan_channel_end_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002305070E
	c.li	a5,00000003
	beq	a0,a5,000000002305F404

l2305F3EC:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+000000C4
	addi	a1,a1,+00000388
	addi	a0,a0,-00000600
	jal	ra,0000000023054FF4

l2305F404:
	lui	a4,0004201E
	addi	a4,a4,+00000360
	c.lw	a4,4(a5)
	c.lui	a3,FFFFE000
	addi	a3,a3,-00000201
	c.and	a5,a3
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	lui	s0,0004201E
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	addi	a4,s0,+00000564
	lbu	a5,a4,+0000001A
	c.lw	a4,16(a0)
	addi	s0,s0,+00000564
	c.addi	a5,00000001
	lbu	a3,a0,+0000014F
	andi	a5,a5,+000000FF
	sb	a5,a4,+0000001A
	bgeu	a5,a3,000000002305F45A

l2305F446:
	lbu	a5,a4,+0000001B
	c.bnez	a5,000000002305F45A

l2305F44C:
	jal	ra,000000002305F0C4

l2305F450:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2305F45A:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002305056C
	lbu	a5,s0,+0000001B
	lhu	a1,s0,+00000018
	c.beqz	a5,000000002305F47E

l2305F46A:
	c.li	a0,00000000
	jal	ra,000000002305F30A
	sb	zero,s0,+0000001B

l2305F474:
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,000000002305060E
	c.j	000000002305F450

l2305F47E:
	c.lui	a0,00001000
	c.li	a2,00000002
	addi	a0,a0,-000007FE
	jal	ra,000000002305054A
	c.j	000000002305F474

;; mm_scan_channel_start_ind_handler: 2305F48C
mm_scan_channel_start_ind_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201E
	addi	a5,a5,+00000564
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a0,00000002
	c.lw	a5,16(s0)
	lbu	s1,a5,+0000001A
	jal	ra,000000002305070E
	c.li	a5,00000002
	beq	a0,a5,000000002305F4C6

l2305F4AE:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+0000009D
	addi	a1,a1,+00000388
	addi	a0,a0,-000005C8
	jal	ra,0000000023054FF4

l2305F4C6:
	lui	a4,0004201E
	addi	a4,a4,+00000360
	c.lw	a4,4(a5)
	c.lui	a3,00002000
	addi	a3,a3,+00000200
	c.or	a5,a3
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.li	a5,00000006
	add	s1,s1,a5
	c.add	s0,s1
	lbu	a5,s0,+00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002305F4F8

l2305F4F4:
	jal	ra,000000002305F1AC

l2305F4F8:
	c.li	a0,00000002
	c.li	a1,00000003
	jal	ra,000000002305060E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; txl_buffer_reinit: 2305F50C
;;   Called from:
;;     23049F86 (in txl_reset)
;;     2305F546 (in txl_buffer_init)
txl_buffer_reinit proc
	lui	a5,0004201E
	addi	a5,a5,+00000584
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_init: 2305F51E
;;   Called from:
;;     230495F4 (in txl_cntrl_init)
txl_buffer_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042044
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	addi	s0,s0,+0000043C
	lui	s4,000BADCB
	c.lui	s3,FFFF0000
	c.lui	s2,00002000
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s5,s0,+00000258
	jal	ra,000000002305F50C
	addi	s4,s4,-000004E2
	c.li	s7,00000001
	addi	s3,s3,+00000704
	lui	s1,00044B00
	addi	s2,s2,+00000200
	lui	s6,000003F0

l2305F560:
	sw	s4,s0,+00000000
	jal	ra,00000000230562F2
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,00000000230562F2
	c.addi	a0,00000001
	sll	a0,s7,a0
	c.addi	a0,FFFFFFFF
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	sw	s3,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	lw	a5,s1,+000000A0
	addi	s0,s0,+0000003C
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FE8
	lw	a5,s1,+000000A0
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FEC
	lw	a5,s1,+000000A0
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FF0
	lw	a5,s1,+000000A0
	sw	s2,s0,+00000FF8
	sw	s6,s0,+00000FFC
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FF4
	bne	s0,s5,000000002305F560

l2305F5D2:
	lui	s0,00042044
	addi	s0,s0,+000003C4
	lui	s2,000BADCB
	c.lui	s1,FFFF0000
	addi	s3,s0,+00000078
	addi	s2,s2,-000004E2
	c.li	s6,00000001
	addi	s1,s1,+00000704
	lui	s5,00044B00
	lui	s4,000003F0

l2305F5F6:
	sw	s2,s0,+00000000
	jal	ra,00000000230562F2
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,00000000230562F2
	c.addi	a0,00000001
	sll	a0,s6,a0
	c.addi	a0,FFFFFFFF
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	c.sw	s0,16(s1)
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	lw	a5,s5,+000000A0
	addi	s0,s0,+0000003C
	sw	zero,s0,+00000FEC
	andi	a5,a5,+000000FF
	sw	a5,s0,+00000FE8
	sw	zero,s0,+00000FF0
	sw	zero,s0,+00000FF4
	sw	zero,s0,+00000FF8
	sw	s4,s0,+00000FFC
	bne	s0,s3,000000002305F5F6

l2305F64E:
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

;; txl_buffer_reset: 2305F664
;;   Called from:
;;     2304978E (in txl_cntrl_flush_ac)
txl_buffer_reset proc
	lui	a5,0004201E
	addi	a5,a5,+00000584
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.jr	ra

;; txl_buffer_alloc: 2305F676
;;   Called from:
;;     23049D72 (in txl_cntrl_push)
txl_buffer_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a4,a0,+0000005E
	sb	a2,a0,+000001B8
	c.mv	s0,a0
	addi	a5,a4,+0000000F
	c.andi	a5,FFFFFFF0
	c.sub	a5,a4
	sw	a5,a0,+000000D4
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,a0,+00000104
	lhu	a5,a0,+00000032
	sw	a4,a0,+000000D0
	addi	s1,a0,+000000CC
	c.andi	a5,00000008
	c.bnez	a5,000000002305F6BA

l2305F6B0:
	addi	a1,a0,+00000218
	c.add	a1,a4
	jal	ra,000000002304E82A

l2305F6BA:
	c.lw	s0,84(a1)
	c.li	a5,00000000
	addi	a4,zero,+0000003C

l2305F6C2:
	add	a3,a1,a5
	c.lw	a3,0(a2)
	add	a3,s0,a5
	c.addi	a5,00000004
	sw	a2,a3,+000001BC
	bne	a5,a4,000000002305F6C2

l2305F6D6:
	lui	a5,0004201E
	addi	a4,a5,+00000584
	lw	a4,a4,+000000B4
	addi	a5,a5,+00000584
	c.bnez	a4,000000002305F700

l2305F6E8:
	sw	s1,a5,+000000B4

l2305F6EC:
	sw	s1,a5,+000000B8
	sw	zero,s0,+000000DC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305F700:
	lw	a4,a5,+000000B8
	c.sw	a4,16(s1)
	c.j	000000002305F6EC

;; txl_buffer_update_thd: 2305F708
;;   Called from:
;;     23049D7C (in txl_cntrl_push)
txl_buffer_update_thd proc
	c.lw	a0,104(a5)
	lui	a6,000CAFF0
	lw	a7,a0,+0000006C
	addi	a4,a5,+0000004C
	addi	a0,a0,+00000034
	c.li	a1,00000000
	c.mv	t1,a4
	addi	a6,a6,-00000522

l2305F722:
	c.lw	a0,0(a3)
	c.bnez	a3,000000002305F742

l2305F726:
	c.bnez	a1,000000002305F768

l2305F728:
	lui	a1,0002307F
	lui	a0,0002307F
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000564
	addi	a0,a0,-0000054C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6

l2305F740:
	c.j	000000002305F740

l2305F742:
	sw	a6,a4,+00000000
	c.lw	a0,0(a3)
	c.mv	a2,a4
	c.addi	a4,00000014
	sw	a3,a4,+00000FF4
	lw	t3,a0,+00000010
	sw	zero,a4,+00000FFC
	c.addi	a1,00000001
	c.add	a3,t3
	c.addi	a3,FFFFFFFF
	sw	a3,a4,+00000FF8
	c.sw	a2,4(a4)
	c.addi	a0,00000004
	c.j	000000002305F722

l2305F768:
	c.lw	a5,4(a4)
	addi	a1,a5,+0000014C
	lui	a3,000CAFF0
	c.addi	a4,FFFFFFFF
	addi	a3,a3,-00000522
	c.add	a4,a1
	c.sw	a5,56(a3)
	c.sw	a5,64(a1)
	c.sw	a5,68(a4)
	sw	t1,a5,+0000003C
	sw	zero,a5,+00000048
	addi	a5,a5,+00000038
	sw	a5,a7,+00000010
	sw	zero,a2,+00000010
	addi	a5,zero,+00000100
	sw	a5,a7,+0000003C
	sw	zero,a2,+00000004
	c.jr	ra

;; txl_cfm_init: 2305F7A2
;;   Called from:
;;     230495F8 (in txl_cntrl_init)
;;     23049F8A (in txl_reset)
txl_cfm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,+00000660
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	addi	a0,s0,+00000660
	jal	ra,000000002304FFB4
	lui	a0,0004201E
	addi	a0,a0,+00000668
	jal	ra,000000002304FFB4
	lui	a0,0004201E
	addi	a0,a0,+00000670
	jal	ra,000000002304FFB4
	lui	a0,0004201E
	addi	a0,a0,+00000678
	jal	ra,000000002304FFB4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201E
	addi	a0,a0,+00000680
	c.addi	sp,00000010
	jal	zero,000000002304FFB4

;; txl_cfm_push: 2305F7F8
;;   Called from:
;;     23049EBC (in txl_transmit_trigger)
;;     2304ECDC (in txu_cntrl_push)
txl_cfm_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,108(a5)
	slli	a4,a2,00000003
	c.swsp	a2,00000084
	c.lw	a5,0(a5)
	c.sw	a5,16(a1)
	lui	a5,0004201E
	addi	a5,a5,+00000660
	c.mv	a1,a0
	add	a0,a5,a4
	jal	ra,000000002304FFBE
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	slli	a5,a2,00000002
	lui	a2,0002307F
	addi	a2,a2,-00000510
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.addi16sp	00000020
	jal	zero,00000000230501A8

;; txl_cfm_evt: 2305F834
txl_cfm_evt proc
	lui	a5,0002307F
	slli	a4,a0,00000002
	addi	a5,a5,-00000510
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s0,0000000C
	c.lw	a5,0(s0)
	lui	a5,0004201E
	addi	a5,a5,+00000660
	c.swsp	s1,00000088
	slli	s1,a0,00000003
	c.add	s1,a5
	lui	a5,0004201F
	lw	a5,a5,-00000124
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.li	s2,00000001
	c.swsp	s3,00000084
	c.and	a5,s0
	sll	s2,s2,a0
	c.bnez	a5,000000002305F888

l2305F870:
	lui	a1,0002307B
	lui	a0,0002307F
	addi	a2,zero,+00000168
	addi	a1,a1,+00000388
	addi	a0,a0,-00000528
	jal	ra,0000000023054FF4

l2305F888:
	c.mv	a0,s0
	lui	s0,0004201C
	jal	ra,00000000230501C0
	addi	s0,s0,-00000370

l2305F896:
	lw	s3,s1,+00000000
	beq	s3,zero,000000002305F8C6

l2305F89E:
	csrrci	zero,mstatus,00000008
	c.mv	a0,s1
	jal	ra,000000002305003A
	csrrsi	zero,mstatus,00000008
	c.mv	a0,s3
	jal	ra,0000000023061B2A
	c.mv	a0,s3
	jal	ra,000000002304EE2A
	c.lw	s0,80(a5)
	c.mv	a0,s2
	c.addi	a5,FFFFFFFF
	c.sw	s0,80(a5)
	jal	ra,000000002305559A
	c.j	000000002305F896

l2305F8C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cfm_flush: 2305F8D4
;;   Called from:
;;     2304976C (in txl_cntrl_flush_ac)
;;     23049782 (in txl_cntrl_flush_ac)
;;     23049F68 (in txl_reset)
;;     23049F76 (in txl_reset)
txl_cfm_flush proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	s2,00000001
	lui	s3,0003C000
	lui	s1,0004201C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s5,a1
	c.mv	s4,a2
	sll	s2,s2,a0
	or	s3,a2,s3
	addi	s1,s1,-00000370

l2305F8FE:
	c.mv	a0,s5
	jal	ra,000000002305003A
	c.mv	s0,a0
	c.beqz	a0,000000002305F940

l2305F908:
	c.lw	a0,108(a5)
	c.lw	a0,100(a4)
	c.lw	a5,0(a5)
	c.beqz	a4,000000002305F920

l2305F910:
	sw	s3,a5,+00000010

l2305F914:
	c.lw	s0,8(a5)
	c.mv	a0,s0
	c.bnez	a5,000000002305F92C

l2305F91A:
	jal	ra,000000002304A446
	c.j	000000002305F8FE

l2305F920:
	c.lw	a5,16(a4)
	blt	a4,zero,000000002305F914

l2305F926:
	sw	s4,a5,+00000010
	c.j	000000002305F914

l2305F92C:
	jal	ra,000000002304EE2A
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	c.lw	s0,104(a5)
	c.beqz	a5,000000002305F8FE

l2305F93A:
	sw	zero,s0,+00000068
	c.j	000000002305F8FE

l2305F940:
	jal	ra,000000002304A4A8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002305559A

;; txl_cfm_dma_int_handler: 2305F95A
txl_cfm_dma_int_handler proc
	lui	a4,00044A00
	c.lw	a4,36(a5)
	andi	a5,a5,+00000100
	c.sw	a4,32(a5)
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)
	c.jr	ra

;; txl_cfm_dump: 2305F976
;;   Called from:
;;     23050210 (in bl_fw_statistic_dump)
txl_cfm_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	addi	s0,s0,+00000660
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+00000028

l2305F98A:
	c.mv	a0,s0
	jal	ra,000000002305009A
	c.beqz	a0,000000002305F996

l2305F992:
	c.lw	s0,0(a5)

l2305F994:
	c.bnez	a5,000000002305F9A6

l2305F996:
	c.addi	s0,00000008
	bne	s0,s1,000000002305F98A

l2305F99C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305F9A6:
	c.lw	a5,0(a5)
	c.j	000000002305F994

;; bam_init: 2305F9AA
;;   Called from:
;;     2304B39E (in me_init)
bam_init proc
	lui	a5,0004201E
	c.li	a4,FFFFFFFF
	c.li	a1,00000000
	c.li	a0,00000008
	sb	a4,a5,+00000694
	jal	zero,000000002305060E

;; bam_send_air_action_frame: 2305F9BC
;;   Called from:
;;     2305FC64 (in rxu_mgt_ind_handler)
bam_send_air_action_frame proc
	c.addi16sp	FFFFFFA0
	c.swsp	s5,000000A0
	addi	s5,zero,+000001B0
	add	s5,a0,s5
	c.swsp	s8,0000001C
	lui	s8,0004201B
	addi	s8,s8,-000007F8
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s6,00000020
	c.swsp	s9,00000098
	c.swsp	ra,000000AC
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.mv	s3,a0
	c.mv	s1,a1
	c.addi4spn	a0,00000018
	c.li	a1,00000000
	c.mv	s6,a5
	add	a5,s8,s5
	c.mv	s9,a2
	c.swsp	a3,00000084
	c.mv	s0,a4
	c.mv	s2,a6
	lbu	s4,a5,+0000001A
	jal	ra,0000000023055E82
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	beq	a0,zero,000000002305FB6C

l2305FA1A:
	addi	s7,zero,+000005D8
	add	s7,s4,s7
	lui	a5,0004201C
	addi	s11,a5,-00000308
	c.mv	a1,a0
	c.mv	s10,a0
	c.addi	s5,0000001E
	c.add	s8,s5
	add	a4,s7,s11
	c.mv	a0,a4
	c.swsp	a4,00000004
	jal	ra,0000000023049514
	lw	a1,s10,+00000068
	addi	a5,zero,-00000030
	c.lwsp	s0,000000C4
	sb	a5,a1,+0000014C
	sb	zero,a1,+0000014D
	sb	zero,a1,+0000014E
	sb	zero,a1,+0000014F
	lhu	a5,s8,+00000000
	addi	a0,a1,+0000014C
	c.lwsp	a2,000000A4
	sh	a5,a1,+00000150
	lhu	a5,s8,+00000002
	sh	a5,a1,+00000152
	lhu	a5,s8,+00000004
	sh	a5,a1,+00000154
	addi	a5,s7,+00000050
	c.add	a5,s11
	lhu	a2,a5,+00000000
	sh	a2,a1,+00000156
	lhu	a2,a5,+00000002
	sh	a2,a1,+00000158
	lhu	a2,a5,+00000004
	sh	a2,a1,+0000015A
	lbu	a2,a4,+00000056
	c.li	a4,00000002
	bne	a2,a4,000000002305FB16

l2305FA9E:
	lhu	a4,a5,+00000000
	sh	a4,a1,+0000015C
	lhu	a4,a5,+00000002
	sh	a4,a1,+0000015E
	lhu	a5,a5,+00000004

l2305FAB2:
	sh	a5,a1,+00000160
	lui	a5,0004201C
	addi	a5,a5,-00000370
	lhu	a6,a5,+00000054
	c.addi	a6,00000001
	c.slli	a6,10
	srli	a6,a6,00000010
	sh	a6,a5,+00000054
	c.slli	a6,04
	c.slli	a6,10
	srli	a6,a6,00000010
	sb	a6,a1,+00000162
	srli	a6,a6,00000008
	sb	a6,a1,+00000163
	sb	s4,s10,+0000002F
	sb	s3,s10,+00000030
	c.li	a5,00000001
	beq	s9,a5,000000002305FB8A

l2305FAF0:
	beq	s9,zero,000000002305FB2C

l2305FAF4:
	c.li	a5,00000002
	beq	s9,a5,000000002305FB9C

l2305FAFA:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a0,a0,-0000024C
	addi	a2,zero,+0000025D
	addi	a1,a1,+00000388
	jal	ra,0000000023054FF6
	c.li	a0,00000018
	c.j	000000002305FB98

l2305FB16:
	lhu	a5,s8,+00000000
	sh	a5,a1,+0000015C
	lhu	a5,s8,+00000002
	sh	a5,a1,+0000015E
	lhu	a5,s8,+00000004
	c.j	000000002305FAB2

l2305FB2C:
	lui	a5,0002307C
	c.srai	s0,00000002
	c.andi	s0,0000000F
	addi	a5,a5,+00000398
	c.add	a5,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	lbu	s0,a5,+00000000
	jal	ra,00000000230604A4
	c.addi	a0,00000018

l2305FB48:
	lw	a4,s10,+0000006C
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,24(a5)
	c.sw	a4,28(a0)
	beq	s2,zero,000000002305FB64

l2305FB5C:
	sw	s2,s10,+000002CC
	sw	s1,s10,+000002D0

l2305FB64:
	c.mv	a1,s0
	c.mv	a0,s10
	jal	ra,000000002304A376

l2305FB6C:
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

l2305FB8A:
	c.mv	a4,s6
	c.mv	a2,s0
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,00000000230604FC

l2305FB96:
	c.addi	a0,00000018

l2305FB98:
	c.li	s0,00000003
	c.j	000000002305FB48

l2305FB9C:
	c.mv	a2,s6
	c.mv	a1,s1
	c.addi	a0,00000018
	jal	ra,0000000023060544
	c.j	000000002305FB96

;; rxu_mgt_ind_handler: 2305FBA8
rxu_mgt_ind_handler proc
	lbu	a4,a1,+0000001D
	c.bnez	a4,000000002305FC7C

l2305FBAE:
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	lbu	s0,a1,+00000020
	lbu	a3,a1,+0000001F
	lui	s4,0002307F
	c.slli	s0,08
	c.or	s0,a3
	andi	a5,s0,+00000001
	lbu	s1,a1,+00000007
	lbu	s2,a1,+0000001E
	addi	a1,s4,-000004FC
	c.beqz	a5,000000002305FBE8

l2305FBE0:
	lui	a1,0002307F
	addi	a1,a1,-000004F8

l2305FBE8:
	lui	s5,0002307F
	andi	a5,s0,+00000002
	addi	a2,s5,-000004EC
	c.bnez	a5,000000002305FBFE

l2305FBF6:
	lui	a2,0002307F
	addi	a2,a2,-000004D8

l2305FBFE:
	srli	s3,s0,00000006
	srai	a3,s0,00000002
	lui	a0,0002307F
	c.andi	a3,0000000F
	c.mv	a4,s3
	addi	a0,a0,-000004C4
	jal	ra,0000000023003AC6
	c.li	a5,00000008
	c.mv	a3,s3
	bgeu	a5,s3,000000002305FC20

l2305FC1E:
	c.li	a3,00000008

l2305FC20:
	c.slli	a3,10
	c.srli	a3,00000010
	andi	s0,s0,+0000003E
	ori	s0,s0,+00000002
	c.slli	a3,06
	c.or	a3,s0
	c.slli	a3,10
	c.srai	a3,00000010
	slli	s0,a3,00000010
	c.srli	s0,00000010
	c.srai	a3,00000002
	lui	a0,0002307F
	srli	a4,s0,00000006
	addi	a2,s5,-000004EC
	addi	a1,s4,-000004FC
	c.andi	a3,0000000F
	addi	a0,a0,-0000044C
	jal	ra,0000000023003AC6
	c.mv	a0,s1
	c.mv	a4,s0
	c.mv	a3,s2
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	jal	ra,000000002305F9BC
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

l2305FC7C:
	c.li	a0,00000000
	c.jr	ra

;; co_pack8p: 2305FC80
;;   Called from:
;;     2305FD62 (in me_add_ie_ssid)
;;     2305FDB2 (in me_add_ie_supp_rates)
;;     2305FDF2 (in me_add_ie_ext_supp_rates)
;;     23060084 (in me_add_ie_ht_capa)
;;     230600A6 (in me_add_ie_ht_capa)
;;     230603AC (in me_build_associate_req)
;;     23060AA4 (in me_build_beacon)
;;     23060CF8 (in me_build_probe_rsp)
;;     23060EE8 (in me_build_associate_rsp)
co_pack8p proc
	c.li	a5,00000000

l2305FC82:
	bne	a2,a5,000000002305FC88

l2305FC86:
	c.jr	ra

l2305FC88:
	add	a4,a1,a5
	lbu	a3,a4,+00000000
	add	a4,a0,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000000
	c.j	000000002305FC82

;; phy_freq_to_channel: 2305FC9C
;;   Called from:
;;     230600EC (in me_add_ie_ht_oper)
;;     2306043E (in me_build_associate_req)
;;     2306069E (in me_extract_country_reg)
;;     23060C4E (in me_build_probe_rsp)
phy_freq_to_channel proc
	c.bnez	a0,000000002305FCD0

l2305FC9E:
	c.lui	a0,FFFFF000
	addi	a4,a0,+00000694
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000048
	c.li	a5,00000000
	bltu	a3,a4,000000002305FCCC

l2305FCB4:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.li	a5,0000000E
	beq	a1,a4,000000002305FCCC

l2305FCC0:
	addi	a5,a0,+00000699

l2305FCC4:
	c.add	a1,a5
	c.li	a5,00000005
	xor	a5,a1,a5

l2305FCCC:
	c.mv	a0,a5
	c.jr	ra

l2305FCD0:
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a0,a4,000000002305FCCC

l2305FCD8:
	c.lui	a0,FFFFF000
	addi	a4,a0,-0000038D
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,zero,+00000334
	bltu	a3,a4,000000002305FCCC

l2305FCEC:
	addi	a5,a0,-00000388
	c.j	000000002305FCC4

;; phy_channel_to_freq: 2305FCF2
;;   Called from:
;;     230607B8 (in me_extract_csa)
;;     230607EA (in me_extract_csa)
;;     230607FA (in me_extract_csa)
phy_channel_to_freq proc
	addi	a5,a1,-00000001
	c.bnez	a0,000000002305FD18

l2305FCF8:
	c.li	a4,0000000D
	bltu	a4,a5,000000002305FD36

l2305FCFE:
	c.li	a5,0000000E
	beq	a1,a5,000000002305FD2E

l2305FD04:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,-00000699

l2305FD10:
	c.add	a0,a1
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

l2305FD18:
	addi	a4,zero,+000000A4
	bltu	a4,a5,000000002305FD36

l2305FD20:
	c.li	a0,00000005
	add	a0,a1,a0
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.j	000000002305FD10

l2305FD2E:
	c.lui	a0,00001000
	addi	a0,a0,-0000064C
	c.jr	ra

l2305FD36:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.jr	ra

;; me_add_ie_ssid: 2305FD3C
;;   Called from:
;;     2306023E (in me_build_associate_req)
;;     23060964 (in me_build_beacon)
;;     23060C0A (in me_build_probe_rsp)
me_add_ie_ssid proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.mv	a5,a1
	sb	zero,a4,+00000000
	c.lw	a0,0(a4)
	addi	s1,a1,+00000002
	sb	a1,a4,+00000001
	c.beqz	a1,000000002305FD66

l2305FD5A:
	c.lw	a0,0(a0)
	c.mv	a1,a2
	c.mv	a2,a5
	c.addi	a0,00000002
	jal	ra,000000002305FC80

l2305FD66:
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_supp_rates: 2305FD78
;;   Called from:
;;     23060248 (in me_build_associate_req)
;;     2306097A (in me_build_beacon)
;;     23060C14 (in me_build_probe_rsp)
;;     23060E50 (in me_build_associate_rsp)
me_add_ie_supp_rates proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a1,+00000000
	c.li	a4,00000008
	c.mv	s0,a0
	c.li	a2,00000008
	bltu	a4,a5,000000002305FD90

l2305FD8E:
	c.mv	a2,a5

l2305FD90:
	c.lw	s0,0(a4)
	c.li	a3,00000001
	c.li	a0,00000008
	sb	a3,a4,+00000000
	addi	s1,a2,+00000002
	c.lw	s0,0(a3)
	c.mv	a4,a5
	bgeu	a0,a5,000000002305FDA8

l2305FDA6:
	c.li	a4,00000008

l2305FDA8:
	sb	a4,a3,+00000001
	c.lw	s0,0(a0)
	c.addi	a1,00000001
	c.addi	a0,00000002
	jal	ra,000000002305FC80
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ext_supp_rates: 2305FDC8
;;   Called from:
;;     23060262 (in me_build_associate_req)
;;     2306099E (in me_build_beacon)
;;     23060C2E (in me_build_probe_rsp)
;;     23060E6A (in me_build_associate_rsp)
me_add_ie_ext_supp_rates proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	addi	a4,zero,+00000032
	lbu	a2,a1,+00000000
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	addi	s1,a2,-00000006
	c.addi	a2,FFFFFFF8
	sb	a2,a5,+00000001
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.addi	a1,00000009
	c.addi	a0,00000002
	jal	ra,000000002305FC80
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.add	a5,s1
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ds: 2305FE08
;;   Called from:
;;     230609D0 (in me_build_beacon)
;;     23060C58 (in me_build_probe_rsp)
me_add_ie_ds proc
	c.lw	a0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000002
	c.lw	a0,0(a5)
	c.addi	a5,00000003
	c.sw	a0,0(a5)
	c.li	a0,00000003
	c.jr	ra

;; me_add_ie_erp: 2305FE28
;;   Called from:
;;     23060A14 (in me_build_beacon)
;;     23060C6E (in me_build_probe_rsp)
me_add_ie_erp proc
	c.lw	a0,0(a5)
	addi	a4,zero,+0000002A
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000002
	c.lw	a0,0(a5)
	c.addi	a5,00000003
	c.sw	a0,0(a5)
	c.li	a0,00000003
	c.jr	ra

;; me_add_ie_rsn: 2305FE4A
;;   Called from:
;;     230609F6 (in me_build_beacon)
;;     23060C62 (in me_build_probe_rsp)
me_add_ie_rsn proc
	c.li	a6,00000001
	c.mv	a5,a0
	c.lw	a0,0(a4)
	bne	a1,a6,000000002305FED6

l2305FE54:
	addi	a3,zero,+00000030
	sb	a3,a4,+00000000
	c.lw	a0,0(a4)
	c.li	a3,00000014
	c.li	a2,0000000F
	sb	a3,a4,+00000001
	c.lw	a0,0(a4)
	addi	a3,zero,-00000054
	sb	a1,a4,+00000002
	sb	zero,a4,+00000003
	c.lw	a0,0(a4)
	c.li	a0,00000004
	sb	a3,a4,+00000006
	sb	a0,a4,+00000007
	sb	zero,a4,+00000004
	sb	a2,a4,+00000005
	c.lw	a5,0(a4)
	sb	a1,a4,+00000008
	sb	zero,a4,+00000009
	c.lw	a5,0(a4)
	sb	a3,a4,+0000000C
	sb	a0,a4,+0000000D
	sb	zero,a4,+0000000A
	sb	a2,a4,+0000000B
	c.lw	a5,0(a4)
	c.li	a0,00000016
	sb	a1,a4,+0000000E
	sb	zero,a4,+0000000F
	c.lw	a5,0(a4)
	sb	a3,a4,+00000012
	c.li	a3,00000002
	sb	zero,a4,+00000010
	sb	a2,a4,+00000011
	sb	a3,a4,+00000013
	c.lw	a5,0(a4)
	sb	zero,a4,+00000014
	sb	zero,a4,+00000015

l2305FECE:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

l2305FED6:
	c.li	a3,00000002
	c.li	a0,00000000
	bne	a1,a3,000000002305FECE

l2305FEDE:
	addi	a3,zero,+00000030
	sb	a3,a4,+00000000
	c.lw	a5,0(a4)
	c.li	a3,00000018
	c.li	a2,0000000F
	sb	a3,a4,+00000001
	c.lw	a5,0(a4)
	addi	a3,zero,-00000054
	c.li	a0,00000004
	sb	a6,a4,+00000002
	sb	zero,a4,+00000003
	c.lw	a5,0(a4)
	sb	zero,a4,+00000004
	sb	a2,a4,+00000005
	sb	a3,a4,+00000006
	sb	a1,a4,+00000007
	c.lw	a5,0(a4)
	sb	a1,a4,+00000008
	sb	zero,a4,+00000009
	c.lw	a5,0(a4)
	sb	zero,a4,+0000000A
	sb	a2,a4,+0000000B
	sb	a3,a4,+0000000C
	sb	a1,a4,+0000000D
	c.lw	a5,0(a4)
	sb	a0,a4,+00000011
	sb	zero,a4,+0000000E
	sb	a2,a4,+0000000F
	sb	a3,a4,+00000010
	c.lw	a5,0(a4)
	c.li	a0,0000001A
	sb	a6,a4,+00000012
	sb	zero,a4,+00000013
	c.lw	a5,0(a4)
	sb	zero,a4,+00000014
	sb	a2,a4,+00000015
	sb	a3,a4,+00000016
	sb	a1,a4,+00000017
	c.lw	a5,0(a4)
	sb	zero,a4,+00000018
	sb	zero,a4,+00000019
	c.j	000000002305FECE

;; me_add_ie_wpa: 2305FF6A
;;   Called from:
;;     23060A4E (in me_build_beacon)
;;     23060CA2 (in me_build_probe_rsp)
me_add_ie_wpa proc
	c.li	a4,00000002
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a1,a4,000000002306000A

l2305FF74:
	c.lw	a5,0(a4)
	addi	a3,zero,-00000023
	c.li	a0,00000001
	sb	a3,a4,+00000000
	c.lw	a5,0(a4)
	c.li	a3,0000001C
	c.li	a6,00000004
	sb	a3,a4,+00000001
	c.lw	a5,0(a2)
	addi	a3,zero,+00000050
	c.li	a4,FFFFFFF2
	sb	a0,a2,+00000005
	sb	zero,a2,+00000002
	sb	a3,a2,+00000003
	sb	a4,a2,+00000004
	c.lw	a5,0(a2)
	sb	a0,a2,+00000006
	sb	zero,a2,+00000007
	c.lw	a5,0(a2)
	sb	zero,a2,+00000008
	sb	a3,a2,+00000009
	sb	a4,a2,+0000000A
	sb	a1,a2,+0000000B
	c.lw	a5,0(a2)
	sb	a1,a2,+0000000C
	sb	zero,a2,+0000000D
	c.lw	a5,0(a2)
	sb	zero,a2,+0000000E
	sb	a3,a2,+0000000F
	sb	a4,a2,+00000010
	sb	a1,a2,+00000011
	c.lw	a5,0(a2)
	sb	zero,a2,+00000012
	sb	a3,a2,+00000013
	sb	a4,a2,+00000014
	sb	a6,a2,+00000015
	c.lw	a5,0(a2)
	sb	a0,a2,+00000016
	sb	zero,a2,+00000017
	c.lw	a5,0(a2)
	c.li	a0,0000001E
	sb	zero,a2,+00000018
	sb	a3,a2,+00000019
	sb	a4,a2,+0000001A
	sb	a1,a2,+0000001B

l2306000A:
	c.lw	a5,0(a4)
	c.add	a4,a0
	c.sw	a5,0(a4)
	c.jr	ra

;; me_add_ie_tim: 23060012
;;   Called from:
;;     230609E4 (in me_build_beacon)
me_add_ie_tim proc
	c.lw	a0,0(a5)
	c.li	a4,00000005
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000004
	sb	a4,a5,+00000001
	c.lw	a0,0(a5)
	sb	a1,a5,+00000003
	c.lw	a0,0(a5)
	c.addi	a5,00000006
	c.sw	a0,0(a5)
	c.li	a0,00000006
	c.jr	ra

;; me_add_ie_ht_capa: 23060032
;;   Called from:
;;     230603DA (in me_build_associate_req)
;;     23060A32 (in me_build_beacon)
;;     23060C86 (in me_build_probe_rsp)
;;     23060E7E (in me_build_associate_rsp)
me_add_ie_ht_capa proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,0(a4)
	lui	s1,0004201D
	addi	s1,s1,-00000744
	addi	a3,zero,+0000002D
	lhu	a5,s1,+0000000C
	sb	a3,a4,+00000000
	c.lw	a0,0(a4)
	c.li	a3,0000001A
	c.andi	a5,FFFFFFF3
	sb	a3,a4,+00000001
	c.lw	a0,0(a4)
	ori	a5,a5,+0000000C
	c.mv	s0,a0
	sb	a5,a4,+00000002
	c.srli	a5,00000008
	sb	a5,a4,+00000003
	lbu	a4,s1,+0000000E
	c.lw	a0,0(a5)
	lui	a1,0004201D
	c.li	a2,00000010
	sb	a4,a5,+00000004
	c.lw	a0,0(a0)
	addi	a1,a1,-00000735
	c.addi	a0,00000005
	jal	ra,000000002305FC80
	lhu	a5,s1,+00000020
	c.lw	s0,0(a4)
	lui	a1,0004201D
	c.li	a2,00000004
	sb	a5,a4,+00000015
	c.srli	a5,00000008
	sb	a5,a4,+00000016
	c.lw	s0,0(a0)
	addi	a1,a1,-00000720
	c.addi	a0,00000017
	jal	ra,000000002305FC80
	c.lw	s0,0(a5)
	lbu	a4,s1,+00000028
	c.li	a0,0000001C
	sb	a4,a5,+0000001B
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,0000001C
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_add_ie_ht_oper: 230600C6
;;   Called from:
;;     23060A3E (in me_build_beacon)
;;     23060C92 (in me_build_probe_rsp)
;;     23060E90 (in me_build_associate_rsp)
me_add_ie_ht_oper proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	addi	a4,zero,+0000003D
	c.lw	a1,64(s1)
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	c.li	a4,00000016
	c.mv	s0,a0
	sb	a4,a5,+00000001
	lhu	a1,s1,+00000006
	lbu	a0,s1,+00000004
	jal	ra,000000002305FC9C
	c.lw	s0,0(a5)
	sb	a0,a5,+00000002
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002306010C

l230600FC:
	lhu	a3,s1,+00000006
	lhu	a4,s1,+00000008
	c.li	a5,00000007
	bltu	a4,a3,000000002306010C

l2306010A:
	c.li	a5,00000005

l2306010C:
	c.lw	s0,0(a4)
	c.li	a0,00000018
	sb	a5,a4,+00000003
	c.lw	s0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000004
	sb	zero,a5,+00000005
	c.lw	s0,0(a5)
	c.li	a4,FFFFFFFF
	sb	zero,a5,+00000006
	sb	zero,a5,+00000007
	c.lw	s0,0(a5)
	sb	a4,a5,+00000008
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,00000018
	c.sw	s0,0(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; me_build_authenticate: 23060142
;;   Called from:
;;     2304DF9C (in sm_auth_send)
;;     2304F81C (in apm_send_mlme)
me_build_authenticate proc
	sb	a1,a0,+00000000
	sb	a2,a0,+00000002
	c.srli	a1,00000008
	c.srli	a2,00000008
	sb	a3,a0,+00000004
	c.srli	a3,00000008
	sb	a1,a0,+00000001
	sb	a2,a0,+00000003
	sb	a3,a0,+00000005
	c.beqz	a4,0000000023060194

l23060162:
	c.li	a5,00000010
	sb	a5,a0,+00000006
	addi	a5,zero,-00000080
	sb	a5,a0,+00000007
	addi	a3,zero,+00000080
	c.addi	a0,00000008
	c.li	a5,00000000

l23060178:
	add	a2,a4,a5
	lbu	a1,a2,+00000000
	add	a2,a0,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	bne	a5,a3,0000000023060178

l2306018E:
	addi	a0,zero,+00000088
	c.jr	ra

l23060194:
	c.li	a0,00000006
	c.jr	ra

;; me_build_deauthenticate: 23060198
;;   Called from:
;;     2304DCB0 (in sm_disconnect)
;;     2304E5F0 (in sm_handle_supplicant_result)
;;     2304F87E (in apm_send_mlme)
me_build_deauthenticate proc
	sb	a1,a0,+00000000
	c.srli	a1,00000008
	sb	a1,a0,+00000001
	c.li	a0,00000002
	c.jr	ra

;; me_build_associate_req: 230601A6
;;   Called from:
;;     2304E112 (in sm_assoc_req_send)
me_build_associate_req proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	lhu	s0,a6,+00000038
	c.swsp	a0,0000008C
	c.mv	s3,a1
	c.mv	s6,a4
	c.mv	s7,a5
	c.mv	s1,a6
	lhu	s5,a6,+00000036
	lbu	s8,a6,+0000003C
	c.bnez	s0,00000000230601DC

l230601DA:
	c.li	s0,00000005

l230601DC:
	c.mv	a0,a3
	c.swsp	a2,00000000
	jal	ra,0000000023061A70
	c.lwsp	t3,000000E4
	srli	a4,a0,00000008
	c.lwsp	zero,00000084
	sb	a0,a5,+00000000
	sb	a4,a5,+00000001
	c.lwsp	t3,000000E4
	c.mv	s2,a0
	sb	s0,a5,+00000002
	c.srli	s0,00000008
	sb	s0,a5,+00000003
	c.li	s0,00000004
	c.beqz	a2,0000000023060226

l23060206:
	lhu	a4,a2,+00000000
	c.lwsp	t3,000000E4
	c.li	s0,0000000A
	sh	a4,a5,+00000004
	lhu	a4,a2,+00000002
	c.lwsp	t3,000000E4
	sh	a4,a5,+00000006
	lhu	a4,a2,+00000004
	c.lwsp	t3,000000E4
	sh	a4,a5,+00000008

l23060226:
	c.lwsp	t3,000000E4
	addi	a2,s3,+00000027
	c.addi4spn	a0,0000001C
	c.add	a5,s0
	sw	a5,s6,+00000000
	lbu	a1,s3,+00000026
	c.swsp	a5,0000008C
	addi	s9,s3,+00000058
	jal	ra,000000002305FD3C
	c.mv	s4,a0
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002305FD78
	c.add	a0,s4
	lbu	a4,s3,+00000058
	c.add	s0,a0
	c.slli	s0,10
	c.li	a5,00000008
	c.srli	s0,00000010
	bgeu	a5,a4,000000002306026C

l2306025E:
	c.mv	a1,s9
	c.addi4spn	a0,0000001C
	jal	ra,000000002305FDC8
	c.add	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010

l2306026C:
	andi	s2,s2,+00000100
	beq	s2,zero,0000000023060344

l23060274:
	c.lwsp	t3,000000E4
	addi	a1,sp,+0000002F
	c.addi4spn	a0,00000030
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	addi	a4,zero,+00000021
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	c.li	a4,00000002
	sb	a4,a5,+00000000
	jal	ra,000000002305633C
	lw	a5,s3,+0000004C
	lb	a4,sp,+00000030
	lb	a5,a5,+00000004
	bge	a5,a4,00000000230602B0

l230602AC:
	sb	a5,sp,+00000030

l230602B0:
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	lbu	a4,sp,+0000002F
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	lbu	a4,sp,+00000030
	sb	a4,a5,+00000000
	c.lwsp	t3,000000E4
	addi	a4,a5,+00000001
	c.swsp	a4,0000008C
	addi	a4,zero,+00000024
	sb	a4,a5,+00000000
	c.lwsp	t3,000000A4
	addi	a5,a3,+00000001
	c.swsp	a5,0000008C
	lw	a5,s3,+0000004C
	lbu	a4,a5,+00000002
	lui	a5,0004201D
	addi	a5,a5,-00000744
	bne	a4,zero,0000000023060410

l230602FC:
	lbu	a6,a5,+0000012C
	lui	s2,0004201D
	addi	s2,s2,-00000714
	c.li	t3,00000001
