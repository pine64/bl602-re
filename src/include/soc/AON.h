typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x800];
		union {
			uint32_t value;
			struct {
				uint32_t aon_resv : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 4;
				uint32_t pu_aon_dc_tbuf : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 7;
				uint32_t ldo11_rt_pulldown : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ldo11_rt_pulldown_sel : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t sw_pu_ldo11_rt : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad2 : 9;
			};
		} aon; // @ 0x800
		union {
			uint32_t value;
			struct {
				uint32_t tmux_aon : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t ten_aon : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t dten_xtal32k : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ten_xtal32k : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad1 : 1;
				uint32_t ten_vddcore_aon : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ten_ldo11soc_aon : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t ten_dcdc18_0_aon : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t ten_dcdc18_1_aon : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ten_bg_sys_aon : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad2 : 3;
				uint32_t ten_ldo15rf_aon : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ten_xtal_aon : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t dten_xtal_aon : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ten_mbg_aon : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ten_cip_misc_aon : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad3 : 11;
			};
		} aon_common; // @ 0x804
		union {
			uint32_t value;
			struct {
				uint32_t sw_soc_en_aon : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sw_wb_en_aon : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} aon_misc; // @ 0x808
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t pmip_resv : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pu_bg_sys_aon : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad0 : 3;
				uint32_t bg_sys_start_ctrl_aon : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 19;
			};
		} bg_sys_top; // @ 0x810
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t dcdc18_vout_sel_aon : 5; // @ 5 -- 1 # 0xffffffc1
				uint32_t pad1 : 2;
				uint32_t dcdc18_vpfm_aon : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t dcdc18_osc_2m_mode_aon : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad2 : 3;
				uint32_t dcdc18_osc_freq_trim_aon : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t dcdc18_slope_curr_sel_aon : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t dcdc18_stop_osc_aon : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t dcdc18_slow_osc_aon : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t dcdc18_osc_inhibit_t2_aon : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t dcdc18_sstart_time_aon : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad3 : 1;
				uint32_t dcdc18_rdy_aon : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} dcdc18_top_0; // @ 0x814
		union {
			uint32_t value;
			struct {
				uint32_t dcdc18_force_cs_zvs_aon : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t dcdc18_cs_delay_aon : 3; // @ 3 -- 1 # 0xfffffff1
				uint32_t dcdc18_zvs_td_opt_aon : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad0 : 1;
				uint32_t dcdc18_nonoverlap_td_aon : 5; // @ 12 -- 8 # 0xffffe0ff
				uint32_t pad1 : 3;
				uint32_t dcdc18_rc_sel_aon : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t dcdc18_chf_sel_aon : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t dcdc18_cfb_sel_aon : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t dcdc18_en_antiring_aon : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t dcdc18_pulldown_aon : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad2 : 2;
			};
		} dcdc18_top_1; // @ 0x818
		union {
			uint32_t value;
			struct {
				uint32_t pu_ldo11soc_aon : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t ldo11soc_sstart_sel_aon : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t ldo11soc_sstart_delay_aon : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t ldo11soc_pulldown_aon : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t ldo11soc_pulldown_sel_aon : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ldo11soc_vth_sel_aon : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad2 : 10;
				uint32_t ldo11soc_cc_aon : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad3 : 2;
				uint32_t ldo11soc_rdy_aon : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t ldo11soc_power_good_aon : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pu_vddcore_misc_aon : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pmip_dc_tp_out_en_aon : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} ldo11soc_and_dctest; // @ 0x81c
		union {
			uint32_t value;
			struct {
				uint32_t pu_ir_psw_aon : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} psw_irrcv; // @ 0x820
		uint8_t pad2[0x5c];
		union {
			uint32_t value;
			struct {
				uint32_t pu_mbg_aon : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pu_ldo15rf_aon : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pu_sfreg_aon : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t pu_xtal_buf_aon : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pu_xtal_aon : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 2;
				uint32_t ldo15rf_sstart_sel_aon : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ldo15rf_sstart_delay_aon : 2; // @ 10 -- 9 # 0xfffff9ff
				uint32_t pad2 : 1;
				uint32_t ldo15rf_pulldown_aon : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ldo15rf_pulldown_sel_aon : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad3 : 2;
				uint32_t ldo15rf_vout_sel_aon : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad4 : 5;
				uint32_t ldo15rf_cc_aon : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad5 : 2;
				uint32_t ldo15rf_bypass_aon : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad6 : 3;
			};
		} rf_top_aon; // @ 0x880
		union {
			uint32_t value;
			struct {
				uint32_t xtal_bk_aon : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t xtal_capcode_extra_aon : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t xtal_ext_sel_aon : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t xtal_buf_en_aon : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t xtal_buf_hp_aon : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t xtal_fast_startup_aon : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t xtal_sleep_aon : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t xtal_amp_ctrl_aon : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t xtal_capcode_out_aon : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t xtal_capcode_in_aon : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t xtal_gm_boost_aon : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t xtal_rdy_sel_aon : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} xtal_cfg; // @ 0x884
		union {
			uint32_t value;
			struct {
				uint32_t tsen_refcode_corner : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 4;
				uint32_t tsen_refcode_rfcal : 12; // @ 27 -- 16 # 0xf000ffff
				uint32_t xtal_rdy : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t xtal_inn_cfg_en_aon : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t xtal_rdy_int_sel_aon : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} tsen; // @ 0x888
		uint8_t pad3[0x74];
		union {
			uint32_t value;
			struct {
				uint32_t acomp0_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t acomp0_hyst_seln : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t acomp0_hyst_selp : 3; // @ 9 -- 7 # 0xfffffc7f
				uint32_t acomp0_bias_prog : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t acomp0_level_sel : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t acomp0_neg_sel : 4; // @ 21 -- 18 # 0xffc3ffff
				uint32_t acomp0_pos_sel : 4; // @ 25 -- 22 # 0xfc3fffff
				uint32_t acomp0_muxen : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad1 : 5;
			};
		} acomp0_ctrl; // @ 0x900
		union {
			uint32_t value;
			struct {
				uint32_t acomp1_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t acomp1_hyst_seln : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t acomp1_hyst_selp : 3; // @ 9 -- 7 # 0xfffffc7f
				uint32_t acomp1_bias_prog : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t acomp1_level_sel : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t acomp1_neg_sel : 4; // @ 21 -- 18 # 0xffc3ffff
				uint32_t acomp1_pos_sel : 4; // @ 25 -- 22 # 0xfc3fffff
				uint32_t acomp1_muxen : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad1 : 5;
			};
		} acomp1_ctrl; // @ 0x904
		union {
			uint32_t value;
			struct {
				uint32_t acomp1_rstn_ana : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t acomp0_rstn_ana : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 6;
				uint32_t acomp1_test_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t acomp0_test_en : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t acomp1_test_sel : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t acomp0_test_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad1 : 3;
				uint32_t acomp1_out_raw : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pad2 : 1;
				uint32_t acomp0_out_raw : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad3 : 4;
				uint32_t acomp_reserved : 8; // @ 31 -- 24 # 0xffffff
			};
		} acomp_ctrl; // @ 0x908
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_global_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpadc_conv_start : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t gpadc_soft_rst : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t gpadc_neg_sel : 5; // @ 7 -- 3 # 0xffffff07
				uint32_t gpadc_pos_sel : 5; // @ 12 -- 8 # 0xffffe0ff
				uint32_t gpadc_neg_gnd : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t gpadc_micbias_en : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t gpadc_micpga_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t gpadc_byp_micboost : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 1;
				uint32_t gpadc_dwa_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t gpadc_mic2_diff : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t gpadc_mic1_diff : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t gpadc_mic_pga2_gain : 2; // @ 22 -- 21 # 0xff9fffff
				uint32_t gpadc_micboost_32db_en : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad1 : 3;
				uint32_t gpadc_chip_sen_pu : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t gpadc_sen_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t gpadc_sen_test_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pad2 : 1;
			};
		} gpadc_reg_cmd; // @ 0x90c
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_cal_os_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpadc_cont_conv_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t gpadc_res_sel : 3; // @ 4 -- 2 # 0xffffffe3
				uint32_t pad0 : 12;
				uint32_t gpadc_clk_ana_inv : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t gpadc_clk_div_ratio : 3; // @ 20 -- 18 # 0xffe3ffff
				uint32_t gpadc_scan_length : 4; // @ 24 -- 21 # 0xfe1fffff
				uint32_t gpadc_scan_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t gpadc_dither_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t gpadc_v11_sel : 2; // @ 28 -- 27 # 0xe7ffffff
				uint32_t gpadc_v18_sel : 2; // @ 30 -- 29 # 0x9fffffff
				uint32_t pad1 : 1;
			};
		} gpadc_reg_config1; // @ 0x910
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t gpadc_diff_mode : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t gpadc_vref_sel : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t gpadc_vbat_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t gpadc_tsext_sel : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t gpadc_ts_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t gpadc_pga_vcm : 2; // @ 8 -- 7 # 0xfffffe7f
				uint32_t gpadc_pga_os_cal : 4; // @ 12 -- 9 # 0xffffe1ff
				uint32_t gpadc_pga_en : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t gpadc_pga_vcmi_en : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t gpadc_chop_mode : 2; // @ 16 -- 15 # 0xfffe7fff
				uint32_t gpadc_bias_sel : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t gpadc_test_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t gpadc_test_sel : 3; // @ 21 -- 19 # 0xffc7ffff
				uint32_t gpadc_pga2_gain : 3; // @ 24 -- 22 # 0xfe3fffff
				uint32_t gpadc_pga1_gain : 3; // @ 27 -- 25 # 0xf1ffffff
				uint32_t gpadc_dly_sel : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t gpadc_tsvbe_low : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} gpadc_reg_config2; // @ 0x914
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_scan_pos_0 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t gpadc_scan_pos_1 : 5; // @ 9 -- 5 # 0xfffffc1f
				uint32_t gpadc_scan_pos_2 : 5; // @ 14 -- 10 # 0xffff83ff
				uint32_t gpadc_scan_pos_3 : 5; // @ 19 -- 15 # 0xfff07fff
				uint32_t gpadc_scan_pos_4 : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t gpadc_scan_pos_5 : 5; // @ 29 -- 25 # 0xc1ffffff
				uint32_t pad0 : 2;
			};
		} gpadc_reg_scn_pos1; // @ 0x918
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_scan_pos_6 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t gpadc_scan_pos_7 : 5; // @ 9 -- 5 # 0xfffffc1f
				uint32_t gpadc_scan_pos_8 : 5; // @ 14 -- 10 # 0xffff83ff
				uint32_t gpadc_scan_pos_9 : 5; // @ 19 -- 15 # 0xfff07fff
				uint32_t gpadc_scan_pos_10 : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t gpadc_scan_pos_11 : 5; // @ 29 -- 25 # 0xc1ffffff
				uint32_t pad0 : 2;
			};
		} gpadc_reg_scn_pos2; // @ 0x91c
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_scan_neg_0 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t gpadc_scan_neg_1 : 5; // @ 9 -- 5 # 0xfffffc1f
				uint32_t gpadc_scan_neg_2 : 5; // @ 14 -- 10 # 0xffff83ff
				uint32_t gpadc_scan_neg_3 : 5; // @ 19 -- 15 # 0xfff07fff
				uint32_t gpadc_scan_neg_4 : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t gpadc_scan_neg_5 : 5; // @ 29 -- 25 # 0xc1ffffff
				uint32_t pad0 : 2;
			};
		} gpadc_reg_scn_neg1; // @ 0x920
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_scan_neg_6 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t gpadc_scan_neg_7 : 5; // @ 9 -- 5 # 0xfffffc1f
				uint32_t gpadc_scan_neg_8 : 5; // @ 14 -- 10 # 0xffff83ff
				uint32_t gpadc_scan_neg_9 : 5; // @ 19 -- 15 # 0xfff07fff
				uint32_t gpadc_scan_neg_10 : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t gpadc_scan_neg_11 : 5; // @ 29 -- 25 # 0xc1ffffff
				uint32_t pad0 : 2;
			};
		} gpadc_reg_scn_neg2; // @ 0x924
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_data_rdy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 15;
				uint32_t gpadc_reserved : 16; // @ 31 -- 16 # 0xffff
			};
		} gpadc_reg_status; // @ 0x928
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_neg_satur : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpadc_pos_satur : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 2;
				uint32_t gpadc_neg_satur_clr : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t gpadc_pos_satur_clr : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 2;
				uint32_t gpadc_neg_satur_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t gpadc_pos_satur_mask : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad2 : 22;
			};
		} gpadc_reg_isr; // @ 0x92c
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_data_out : 26; // @ 25 -- 0 # 0xfc000000
				uint32_t pad0 : 6;
			};
		} gpadc_reg_result; // @ 0x930
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_raw_data : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 20;
			};
		} gpadc_reg_raw_result; // @ 0x934
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_os_cal_data : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} gpadc_reg_define; // @ 0x938
		union {
			uint32_t value;
			struct {
				uint32_t hbncore_resv0_data : 32; // @ 31 -- 0 # 0x0
			};
		} hbncore_resv0; // @ 0x93c
		union {
			uint32_t value;
			struct {
				uint32_t hbncore_resv1_data : 32; // @ 31 -- 0 # 0x0
			};
		} hbncore_resv1; // @ 0x940
	};
} AON_regs;
#define AON_BASE 0x4000f000
#define AON ((AON_regs* volatile)(AON_BASE))