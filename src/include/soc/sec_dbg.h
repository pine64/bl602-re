typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t sd_chip_id_low : 32; // @ 31 -- 0 # 0x0
			};
		} sd_chip_id_low; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t sd_chip_id_high : 32; // @ 31 -- 0 # 0x0
			};
		} sd_chip_id_high; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t sd_wifi_mac_low : 32; // @ 31 -- 0 # 0x0
			};
		} sd_wifi_mac_low; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t sd_wifi_mac_high : 32; // @ 31 -- 0 # 0x0
			};
		} sd_wifi_mac_high; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t sd_dbg_pwd_low : 32; // @ 31 -- 0 # 0x0
			};
		} sd_dbg_pwd_low; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t sd_dbg_pwd_high : 32; // @ 31 -- 0 # 0x0
			};
		} sd_dbg_pwd_high; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t sd_dbg_pwd_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sd_dbg_pwd_trig : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t sd_dbg_cci_read_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t sd_dbg_cci_clk_sel : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t sd_dbg_pwd_cnt : 20; // @ 23 -- 4 # 0xff00000f
				uint32_t sd_dbg_mode : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t sd_dbg_ena : 4; // @ 31 -- 28 # 0xfffffff
			};
		} sd_status; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t sd_dbg_reserved : 32; // @ 31 -- 0 # 0x0
			};
		} sd_dbg_reserved; // @ 0x1c
	};
} sec_dbg_regs;
#define SEC_DBG_BASE 0x40003000
#define SEC_DBG ((sec_dbg_regs* volatile)(SEC_DBG_BASE))