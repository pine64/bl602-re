#ifndef BZ_PHY_BASE
typedef union {
	uint32_t regs[0xc0];
	uint8_t pad[0x300];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rxdfe_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_phy_dfe_rxmode_force : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t bz_phy_dfe_rxmode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t bz_phy_txdfe_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t bz_phy_dfe_txmode_force : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t bz_phy_dfe_txmode : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t bz_phy_dfe_clk_force_on : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t bz_phy_adc_clk_sel : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bz_phy_dfe_rxdfe_4s_on : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t bz_phy_dfe_txdfe_4s_on : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad0 : 20;
			};
		} r0x2800; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_tx_dfe_iq_if_freq : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t bz_phy_tx_dfe_psf_ble1m : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t bz_phy_tx_dfe_psf_ble2m : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t bz_phy_tx_dfe_psf_zig : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t bz_phy_tx_pll_bw_switch_th : 10; // @ 31 -- 22 # 0x3fffff
			};
		} r0x2804; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 9;
				uint32_t bz_phy_tx_pa_pwr_code : 5; // @ 13 -- 9 # 0xffffc1ff
				uint32_t bz_phy_tx_rampup_am_step : 8; // @ 21 -- 14 # 0xffc03fff
				uint32_t bz_phy_tx_rampup_am_on : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t bz_phy_tx_rampup_fm_on : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_phy_tx_rampup_time_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2808; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_tx_rampdn_pad0_time_us : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_tx_rampdn_am_start_dly : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t bz_phy_tx_rampdn_am_step : 8; // @ 21 -- 14 # 0xffc03fff
				uint32_t bz_phy_tx_rampdn_am_on : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t bz_phy_tx_rampdn_fm_on : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_phy_tx_rampdn_time_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x280c; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_dfe_notch_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_phy_rx_dfe_toc_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t bz_phy_rx_dfe_ddc_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t bz_phy_rx_dfe_cs_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t bz_phy_rx_dfe_dga_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t bz_phy_rx_dfe_diffosr_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t bz_phy_rx_dfe_nsr_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t bz_phy_rx_dfe_loop_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t bz_phy_rx_dfe_dccan_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad0 : 23;
			};
		} r0x2810; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_dfe_freq_trk_val : 13; // @ 12 -- 0 # 0xffffe000
				uint32_t pad0 : 2;
				uint32_t bz_phy_rx_dfe_freq_trk_force : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pad1 : 16;
			};
		} r0x2814; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_dfe_notch_rot_q : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t bz_phy_rx_dfe_notch_rot_i : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t bz_phy_rx_dfe_notch_alpha : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t bz_phy_rx_dfe_notch_force : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t bz_phy_rx_dfe_dccan_alpha : 2; // @ 24 -- 23 # 0xfe7fffff
				uint32_t pad0 : 7;
			};
		} r0x2818; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_dfe_toc_fac : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t bz_phy_rx_dfe_toc_fac_force : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad0 : 19;
			};
		} r0x281c; // @ 0x1c
		uint8_t pad0[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_cca_st_int_set : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_phy_cca_st_int_clr : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t bz_phy_cca_st_int : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t bz_phy_cca_st_dm_flag : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t bz_phy_cca_st_cs_flag : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t bz_phy_cca_st_ed_flag : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t bz_phy_cca_st_cca_flag : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t bz_phy_cca_st_ed_meas : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t bz_phy_phy_sw_cca_en_sel : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t bz_phy_phy_cca_ed_th : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t bz_phy_phy_cca_found_src : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_phy_phy_cca_dur : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t bz_phy_phy_cca_mode : 2; // @ 28 -- 27 # 0xe7ffffff
				uint32_t bz_phy_phy_cca_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t bz_phy_phy_sw_cca_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t bz_phy_phy_sw_ed_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2834; // @ 0x34
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_t2f_mag_th : 9; // @ 8 -- 0 # 0xfffffe00
				uint32_t pad0 : 1;
				uint32_t bz_phy_blec_cfoe_alpha : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t bz_phy_ble_sync_corr_avg_l : 5; // @ 17 -- 13 # 0xfffc1fff
				uint32_t bz_phy_ble_cfoe_avg_l : 4; // @ 21 -- 18 # 0xffc3ffff
				uint32_t bz_phy_ble_aa_offset_coef : 5; // @ 26 -- 22 # 0xf83fffff
				uint32_t pad1 : 5;
			};
		} r0x2838; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_t2f_limite_th : 13; // @ 12 -- 0 # 0xffffe000
				uint32_t bz_phy_t2f_impulse_th : 14; // @ 26 -- 13 # 0xf8001fff
				uint32_t bz_phy_t2f_filter_mode : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t bz_phy_t2f_filter_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad0 : 3;
			};
		} r0x283c; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_phy_reserved_0 : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2840; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_phy_reserved_1 : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2844; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_fb_coef_0 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_ff_coef_2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_phy_ff_coef_1 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t bz_phy_ff_coef_0 : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2848; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_ble_aa_corr_thres : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t bz_phy_ble_search_offset : 5; // @ 16 -- 12 # 0xfffe0fff
				uint32_t pad0 : 15;
			};
		} r0x284c; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_ble_rx_cfo_adj_symb : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_ble_fsm_rx_dmtime_2m : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_phy_ble_fsm_rx_dmtime_1m : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t bz_phy_ble_fsm_cfo_peak_dly : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t bz_phy_ble_demod_mode : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t bz_phy_ble_fsm_cg_4s_on : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t bz_phy_ble_fsm_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2850; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_proc_time_viterbi_us : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_rx_proc_time_mlsd_us : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_phy_rx_proc_time_eq_us : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t bz_phy_rx_proc_time_direct_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2854; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_phy_testbus_read : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2858; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_phy_testbus_sel : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pad0 : 28;
			};
		} r0x285c; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_sts_agc_fe_dg : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_phy_sts_agc_agc_rssi : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_phy_sts_agc_rf_rbb_ind : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t bz_phy_sts_agc_rf_lna : 3; // @ 23 -- 21 # 0xff1fffff
				uint32_t pad1 : 7;
				uint32_t bz_phy_sts_agc_clear : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2860; // @ 0x60
		uint8_t pad1[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_sts_ble_cfo_out_peak : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_sts_ble_frtk_out : 13; // @ 20 -- 8 # 0xffe000ff
				uint32_t pad0 : 10;
				uint32_t bz_phy_sts_ble_clear : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x287c; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_sts_ble_aa_confirm_bits : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2880; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_sts_ble_done_cfo_out_peak : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_sts_ble_corr_out_max : 12; // @ 19 -- 8 # 0xfff000ff
				uint32_t bz_phy_sts_ble_aa_error_cnt : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t pad0 : 6;
			};
		} r0x2884; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_zb_fsm_err_sts : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_zb_fsm_dbg_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t bz_phy_zb_ts_cs_found : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bz_phy_zb_dm_sfd_found : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 5;
				uint32_t bz_phy_zb_dm_phy_len : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad1 : 8;
			};
		} r0x2888; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_blec_aa_search_start : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t bz_phy_blec_pk_jump_thres : 6; // @ 10 -- 5 # 0xfffff81f
				uint32_t bz_phy_blec_pk_timing_diff_thres : 3; // @ 13 -- 11 # 0xffffc7ff
				uint32_t bz_phy_blec_pk_thres : 9; // @ 22 -- 14 # 0xff803fff
				uint32_t bz_phy_blec_pk_start_thres : 9; // @ 31 -- 23 # 0x7fffff
			};
		} r0x288c; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_ble_fsm_rx_dmtime_cd : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_blec_rst_thres : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t bz_phy_blec_timing_adj : 5; // @ 16 -- 12 # 0xfffe0fff
				uint32_t bz_phy_blec_aa_corr_thres : 8; // @ 24 -- 17 # 0xfe01ffff
				uint32_t bz_phy_blec_aa_search_stop : 7; // @ 31 -- 25 # 0x1ffffff
			};
		} r0x2890; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_ble_frtk_max_step : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_phy_ble_frtk_th3 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t bz_phy_ble_frtk_th2 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_ble_frtk_th1 : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t pad3 : 1;
			};
		} r0x2894; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_ble_frtk_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_phy_ble_frtk_coeff : 9; // @ 9 -- 1 # 0xfffffc01
				uint32_t pad0 : 22;
			};
		} r0x2898; // @ 0x98
		uint8_t pad2[0x64];
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2402 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2402 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2402 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2402 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2900; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2404 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2404 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2404 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2404 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2904; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2406 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2406 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2406 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2406 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2908; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2408 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2408 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2408 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2408 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x290c; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2410 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2410 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2410 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2410 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2910; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2412 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2412 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2412 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2412 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2914; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2414 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2414 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2414 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2414 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2918; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2416 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2416 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2416 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2416 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x291c; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2418 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2418 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2418 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2418 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2920; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2420 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2420 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2420 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2420 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2924; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2422 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2422 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2422 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2422 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2928; // @ 0x128
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2424 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2424 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2424 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2424 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x292c; // @ 0x12c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2426 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2426 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2426 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2426 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2930; // @ 0x130
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2428 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2428 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2428 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2428 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2934; // @ 0x134
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2430 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2430 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2430 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2430 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2938; // @ 0x138
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2432 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2432 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2432 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2432 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x293c; // @ 0x13c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2434 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2434 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2434 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2434 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2940; // @ 0x140
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2436 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2436 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2436 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2436 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2944; // @ 0x144
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2438 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2438 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2438 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2438 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2948; // @ 0x148
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2440 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2440 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2440 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2440 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x294c; // @ 0x14c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2442 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2442 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2442 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2442 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2950; // @ 0x150
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2444 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2444 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2444 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2444 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2954; // @ 0x154
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2446 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2446 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2446 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2446 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2958; // @ 0x158
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2448 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2448 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2448 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2448 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x295c; // @ 0x15c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2450 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2450 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2450 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2450 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2960; // @ 0x160
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2452 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2452 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2452 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2452 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2964; // @ 0x164
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2454 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2454 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2454 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2454 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2968; // @ 0x168
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2456 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2456 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2456 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2456 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x296c; // @ 0x16c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2458 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2458 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2458 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2458 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2970; // @ 0x170
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2460 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2460 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2460 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2460 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2974; // @ 0x174
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2462 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2462 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2462 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2462 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2978; // @ 0x178
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2464 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2464 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2464 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2464 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x297c; // @ 0x17c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2466 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2466 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2466 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2466 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2980; // @ 0x180
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2468 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2468 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2468 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2468 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2984; // @ 0x184
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2470 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2470 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2470 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2470 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2988; // @ 0x188
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2472 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2472 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2472 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2472 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x298c; // @ 0x18c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2474 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2474 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2474 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2474 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2990; // @ 0x190
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2476 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2476 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2476 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2476 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2994; // @ 0x194
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2478 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2478 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2478 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2478 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2998; // @ 0x198
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2480 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2480 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2480 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2480 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x299c; // @ 0x19c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2405 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2405 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2405 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2405 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29a0; // @ 0x1a0
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2415 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2415 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2415 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2415 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29a4; // @ 0x1a4
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2425 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2425 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2425 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2425 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29a8; // @ 0x1a8
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2435 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2435 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2435 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2435 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29ac; // @ 0x1ac
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2445 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2445 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2445 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2445 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29b0; // @ 0x1b0
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2455 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2455 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2455 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2455 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29b4; // @ 0x1b4
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2465 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2465 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2465 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2465 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29b8; // @ 0x1b8
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_notch_coeff_im_2475 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t bz_phy_notch_coeff_re_2475 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t bz_phy_notch_alpha_2475 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad2 : 1;
				uint32_t bz_phy_notch_en_2475 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x29bc; // @ 0x1bc
		uint8_t pad3[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_pf_th2 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t bz_phy_pf_th1 : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t bz_phy_pf_en_q : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t bz_phy_pf_en_i : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad0 : 4;
				uint32_t bz_phy_fpga_dig_gain : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0x2a00; // @ 0x200
	};
} bz_phy_regs;
#define BZ_PHY_BASE 0x40002800
#define BZ_PHY ((volatile bz_phy_regs*)(BZ_PHY_BASE))
#endif