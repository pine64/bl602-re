typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t sf_clk_sf_rx_inv_sel : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t sf_clk_out_gate_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t sf_clk_out_inv_sel : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t sf_clk_sahb_sram_sel : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 2;
				uint32_t sf_if_read_dly_n : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t sf_if_read_dly_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad2 : 4;
				uint32_t sf_if_int : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t sf_if_int_clr : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t sf_if_int_set : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t sf_aes_dly_mode : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t sf_aes_dout_endian : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t sf_aes_ctr_plus_en : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t sf_aes_key_endian : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t sf_aes_iv_endian : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t sf_id : 8; // @ 31 -- 24 # 0xffffff
			};
		} sf_ctrl_0; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_sr_pat_mask : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t sf_if_sr_pat : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t sf_if_sr_int : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t sf_if_sr_int_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t sf_if_sr_int_set : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad0 : 1;
				uint32_t sf_if_0_ack_lat : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 1;
				uint32_t sf_if_reg_hold : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t sf_if_reg_wp : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t sf_ahb2sif_stopped : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t sf_ahb2sif_stop : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t sf_if_fn_sel : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t sf_if_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t sf_ahb2sif_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t sf_ahb2sram_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_ctrl_1; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sf_if_0_trig : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t sf_if_0_dat_byte : 10; // @ 11 -- 2 # 0xfffff003
				uint32_t sf_if_0_dmy_byte : 5; // @ 16 -- 12 # 0xfffe0fff
				uint32_t sf_if_0_adr_byte : 3; // @ 19 -- 17 # 0xfff1ffff
				uint32_t sf_if_0_cmd_byte : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t sf_if_0_dat_rw   : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t sf_if_0_dat_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t sf_if_0_dmy_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t sf_if_0_adr_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t sf_if_0_cmd_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t sf_if_0_spi_mode : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t sf_if_0_qpi_mode_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_if_sahb_0; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_0_cmd_buf_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_sahb_1; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_0_cmd_buf_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_sahb_2; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t sf_if_1_dmy_byte : 5; // @ 16 -- 12 # 0xfffe0fff
				uint32_t sf_if_1_adr_byte : 3; // @ 19 -- 17 # 0xfff1ffff
				uint32_t sf_if_1_cmd_byte : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t sf_if_1_dat_rw   : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t sf_if_1_dat_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t sf_if_1_dmy_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t sf_if_1_adr_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t sf_if_1_cmd_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t sf_if_1_spi_mode : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t sf_if_1_qpi_mode_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_if_iahb_0; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_1_cmd_buf_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_iahb_1; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_1_cmd_buf_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_iahb_2; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_status_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_status_0; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_status_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_status_1; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sf_aes_mode : 2; // @ 2 -- 1 # 0xfffffff9
				uint32_t sf_aes_pref_trig : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t sf_aes_pref_busy : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t sf_aes_status : 27; // @ 31 -- 5 # 0x1f
			};
		} sf_aes; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t sf_ahb2sif_status : 32; // @ 31 -- 0 # 0x0
			};
		} sf_ahb2sif_status; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t sf_cs_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf_clk_out_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 16;
				uint32_t sf_dqs_oe_dly_sel : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t sf_dqs_di_dly_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t sf_dqs_do_dly_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} sf_if_io_dly_0; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t sf_io_0_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf_io_0_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf_io_0_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf_if_io_dly_1; // @ 0x34
		union {
			uint32_t value;
			struct {
				uint32_t sf_io_1_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf_io_1_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf_io_1_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf_if_io_dly_2; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t sf_io_2_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf_io_2_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf_io_2_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf_if_io_dly_3; // @ 0x3c
		union {
			uint32_t value;
			struct {
				uint32_t sf_io_3_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf_io_3_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf_io_3_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf_if_io_dly_4; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t sf_reserved : 32; // @ 31 -- 0 # 0x0
			};
		} sf_reserved; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t sf2_cs_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf2_clk_out_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 16;
				uint32_t sf2_dqs_oe_dly_sel : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t sf2_dqs_di_dly_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t sf2_dqs_do_dly_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} sf2_if_io_dly_0; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t sf2_io_0_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf2_io_0_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf2_io_0_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf2_if_io_dly_1; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t sf2_io_1_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf2_io_1_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf2_io_1_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf2_if_io_dly_2; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t sf2_io_2_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf2_io_2_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf2_io_2_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf2_if_io_dly_3; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t sf2_io_3_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf2_io_3_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf2_io_3_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf2_if_io_dly_4; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t sf3_cs_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf3_clk_out_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 16;
				uint32_t sf3_dqs_oe_dly_sel : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t sf3_dqs_di_dly_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t sf3_dqs_do_dly_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} sf3_if_io_dly_0; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t sf3_io_0_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf3_io_0_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf3_io_0_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf3_if_io_dly_1; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t sf3_io_1_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf3_io_1_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf3_io_1_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf3_if_io_dly_2; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t sf3_io_2_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf3_io_2_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf3_io_2_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf3_if_io_dly_3; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t sf3_io_3_oe_dly_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t sf3_io_3_di_dly_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t sf3_io_3_do_dly_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 14;
			};
		} sf3_if_io_dly_4; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_pad_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 1;
				uint32_t sf_if_pad_sel_lock : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t sf_if_dtr_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t sf_if_dqs_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 26;
			};
		} sf_ctrl_2; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t sf_cmds_wrap_len : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t sf_cmds_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t sf_cmds_bt_dly : 3; // @ 7 -- 5 # 0xffffff1f
				uint32_t sf_cmds_bt_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t sf_cmds_wrap_q_ini : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t sf_cmds_wrap_mode : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad0 : 18;
				uint32_t sf_if_1_ack_lat : 3; // @ 31 -- 29 # 0x1fffffff
			};
		} sf_ctrl_3; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t sf_if_2_dmy_byte : 5; // @ 16 -- 12 # 0xfffe0fff
				uint32_t sf_if_2_adr_byte : 3; // @ 19 -- 17 # 0xfff1ffff
				uint32_t sf_if_2_cmd_byte : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t sf_if_2_dat_rw   : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t sf_if_2_dat_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t sf_if_2_dmy_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t sf_if_2_adr_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t sf_if_2_cmd_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t sf_if_2_spi_mode : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t sf_if_2_qpi_mode_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_if_iahb_3; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_2_cmd_buf_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_iahb_4; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_2_cmd_buf_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_iahb_5; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 20;
				uint32_t sf_if_3_cmd_byte : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad1 : 5;
				uint32_t sf_if_3_spi_mode : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t sf_if_3_qpi_mode_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_if_iahb_6; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t sf_if_3_cmd_buf_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_if_iahb_7; // @ 0x88
		uint8_t pad0[0x74];
		union {
			uint32_t value;
			struct {
				uint32_t sf_ctrl_prot_en_rd : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sf_ctrl_id0_en_rd : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t sf_ctrl_id1_en_rd : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 27;
				uint32_t sf_if_0_trig_wr_lock : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t sf_dbg_dis : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_ctrl_prot_en_rd; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t sf_ctrl_prot_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sf_ctrl_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t sf_ctrl_id1_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} sf_ctrl_prot_en; // @ 0x104
		uint8_t pad1[0xf8];
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_0; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_1; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_2; // @ 0x208
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_3; // @ 0x20c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_4 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_4; // @ 0x210
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_5 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_5; // @ 0x214
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_6 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_6; // @ 0x218
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r0_7 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r0_7; // @ 0x21c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r0_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r0_w0; // @ 0x220
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r0_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r0_w1; // @ 0x224
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r0_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r0_w2; // @ 0x228
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r0_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r0_w3; // @ 0x22c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_region_r0_end : 14; // @ 13 -- 0 # 0xffffc000
				uint32_t sf_aes_region_r0_start : 14; // @ 27 -- 14 # 0xf0003fff
				uint32_t pad0 : 1;
				uint32_t sf_aes_region_r0_hw_key_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t sf_aes_region_r0_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t sf_aes_region_r0_lock : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_aes_cfg_r0; // @ 0x230
		uint8_t pad2[0xcc];
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_0; // @ 0x300
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_1; // @ 0x304
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_2; // @ 0x308
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_3; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_4 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_4; // @ 0x310
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_5 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_5; // @ 0x314
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_6 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_6; // @ 0x318
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r1_7 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r1_7; // @ 0x31c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r1_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r1_w0; // @ 0x320
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r1_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r1_w1; // @ 0x324
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r1_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r1_w2; // @ 0x328
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r1_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r1_w3; // @ 0x32c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_r1_end : 14; // @ 13 -- 0 # 0xffffc000
				uint32_t sf_aes_r1_start : 14; // @ 27 -- 14 # 0xf0003fff
				uint32_t pad0 : 1;
				uint32_t sf_aes_r1_hw_key_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t sf_aes_r1_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t sf_aes_r1_lock : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_aes_r1; // @ 0x330
		uint8_t pad3[0xcc];
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_0; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_1; // @ 0x404
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_2; // @ 0x408
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_3; // @ 0x40c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_4 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_4; // @ 0x410
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_5 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_5; // @ 0x414
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_6 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_6; // @ 0x418
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_key_r2_7 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_key_r2_7; // @ 0x41c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r2_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r2_w0; // @ 0x420
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r2_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r2_w1; // @ 0x424
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r2_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r2_w2; // @ 0x428
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_iv_r2_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} sf_aes_iv_r2_w3; // @ 0x42c
		union {
			uint32_t value;
			struct {
				uint32_t sf_aes_r2_end : 14; // @ 13 -- 0 # 0xffffc000
				uint32_t sf_aes_r2_start : 14; // @ 27 -- 14 # 0xf0003fff
				uint32_t pad0 : 1;
				uint32_t sf_aes_r2_hw_key_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t sf_aes_r2_en : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t sf_aes_r2_lock : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} sf_aes_r2; // @ 0x430
		union {
			uint32_t value;
			struct {
				uint32_t sf_id0_offset : 24; // @ 23 -- 0 # 0xff000000
				uint32_t pad0 : 8;
			};
		} sf_id0_offset; // @ 0x434
		union {
			uint32_t value;
			struct {
				uint32_t sf_id1_offset : 24; // @ 23 -- 0 # 0xff000000
				uint32_t pad0 : 8;
			};
		} sf_id1_offset; // @ 0x438
	};
} sf_ctrl_regs;
#define SF_CTRL_BASE 0x4000b000
#define SF_CTRL ((sf_ctrl_regs* volatile)(SF_CTRL_BASE))