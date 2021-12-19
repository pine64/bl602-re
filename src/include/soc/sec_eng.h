typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_sha_0_trig_1t : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_sha_0_mode : 3; // @ 4 -- 2 # 0xffffffe3
				uint32_t se_sha_0_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t se_sha_0_hash_sel : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 1;
				uint32_t se_sha_0_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_sha_0_int_clr_1t : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_sha_0_int_set_1t : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t se_sha_0_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad1 : 3;
				uint32_t se_sha_0_link_mode : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t se_sha_0_msg_len : 16; // @ 31 -- 16 # 0xffff
			};
		} se_sha_0_ctrl; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_msa : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_msa; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_status : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_status; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_dout_endian : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} se_sha_0_endian; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_0; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_1; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_2; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_3; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_4 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_4; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_5 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_5; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_6 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_6; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_l_7 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_l_7; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_0; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_1; // @ 0x34
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_2; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_3; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_4 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_4; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_5 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_5; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_6 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_6; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_hash_h_7 : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_hash_h_7; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_0_lca : 32; // @ 31 -- 0 # 0x0
			};
		} se_sha_0_link; // @ 0x50
		uint8_t pad0[0xa8];
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_sha_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_sha_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_sha_0_ctrl_prot; // @ 0xfc
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_aes_0_trig_1t : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_aes_0_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t se_aes_0_mode : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t se_aes_0_dec_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t se_aes_0_dec_key_sel : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t se_aes_0_hw_key_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t se_aes_0_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_aes_0_int_clr_1t : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_aes_0_int_set_1t : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t se_aes_0_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t se_aes_0_block_mode : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t se_aes_0_iv_sel : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t se_aes_0_link_mode : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t se_aes_0_msg_len : 16; // @ 31 -- 16 # 0xffff
			};
		} se_aes_0_ctrl; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_msa : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_msa; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_mda : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_mda; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_status : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_status; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_iv_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_iv_0; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_iv_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_iv_1; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_iv_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_iv_2; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_iv_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_iv_3; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_0; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_1; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_2; // @ 0x128
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_3; // @ 0x12c
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_4 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_4; // @ 0x130
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_5 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_5; // @ 0x134
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_6 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_6; // @ 0x138
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_7 : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_key_7; // @ 0x13c
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_sel_0 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} se_aes_0_key_sel_0; // @ 0x140
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_key_sel_1 : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} se_aes_0_key_sel_1; // @ 0x144
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_dout_endian : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_aes_0_din_endian : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_aes_0_key_endian : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t se_aes_0_iv_endian : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 26;
				uint32_t se_aes_0_ctr_len : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} se_aes_0_endian; // @ 0x148
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_sboot_key_sel : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} se_aes_0_sboot; // @ 0x14c
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_0_lca : 32; // @ 31 -- 0 # 0x0
			};
		} se_aes_0_link; // @ 0x150
		uint8_t pad1[0xa8];
		union {
			uint32_t value;
			struct {
				uint32_t se_aes_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_aes_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_aes_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_aes_0_ctrl_prot; // @ 0x1fc
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_trng_0_trig_1t : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_trng_0_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t se_trng_0_dout_clr_1t : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t se_trng_0_ht_error : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t se_trng_0_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_trng_0_int_clr_1t : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_trng_0_int_set_1t : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t se_trng_0_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad1 : 1;
				uint32_t se_trng_0_manual_fun_sel : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t se_trng_0_manual_reseed : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t se_trng_0_manual_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t pad2 : 16;
			};
		} se_trng_0_ctrl_0; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_status : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_status; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_0; // @ 0x208
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_1; // @ 0x20c
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_2; // @ 0x210
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_3; // @ 0x214
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_4 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_4; // @ 0x218
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_5 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_5; // @ 0x21c
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_6 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_6; // @ 0x220
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_dout_7 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_dout_7; // @ 0x224
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_test_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_trng_0_cp_test_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_trng_0_cp_bypass : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t se_trng_0_ht_dis : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t se_trng_0_ht_alarm_n : 8; // @ 11 -- 4 # 0xfffff00f
				uint32_t pad0 : 20;
			};
		} se_trng_0_test; // @ 0x228
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_reseed_n_lsb : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_ctrl_1; // @ 0x22c
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_reseed_n_msb : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} se_trng_0_ctrl_2; // @ 0x230
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_cp_ratio : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t se_trng_0_ht_rct_c : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t se_trng_0_ht_apt_c : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t se_trng_0_ht_od_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad0 : 4;
				uint32_t se_trng_0_rosc_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} se_trng_0_ctrl_3; // @ 0x234
		uint8_t pad2[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_test_out_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_test_out_0; // @ 0x240
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_test_out_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_test_out_1; // @ 0x244
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_test_out_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_test_out_2; // @ 0x248
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_0_test_out_3 : 32; // @ 31 -- 0 # 0x0
			};
		} se_trng_0_test_out_3; // @ 0x24c
		uint8_t pad3[0xac];
		union {
			uint32_t value;
			struct {
				uint32_t se_trng_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_trng_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_trng_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_trng_0_ctrl_prot; // @ 0x2fc
		union {
			uint32_t value;
			struct {
				uint32_t se_pka_0_done : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_pka_0_done_clr_1t : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_pka_0_busy : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t se_pka_0_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t se_pka_0_prot_md : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t se_pka_0_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_pka_0_int_clr_1t : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_pka_0_int_set : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t se_pka_0_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t se_pka_0_endian : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t se_pka_0_ram_clr_md : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad0 : 2;
				uint32_t se_pka_0_status_clr_1t : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t se_pka_0_status : 15; // @ 31 -- 17 # 0x1ffff
			};
		} se_pka_0_ctrl_0; // @ 0x300
		uint8_t pad4[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t se_pka_0_seed : 32; // @ 31 -- 0 # 0x0
			};
		} se_pka_0_seed; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t se_pka_0_hburst : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t se_pka_0_hbypass : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} se_pka_0_ctrl_1; // @ 0x310
		uint8_t pad5[0x2c];
		uint32_t se_pka_0_rw; // @ 0x340
		uint8_t pad6[0x1c];
		uint32_t se_pka_0_rw_burst; // @ 0x360
		uint8_t pad7[0x98];
		union {
			uint32_t value;
			struct {
				uint32_t se_pka_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_pka_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_pka_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_pka_0_ctrl_prot; // @ 0x3fc
		union {
			uint32_t value;
			struct {
				uint32_t se_cdet_0_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_cdet_0_error : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_cdet_0_status : 14; // @ 15 -- 2 # 0xffff0003
				uint32_t se_cdet_0_g_loop_max : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t se_cdet_0_g_loop_min : 8; // @ 31 -- 24 # 0xffffff
			};
		} se_cdet_0_ctrl_0; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t se_cdet_0_t_loop_n : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t se_cdet_0_t_dly_n : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t se_cdet_0_g_slp_n : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} se_cdet_0_ctrl_1; // @ 0x404
		uint8_t pad8[0xf4];
		union {
			uint32_t value;
			struct {
				uint32_t se_cdet_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_cdet_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_cdet_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_cdet_0_ctrl_prot; // @ 0x4fc
		union {
			uint32_t value;
			struct {
				uint32_t se_gmac_0_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_gmac_0_trig_1t : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_gmac_0_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 5;
				uint32_t se_gmac_0_int : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_gmac_0_int_clr_1t : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_gmac_0_int_set_1t : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t se_gmac_0_int_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t se_gmac_0_t_endian : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t se_gmac_0_h_endian : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t se_gmac_0_x_endian : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad1 : 17;
			};
		} se_gmac_0_ctrl_0; // @ 0x500
		union {
			uint32_t value;
			struct {
				uint32_t se_gmac_0_lca : 32; // @ 31 -- 0 # 0x0
			};
		} se_gmac_0_lca; // @ 0x504
		union {
			uint32_t value;
			struct {
				uint32_t se_gmac_0_status : 32; // @ 31 -- 0 # 0x0
			};
		} se_gmac_0_status; // @ 0x508
		uint8_t pad9[0xf0];
		union {
			uint32_t value;
			struct {
				uint32_t se_gmac_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_gmac_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_gmac_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} se_gmac_0_ctrl_prot; // @ 0x5fc
		uint8_t pad10[0x900];
		union {
			uint32_t value;
			struct {
				uint32_t se_sha_prot_en_rd : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t se_sha_id0_en_rd : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t se_sha_id1_en_rd : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t se_aes_prot_en_rd : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t se_aes_id0_en_rd : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t se_aes_id1_en_rd : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad1 : 1;
				uint32_t se_trng_prot_en_rd : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t se_trng_id0_en_rd : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t se_trng_id1_en_rd : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad2 : 1;
				uint32_t se_pka_prot_en_rd : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t se_pka_id0_en_rd : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t se_pka_id1_en_rd : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad3 : 1;
				uint32_t se_cdet_prot_en_rd : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t se_cdet_id0_en_rd : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t se_cdet_id1_en_rd : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad4 : 1;
				uint32_t se_gmac_prot_en_rd : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t se_gmac_id0_en_rd : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t se_gmac_id1_en_rd : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad5 : 8;
				uint32_t se_dbg_dis : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} se_ctrl_prot_rd; // @ 0xf00
		union {
			uint32_t value;
			struct {
				uint32_t se_ctrl_reserved_0 : 32; // @ 31 -- 0 # 0x0
			};
		} se_ctrl_reserved_0; // @ 0xf04
		union {
			uint32_t value;
			struct {
				uint32_t se_ctrl_reserved_1 : 32; // @ 31 -- 0 # 0x0
			};
		} se_ctrl_reserved_1; // @ 0xf08
		union {
			uint32_t value;
			struct {
				uint32_t se_ctrl_reserved_2 : 32; // @ 31 -- 0 # 0x0
			};
		} se_ctrl_reserved_2; // @ 0xf0c
	};
} sec_eng_regs;
#define SEC_ENG_BASE 0x40004000
#define SEC_ENG ((sec_eng_regs* volatile)(SEC_ENG_BASE))