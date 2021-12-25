#ifndef L1C_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t l1c_cacheable : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t l1c_cnt_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t l1c_invalid_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t l1c_invalid_done : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 4;
				uint32_t l1c_way_dis : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t irom_2t_access : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 1;
				uint32_t l1c_bypass : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t l1c_bmx_err_en : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t l1c_bmx_arb_mode : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 2;
				uint32_t l1c_bmx_timeout_en : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t l1c_bmx_busy_option_dis : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t early_resp_dis : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t wrap_dis : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad3 : 5;
			};
		} l1c_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t hit_cnt_lsb : 32; // @ 31 -- 0 # 0x0
			};
		} hit_cnt_lsb; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t hit_cnt_msb : 32; // @ 31 -- 0 # 0x0
			};
		} hit_cnt_msb; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t miss_cnt : 32; // @ 31 -- 0 # 0x0
			};
		} miss_cnt; // @ 0xc
		uint32_t l1c_range; // @ 0x10
		uint8_t pad0[0x1ec];
		union {
			uint32_t value;
			struct {
				uint32_t l1c_bmx_err_addr_dis : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t l1c_bmx_err_dec : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t l1c_bmx_err_tz : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 10;
				uint32_t l1c_hsel_option : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t pad2 : 12;
			};
		} l1c_bmx_err_addr_en; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t l1c_bmx_err_addr : 32; // @ 31 -- 0 # 0x0
			};
		} l1c_bmx_err_addr; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t irom1_misr_dataout_0 : 32; // @ 31 -- 0 # 0x0
			};
		} irom1_misr_dataout_0; // @ 0x208
		uint32_t irom1_misr_dataout_1; // @ 0x20c
		union {
			uint32_t value;
			struct {
				uint32_t force_e21_clock_on_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t force_e21_clock_on_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t force_e21_clock_on_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} cpu_clk_gate; // @ 0x210
	};
} l1c_regs;
#define L1C_BASE 0x40009000
#define L1C ((volatile l1c_regs*)(L1C_BASE))
#endif