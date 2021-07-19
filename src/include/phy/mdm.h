typedef union {
	uint32_t regs[0x1000];
	uint8_t pad[0x4000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 4;
				uint32_t ntx : 4; // @ 0x7 -- 0x4 
				uint32_t nss : 4; // @ 0xb -- 0x8 
				uint32_t rxndpnstsmax : 4; // @ 0xf -- 0xc 
				uint32_t pad1 : 2;
				uint32_t v18 : 1; // @ 0x12 -- 0x12 
				uint32_t v19 : 1; // @ 0x13 -- 0x13 
				uint32_t pad2 : 2;
				uint32_t vht : 1; // @ 0x16 -- 0x16 
				uint32_t pad3 : 1;
				uint32_t txcbwmax : 2; // @ 0x19 -- 0x18 
				uint32_t ldpctx : 1; // @ 0x1a -- 0x1a 
				uint32_t pad4 : 3;
				uint32_t v30 : 1; // @ 0x1e -- 0x1e 
				uint32_t v31 : 1; // @ 0x1f -- 0x1f 
			};
		} version; // @ 0x0
		uint8_t pad0[0x7fc];
		uint32_t mdmconf; // @ 0x800
		uint8_t pad1[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t TDCYCROTVAL20 : 8; // @ 0x7 -- 0x0 
				uint32_t TDCYCROTVAL40 : 8; // @ 0xf -- 0x8 
				uint32_t CFGSMOOTH : 2; // @ 0x11 -- 0x10 
				uint32_t CFGSMOOTHFORCE : 1; // @ 0x12 -- 0x12 
				uint32_t SMOOTHEN : 1; // @ 0x13 -- 0x13 
				uint32_t TDCYCROTVAL80 : 8; // @ 0x1b -- 0x14 
			};
		} SMOOTHCTRL; // @ 0x818
		union {
			uint32_t value;
			struct {
				uint32_t WAITHTSTF : 7; // @ 0x6 -- 0x0 
				uint32_t pad0 : 1;
				uint32_t delaynormalgi : 6; // @ 0xd -- 0x8 
			};
		} DCESTIMCTRL; // @ 0x81c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t vht : 1; // @ 0x1 -- 0x1 
				uint32_t pad1 : 2;
				uint32_t rxnssmax : 3; // @ 0x6 -- 0x4 
				uint32_t pad2 : 1;
				uint32_t v19 : 1; // @ 0x8 -- 0x8 
				uint32_t pad3 : 7;
				uint32_t v30 : 1; // @ 0x10 -- 0x10 
				uint32_t pad4 : 3;
				uint32_t _v30 : 1; // @ 0x14 -- 0x14 
				uint32_t pad5 : 3;
				uint32_t rxcbwmax : 2; // @ 0x19 -- 0x18 
			};
		} rxchan; // @ 0x820
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t vht : 1; // @ 0x1 -- 0x1 
				uint32_t pad1 : 2;
				uint32_t txnssmax : 3; // @ 0x6 -- 0x4 
				uint32_t pad2 : 1;
				uint32_t v18 : 1; // @ 0x8 -- 0x8 
				uint32_t pad3 : 7;
				uint32_t v31 : 1; // @ 0x10 -- 0x10 
				uint32_t pad4 : 3;
				uint32_t ntxmax : 3; // @ 0x16 -- 0x14 
				uint32_t pad5 : 1;
				uint32_t txcbwmax : 2; // @ 0x19 -- 0x18 
			};
		} txchan; // @ 0x824
		uint8_t pad2[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t smoothsnrthrmid : 8; // @ 0x7 -- 0x0 
				uint32_t smoothsnrthrhigh : 8; // @ 0xf -- 0x8 
			};
		} SMOOTHSNRTHR; // @ 0x830
		union {
			uint32_t value;
			struct {
				uint32_t set1 : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 23;
				uint32_t set60h : 8; // @ 0x1f -- 0x18 
			};
		} r834; // @ 0x834
		uint32_t TXCTRL0; // @ 0x838
		uint32_t rxctrl1; // @ 0x83c
		uint8_t pad3[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t tbe_count_adjust_20 : 8; // @ 0x7 -- 0x0 
			};
		} TBECTRL0; // @ 0x858
		uint8_t pad4[0x4];
		uint32_t tbectrl2; // @ 0x860
		uint8_t pad5[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 27;
				uint32_t resetto1 : 1; // @ 0x1b -- 0x1b 
				uint32_t pad1 : 1;
				uint32_t set1beforewriteagcmem : 1; // @ 0x1d -- 0x1d 
			};
		} r874; // @ 0x874
		uint8_t pad6[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t MDMSWRESET : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 3;
				uint32_t FSMSWRESET : 1; // @ 0x4 -- 0x4 
				uint32_t pad1 : 3;
				uint32_t DSPSWRESET : 1; // @ 0x8 -- 0x8 
				uint32_t pad2 : 3;
				uint32_t AGCSWRESET : 1; // @ 0xc -- 0xc 
			};
		} swreset; // @ 0x888
		uint32_t TXCTRL1; // @ 0x88c
		uint8_t pad7[0x8];
		uint32_t TXCTRL3; // @ 0x898
		uint32_t rxframeviolationmask; // @ 0x89c
		uint8_t pad8[0x2784];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t precomp : 6; // @ 0x15 -- 0x10 
			};
		} r3024; // @ 0x3024
		uint8_t pad9[0x8];
		uint32_t r3030; // @ 0x3030
		uint32_t r3034; // @ 0x3034
		uint32_t r3038; // @ 0x3038
		uint32_t r303c; // @ 0x303c
		uint32_t r3040; // @ 0x3040
	};
} mdm_regs;
#define MDM_BASE 0x44c00000
#define MDM ((mdm_regs* volatile)(MDM_BASE))