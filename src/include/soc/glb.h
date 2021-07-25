typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t reg_pll_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_fclk_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_hclk_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t reg_bclk_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t reg_pll_sel : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t hbn_root_clk_sel : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t reg_hclk_div : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t reg_bclk_div : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t fclk_sw_state : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t chip_rdy : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t glb_id : 4; // @ 31 -- 28 # 0xfffffff
			};
		} clk_cfg0; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t wifi_mac_core_div : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t wifi_mac_wt_div : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pad0 : 8;
				uint32_t ble_clk_sel : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad1 : 2;
				uint32_t ble_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad2 : 7;
			};
		} clk_cfg1; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t uart_clk_div : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 1;
				uint32_t uart_clk_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 2;
				uint32_t hbn_uart_clk_sel : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t sf_clk_div : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t sf_clk_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t sf_clk_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t sf_clk_sel2 : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t ir_clk_div : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 1;
				uint32_t ir_clk_en : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t dma_clk_en : 8; // @ 31 -- 24 # 0xffffff
			};
		} clk_cfg2; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t spi_clk_div : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t spi_clk_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 7;
				uint32_t i2c_clk_div : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t i2c_clk_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad2 : 7;
			};
		} clk_cfg3; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t swrst_s00 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t swrst_s01 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 2;
				uint32_t swrst_s20 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t swrst_s30 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 23;
			};
		} swrst_cfg0; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t swrst_s10 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t swrst_s11 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t swrst_s12 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t swrst_s13 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t swrst_s14 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t swrst_s15 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t swrst_s16 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t swrst_s17 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t swrst_s18 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t swrst_s19 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t swrst_s1a : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t swrst_s1b : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t swrst_s1c : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t swrst_s1d : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t swrst_s1e : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t swrst_s1f : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t swrst_s1a0 : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t swrst_s1a1 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t swrst_s1a2 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t swrst_s1a3 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t swrst_s1a4 : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t swrst_s1a5 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t swrst_s1a6 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t swrst_s1a7 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad0 : 8;
			};
		} swrst_cfg1; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t reg_ctrl_pwron_rst : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_ctrl_cpu_reset : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_ctrl_sys_reset : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t reg_ctrl_reset_dummy : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pad1 : 16;
				uint32_t pka_clk_sel : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad2 : 7;
			};
		} swrst_cfg2; // @ 0x18
		uint32_t swrst_cfg3; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t cgen_m : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} cgen_cfg0; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t cgen_s1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t cgen_s1a : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} cgen_cfg1; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t cgen_s2 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t cgen_s3 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 27;
			};
		} cgen_cfg2; // @ 0x28
		uint32_t cgen_cfg3; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t irom_mbist_mode : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t hsram_mbist_mode : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tag_mbist_mode : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ocram_mbist_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t wifi_mbist_mode : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 26;
				uint32_t reg_mbist_rst_n : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} MBIST_CTL; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t irom_mbist_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t hsram_mbist_done : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tag_mbist_done : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ocram_mbist_done : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t wifi_mbist_done : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 11;
				uint32_t irom_mbist_fail : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t hsram_mbist_fail : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t tag_mbist_fail : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ocram_mbist_fail : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t wifi_mbist_fail : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad1 : 11;
			};
		} MBIST_STAT; // @ 0x34
		uint8_t pad0[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t bmx_timeout_en : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t bmx_arb_mode : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad0 : 2;
				uint32_t bmx_err_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t bmx_busy_option_dis : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bmx_gating_dis : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad1 : 1;
				uint32_t hsel_option : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pds_apb_cfg : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t hbn_apb_cfg : 8; // @ 31 -- 24 # 0xffffff
			};
		} bmx_cfg1; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t bmx_err_addr_dis : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t bmx_err_dec : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t bmx_err_tz : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 22;
				uint32_t bmx_dbg_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} bmx_cfg2; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t bmx_err_addr : 32; // @ 31 -- 0 # 0x0
			};
		} bmx_err_addr; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t bmx_dbg_out : 32; // @ 31 -- 0 # 0x0
			};
		} bmx_dbg_out; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t rsvd_31_0 : 32; // @ 31 -- 0 # 0x0
			};
		} rsv0; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t rsvd_31_0 : 32; // @ 31 -- 0 # 0x0
			};
		} rsv1; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t rsvd_31_0 : 32; // @ 31 -- 0 # 0x0
			};
		} rsv2; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t rsvd_31_0 : 32; // @ 31 -- 0 # 0x0
			};
		} rsv3; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t reg_sram_ret : 32; // @ 31 -- 0 # 0x0
			};
		} sram_ret; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t reg_sram_slp : 32; // @ 31 -- 0 # 0x0
			};
		} sram_slp; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t reg_sram_parm : 32; // @ 31 -- 0 # 0x0
			};
		} sram_parm; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t em_sel : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t pad0 : 28;
			};
		} seam_misc; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t reg_bd_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_ext_rst_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t jtag_swap_set : 6; // @ 7 -- 2 # 0xffffff03
				uint32_t swap_sflash_io_3_io_0 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t sel_embedded_sflash : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 2;
				uint32_t reg_spi_0_master_mode : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t reg_spi_0_swap : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad1 : 1;
				uint32_t reg_cci_use_jtag_pin : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t reg_cci_use_sdio_pin : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t p1_adc_test_with_cci : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t p2_dac_test_with_cci : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t p3_cci_use_io_2_5 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t p4_adc_test_with_jtag : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t p5_dac_test_with_jtag : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t p6_sdio_use_io_0_5 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t p7_jtag_use_io_2_5 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t uart_swap_set : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t pad2 : 5;
			};
		} glb_parm; // @ 0x80
		uint8_t pad1[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t cpu_rtc_div : 17; // @ 16 -- 0 # 0xfffe0000
				uint32_t pad0 : 1;
				uint32_t cpu_rtc_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t cpu_rtc_sel : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t debug_ndreset_gate : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad1 : 11;
			};
		} CPU_CLK_CFG; // @ 0x90
		uint8_t pad2[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_32m_clk_div : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 1;
				uint32_t gpadc_32m_clk_sel : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t gpadc_32m_div_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 23;
			};
		} GPADC_32M_SRC_CTRL; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t dig_32k_div : 11; // @ 10 -- 0 # 0xfffff800
				uint32_t pad0 : 1;
				uint32_t dig_32k_en : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t dig_32k_comp : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad1 : 2;
				uint32_t dig_512k_div : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 1;
				uint32_t dig_512k_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t dig_512k_comp : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t pad3 : 2;
				uint32_t dig_clk_src_sel : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad4 : 2;
				uint32_t reg_en_platform_wakeup : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DIG32K_WAKEUP_CTRL; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t coex_bt_channel : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t coex_bt_pti : 4; // @ 10 -- 7 # 0xfffff87f
				uint32_t coex_bt_bw : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t en_gpio_bt_coex : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad0 : 19;
			};
		} WIFI_BT_COEX_CTRL; // @ 0xac
		uint8_t pad3[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t uart_sig_0_sel : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t uart_sig_1_sel : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t uart_sig_2_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t uart_sig_3_sel : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t uart_sig_4_sel : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t uart_sig_5_sel : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t uart_sig_6_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t uart_sig_7_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} UART_SIG_SEL_0; // @ 0xc0
		uint8_t pad4[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t reg_dbg_ll_ctrl : 32; // @ 31 -- 0 # 0x0
			};
		} DBG_SEL_LL; // @ 0xd0
		union {
			uint32_t value;
			struct {
				uint32_t reg_dbg_lh_ctrl : 32; // @ 31 -- 0 # 0x0
			};
		} DBG_SEL_LH; // @ 0xd4
		union {
			uint32_t value;
			struct {
				uint32_t reg_dbg_hl_ctrl : 32; // @ 31 -- 0 # 0x0
			};
		} DBG_SEL_HL; // @ 0xd8
		union {
			uint32_t value;
			struct {
				uint32_t reg_dbg_hh_ctrl : 32; // @ 31 -- 0 # 0x0
			};
		} DBG_SEL_HH; // @ 0xdc
		union {
			uint32_t value;
			struct {
				uint32_t debug_oe : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t debug_i : 31; // @ 31 -- 1 # 0x1
			};
		} debug; // @ 0xe0
		uint8_t pad5[0x1c];
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_0_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_0_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_0_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_0_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_0_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_0_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t real_gpio_0_func_sel : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t reg_gpio_1_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_1_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_1_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_1_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_1_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad1 : 2;
				uint32_t reg_gpio_1_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t real_gpio_1_func_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} GPIO_CFGCTL0; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_2_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_2_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_2_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_2_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_2_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_2_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t real_gpio_2_func_sel : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t reg_gpio_3_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_3_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_3_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_3_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_3_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad1 : 2;
				uint32_t reg_gpio_3_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t real_gpio_3_func_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} GPIO_CFGCTL1; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_4_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_4_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_4_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_4_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_4_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_4_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t real_gpio_4_func_sel : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t reg_gpio_5_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_5_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_5_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_5_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_5_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad1 : 2;
				uint32_t reg_gpio_5_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t real_gpio_5_func_sel : 4; // @ 31 -- 28 # 0xfffffff
			};
		} GPIO_CFGCTL2; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_6_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_6_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_6_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_6_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_6_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_6_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_7_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_7_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_7_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_7_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_7_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_7_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL3; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_8_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_8_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_8_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_8_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_8_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_8_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_9_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_9_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_9_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_9_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_9_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_9_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL4; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_10_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_10_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_10_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_10_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_10_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_10_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_11_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_11_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_11_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_11_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_11_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_11_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL5; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_12_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_12_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_12_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_12_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_12_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_12_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_13_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_13_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_13_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_13_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_13_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_13_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL6; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_14_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_14_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_14_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_14_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_14_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_14_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_15_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_15_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_15_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_15_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_15_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_15_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL7; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_16_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_16_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_16_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_16_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_16_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_16_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_17_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_17_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_17_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_17_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_17_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_17_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL8; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_18_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_18_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_18_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_18_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_18_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_18_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_19_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_19_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_19_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_19_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_19_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_19_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL9; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_20_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_20_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_20_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_20_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_20_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_20_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_21_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_21_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_21_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_21_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_21_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t reg_gpio_21_func_sel : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t pad3 : 4;
			};
		} GPIO_CFGCTL10; // @ 0x128
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_22_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_22_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_22_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_22_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_22_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t reg_gpio_22_func_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 4;
				uint32_t reg_gpio_23_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_23_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_23_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_23_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_23_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 10;
			};
		} GPIO_CFGCTL11; // @ 0x12c
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_24_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_24_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_24_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_24_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_24_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 10;
				uint32_t reg_gpio_25_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_25_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_25_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_25_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_25_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad1 : 10;
			};
		} GPIO_CFGCTL12; // @ 0x130
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_26_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_26_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_26_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_26_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_26_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 10;
				uint32_t reg_gpio_27_ie : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_27_smt : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_27_drv : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t reg_gpio_27_pu : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_27_pd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad1 : 10;
			};
		} GPIO_CFGCTL13; // @ 0x134
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_28_ie : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_28_smt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_28_drv : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t reg_gpio_28_pu : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_28_pd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 26;
			};
		} GPIO_CFGCTL14; // @ 0x138
		uint8_t pad6[0x44];
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_0_i : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_1_i : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_2_i : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t reg_gpio_3_i : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t reg_gpio_4_i : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_5_i : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t reg_gpio_6_i : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t reg_gpio_7_i : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t reg_gpio_8_i : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t reg_gpio_9_i : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t reg_gpio_10_i : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t reg_gpio_11_i : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t reg_gpio_12_i : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t reg_gpio_13_i : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t reg_gpio_14_i : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t reg_gpio_15_i : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t reg_gpio_16_i : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_17_i : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_18_i : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t reg_gpio_19_i : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t reg_gpio_20_i : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_21_i : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t reg_gpio_22_i : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad0 : 9;
			};
		} GPIO_CFGCTL30; // @ 0x180
		uint32_t GPIO_CFGCTL31; // @ 0x184
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_0_o : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_1_o : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_2_o : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t reg_gpio_3_o : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t reg_gpio_4_o : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_5_o : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t reg_gpio_6_o : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t reg_gpio_7_o : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t reg_gpio_8_o : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t reg_gpio_9_o : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t reg_gpio_10_o : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t reg_gpio_11_o : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t reg_gpio_12_o : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t reg_gpio_13_o : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t reg_gpio_14_o : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t reg_gpio_15_o : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t reg_gpio_16_o : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_17_o : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_18_o : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t reg_gpio_19_o : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t reg_gpio_20_o : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_21_o : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t reg_gpio_22_o : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad0 : 9;
			};
		} GPIO_CFGCTL32; // @ 0x188
		uint32_t GPIO_CFGCTL33; // @ 0x18c
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_0_oe : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t reg_gpio_1_oe : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t reg_gpio_2_oe : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t reg_gpio_3_oe : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t reg_gpio_4_oe : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_gpio_5_oe : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t reg_gpio_6_oe : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t reg_gpio_7_oe : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t reg_gpio_8_oe : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t reg_gpio_9_oe : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t reg_gpio_10_oe : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t reg_gpio_11_oe : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t reg_gpio_12_oe : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t reg_gpio_13_oe : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t reg_gpio_14_oe : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t reg_gpio_15_oe : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t reg_gpio_16_oe : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t reg_gpio_17_oe : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t reg_gpio_18_oe : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t reg_gpio_19_oe : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t reg_gpio_20_oe : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t reg_gpio_21_oe : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t reg_gpio_22_oe : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad0 : 9;
			};
		} GPIO_CFGCTL34; // @ 0x190
		uint32_t GPIO_CFGCTL35; // @ 0x194
		uint8_t pad7[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_int_mask1 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_MASK1; // @ 0x1a0
		uint8_t pad8[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t gpio_int_stat1 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_STAT1; // @ 0x1a8
		uint8_t pad9[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_int_clr1 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_CLR1; // @ 0x1b0
		uint8_t pad10[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_int_mode_set1 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_MODE_SET1; // @ 0x1c0
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_int_mode_set2 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_MODE_SET2; // @ 0x1c4
		union {
			uint32_t value;
			struct {
				uint32_t reg_gpio_int_mode_set3 : 32; // @ 31 -- 0 # 0x0
			};
		} GPIO_INT_MODE_SET3; // @ 0x1c8
		uint8_t pad11[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t led_din_reg : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t led_din_sel : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t led_din_polarity_sel : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t leddrv_ibias : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t ir_rx_gpio_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 21;
				uint32_t pu_leddrv : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} led_driver; // @ 0x224
		uint8_t pad12[0xe0];
		union {
			uint32_t value;
			struct {
				uint32_t gpdaca_rstn_ana : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpdacb_rstn_ana : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 5;
				uint32_t gpdac_test_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t gpdac_ref_sel : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t gpdac_test_sel : 3; // @ 11 -- 9 # 0xfffff1ff
				uint32_t pad1 : 12;
				uint32_t gpdac_reserved : 8; // @ 31 -- 24 # 0xffffff
			};
		} gpdac_ctrl; // @ 0x308
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_a_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpdac_ioa_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 16;
				uint32_t gpdac_a_rng : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t gpdac_a_outmux : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 9;
			};
		} gpdac_actrl; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_b_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpdac_iob_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 16;
				uint32_t gpdac_b_rng : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t gpdac_b_outmux : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 9;
			};
		} gpdac_bctrl; // @ 0x310
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_b_data : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 6;
				uint32_t gpdac_a_data : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 6;
			};
		} gpdac_data; // @ 0x314
		uint8_t pad13[0xbe8];
		union {
			uint32_t value;
			struct {
				uint32_t tzc_glb_swrst_s00_lock : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tzc_glb_swrst_s01_lock : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 6;
				uint32_t tzc_glb_swrst_s30_lock : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 3;
				uint32_t tzc_glb_ctrl_pwron_rst_lock : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t tzc_glb_ctrl_cpu_reset_lock : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t tzc_glb_ctrl_sys_reset_lock : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t tzc_glb_ctrl_ungated_ap_lock : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pad2 : 9;
				uint32_t tzc_glb_misc_lock : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t tzc_glb_sram_lock : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t tzc_glb_l2c_lock : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t tzc_glb_bmx_lock : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t tzc_glb_dbg_lock : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t tzc_glb_mbist_lock : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t tzc_glb_clk_lock : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} tzc_glb_ctrl_0; // @ 0xf00
		union {
			uint32_t value;
			struct {
				uint32_t tzc_glb_swrst_s20_lock : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tzc_glb_swrst_s21_lock : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tzc_glb_swrst_s22_lock : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t tzc_glb_swrst_s23_lock : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t tzc_glb_swrst_s24_lock : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t tzc_glb_swrst_s25_lock : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t tzc_glb_swrst_s26_lock : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t tzc_glb_swrst_s27_lock : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t tzc_glb_swrst_s28_lock : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t tzc_glb_swrst_s29_lock : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t tzc_glb_swrst_s2a_lock : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t tzc_glb_swrst_s2b_lock : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t tzc_glb_swrst_s2c_lock : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t tzc_glb_swrst_s2d_lock : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t tzc_glb_swrst_s2e_lock : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t tzc_glb_swrst_s2f_lock : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t tzc_glb_swrst_s10_lock : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t tzc_glb_swrst_s11_lock : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t tzc_glb_swrst_s12_lock : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t tzc_glb_swrst_s13_lock : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t tzc_glb_swrst_s14_lock : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t tzc_glb_swrst_s15_lock : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t tzc_glb_swrst_s16_lock : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t tzc_glb_swrst_s17_lock : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t tzc_glb_swrst_s18_lock : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t tzc_glb_swrst_s19_lock : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t tzc_glb_swrst_s1a_lock : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t tzc_glb_swrst_s1b_lock : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t tzc_glb_swrst_s1c_lock : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t tzc_glb_swrst_s1d_lock : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t tzc_glb_swrst_s1e_lock : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t tzc_glb_swrst_s1f_lock : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} tzc_glb_ctrl_1; // @ 0xf04
		union {
			uint32_t value;
			struct {
				uint32_t tzc_glb_gpio_0_lock : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tzc_glb_gpio_1_lock : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tzc_glb_gpio_2_lock : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t tzc_glb_gpio_3_lock : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t tzc_glb_gpio_4_lock : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t tzc_glb_gpio_5_lock : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t tzc_glb_gpio_6_lock : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t tzc_glb_gpio_7_lock : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t tzc_glb_gpio_8_lock : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t tzc_glb_gpio_9_lock : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t tzc_glb_gpio_10_lock : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t tzc_glb_gpio_11_lock : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t tzc_glb_gpio_12_lock : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t tzc_glb_gpio_13_lock : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t tzc_glb_gpio_14_lock : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t tzc_glb_gpio_15_lock : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t tzc_glb_gpio_16_lock : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t tzc_glb_gpio_17_lock : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t tzc_glb_gpio_18_lock : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t tzc_glb_gpio_19_lock : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t tzc_glb_gpio_20_lock : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t tzc_glb_gpio_21_lock : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t tzc_glb_gpio_22_lock : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t tzc_glb_gpio_23_lock : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t tzc_glb_gpio_24_lock : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t tzc_glb_gpio_25_lock : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t tzc_glb_gpio_26_lock : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t tzc_glb_gpio_27_lock : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t tzc_glb_gpio_28_lock : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad0 : 3;
			};
		} tzc_glb_ctrl_2; // @ 0xf08
		uint32_t tzc_glb_ctrl_3; // @ 0xf0c
	};
} glb_regs;
#define GLB_BASE 0x40000000
#define GLB ((glb_regs* volatile)(GLB_BASE))