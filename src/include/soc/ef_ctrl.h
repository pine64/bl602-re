typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x800];
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_0_autoload_p1_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ef_if_0_autoload_done : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ef_if_0_busy : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ef_if_0_rw : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t ef_if_0_trig : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t ef_if_0_manual_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ef_if_0_cyc_modify : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ef_clk_sahb_data_sel : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ef_if_prot_code_ctrl : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t ef_if_por_dig : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ef_clk_sahb_data_gate : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t ef_if_auto_rd_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ef_if_cyc_modify_lock : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ef_if_0_int : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ef_if_0_int_clr : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ef_if_0_int_set : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad0 : 1;
				uint32_t ef_if_prot_code_cyc : 8; // @ 31 -- 24 # 0xffffff
			};
		} ef_if_ctrl_0; // @ 0x800
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_cyc_rd_dmy : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t ef_if_cyc_rd_dat : 6; // @ 11 -- 6 # 0xfffff03f
				uint32_t ef_if_cyc_rd_adr : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t ef_if_cyc_cs : 6; // @ 23 -- 18 # 0xff03ffff
				uint32_t ef_if_cyc_pd_cs_s : 8; // @ 31 -- 24 # 0xffffff
			};
		} ef_if_cyc_0; // @ 0x804
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_cyc_pi : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t ef_if_cyc_pp : 8; // @ 13 -- 6 # 0xffffc03f
				uint32_t ef_if_cyc_wr_adr : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t ef_if_cyc_ps_cs : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t ef_if_cyc_pd_cs_h : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} ef_if_cyc_1; // @ 0x808
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_a : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t ef_if_pd : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t ef_if_ps : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ef_if_strobe : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ef_if_pgenb : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t ef_if_load : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ef_if_csb : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ef_if_0_q : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t ef_if_prot_code_manual : 8; // @ 31 -- 24 # 0xffffff
			};
		} ef_if_0_manual; // @ 0x80c
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_0_status : 32; // @ 31 -- 0 # 0x0
			};
		} ef_if_0_status; // @ 0x810
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_sf_aes_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t ef_if_sboot_sign_mode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t ef_if_sboot_en : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t ef_if_cpu1_enc_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ef_if_cpu0_enc_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ef_if_boot_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t ef_if_sw_usage_1 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t ef_if_sdu_dis : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ef_if_ble_dis : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ef_if_wifi_dis : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ef_if_0_key_enc_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t ef_if_cam_dis : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ef_if_sf_dis : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ef_if_cpu1_dis : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ef_if_cpu_rst_dbg_dis : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ef_if_se_dbg_dis : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ef_if_efuse_dbg_dis : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ef_if_dbg_jtag_1_dis : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t ef_if_dbg_jtag_0_dis : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t ef_if_dbg_mode : 4; // @ 31 -- 28 # 0xfffffff
			};
		} ef_if_cfg_0; // @ 0x814
		union {
			uint32_t value;
			struct {
				uint32_t ef_sw_sf_aes_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t ef_sw_sboot_sign_mode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t ef_sw_sboot_en : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t ef_sw_cpu1_enc_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ef_sw_cpu0_enc_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 4;
				uint32_t ef_sw_sw_usage_1 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t ef_sw_sdu_dis : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ef_sw_ble_dis : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ef_sw_wifi_dis : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ef_sw_0_key_enc_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t ef_sw_cam_dis : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ef_sw_sf_dis : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ef_sw_cpu1_dis : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ef_sw_cpu_rst_dbg_dis : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ef_sw_se_dbg_dis : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ef_sw_efuse_dbg_dis : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ef_sw_dbg_jtag_1_dis : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t ef_sw_dbg_jtag_0_dis : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t ef_sw_dbg_mode : 4; // @ 31 -- 28 # 0xfffffff
			};
		} ef_sw_cfg_0; // @ 0x818
		union {
			uint32_t value;
			struct {
				uint32_t ef_reserved : 32; // @ 31 -- 0 # 0x0
			};
		} ef_reserved; // @ 0x81c
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_ana_trim_0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_if_ana_trim_0; // @ 0x820
		union {
			uint32_t value;
			struct {
				uint32_t ef_if_sw_usage_0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_if_sw_usage_0; // @ 0x824
		uint8_t pad1[0x1d8];
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ef_crc_trig : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ef_crc_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ef_crc_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t ef_crc_error : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t ef_crc_dout_inv_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ef_crc_dout_endian : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ef_crc_din_endian : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ef_crc_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ef_crc_int_clr : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t ef_crc_int_set : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t ef_crc_lock : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad0 : 4;
				uint32_t ef_crc_slp_n : 16; // @ 31 -- 16 # 0xffff
			};
		} ef_crc_ctrl_0; // @ 0xa00
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_data_0_en : 32; // @ 31 -- 0 # 0x0
			};
		} ef_crc_ctrl_1; // @ 0xa04
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_data_1_en : 32; // @ 31 -- 0 # 0x0
			};
		} ef_crc_ctrl_2; // @ 0xa08
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_iv : 32; // @ 31 -- 0 # 0x0
			};
		} ef_crc_ctrl_3; // @ 0xa0c
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_golden : 32; // @ 31 -- 0 # 0x0
			};
		} ef_crc_ctrl_4; // @ 0xa10
		union {
			uint32_t value;
			struct {
				uint32_t ef_crc_dout : 32; // @ 31 -- 0 # 0x0
			};
		} ef_crc_ctrl_5; // @ 0xa14
	};
} ef_ctrl_regs;
#define EF_CTRL_BASE 0x40007000
#define EF_CTRL ((volatile ef_ctrl_regs*)(EF_CTRL_BASE))