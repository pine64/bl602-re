#ifndef BZ_PHY_AGC_BASE
typedef union {
	uint32_t regs[0x40];
	uint8_t pad[0x100];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_agc_force_dg_ind : 6; // @ 6 -- 1 # 0xffffff81
				uint32_t bz_agc_force_dg_ind_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t bz_agc_force_rbb_ind : 5; // @ 12 -- 8 # 0xffffe0ff
				uint32_t bz_agc_force_rbb_ind_en : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t bz_agc_force_lna_ind : 4; // @ 17 -- 14 # 0xfffc3fff
				uint32_t bz_agc_force_lna_ind_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t bz_agc_force_fe_sat_flag : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t bz_agc_force_fe_sat_flag_en : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t bz_agc_force_adc_sat_flag : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t bz_agc_force_adc_sat_flag_en : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t bz_agc_force_pkdet_flag : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_agc_force_pkdet_flag_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t bz_agc_force_pip_flag : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t bz_agc_force_pip_flag_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad0 : 5;
			};
		} r0x2c00; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_force_trig : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_agc_force_trig_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t bz_agc_force_fe : 8; // @ 9 -- 2 # 0xfffffc03
				uint32_t bz_agc_force_fe_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t bz_agc_force_adc : 8; // @ 18 -- 11 # 0xfff807ff
				uint32_t bz_agc_force_adc_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t bz_agc_dbg_sel : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t pad0 : 7;
				uint32_t bz_agc_adc_amp_sel : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0x2c04; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_force_fe_rssi : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_force_fe_rssi_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t bz_agc_force_fe_dg : 6; // @ 14 -- 9 # 0xffff81ff
				uint32_t bz_agc_force_fe_dg_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pad0 : 16;
			};
		} r0x2c08; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_pkdet_cnt : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_pkdet_win : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_pkdet_mode : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t bz_agc_pkdet_flag_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 21;
			};
		} r0x2c0c; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_adc_sat_flag_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} r0x2c10; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_win_zb : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_sat_cnt_zb : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_adc_sat_thr_zb : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c14; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_win_ble1 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_sat_cnt_ble1 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_adc_sat_thr_ble1 : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c18; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_win_ble2 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_sat_cnt_ble2 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_adc_sat_thr_ble2 : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c1c; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_win_blec : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_sat_cnt_blec : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_adc_sat_thr_blec : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c20; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_sat_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_fe_sat_flag_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} r0x2c24; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_sat_win_zb : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_sat_cnt_zb : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_fe_sat_thr_zb : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c28; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_sat_win_ble1 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_sat_cnt_ble1 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_fe_sat_thr_ble1 : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c2c; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_sat_win_ble2 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_sat_cnt_ble2 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_fe_sat_thr_ble2 : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c30; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_sat_win_blec : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_sat_cnt_blec : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t bz_agc_fe_sat_thr_blec : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad0 : 15;
			};
		} r0x2c34; // @ 0x34
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_pip_rssi_th : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_pip_win : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t bz_agc_pip_cnt : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t bz_agc_pip_mag_th : 9; // @ 24 -- 16 # 0xfe00ffff
				uint32_t bz_agc_pip_mode : 2; // @ 26 -- 25 # 0xf9ffffff
				uint32_t bz_agc_pip_flag_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad0 : 4;
			};
		} r0x2c38; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_disapp_adc_th : 9; // @ 8 -- 0 # 0xfffffe00
				uint32_t bz_agc_disapp_rbb_th : 5; // @ 13 -- 9 # 0xffffc1ff
				uint32_t bz_agc_disapp_lna_th : 4; // @ 17 -- 14 # 0xfffc3fff
				uint32_t bz_agc_disapp_cnt_th : 10; // @ 27 -- 18 # 0xf003ffff
				uint32_t bz_agc_disapp_top_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t bz_agc_disapp_freeze_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t bz_agc_disapp_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pad0 : 1;
			};
		} r0x2c3c; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_unlock_win_zb : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_unlock_th_zb : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_unlock_ndl2_zb : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_unlock_ndl1_zb : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t bz_agc_bz_phy_agc_rssi_upd_cyc_zb : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad0 : 2;
			};
		} r0x2c40; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_lock_win_zb : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_lock_th_zb : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_lock_ndl2_zb : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_lock_ndl1_zb : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t pad0 : 8;
			};
		} r0x2c44; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_unlock_win_ble1 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_unlock_th_ble1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_unlock_ndl2_ble1 : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_unlock_ndl1_ble1 : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t bz_agc_bz_phy_agc_rssi_upd_cyc_ble1 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad0 : 2;
			};
		} r0x2c48; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_lock_win_ble1 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_lock_th_ble1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_lock_ndl2_ble1 : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_lock_ndl1_ble1 : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t pad0 : 8;
			};
		} r0x2c4c; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_unlock_win_ble2 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_unlock_th_ble2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_unlock_ndl2_ble2 : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_unlock_ndl1_ble2 : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t bz_agc_bz_phy_agc_rssi_upd_cyc_ble2 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad0 : 2;
			};
		} r0x2c50; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_lock_win_ble2 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_lock_th_ble2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_lock_ndl2_ble2 : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_lock_ndl1_ble2 : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t pad0 : 8;
			};
		} r0x2c54; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_unlock_win_blec : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_unlock_th_blec : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_unlock_ndl2_blec : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_unlock_ndl1_blec : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t bz_agc_bz_phy_agc_rssi_upd_cyc_blec : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad0 : 2;
			};
		} r0x2c58; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_gain_lock_win_blec : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_gain_lock_th_blec : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_gain_lock_ndl2_blec : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t bz_agc_gain_lock_ndl1_blec : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t pad0 : 8;
			};
		} r0x2c5c; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_gt_err_th : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t bz_agc_adc_gt_hyst : 8; // @ 17 -- 10 # 0xfffc03ff
				uint32_t bz_agc_adc_gt_err_mode : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t bz_agc_adc_loop_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad0 : 12;
			};
		} r0x2c60; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_gt_zb : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_slow_coeff_zb : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_adc_fast_coeff_zb : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_adc_dn_coeff_zb : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_adc_up_coeff_zb : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c64; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_gt_ble1 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_slow_coeff_ble1 : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_adc_fast_coeff_ble1 : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_adc_dn_coeff_ble1 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_adc_up_coeff_ble1 : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c68; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_gt_ble2 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_slow_coeff_ble2 : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_adc_fast_coeff_ble2 : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_adc_dn_coeff_ble2 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_adc_up_coeff_ble2 : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c6c; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_gt_blec : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_adc_slow_coeff_blec : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_adc_fast_coeff_blec : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_adc_dn_coeff_blec : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_adc_up_coeff_blec : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c70; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_gt_err_th : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t bz_agc_fe_gt_hyst : 8; // @ 17 -- 10 # 0xfffc03ff
				uint32_t bz_agc_fe_gt_err_mode : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t bz_agc_fe_loop_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad0 : 12;
			};
		} r0x2c74; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_gt_zb : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_dn_coeff_zb : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_fe_up_coeff_zb : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_fe_slow_coeff_zb : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_fe_fast_coeff_zb : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c78; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_gt_ble1 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_dn_coeff_ble1 : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_fe_up_coeff_ble1 : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_fe_slow_coeff_ble1 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_fe_fast_coeff_ble1 : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c7c; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_gt_ble2 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_dn_coeff_ble2 : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_fe_up_coeff_ble2 : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_fe_slow_coeff_ble2 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_fe_fast_coeff_ble2 : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c80; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_fe_gt_blec : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bz_agc_fe_dn_coeff_blec : 6; // @ 9 -- 4 # 0xfffffc0f
				uint32_t bz_agc_fe_up_coeff_blec : 6; // @ 15 -- 10 # 0xffff03ff
				uint32_t bz_agc_fe_slow_coeff_blec : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t bz_agc_fe_fast_coeff_blec : 6; // @ 27 -- 22 # 0xf03fffff
				uint32_t pad0 : 4;
			};
		} r0x2c84; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_rst_dg_mode_zb : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_tia_sat_rst_dg_mode_zb : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t bz_agc_tia_sat_rst_rbb_mode_zb : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 26;
			};
		} r0x2c88; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_rst_dg_mode_ble1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_tia_sat_rst_dg_mode_ble1 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t bz_agc_tia_sat_rst_rbb_mode_ble1 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 26;
			};
		} r0x2c8c; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_rst_dg_mode_ble2 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_tia_sat_rst_dg_mode_ble2 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t bz_agc_tia_sat_rst_rbb_mode_ble2 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 26;
			};
		} r0x2c90; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_adc_sat_rst_dg_mode_blec : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t bz_agc_tia_sat_rst_dg_mode_blec : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t bz_agc_tia_sat_rst_rbb_mode_blec : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 26;
			};
		} r0x2c94; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_proc_dly_dg_sat : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_proc_dly_adc_sat : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_proc_dly_tia_sat : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} r0x2c98; // @ 0x98
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_proc_dly_dg_sat_rbb : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_proc_dly_adc_sat_rbb : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_proc_dly_tia_sat_rbb : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} r0x2c9c; // @ 0x9c
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_proc_dly_dg_sat_dg : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_proc_dly_adc_sat_dg : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_proc_dly_tia_sat_dg : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} r0x2ca0; // @ 0xa0
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_proc_dly_dg_adj : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_proc_dly_rbb_adj_dg : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_agc_proc_dly_rbb_adj_bb : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} r0x2ca4; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_lna_ind_min : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pad0 : 4;
				uint32_t bz_agc_lna_ind_max : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 12;
				uint32_t bz_agc_lna_ind_init : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad2 : 4;
			};
		} r0x2ca8; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_rbb_ind_min : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t bz_agc_rbb_ind_max : 5; // @ 12 -- 8 # 0xffffe0ff
				uint32_t pad1 : 3;
				uint32_t bz_agc_rbb_ind_step : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t bz_agc_rbb_ind_init : 5; // @ 28 -- 24 # 0xe0ffffff
				uint32_t pad3 : 3;
			};
		} r0x2cac; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_dg_ind_min_zb : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_dg_ind_max_zb : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_dg_ind_step_zb : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_dg_ind_init_zb : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2cb0; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_dg_ind_min_ble1 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_dg_ind_max_ble1 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_dg_ind_step_ble1 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_dg_ind_init_ble1 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2cb4; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_dg_ind_min_ble2 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_dg_ind_max_ble2 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_dg_ind_step_ble2 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_dg_ind_init_ble2 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2cb8; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_dg_ind_min_blec : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_dg_ind_max_blec : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_dg_ind_step_blec : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_dg_ind_init_blec : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2cbc; // @ 0xbc
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_rssi_out : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_agc_dg_ind : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad0 : 2;
				uint32_t bz_agc_rbb_ind : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t bz_agc_lna_ind : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad2 : 4;
			};
		} r0x2cc0; // @ 0xc0
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_status_1 : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2cc4; // @ 0xc4
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_status_2 : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2cc8; // @ 0xc8
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_status_3 : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2ccc; // @ 0xcc
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_agc_ctrl_reserved : 32; // @ 31 -- 0 # 0x0
			};
		} r0x2cd0; // @ 0xd0
		uint8_t pad0[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_lna_gain_0 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_lna_gain_1 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_lna_gain_2 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_lna_gain_3 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2ce0; // @ 0xe0
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_lna_gain_4 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t bz_agc_lna_gain_5 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t bz_agc_lna_gain_6 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t bz_agc_lna_gain_7 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} r0x2ce4; // @ 0xe4
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_lna_gain_8 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 26;
			};
		} r0x2ce8; // @ 0xe8
	};
} bz_phy_agc_regs;
#define BZ_PHY_AGC_BASE 0x40002c00
#define BZ_PHY_AGC ((volatile bz_phy_agc_regs*)(BZ_PHY_AGC_BASE))
#endif