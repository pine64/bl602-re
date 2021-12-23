typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t ef_sf_aes_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t ef_sboot_sign_mode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t ef_sboot_en : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t ef_cpu1_enc_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ef_cpu0_enc_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ef_boot_sel : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t ef_sw_usage_1 : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t ef_sdu_dis : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ef_ble_dis : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ef_wifi_dis : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t ef_0_key_enc_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t ef_cam_dis : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ef_sf_dis : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ef_cpu1_dis : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ef_cpu_rst_dbg_dis : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ef_se_dbg_dis : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ef_efuse_dbg_dis : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ef_dbg_jtag_1_dis : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t ef_dbg_jtag_0_dis : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t ef_dbg_mode : 4; // @ 31 -- 28 # 0xfffffff
			};
		} ef_cfg_0; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t ef_dbg_pwd_low : 32; // @ 31 -- 0 # 0x0
			};
		} ef_dbg_pwd_low; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t ef_dbg_pwd_high : 32; // @ 31 -- 0 # 0x0
			};
		} ef_dbg_pwd_high; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t ef_ana_trim_0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_ana_trim_0; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t ef_sw_usage_0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_sw_usage_0; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t ef_wifi_mac_low : 32; // @ 31 -- 0 # 0x0
			};
		} ef_wifi_mac_low; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t ef_wifi_mac_high : 32; // @ 31 -- 0 # 0x0
			};
		} ef_wifi_mac_high; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_0_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_0_w0; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_0_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_0_w1; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_0_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_0_w2; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_0_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_0_w3; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_1_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_1_w0; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_1_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_1_w1; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_1_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_1_w2; // @ 0x34
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_1_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_1_w3; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_2_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_2_w0; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_2_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_2_w1; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_2_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_2_w2; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_2_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_2_w3; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_3_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_3_w0; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_3_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_3_w1; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_3_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_3_w2; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_3_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_3_w3; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_4_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_4_w0; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_4_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_4_w1; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_4_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_4_w2; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_4_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_4_w3; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_5_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_5_w0; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_5_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_5_w1; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_5_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_5_w2; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t ef_key_slot_5_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} ef_key_slot_5_w3; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t ef_ana_trim_1 : 13; // @ 12 -- 0 # 0xffffe000
				uint32_t wr_lock_key_slot_4_l : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t wr_lock_key_slot_5_l : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t wr_lock_boot_mode : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t wr_lock_dbg_pwd : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t wr_lock_sw_usage_0 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t wr_lock_wifi_mac : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t wr_lock_key_slot_0 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t wr_lock_key_slot_1 : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t wr_lock_key_slot_2 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t wr_lock_key_slot_3 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t wr_lock_key_slot_4_h : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t wr_lock_key_slot_5_h : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rd_lock_dbg_pwd : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t rd_lock_key_slot_0 : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t rd_lock_key_slot_1 : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t rd_lock_key_slot_2 : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t rd_lock_key_slot_3 : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t rd_lock_key_slot_4 : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t rd_lock_key_slot_5 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} ef_data_0_lock; // @ 0x7c
	};
} ef_data_0_regs;
#define EF_DATA_0_BASE 0x40007000
#define EF_DATA_0 ((volatile ef_data_0_regs*)(EF_DATA_0_BASE))