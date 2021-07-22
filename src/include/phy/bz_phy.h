typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
	};
} bz_phy_regs;
#define BZ_PHY_BASE 0x40002000
#define BZ_PHY ((bz_phy_regs* volatile)(BZ_PHY_BASE))