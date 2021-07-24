typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x808];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 23;
				uint32_t bz_phy_tx_rampup_fm_on : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_phy_tx_rampup_time_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2808; // @ 0x808
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_tx_rampdn_pad0_time_us : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 15;
				uint32_t bz_phy_tx_rampdn_fm_on : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t bz_phy_tx_rampdn_time_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x280c; // @ 0x80c
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_dfe_notch_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t bz_phy_rx_dfe_toc_en : 1; // @ 1 -- 1 # 0xfffffffd
			};
		} r0x2810; // @ 0x810
		uint8_t pad1[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t bz_phy_rx_proc_time_viterbi_us : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t bz_phy_rx_proc_time_mlsd_us : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t bz_phy_rx_proc_time_eq_us : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t bz_phy_rx_proc_time_direct_us : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2854; // @ 0x854
		uint8_t pad2[0x454];
		union {
			uint32_t value;
			struct {
				uint32_t bz_agc_rbb_ind_min : 5; // @ 4 -- 0 # 0xffffffe0
			};
		} r0x2cac; // @ 0xcac
	};
} bz_phy_regs;
#define BZ_PHY_BASE 0x40002000
#define BZ_PHY ((bz_phy_regs* volatile)(BZ_PHY_BASE))