typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t rtc_ctl : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t hbn_mode : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t trap_mode : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pwrdn_hbn_core : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 1;
				uint32_t pwrdn_hbn_rtc : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t sw_rst : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t hbn_dis_pwr_off_ldo11 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t hbn_dis_pwr_off_ldo11_rt : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t hbn_ldo11_rt_vout_sel : 4; // @ 18 -- 15 # 0xfff87fff
				uint32_t hbn_ldo11_aon_vout_sel : 4; // @ 22 -- 19 # 0xff87ffff
				uint32_t pu_dcdc18_aon : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t rtc_dly_option : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pwr_on_option : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t sram_slp_option : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t sram_slp : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t hbn_state : 4; // @ 31 -- 28 # 0xfffffff
			};
		} HBN_CTL; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t hbn_time_l : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_TIME_L; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t hbn_time_h : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} HBN_TIME_H; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t rtc_time_latch_l : 32; // @ 31 -- 0 # 0x0
			};
		} RTC_TIME_L; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t rtc_time_latch_h : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 23;
				uint32_t rtc_time_latch : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} RTC_TIME_H; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t hbn_pin_wakeup_mode : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t hbn_pin_wakeup_mask : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t pad0 : 3;
				uint32_t reg_aon_pad_ie_smt : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 7;
				uint32_t reg_en_hw_pu_pd : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 1;
				uint32_t irq_bor_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad3 : 1;
				uint32_t irq_acomp0_en : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t irq_acomp1_en : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t pin_wakeup_sel : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pin_wakeup_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad4 : 4;
			};
		} HBN_IRQ_MODE; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t irq_stat : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_IRQ_STAT; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t irq_clr : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_IRQ_CLR; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t pir_hpf_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pir_lpf_sel : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t pir_dis : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 1;
				uint32_t pir_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t gpadc_cgen : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t gpadc_nosync : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad2 : 22;
			};
		} HBN_PIR_CFG; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t pir_vth : 14; // @ 13 -- 0 # 0xffffc000
				uint32_t pad0 : 18;
			};
		} HBN_PIR_VTH; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t pir_interval : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 20;
			};
		} HBN_PIR_INTERVAL; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t bor_sel : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bor_vth : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pu_bor : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t r_bor_out : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} HBN_BOR_CFG; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t hbn_root_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t hbn_uart_clk_sel : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t hbn_f32k_sel : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t hbn_pu_rc32k : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 10;
				uint32_t sw_ldo11soc_vout_sel_aon : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t pad1 : 4;
				uint32_t sw_ldo11_rt_vout_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t sw_ldo11_aon_vout_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} HBN_GLB; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 6;
				uint32_t retram_ret : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t retram_slp : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad1 : 24;
			};
		} HBN_SRAM; // @ 0x34
		uint8_t pad0[0xc8];
		union {
			uint32_t value;
			struct {
				uint32_t HBN_RSV0 : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_RSV0; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t HBN_RSV1 : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_RSV1; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t HBN_RSV2 : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_RSV2; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t HBN_RSV3 : 32; // @ 31 -- 0 # 0x0
			};
		} HBN_RSV3; // @ 0x10c
		uint8_t pad1[0xf0];
		union {
			uint32_t value;
			struct {
				uint32_t rc32k_cal_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rc32k_rdy : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rc32k_cal_inprogress : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rc32k_cal_div : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t rc32k_cal_precharge : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rc32k_dig_code_fr_cal : 10; // @ 15 -- 6 # 0xffff003f
				uint32_t rc32k_vref_dly : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t rc32k_allow_cal : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t rc32k_ext_code_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t rc32k_cal_en : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad0 : 1;
				uint32_t rc32k_code_fr_ext : 10; // @ 31 -- 22 # 0x3fffff
			};
		} rc32k_ctrl0; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t xtal32k_ext_sel : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t xtal32k_amp_ctrl : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t xtal32k_reg : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t xtal32k_outbuf_stre : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t xtal32k_otf_short : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t xtal32k_inv_stre : 2; // @ 10 -- 9 # 0xfffff9ff
				uint32_t xtal32k_capbank : 6; // @ 16 -- 11 # 0xfffe07ff
				uint32_t xtal32k_ac_cap_short : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t pu_xtal32k_buf : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pu_xtal32k : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad1 : 12;
			};
		} xtal32k; // @ 0x204
	};
} HBN_regs;
#define HBN_BASE 0x4000f000
#define HBN ((volatile HBN_regs*)(HBN_BASE))