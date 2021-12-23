typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t rf_id : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t fw_rev : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t hw_rev : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} rf_rev; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t rf_fsm_ctrl_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rf_fsm_t2r_cal_mode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t rf_fsm_state : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t rf_rc_state_dbg : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t rf_rc_state_dbg_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t rf_fsm_st_int_sel : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad2 : 1;
				uint32_t rf_fsm_st_int : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad3 : 3;
				uint32_t rf_fsm_st_int_clr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad4 : 3;
				uint32_t rf_fsm_st_int_set : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad5 : 3;
				uint32_t rf_rc_state_value : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad6 : 1;
			};
		} rf_fsm_ctrl_hw; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t rf_fsm_sw_st : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t rf_fsm_sw_st_vld : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 3;
				uint32_t full_cal_en : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad2 : 3;
				uint32_t inc_cal_timeout : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad3 : 3;
				uint32_t lo_unlocked : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad4 : 11;
			};
		} rf_fsm_ctrl_sw; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t pu_ctrl_hw : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rx_gain_ctrl_hw : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tx_gain_ctrl_hw : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t lna_ctrl_hw : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rbb_bw_ctrl_hw : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t trxcal_ctrl_hw : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t lo_ctrl_hw : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t inc_acal_ctrl_en_hw : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t inc_fcal_ctrl_en_hw : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t sdm_ctrl_hw : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t rbb_pkdet_en_ctrl_hw : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t rbb_pkdet_out_rstn_ctrl_hw : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t adda_ctrl_hw : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad0 : 19;
			};
		} rfctrl_hw_en; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t const_acal : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t const_fcal : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t temp_comp_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} temp_comp; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t rcal_status : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t adc_oscal_status : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t fcal_status : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t acal_status : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t inc_fcal_status : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t inc_acal_status : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t clkpll_cal_status : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t ros_status : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t tos_status : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t rccal_status : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t lo_leakcal_status : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t tiqcal_status_resv : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t riqcal_status_resv : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pwdet_cal_status : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t tenscal_status : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t dpd_status : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} rfcal_status; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t dl_rfcal_table_status : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} rfcal_status2; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t rcal_en_resv : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t adc_oscal_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t dl_rfcal_table_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t fcal_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t acal_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t fcal_inc_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t acal_inc_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t roscal_inc_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t clkpll_cal_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t roscal_en : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t toscal_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t rccal_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t lo_leakcal_en : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t tiqcal_en : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t riqcal_en : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pwdet_cal_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t tsencal_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t dpd_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pad0 : 14;
			};
		} rfcal_ctrlen; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t rcal_sten_resv : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t adc_oscal_sten : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t dl_rfcal_table_sten : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t fcal_sten : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t acal_sten : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t inc_fcal_sten : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t inc_acal_sten : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t clkpll_cal_sten : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t roscal_sten : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t toscal_sten_resv : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t rccal_sten : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t lo_leakcal_sten : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t tiqcal_sten : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t riqcal_sten : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pwdet_cal_sten : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t tsencal_sten : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t dpd_sten : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 13;
				uint32_t rfcal_level : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} rfcal_stateen; // @ 0x20
		uint32_t saradc_resv; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t aupll_sdm_rst_dly : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t lo_sdm_rst_dly : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t pad0 : 4;
				uint32_t ppu_lead : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pud_vco_dly : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t pud_iref_dly : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pud_pa_dly : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t pad1 : 11;
				uint32_t mbg_trim : 2; // @ 28 -- 27 # 0xe7ffffff
				uint32_t pad2 : 3;
			};
		} rf_base_ctrl1; // @ 0x28
		uint32_t rf_base_ctrl2; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t pu_sfreg : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 7;
				uint32_t pu_lna : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pu_rmxgm : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pu_rmx : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pu_rbb : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pu_adda_ldo : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t adc_clk_en : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pu_adc : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pu_op_atest : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pu_pa : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pu_tmx : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pu_tbb : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pu_dac : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pu_vco : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pu_fbdv : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pu_pfd : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pu_osmx : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pu_rxbuf : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pu_txbuf : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t trsw_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad1 : 1;
				uint32_t pu_pkdet : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pu_rosdac : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pu_pwrmx : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pu_tosdac : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} pucr1; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t pu_sfreg_hw : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 7;
				uint32_t pu_lna_hw : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pu_rmxgm_hw : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pu_rmx_hw : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pu_rbb_hw : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pu_adda_ldo_hw : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t adc_clk_en_hw : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pu_adc_hw : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad1 : 1;
				uint32_t pu_pa_hw : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pu_tmx_hw : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pu_tbb_hw : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pu_dac_hw : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pu_vco_hw : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pu_fbdv_hw : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pu_pfd_hw : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pu_osmx_hw : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pu_rxbuf_hw : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pu_txbuf_hw : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t trsw_en_hw : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad2 : 1;
				uint32_t pu_pkdet_hw : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pu_rosdac_hw : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad3 : 1;
				uint32_t pu_tosdac_hw : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} pucr1_hw; // @ 0x34
		uint32_t pucr2; // @ 0x38
		uint32_t pucr2_hw; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t ppu_lna_hw : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ppu_rmxgm_hw : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad1 : 1;
				uint32_t ppu_rbb_hw : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad2 : 8;
				uint32_t ppu_vco_hw : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ppu_fbdv_hw : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ppu_pfd_hw : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ppu_osmx_hw : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ppu_rxbuf_hw : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t ppu_txbuf_hw : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t pad3 : 6;
			};
		} ppu_ctrl_hw; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 20;
				uint32_t pud_vco_hw : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad1 : 11;
			};
		} pud_ctrl_hw; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t gc_lna : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t gc_rmxgm : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t gc_rbb1 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gc_rbb2 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gc_tmx : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad4 : 1;
				uint32_t gc_tbb : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t pad5 : 3;
				uint32_t gc_tbb_boost : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad6 : 2;
			};
		} trx_gain1; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t gc_lna_hw : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t gc_rmxgm_hw : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t gc_rbb1_hw : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gc_rbb2_hw : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gc_tmx_hw : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad4 : 1;
				uint32_t gc_tbb_hw : 5; // @ 24 -- 20 # 0xfe0fffff
				uint32_t pad5 : 3;
				uint32_t gc_tbb_boost_hw : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad6 : 2;
			};
		} trx_gain_hw; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t tmux : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t dc_tp_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t dc_tp_clkpll_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t ten_clkpll : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ten_clkpll_sfreg : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad1 : 2;
				uint32_t ten_rrf_0 : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ten_rrf_1 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t ten_pa : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ten_tmx : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ten_tia : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ten_bq : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t ten_atest : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ten_tbb : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ten_adc : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ten_dac_i : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ten_dac_q : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad2 : 1;
				uint32_t ten_vco : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t ten_pfdcp : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t ten_lf : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t ten_lodist : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad3 : 4;
			};
		} ten_dc; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t dten_clkpll_postdiv_clk : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t dten_clkpll_clk96m : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t dten_clkpll_clk32m : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t dten_clkpll_fsdm : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t dten_clkpll_fref : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t dten_clkpll_fin : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t dten_lo_fsdm : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 1;
				uint32_t dten_lo_fref : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t dtest_pull_down : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad1 : 13;
				uint32_t rf_dtest_en : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad2 : 8;
			};
		} ten_dig; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t atest_op_cc : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t atest_dac_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t atest_in_trx_sw : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t atest_in_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 1;
				uint32_t atest_gain_r9 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t atest_gain_r8 : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t atest_gain_r7 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t atest_gain_r6 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t atest_gain_r5 : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad1 : 1;
				uint32_t atest_out_en_q : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t atest_out_en_i : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t atest_in_en_q : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t atest_in_en_i : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad2 : 8;
			};
		} ten_ac; // @ 0x58
		uint32_t pmip_mv2aon; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t vg11_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t vg13_sel : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t pad0 : 28;
			};
		} cip; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t pa_iaq : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pa_etb_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pa_iet : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pa_vbcore : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pa_vbcas : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pa_half_on : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pa_ib_fix : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pa_lz_bias_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pa_pwrmx_osdac : 4; // @ 21 -- 18 # 0xffc3ffff
				uint32_t pa_pwrmx_dac_pn_switch : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad0 : 1;
				uint32_t pa_pwrmx_bm : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad1 : 1;
				uint32_t pa_att_gc : 4; // @ 31 -- 28 # 0xfffffff
			};
		} pa1; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 3;
				uint32_t pa_etb_en_hw : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pa_iet_hw : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pa_vbcore_hw : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pa_vbcas_hw : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad1 : 1;
				uint32_t pa_half_on_hw : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pa_ib_fix_hw : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pad2 : 14;
			};
		} pa2; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t tmx_cs : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t tmx_bm_sw : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t tmx_bm_cas : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad2 : 1;
				uint32_t tmx_bm_cas_bulk : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t tx_tsense_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 15;
			};
		} tmx; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t tbb_bm_sf : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t tbb_bm_cg : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t tbb_vcm : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t tbb_cflt : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t tbb_iq_bias_short : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t tbb_atest_out_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t tbb_tosdac_q : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad3 : 2;
				uint32_t tbb_tosdac_i : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad4 : 2;
			};
		} tbb; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t lna_bm : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t lna_bm_hw : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t lna_load_csw : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t lna_load_csw_hw : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t lna_rfb_match : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad0 : 1;
				uint32_t lna_cap_lg : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t pad1 : 2;
				uint32_t lna_lg_gsel : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad2 : 5;
			};
		} lna; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t rmx_bm : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t rmxgm_bm : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t rmxgm_10m_mode_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 23;
			};
		} rmxgm; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t rosdac_q : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t rosdac_i : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t rosdac_q_hw : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t rosdac_i_hw : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 1;
				uint32_t rosdac_range : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} rbb1; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t rbb_cap2_fc_q : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t rbb_cap2_fc_i : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t rbb_cap1_fc_q : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t rbb_cap1_fc_i : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} rbb2; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t rbb_bt_mode_hw : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t rbb_bt_mode : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rbb_bt_fif_tune : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t pad1 : 1;
				uint32_t rbb_deq : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t rbb_bm_op : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t rbb_vcm : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t rbb_bq_iqbias_short : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t rbb_tia_iqbias_short : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad5 : 2;
				uint32_t rbb_bw : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 2;
				uint32_t rxiqcal_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad7 : 2;
				uint32_t pwr_det_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} rbb3; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t rbb_pkdet_vth : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t rbb_pkdet_out_rstn : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t rbb_pkdet_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 3;
				uint32_t rbb_pkdet_out_rstn_hw : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad2 : 3;
				uint32_t rbb_pkdet_en_hw : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad3 : 3;
				uint32_t pkdet_out_raw : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad4 : 3;
				uint32_t pkdet_out_latch : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad5 : 7;
			};
		} rbb4; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t dac_dvdd_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t dac_bias_sel : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t dac_clk_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t dac_rccalsel : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t dac_clk_sync_inv : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad3 : 2;
				uint32_t adda_ldo_byps : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t adda_ldo_dvdd_sel : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t adda_ldo_dvdd_sel_hw : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad6 : 5;
			};
		} adda1; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t adc_vref_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t adc_dly_ctl : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t adc_dvdd_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t adc_sar_ascal_en : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t adc_gt_rm : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t adc_clk_sync_inv : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad5 : 3;
				uint32_t adc_clk_inv : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad6 : 3;
				uint32_t adc_clk_div_sel : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad7 : 3;
			};
		} adda2; // @ 0x90
		uint8_t pad0[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_freq_cw : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t lo_vco_freq_cw_hw : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad0 : 3;
				uint32_t lo_vco_idac_cw_hw : 5; // @ 28 -- 24 # 0xe0ffffff
				uint32_t pad1 : 3;
			};
		} vco1; // @ 0xa0
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_vbias_cw : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t lo_vco_idac_boot : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t lo_vco_short_vbias_filter : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t lo_vco_short_idac_filter : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad1 : 1;
				uint32_t acal_vref_cw : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad2 : 1;
				uint32_t acal_vco_ud : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t acal_inc_en_hw : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 15;
			};
		} vco2; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t fcal_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t fcal_cnt_op : 16; // @ 31 -- 16 # 0xffff
			};
		} vco3; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 4;
				uint32_t fcal_cnt_start : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t fcal_inc_en_hw : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 7;
				uint32_t fcal_inc_large_range : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad3 : 3;
				uint32_t fcal_cnt_rdy : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad4 : 3;
				uint32_t fcal_inc_vctrl_ud : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad5 : 6;
			};
		} vco4; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t lo_cp_sel : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t lo_cp_sel_hw : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t lo_cp_startup_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 3;
				uint32_t lo_cp_ota_en : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t lo_cp_opamp_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t lo_cp_hiz : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad5 : 3;
				uint32_t lo_pfd_rvdd_boost : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad6 : 3;
				uint32_t lo_pfd_rst_csd : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t lo_pfd_rst_csd_hw : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad7 : 2;
			};
		} pfdcp; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t lo_lf_rz_hw : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t lo_lf_r4_hw : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t lo_lf_cz_hw : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t lo_lf_rz : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t lo_lf_cz : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t lo_lf_r4 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t lo_lf_r4_short : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad3 : 1;
				uint32_t lo_slipped_dn : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad4 : 3;
				uint32_t lo_slipped_up : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad5 : 7;
			};
		} lo; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t lo_fbdv_halfstep_en_hw : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t lo_fbdv_halfstep_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t lo_fbdv_sel_sample_clk : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t lo_fbdv_sel_fb_clk : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad3 : 2;
				uint32_t lo_fbdv_rst : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t lo_fbdv_rst_hw : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad5 : 11;
			};
		} fbdv; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t lo_osmx_xgm_boost : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t lo_osmx_en_xgm : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t lo_osmx_fix_cap : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 3;
				uint32_t lo_osmx_vbuf_stre : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t lo_osmx_capbank_bias : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t lo_osmx_cap : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t lo_lodist_txbuf_stre : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad5 : 3;
				uint32_t lo_lodist_rxbuf_stre : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad6 : 3;
			};
		} lodist; // @ 0xbc
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdm_dither_sel_hw : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t lo_sdm_bypass_hw : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t lo_sdm_dither_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t lo_sdm_bypass : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t lo_sdm_rstb : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t lo_sdm_rstb_hw : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pad4 : 2;
				uint32_t lo_sdm_flag : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad5 : 11;
			};
		} sdm1; // @ 0xc0
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdmin : 30; // @ 29 -- 0 # 0xc0000000
				uint32_t pad0 : 2;
			};
		} sdm2; // @ 0xc4
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdmin_hw : 30; // @ 29 -- 0 # 0xc0000000
				uint32_t pad0 : 2;
			};
		} sdm3; // @ 0xc8
		uint8_t pad1[0x20];
		union {
			uint32_t value;
			struct {
				uint32_t rf_reserved0 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_resv_reg_0; // @ 0xec
		union {
			uint32_t value;
			struct {
				uint32_t rf_reserved1 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_resv_reg_1; // @ 0xf0
		union {
			uint32_t value;
			struct {
				uint32_t rf_reserved2 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_resv_reg_2; // @ 0xf4
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl0_gc_rmxgm : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t gain_ctrl0_gc_lna : 3; // @ 4 -- 2 # 0xffffffe3
				uint32_t gain_ctrl1_gc_rmxgm : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t gain_ctrl1_gc_lna : 3; // @ 9 -- 7 # 0xfffffc7f
				uint32_t gain_ctrl2_gc_rmxgm : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t gain_ctrl2_gc_lna : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t gain_ctrl3_gc_rmxgm : 2; // @ 16 -- 15 # 0xfffe7fff
				uint32_t gain_ctrl3_gc_lna : 3; // @ 19 -- 17 # 0xfff1ffff
				uint32_t gain_ctrl4_gc_rmxgm : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t gain_ctrl4_gc_lna : 3; // @ 24 -- 22 # 0xfe3fffff
				uint32_t gain_ctrl5_gc_rmxgm : 2; // @ 26 -- 25 # 0xf9ffffff
				uint32_t gain_ctrl5_gc_lna : 3; // @ 29 -- 27 # 0xc7ffffff
				uint32_t pad0 : 2;
			};
		} rrf_gain_index1; // @ 0xf8
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl8_gc_rmxgm : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t gain_ctrl8_gc_lna : 3; // @ 4 -- 2 # 0xffffffe3
				uint32_t gain_ctrl7_gc_rmxgm : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t gain_ctrl7_gc_lna : 3; // @ 9 -- 7 # 0xfffffc7f
				uint32_t gain_ctrl6_gc_rmxgm : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t gain_ctrl6_gc_lna : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad0 : 17;
			};
		} rrf_gain_index2; // @ 0xfc
		union {
			uint32_t value;
			struct {
				uint32_t lna_bm_hg : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t lna_bm_lg : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t lna_load_csw_hg : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t lna_load_csw_lg : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pad0 : 16;
			};
		} lna_ctrl_hw_mux; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl0_gc_rbb1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t gain_ctrl0_gc_rbb2 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t gain_ctrl1_gc_rbb1 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gain_ctrl1_gc_rbb2 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl2_gc_rbb1 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t gain_ctrl2_gc_rbb2 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t gain_ctrl3_gc_rbb1 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 2;
				uint32_t gain_ctrl3_gc_rbb2 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} rbb_gain_index1; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl4_gc_rbb1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t gain_ctrl4_gc_rbb2 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t gain_ctrl5_gc_rbb1 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gain_ctrl5_gc_rbb2 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl6_gc_rbb1 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t gain_ctrl6_gc_rbb2 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t gain_ctrl7_gc_rbb1 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 2;
				uint32_t gain_ctrl7_gc_rbb2 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} rbb_gain_index2; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl8_gc_rbb1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t gain_ctrl8_gc_rbb2 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t gain_ctrl9_gc_rbb1 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gain_ctrl9_gc_rbb2 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl10_gc_rbb1 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t gain_ctrl10_gc_rbb2 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t gain_ctrl11_gc_rbb1 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 2;
				uint32_t gain_ctrl11_gc_rbb2 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} rbb_gain_index3; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl12_gc_rbb1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t gain_ctrl12_gc_rbb2 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t gain_ctrl13_gc_rbb1 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t gain_ctrl13_gc_rbb2 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl14_gc_rbb1 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 2;
				uint32_t gain_ctrl14_gc_rbb2 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t gain_ctrl15_gc_rbb1 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 2;
				uint32_t gain_ctrl15_gc_rbb2 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} rbb_gain_index4; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl16_gc_rbb1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t gain_ctrl16_gc_rbb2 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 25;
			};
		} rbb_gain_index5; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl0_gc_tbb : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t gain_ctrl0_gc_tmx : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 1;
				uint32_t gain_ctrl0_dac_bias_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t gain_ctrl0_gc_tbb_boost : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t gain_ctrl1_gc_tbb : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t gain_ctrl1_gc_tmx : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl1_dac_bias_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t gain_ctrl1_gc_tbb_boost : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} tbb_gain_index1; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl2_gc_tbb : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t gain_ctrl2_gc_tmx : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 1;
				uint32_t gain_ctrl2_dac_bias_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t gain_ctrl2_gc_tbb_boost : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t gain_ctrl3_gc_tbb : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t gain_ctrl3_gc_tmx : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl3_dac_bias_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t gain_ctrl3_gc_tbb_boost : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} tbb_gain_index2; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl4_gc_tbb : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t gain_ctrl4_gc_tmx : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 1;
				uint32_t gain_ctrl4_dac_bias_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t gain_ctrl4_gc_tbb_boost : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t gain_ctrl5_gc_tbb : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t gain_ctrl5_gc_tmx : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl5_dac_bias_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t gain_ctrl5_gc_tbb_boost : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} tbb_gain_index3; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t gain_ctrl6_gc_tbb : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t gain_ctrl6_gc_tmx : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 1;
				uint32_t gain_ctrl6_dac_bias_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t gain_ctrl6_gc_tbb_boost : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t gain_ctrl7_gc_tbb : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t gain_ctrl7_gc_tmx : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad3 : 1;
				uint32_t gain_ctrl7_dac_bias_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t gain_ctrl7_gc_tbb_boost : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} tbb_gain_index4; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t pa_iet_11n : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pa_vbcore_11n : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t pa_vbcas_11n : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 9;
			};
		} pa_reg_ctrl_hw1; // @ 0x128
		union {
			uint32_t value;
			struct {
				uint32_t pa_iet_11g : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pa_vbcore_11g : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pa_vbcas_11g : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad0 : 1;
				uint32_t pa_iet_11b : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pa_vbcore_11b : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t pa_vbcas_11b : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 9;
			};
		} pa_reg_ctrl_hw2; // @ 0x12c
		union {
			uint32_t value;
			struct {
				uint32_t pa_half_on_wifi : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 7;
				uint32_t pa_etb_en_wifi : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 7;
				uint32_t pa_ib_fix_wifi : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 15;
			};
		} pa_reg_wifi_ctrl_hw; // @ 0x130
		union {
			uint32_t value;
			struct {
				uint32_t adda_ldo_dvdd_sel_rx : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t adda_ldo_dvdd_sel_tx : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 25;
			};
		} adda_reg_ctrl_hw; // @ 0x134
		union {
			uint32_t value;
			struct {
				uint32_t lo_fbdv_halfstep_en_rx : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t lo_fbdv_halfstep_en_tx : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t lo_cp_sel_rx : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t lo_cp_sel_tx : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t lo_lf_cz_rx : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 2;
				uint32_t lo_lf_cz_tx : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 2;
				uint32_t lo_lf_rz_rx : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad2 : 2;
				uint32_t lo_lf_rz_tx : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad3 : 2;
				uint32_t lo_lf_r4_rx : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t pad4 : 2;
				uint32_t lo_lf_r4_tx : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad5 : 6;
			};
		} lo_reg_ctrl_hw1; // @ 0x138
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2404 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2404 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2408 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2408 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw1; // @ 0x13c
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2412 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2412 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2416 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2416 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw2; // @ 0x140
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2420 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2420 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2424 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2424 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw3; // @ 0x144
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2428 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2428 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2432 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2432 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw4; // @ 0x148
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2436 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2436 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2440 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2440 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw5; // @ 0x14c
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2444 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2444 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2448 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2448 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw6; // @ 0x150
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2452 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2452 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2456 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2456 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw7; // @ 0x154
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2460 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2460 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2464 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2464 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw8; // @ 0x158
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2468 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2468 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2472 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2472 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw9; // @ 0x15c
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2476 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2476 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t lo_vco_idac_cw_2480 : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 3;
				uint32_t lo_vco_freq_cw_2480 : 8; // @ 31 -- 24 # 0xffffff
			};
		} lo_cal_ctrl_hw10; // @ 0x160
		union {
			uint32_t value;
			struct {
				uint32_t lo_vco_idac_cw_2484 : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t lo_vco_freq_cw_2484 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad1 : 16;
			};
		} lo_cal_ctrl_hw11; // @ 0x164
		union {
			uint32_t value;
			struct {
				uint32_t rosdac_i_gc0 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t rosdac_q_gc0 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t rosdac_i_gc1 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t rosdac_q_gc1 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} rosdac_ctrl_hw1; // @ 0x168
		union {
			uint32_t value;
			struct {
				uint32_t rosdac_i_gc2 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t rosdac_q_gc2 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t rosdac_i_gc3 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t rosdac_q_gc3 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} rosdac_ctrl_hw2; // @ 0x16c
		union {
			uint32_t value;
			struct {
				uint32_t rx_iq_phase_comp_gc0 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_iq_gain_comp_gc0 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} rxiq_ctrl_hw1; // @ 0x170
		union {
			uint32_t value;
			struct {
				uint32_t rx_iq_phase_comp_gc1 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_iq_gain_comp_gc1 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} rxiq_ctrl_hw2; // @ 0x174
		union {
			uint32_t value;
			struct {
				uint32_t rx_iq_phase_comp_gc2 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_iq_gain_comp_gc2 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} rxiq_ctrl_hw3; // @ 0x178
		union {
			uint32_t value;
			struct {
				uint32_t rx_iq_phase_comp_gc3 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_iq_gain_comp_gc3 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} rxiq_ctrl_hw4; // @ 0x17c
		union {
			uint32_t value;
			struct {
				uint32_t tbb_tosdac_i_gc0 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t tbb_tosdac_q_gc0 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t tbb_tosdac_i_gc1 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t tbb_tosdac_q_gc1 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} tosdac_ctrl_hw1; // @ 0x180
		union {
			uint32_t value;
			struct {
				uint32_t tbb_tosdac_i_gc2 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t tbb_tosdac_q_gc2 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t tbb_tosdac_i_gc3 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t tbb_tosdac_q_gc3 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} tosdac_ctrl_hw2; // @ 0x184
		union {
			uint32_t value;
			struct {
				uint32_t tbb_tosdac_i_gc4 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t tbb_tosdac_q_gc4 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t tbb_tosdac_i_gc5 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t tbb_tosdac_q_gc5 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} tosdac_ctrl_hw3; // @ 0x188
		union {
			uint32_t value;
			struct {
				uint32_t tbb_tosdac_i_gc6 : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t tbb_tosdac_q_gc6 : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t tbb_tosdac_i_gc7 : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t tbb_tosdac_q_gc7 : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad3 : 2;
			};
		} tosdac_ctrl_hw4; // @ 0x18c
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc0 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc0 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw0; // @ 0x190
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc1 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc1 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw1; // @ 0x194
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc2 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc2 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw2; // @ 0x198
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc3 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc3 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw3; // @ 0x19c
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc4 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc4 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw4; // @ 0x1a0
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc5 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc5 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw5; // @ 0x1a4
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc6 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc6 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw6; // @ 0x1a8
		union {
			uint32_t value;
			struct {
				uint32_t tx_iq_phase_comp_gc7 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t tx_iq_gain_comp_gc7 : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} tx_iq_gain_hw7; // @ 0x1ac
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdm_dither_sel_wlan_2412 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t lo_sdm_dither_sel_wlan_2417 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t lo_sdm_dither_sel_wlan_2422 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t lo_sdm_dither_sel_wlan_2427 : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t lo_sdm_dither_sel_wlan_2432 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t lo_sdm_dither_sel_wlan_2437 : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t lo_sdm_dither_sel_wlan_2442 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t lo_sdm_dither_sel_wlan_2447 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t lo_sdm_dither_sel_wlan_2452 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t lo_sdm_dither_sel_wlan_2457 : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t lo_sdm_dither_sel_wlan_2462 : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t lo_sdm_dither_sel_wlan_2467 : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t lo_sdm_dither_sel_wlan_2472 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t lo_sdm_dither_sel_wlan_2484 : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t pad0 : 4;
			};
		} lo_sdm_ctrl_hw1; // @ 0x1b0
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdm_dither_sel_ble_2402 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t lo_sdm_dither_sel_ble_2404 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t lo_sdm_dither_sel_ble_2406 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t lo_sdm_dither_sel_ble_2408 : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t lo_sdm_dither_sel_ble_2410 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t lo_sdm_dither_sel_ble_2412 : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t lo_sdm_dither_sel_ble_2414 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t lo_sdm_dither_sel_ble_2416 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t lo_sdm_dither_sel_ble_2418 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t lo_sdm_dither_sel_ble_2420 : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t lo_sdm_dither_sel_ble_2422 : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t lo_sdm_dither_sel_ble_2424 : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t lo_sdm_dither_sel_ble_2426 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t lo_sdm_dither_sel_ble_2428 : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t lo_sdm_dither_sel_ble_2430 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t lo_sdm_dither_sel_ble_2432 : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} lo_sdm_ctrl_hw2; // @ 0x1b4
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdm_dither_sel_ble_2434 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t lo_sdm_dither_sel_ble_2436 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t lo_sdm_dither_sel_ble_2438 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t lo_sdm_dither_sel_ble_2440 : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t lo_sdm_dither_sel_ble_2442 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t lo_sdm_dither_sel_ble_2444 : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t lo_sdm_dither_sel_ble_2446 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t lo_sdm_dither_sel_ble_2448 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t lo_sdm_dither_sel_ble_2450 : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t lo_sdm_dither_sel_ble_2452 : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t lo_sdm_dither_sel_ble_2454 : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t lo_sdm_dither_sel_ble_2456 : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t lo_sdm_dither_sel_ble_2458 : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t lo_sdm_dither_sel_ble_2460 : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t lo_sdm_dither_sel_ble_2462 : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t lo_sdm_dither_sel_ble_2464 : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} lo_sdm_ctrl_hw3; // @ 0x1b8
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdm_dither_sel_ble_2466 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t lo_sdm_dither_sel_ble_2468 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t lo_sdm_dither_sel_ble_2470 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t lo_sdm_dither_sel_ble_2472 : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t lo_sdm_dither_sel_ble_2474 : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t lo_sdm_dither_sel_ble_2476 : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t lo_sdm_dither_sel_ble_2478 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t lo_sdm_dither_sel_ble_2480 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t lo_sdm_dither_sel_ble_tx : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad0 : 14;
			};
		} lo_sdm_ctrl_hw4; // @ 0x1bc
		union {
			uint32_t value;
			struct {
				uint32_t lo_center_freq_mhz : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t lo_sdm_bypass_mode : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t pad0 : 14;
			};
		} lo_sdm_ctrl_hw5; // @ 0x1c0
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdmin_center : 29; // @ 28 -- 0 # 0xe0000000
				uint32_t pad0 : 3;
			};
		} lo_sdm_ctrl_hw6; // @ 0x1c4
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdmin_1m : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t pad0 : 12;
			};
		} lo_sdm_ctrl_hw7; // @ 0x1c8
		union {
			uint32_t value;
			struct {
				uint32_t lo_sdmin_if : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t pad0 : 12;
			};
		} lo_sdm_ctrl_hw8; // @ 0x1cc
		union {
			uint32_t value;
			struct {
				uint32_t rbb_bt_mode_ble : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} rbb_bw_ctrl_hw; // @ 0x1d0
		uint8_t pad2[0x38];
		union {
			uint32_t value;
			struct {
				uint32_t singen_inc_step1 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t singen_inc_step0 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t singen_unsign_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t singen_clkdiv_n : 2; // @ 30 -- 29 # 0x9fffffff
				uint32_t singen_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} singen_ctrl0; // @ 0x20c
		union {
			uint32_t value;
			struct {
				uint32_t singen_clkdiv_q : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 2;
				uint32_t singen_mode_q : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t singen_clkdiv_i : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t singen_mode_i : 4; // @ 31 -- 28 # 0xfffffff
			};
		} singen_ctrl1; // @ 0x210
		union {
			uint32_t value;
			struct {
				uint32_t singen_gain_i : 11; // @ 10 -- 0 # 0xfffff800
				uint32_t pad0 : 1;
				uint32_t singen_start_addr1_i : 10; // @ 21 -- 12 # 0xffc00fff
				uint32_t singen_start_addr0_i : 10; // @ 31 -- 22 # 0x3fffff
			};
		} singen_ctrl2; // @ 0x214
		union {
			uint32_t value;
			struct {
				uint32_t singen_gain_q : 11; // @ 10 -- 0 # 0xfffff800
				uint32_t pad0 : 1;
				uint32_t singen_start_addr1_q : 10; // @ 21 -- 12 # 0xffc00fff
				uint32_t singen_start_addr0_q : 10; // @ 31 -- 22 # 0x3fffff
			};
		} singen_ctrl3; // @ 0x218
		union {
			uint32_t value;
			struct {
				uint32_t singen_fix_q : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t singen_fix_en_q : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad0 : 3;
				uint32_t singen_fix_i : 12; // @ 27 -- 16 # 0xf000ffff
				uint32_t singen_fix_en_i : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad1 : 3;
			};
		} singen_ctrl4; // @ 0x21c
		union {
			uint32_t value;
			struct {
				uint32_t rfckg_rxclk_4s_on : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rfckg_txclk_4s_on : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rfckg_adc_afifo_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rfckg_adc_clkout_sel : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rfckg_dac_afifo_inv : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rx_dfe_en_4s : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rx_dfe_en_4s_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t tx_dfe_en_4s : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t tx_dfe_en_4s_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t rx_test_sel : 2; // @ 10 -- 9 # 0xfffff9ff
				uint32_t tx_test_sel : 2; // @ 12 -- 11 # 0xffffe7ff
				uint32_t pad_adc_clkout_inv_en : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad_dac_clkout_inv_en : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t rf_ch_ind_ble_4s : 7; // @ 21 -- 15 # 0xffc07fff
				uint32_t rf_ch_ind_ble_4s_en : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t wifimode_4s : 2; // @ 24 -- 23 # 0xfe7fffff
				uint32_t wifimode_4s_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t bbmode_4s : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t bbmode_4s_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t test_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} rfif_dfe_ctrl0; // @ 0x220
		union {
			uint32_t value;
			struct {
				uint32_t test_read : 32; // @ 31 -- 0 # 0x0
			};
		} rfif_test_read; // @ 0x224
		union {
			uint32_t value;
			struct {
				uint32_t test_from_pad_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t test_gc_from_pad_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rfckg_rxclk_div2_mode : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rfif_int_lo_unlocked_mask : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 12;
				uint32_t rfif_ppud_cnt2 : 9; // @ 24 -- 16 # 0xfe00ffff
				uint32_t rfif_ppud_cnt1 : 5; // @ 29 -- 25 # 0xc1ffffff
				uint32_t rfif_ppud_manaual_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pad1 : 1;
			};
		} rfif_dig_ctrl; // @ 0x228
		union {
			uint32_t value;
			struct {
				uint32_t rf_data_temp_0 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_data_temp_0; // @ 0x22c
		union {
			uint32_t value;
			struct {
				uint32_t rf_data_temp_1 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_data_temp_1; // @ 0x230
		union {
			uint32_t value;
			struct {
				uint32_t rf_data_temp_2 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_data_temp_2; // @ 0x234
		union {
			uint32_t value;
			struct {
				uint32_t rf_data_temp_3 : 32; // @ 31 -- 0 # 0x0
			};
		} rf_data_temp_3; // @ 0x238
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_link_dly : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t rf_sram_link_mode : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t rf_sram_swap : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t rf_sram_ext_clr : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad0 : 12;
			};
		} rf_sram_ctrl0; // @ 0x23c
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_adc_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rf_sram_adc_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rf_sram_adc_loop_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rf_sram_adc_sts_clr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 12;
				uint32_t rf_sram_adc_done_cnt : 16; // @ 31 -- 16 # 0xffff
			};
		} rf_sram_ctrl1; // @ 0x240
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_adc_addr_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t rf_sram_adc_addr_start : 16; // @ 31 -- 16 # 0xffff
			};
		} rf_sram_ctrl2; // @ 0x244
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_adc_sts : 32; // @ 31 -- 0 # 0x0
			};
		} rf_sram_ctrl3; // @ 0x248
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_dac_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rf_sram_dac_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rf_sram_dac_loop_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rf_sram_dac_sts_clr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 12;
				uint32_t rf_sram_dac_done_cnt : 16; // @ 31 -- 16 # 0xffff
			};
		} rf_sram_ctrl4; // @ 0x24c
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_dac_addr_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t rf_sram_dac_addr_start : 16; // @ 31 -- 16 # 0xffff
			};
		} rf_sram_ctrl5; // @ 0x250
		union {
			uint32_t value;
			struct {
				uint32_t rf_sram_dac_sts : 32; // @ 31 -- 0 # 0x0
			};
		} rf_sram_ctrl6; // @ 0x254
		union {
			uint32_t value;
			struct {
				uint32_t rf_ical_r_cnt_n : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t rf_ical_a_cnt_n : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t rf_ical_f_cnt_n : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t rf_ical_a_ud_inv_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t rf_ical_f_ud_inv_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} rf_ical_ctrl0; // @ 0x258
		union {
			uint32_t value;
			struct {
				uint32_t rf_ical_r_avg_n : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 5;
				uint32_t rf_ical_r_os_q : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t rf_ical_r_os_i : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad1 : 2;
			};
		} rf_ical_ctrl1; // @ 0x25c
		union {
			uint32_t value;
			struct {
				uint32_t rf_ical_period_n : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} rf_ical_ctrl2; // @ 0x260
		union {
			uint32_t value;
			struct {
				uint32_t rf_ch_ind_wifi : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 20;
			};
		} rf_fsm_ctrl0; // @ 0x264
		union {
			uint32_t value;
			struct {
				uint32_t rf_fsm_lo_time : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t rf_fsm_lo_rdy : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t rf_fsm_lo_rdy_rst : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t rf_fsm_lo_rdy_4s_1 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t rf_fsm_lo_rdy_sbclr : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t rf_fsm_pu_pa_dly_n : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad0 : 2;
			};
		} rf_fsm_ctrl1; // @ 0x268
		union {
			uint32_t value;
			struct {
				uint32_t rf_fsm_st_dbg : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t rf_fsm_st_dbg_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rf_trx_en_ble_4s : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rf_trx_sw_ble_4s : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rf_trx_ble_4s_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 3;
				uint32_t rf_fsm_dfe_tx_dly_n : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t rf_fsm_dfe_rx_dly_n : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad1 : 2;
			};
		} rf_fsm_ctrl2; // @ 0x26c
		union {
			uint32_t value;
			struct {
				uint32_t pkdet_out_cnt_sts : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pkdet_out_cnt_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pkdet_out_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 26;
			};
		} rf_pkdet_ctrl0; // @ 0x270
		uint8_t pad3[0x38c];
		union {
			uint32_t value;
			struct {
				uint32_t tx_iqc_phase : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t tx_iqc_phase_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 1;
				uint32_t tx_iqc_gain : 11; // @ 22 -- 12 # 0xff800fff
				uint32_t tx_iqc_gain_en : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t tx_dvga_gain_qdb : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t tx_dvga_gain_ctrl_hw : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} dfe_ctrl_0; // @ 0x600
		union {
			uint32_t value;
			struct {
				uint32_t tx_dac_os_i : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 4;
				uint32_t tx_dac_os_q : 12; // @ 27 -- 16 # 0xf000ffff
				uint32_t pad1 : 2;
				uint32_t tx_dac_dat_format : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t tx_dac_iq_swap : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} dfe_ctrl_1; // @ 0x604
		union {
			uint32_t value;
			struct {
				uint32_t rx_adc_os_i : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_adc_os_q : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 2;
				uint32_t rx_adc_dce_flt_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t rx_adc_low_pow_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t rx_adc_dat_format : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t rx_adc_iq_swap : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} dfe_ctrl_2; // @ 0x608
		union {
			uint32_t value;
			struct {
				uint32_t rx_adc_4s_i_val : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t rx_adc_4s_i_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 5;
				uint32_t rx_adc_4s_q_val : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t rx_adc_4s_q_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad1 : 5;
			};
		} dfe_ctrl_3; // @ 0x60c
		union {
			uint32_t value;
			struct {
				uint32_t rx_pf_th2 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t rx_pf_th1 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 4;
				uint32_t rx_pf_q_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t rx_pf_i_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} dfe_ctrl_4; // @ 0x610
		union {
			uint32_t value;
			struct {
				uint32_t rx_iqc_phase : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t rx_iqc_phase_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 1;
				uint32_t rx_iqc_gain : 11; // @ 22 -- 12 # 0xff800fff
				uint32_t rx_iqc_gain_en : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad1 : 8;
			};
		} dfe_ctrl_5; // @ 0x614
		union {
			uint32_t value;
			struct {
				uint32_t rx_pm_freqshift_cw : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t rx_pm_freqshift_en : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad0 : 7;
				uint32_t rx_pm_done : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t rx_pm_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t rx_pm_in_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} dfe_ctrl_6; // @ 0x618
		union {
			uint32_t value;
			struct {
				uint32_t rx_pm_start_ofs : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t rx_pm_acc_len : 16; // @ 31 -- 16 # 0xffff
			};
		} dfe_ctrl_7; // @ 0x61c
		union {
			uint32_t value;
			struct {
				uint32_t rx_pm_iqacc_i : 25; // @ 24 -- 0 # 0xfe000000
				uint32_t pad0 : 7;
			};
		} dfe_ctrl_8; // @ 0x620
		union {
			uint32_t value;
			struct {
				uint32_t rx_pm_iqacc_q : 25; // @ 24 -- 0 # 0xfe000000
				uint32_t pad0 : 7;
			};
		} dfe_ctrl_9; // @ 0x624
		union {
			uint32_t value;
			struct {
				uint32_t dfe_dac_raw_i : 11; // @ 10 -- 0 # 0xfffff800
				uint32_t pad0 : 5;
				uint32_t dfe_dac_raw_q : 11; // @ 26 -- 16 # 0xf800ffff
				uint32_t pad1 : 5;
			};
		} dfe_ctrl_10; // @ 0x628
		union {
			uint32_t value;
			struct {
				uint32_t dfe_adc_raw_i : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t dfe_adc_raw_q : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 6;
			};
		} dfe_ctrl_11; // @ 0x62c
		union {
			uint32_t value;
			struct {
				uint32_t tx_dvga_gain_qdb_gc0 : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t tx_dvga_gain_qdb_gc1 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t tx_dvga_gain_qdb_gc2 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t tx_dvga_gain_qdb_gc3 : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t pad3 : 1;
			};
		} dfe_ctrl_12; // @ 0x630
		union {
			uint32_t value;
			struct {
				uint32_t tx_dvga_gain_qdb_gc4 : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t tx_dvga_gain_qdb_gc5 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t tx_dvga_gain_qdb_gc6 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t tx_dvga_gain_qdb_gc7 : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t pad3 : 1;
			};
		} dfe_ctrl_13; // @ 0x634
		union {
			uint32_t value;
			struct {
				uint32_t tx_dvga_gain_qdb_gc8 : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t tx_dvga_gain_qdb_gc9 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t tx_dvga_gain_qdb_gc10 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t tx_dvga_gain_qdb_gc11 : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t pad3 : 1;
			};
		} dfe_ctrl_14; // @ 0x638
		union {
			uint32_t value;
			struct {
				uint32_t tx_dvga_gain_qdb_gc12 : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t tx_dvga_gain_qdb_gc13 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t tx_dvga_gain_qdb_gc14 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t tx_dvga_gain_qdb_gc15 : 7; // @ 30 -- 24 # 0x80ffffff
				uint32_t pad3 : 1;
			};
		} dfe_ctrl_15; // @ 0x63c
		union {
			uint32_t value;
			struct {
				uint32_t rf_tbb_ind_gc0 : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t rf_tbb_ind_gc1 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t rf_tbb_ind_gc2 : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad2 : 1;
				uint32_t rf_tbb_ind_gc3 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t rf_tbb_ind_gc4 : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad4 : 1;
				uint32_t rf_tbb_ind_gc5 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t rf_tbb_ind_gc6 : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad6 : 1;
				uint32_t rf_tbb_ind_gc7 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} dfe_ctrl_16; // @ 0x640
		union {
			uint32_t value;
			struct {
				uint32_t rf_tbb_ind_gc8 : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t rf_tbb_ind_gc9 : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t rf_tbb_ind_gc10 : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad2 : 1;
				uint32_t rf_tbb_ind_gc11 : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t rf_tbb_ind_gc12 : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad4 : 1;
				uint32_t rf_tbb_ind_gc13 : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t rf_tbb_ind_gc14 : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad6 : 1;
				uint32_t rf_tbb_ind_gc15 : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t pad7 : 1;
			};
		} dfe_ctrl_17; // @ 0x644
		union {
			uint32_t value;
			struct {
				uint32_t tx_dvga_gain_qdb_ble_gc0 : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t tx_dvga_gain_qdb_ble_gc1 : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t tx_dvga_gain_qdb_ble_gc2 : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 9;
			};
		} dfe_ctrl_18; // @ 0x648
		uint8_t pad4[0xb4];
		union {
			uint32_t value;
			struct {
				uint32_t rf_rx_notch0_alpha : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t rf_rx_notch1_alpha : 3; // @ 5 -- 3 # 0xffffffc7
				uint32_t rf_rx_notch0_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rf_rx_notch1_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t rf_rx_notch0_nrmfc : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t rf_rx_notch1_nrmfc : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} r0x1700; // @ 0x700
	};
} rf_regs;
#define RF_BASE 0x40001000
#define RF ((volatile rf_regs*)(RF_BASE))