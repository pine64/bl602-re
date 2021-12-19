typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pds_start_ps : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_sleep_forever : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_xtal_force_off : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_wifi_pds_save_state : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_pds_pd_dcdc18 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_pds_pd_bg_sys : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t cr_pds_gate_clk : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_pds_mem_stby : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad1 : 1;
				uint32_t cr_pds_iso_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_pds_wait_xtal_rdy : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t cr_pds_pwr_off : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t cr_pds_pd_xtal : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t cr_pds_soc_enb_force_on : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t cr_pds_rst_soc_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t cr_pds_rc32m_off_dis : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t cr_pds_ldo_vsel_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad2 : 2;
				uint32_t cr_np_wfi_mask : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t cr_pds_pd_ldo11 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad3 : 1;
				uint32_t cr_pds_ldo_vol : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t cr_pds_ctrl_rf : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t cr_pds_ctrl_pll : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} PDS_CTL; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t cr_sleep_duration : 32; // @ 31 -- 0 # 0x0
			};
		} PDS_TIME1; // @ 0x4
		uint8_t pad0[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t ro_pds_wake_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ro_pds_irq_in : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ro_pds_rf_done_int : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ro_pds_pll_done_int : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 4;
				uint32_t cr_pds_wake_int_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_pds_irq_in_dis : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t cr_pds_rf_done_int_mask : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t cr_pds_pll_done_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad1 : 4;
				uint32_t cr_pds_int_clr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 15;
			};
		} PDS_INT; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t cr_pds_force_np_pwr_off : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 1;
				uint32_t cr_pds_force_wb_pwr_off : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad1 : 1;
				uint32_t cr_pds_force_np_iso_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad2 : 1;
				uint32_t cr_pds_force_wb_iso_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad3 : 1;
				uint32_t cr_pds_force_np_pds_rst : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad4 : 1;
				uint32_t cr_pds_force_wb_pds_rst : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad5 : 1;
				uint32_t cr_pds_force_np_mem_stby : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad6 : 1;
				uint32_t cr_pds_force_wb_mem_stby : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad7 : 1;
				uint32_t cr_pds_force_np_gate_clk : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad8 : 1;
				uint32_t cr_pds_force_wb_gate_clk : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad9 : 13;
			};
		} PDS_CTL2; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t cr_pds_force_misc_pwr_off : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad1 : 2;
				uint32_t cr_pds_force_misc_iso_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad2 : 2;
				uint32_t cr_pds_force_misc_pds_rst : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad3 : 2;
				uint32_t cr_pds_force_misc_mem_stby : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad4 : 2;
				uint32_t cr_pds_force_misc_gate_clk : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad5 : 10;
				uint32_t cr_pds_np_iso_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad6 : 2;
				uint32_t cr_pds_wb_iso_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad7 : 2;
				uint32_t cr_pds_misc_iso_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t pad8 : 1;
			};
		} PDS_CTL3; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t cr_pds_np_pwr_off : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_pds_np_reset : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_pds_np_mem_stby : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_pds_np_gate_clk : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 8;
				uint32_t cr_pds_wb_pwr_off : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t cr_pds_wb_reset : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t cr_pds_wb_mem_stby : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t cr_pds_wb_gate_clk : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pad1 : 8;
				uint32_t cr_pds_misc_pwr_off : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t cr_pds_misc_reset : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t cr_pds_misc_mem_stby : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t cr_pds_misc_gate_clk : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad2 : 4;
			};
		} PDS_CTL4; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t ro_pds_state : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pad0 : 4;
				uint32_t ro_pds_rf_state : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t ro_pds_pll_state : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} pds_stat; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t cr_np_sram_pwr : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} pds_ram1; // @ 0x20
		uint8_t pad1[0x2dc];
		union {
			uint32_t value;
			struct {
				uint32_t rc32m_cal_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rc32m_rdy : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rc32m_cal_inprogress : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rc32m_cal_div : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t rc32m_cal_precharge : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rc32m_dig_code_fr_cal : 8; // @ 13 -- 6 # 0xffffc03f
				uint32_t pad0 : 3;
				uint32_t rc32m_allow_cal : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t rc32m_refclk_half : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t rc32m_ext_code_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t rc32m_cal_en : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t rc32m_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t rc32m_code_fr_ext : 8; // @ 29 -- 22 # 0xc03fffff
				uint32_t pad1 : 2;
			};
		} rc32m_ctrl0; // @ 0x300
		union {
			uint32_t value;
			struct {
				uint32_t rc32m_test_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rc32m_soft_rst : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rc32m_clk_soft_rst : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rc32m_clk_inv : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rc32m_clk_force_on : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 19;
				uint32_t rc32m_reserved : 8; // @ 31 -- 24 # 0xffffff
			};
		} rc32m_ctrl1; // @ 0x304
		uint8_t pad2[0xf8];
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_sdm_reset : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t clkpll_reset_postdiv : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t clkpll_reset_fbdv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t clkpll_reset_refdiv : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t clkpll_pu_postdiv : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t clkpll_pu_fbdv : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t clkpll_pu_clamp_op : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t clkpll_pu_pfd : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t clkpll_pu_cp : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pu_clkpll_sfreg : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pu_clkpll : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 21;
			};
		} pu_rst_clkpll; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_postdiv : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t clkpll_refdiv_ratio : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t clkpll_xtal_rc32m_sel : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 3;
				uint32_t clkpll_refclk_sel : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 3;
				uint32_t clkpll_vg11_sel : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t pad3 : 2;
				uint32_t clkpll_vg13_sel : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad4 : 6;
			};
		} clkpll_top_ctrl; // @ 0x404
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_sel_cp_bias : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t clkpll_icp_5u : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t clkpll_icp_1u : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t clkpll_int_frac_sw : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t clkpll_cp_startup_en : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t clkpll_cp_opamp_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad1 : 21;
			};
		} clkpll_cp; // @ 0x408
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_c4_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t clkpll_r4 : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t clkpll_r4_short : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 3;
				uint32_t clkpll_c3 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t clkpll_cz : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t clkpll_rz : 3; // @ 18 -- 16 # 0xfff8ffff
				uint32_t pad3 : 13;
			};
		} clkpll_rz; // @ 0x40c
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_sel_sample_clk : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t clkpll_sel_fb_clk : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t pad0 : 28;
			};
		} clkpll_fbdv; // @ 0x410
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_vco_speed : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t clkpll_shrtr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} clkpll_vco; // @ 0x414
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_sdmin : 24; // @ 23 -- 0 # 0xff000000
				uint32_t clkpll_dither_sel : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad0 : 2;
				uint32_t clkpll_sdm_flag : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t clkpll_sdm_bypass : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad1 : 2;
			};
		} clkpll_sdm; // @ 0x418
		union {
			uint32_t value;
			struct {
				uint32_t clkpll_en_480m : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t clkpll_en_240m : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t clkpll_en_192m : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t clkpll_en_160m : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t clkpll_en_120m : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t clkpll_en_96m : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t clkpll_en_80m : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t clkpll_en_48m : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t clkpll_en_32m : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t clkpll_en_div2_480m : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 22;
			};
		} clkpll_output_en; // @ 0x41c
	};
} pds_regs;
#define PDS_BASE 0x4000e000
#define PDS ((pds_regs* volatile)(PDS_BASE))