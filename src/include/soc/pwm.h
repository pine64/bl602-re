typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pwm_interrupt_sts : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t pwm_int_clear : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 18;
			};
		} pwm_int_config; // @ 0x0
		uint8_t pad0[0x1c];
		union {
			uint32_t value;
			struct {
				uint32_t pwm_clk_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm0_clkdiv; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm0_thre1; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm0_thre2; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t pwm_period : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm0_period; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t reg_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pwm_out_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pwm_stop_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pwm_sw_force_val : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pwm_sw_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pwm_stop_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pwm_sts_top : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} pwm0_config; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t pwm_int_period_cnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pwm_int_enable : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} pwm0_interrupt; // @ 0x34
		uint8_t pad1[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t pwm_clk_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm1_clkdiv; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm1_thre1; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm1_thre2; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t pwm_period : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm1_period; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t reg_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pwm_out_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pwm_stop_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pwm_sw_force_val : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pwm_sw_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pwm_stop_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pwm_sts_top : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} pwm1_config; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t pwm_int_period_cnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pwm_int_enable : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} pwm1_interrupt; // @ 0x54
		uint8_t pad2[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t pwm_clk_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm2_clkdiv; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm2_thre1; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm2_thre2; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t pwm_period : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm2_period; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t reg_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pwm_out_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pwm_stop_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pwm_sw_force_val : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pwm_sw_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pwm_stop_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pwm_sts_top : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} pwm2_config; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t pwm_int_period_cnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pwm_int_enable : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} pwm2_interrupt; // @ 0x74
		uint8_t pad3[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t pwm_clk_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm3_clkdiv; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm3_thre1; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm3_thre2; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t pwm_period : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm3_period; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t reg_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pwm_out_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pwm_stop_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pwm_sw_force_val : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pwm_sw_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pwm_stop_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pwm_sts_top : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} pwm3_config; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t pwm_int_period_cnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pwm_int_enable : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} pwm3_interrupt; // @ 0x94
		uint8_t pad4[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t pwm_clk_div : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm4_clkdiv; // @ 0xa0
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm4_thre1; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t pwm_thre2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm4_thre2; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t pwm_period : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} pwm4_period; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t reg_clk_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pwm_out_inv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pwm_stop_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pwm_sw_force_val : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pwm_sw_mode : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pwm_stop_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pwm_sts_top : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} pwm4_config; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t pwm_int_period_cnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pwm_int_enable : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad0 : 15;
			};
		} pwm4_interrupt; // @ 0xb4
	};
} pwm_regs;
#define PWM_BASE 0x4000a400
#define PWM ((pwm_regs* volatile)(PWM_BASE))