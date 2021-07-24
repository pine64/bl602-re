typedef union {
	uint32_t regs[0x1000];
	uint8_t pad[0x4000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 4;
				uint32_t ntx : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t nss : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t nsts : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pad1 : 2;
				uint32_t ldpcenc : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t ldpcdec : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad2 : 2;
				uint32_t vht : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t pad3 : 1;
				uint32_t chbw : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t ldpctx : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t ldpcrx : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t bfmee_supported : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t bfmer_supported : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t mu_mimo_rx : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t mu_mimo_tx : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} version; // @ 0x0
		uint8_t pad0[0x7fc];
		uint32_t mdmconf; // @ 0x800
		uint8_t pad1[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t TDCYCROTVAL20 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t TDCYCROTVAL40 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t CFGSMOOTH : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t CFGSMOOTHFORCE : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t SMOOTHEN : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t TDCYCROTVAL80 : 8; // @ 27 -- 20 # 0xf00fffff
				uint32_t pad0 : 4;
			};
		} SMOOTHCTRL; // @ 0x818
		union {
			uint32_t value;
			struct {
				uint32_t WAITHTSTF : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 1;
				uint32_t delaynormalgi : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 18;
			};
		} DCESTIMCTRL; // @ 0x81c
		union {
			uint32_t value;
			struct {
				uint32_t rxdsssen : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rxvhten : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 2;
				uint32_t rxnssmax : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad1 : 1;
				uint32_t rxldpcen : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 3;
				uint32_t rxndpnstsmax : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t pad3 : 1;
				uint32_t rxmumimoen : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t rxmumimoapeplenen : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t pad5 : 3;
				uint32_t rxcbwmax : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 6;
			};
		} rxchan; // @ 0x820
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t vht : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad1 : 2;
				uint32_t txnssmax : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad2 : 1;
				uint32_t txldpcen : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad3 : 7;
				uint32_t txmumimoen : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad4 : 3;
				uint32_t ntxmax : 3; // @ 22 -- 20 # 0xff8fffff
				uint32_t pad5 : 1;
				uint32_t txcbwmax : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad6 : 6;
			};
		} txchan; // @ 0x824
		uint8_t pad2[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t smoothsnrthrmid : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t smoothsnrthrhigh : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} SMOOTHSNRTHR; // @ 0x830
		union {
			uint32_t value;
			struct {
				uint32_t rxtdctrl1 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 23;
				uint32_t tddchtstfmargin : 8; // @ 31 -- 24 # 0xffffff
			};
		} r834; // @ 0x834
		uint32_t txstartdelay; // @ 0x838
		uint32_t rxctrl1; // @ 0x83c
		uint8_t pad3[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t tbe_count_adjust_20 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} TBECTRL0; // @ 0x858
		uint8_t pad4[0x4];
		uint32_t tbectrl2; // @ 0x860
		uint8_t pad5[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 27;
				uint32_t rcclkforce : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad1 : 1;
				uint32_t mdm_agcmemclkforce : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad2 : 2;
			};
		} r0x874; // @ 0x874
		uint8_t pad6[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t MDMSWRESET : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t FSMSWRESET : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad1 : 3;
				uint32_t DSPSWRESET : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad2 : 3;
				uint32_t AGCSWRESET : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 19;
			};
		} swreset; // @ 0x888
		uint32_t txctrl1; // @ 0x88c
		uint8_t pad7[0x8];
		uint32_t txctrl3; // @ 0x898
		uint32_t rxframeviolationmask; // @ 0x89c
		uint8_t pad8[0x2784];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t precomp : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad1 : 10;
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