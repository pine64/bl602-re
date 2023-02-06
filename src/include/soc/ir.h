#ifndef IR_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_irtx_out_inv : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_irtx_mod_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_irtx_swm_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_irtx_data_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_irtx_logic0_hl_inv : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_irtx_logic1_hl_inv : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 1;
				uint32_t cr_irtx_head_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_irtx_head_hl_inv : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t cr_irtx_tail_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t cr_irtx_tail_hl_inv : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_irtx_data_num : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t pad1 : 14;
			};
		} irtx_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t irtx_end_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 7;
				uint32_t cr_irtx_end_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 7;
				uint32_t cr_irtx_end_clr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 7;
				uint32_t cr_irtx_end_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad3 : 7;
			};
		} irtx_int_sts; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_data_word0 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_data_word0; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_data_word1 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_data_word1; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_pw_unit : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 4;
				uint32_t cr_irtx_mod_ph0_w : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_irtx_mod_ph1_w : 8; // @ 31 -- 24 # 0xffffff
			};
		} irtx_pulse_width; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_logic0_ph0_w : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t cr_irtx_logic0_ph1_w : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cr_irtx_logic1_ph0_w : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t cr_irtx_logic1_ph1_w : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t cr_irtx_head_ph0_w : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t cr_irtx_head_ph1_w : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t cr_irtx_tail_ph0_w : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t cr_irtx_tail_ph1_w : 4; // @ 31 -- 28 # 0xfffffff
			};
		} irtx_pw; // @ 0x14
		uint8_t pad0[0x28];
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_0 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_0; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_1 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_1; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_2 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_2; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_3 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_3; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_4 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_4; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_5 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_5; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_6 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_6; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t cr_irtx_swm_pw_7 : 32; // @ 31 -- 0 # 0x0
			};
		} irtx_swm_pw_7; // @ 0x5c
		uint8_t pad1[0x20];
		union {
			uint32_t value;
			struct {
				uint32_t cr_irrx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_irrx_in_inv : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_irrx_mode : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t cr_irrx_deg_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t cr_irrx_deg_cnt : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad1 : 20;
			};
		} irrx_config; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t irrx_end_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 7;
				uint32_t cr_irrx_end_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 7;
				uint32_t cr_irrx_end_clr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 7;
				uint32_t cr_irrx_end_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad3 : 7;
			};
		} irrx_int_sts; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t cr_irrx_data_th : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t cr_irrx_end_th : 16; // @ 31 -- 16 # 0xffff
			};
		} irrx_pw_config; // @ 0x88
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t sts_irrx_data_cnt : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 25;
			};
		} irrx_data_count; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t sts_irrx_data_word0 : 32; // @ 31 -- 0 # 0x0
			};
		} irrx_data_word0; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t sts_irrx_data_word1 : 32; // @ 31 -- 0 # 0x0
			};
		} irrx_data_word1; // @ 0x98
		uint8_t pad3[0x24];
		union {
			uint32_t value;
			struct {
				uint32_t rx_fifo_clr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 1;
				uint32_t rx_fifo_overflow : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rx_fifo_underflow : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rx_fifo_cnt : 7; // @ 10 -- 4 # 0xfffff80f
				uint32_t pad1 : 21;
			};
		} irrx_swm_fifo_config_0; // @ 0xc0
		union {
			uint32_t value;
			struct {
				uint32_t rx_fifo_rdata : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} irrx_swm_fifo_rdata; // @ 0xc4
	};
} ir_regs;
#define IR_BASE 0x4000a600
#define IR ((volatile ir_regs*)(IR_BASE))
#endif