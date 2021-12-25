#ifndef CCI_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cci_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cci_slv_sel_cci2 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cci_mas_sel_cci2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cci_mas_hw_mode : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t reg_m_cci_sclk_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t reg_div_m_cci_sclk : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t cfg_cci1_pre_read : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t reg_scci_clk_inv : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t reg_mcci_clk_inv : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 22;
			};
		} cci_cfg; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t apb_cci_addr : 32; // @ 31 -- 0 # 0x0
			};
		} cci_addr; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t apb_cci_wdata : 32; // @ 31 -- 0 # 0x0
			};
		} cci_wdata; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t apb_cci_rdata : 32; // @ 31 -- 0 # 0x0
			};
		} cci_rdata; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t cci_write_flag : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cci_read_flag : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ahb_state : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t pad0 : 28;
			};
		} cci_ctl; // @ 0x10
	};
} cci_regs;
#define CCI_BASE 0x40008000
#define CCI ((volatile cci_regs*)(CCI_BASE))
#endif