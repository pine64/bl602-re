#ifndef TIMER_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t cs_1 : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t RESERVED_4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cs_2 : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t RESERVED_7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t cs_wdt : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 22;
			};
		} TCCR; // @ 0x0
		uint8_t pad0[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR2_0; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR2_1; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR2_2; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR3_0; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR3_1; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t tmr : 32; // @ 31 -- 0 # 0x0
			};
		} TMR3_2; // @ 0x24
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tcr : 32; // @ 31 -- 0 # 0x0
			};
		} TCR2; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t tcr3_counter : 32; // @ 31 -- 0 # 0x0
			};
		} TCR3; // @ 0x30
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tmsr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tmsr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tmsr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TMSR2; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t tmsr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tmsr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tmsr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TMSR3; // @ 0x3c
		uint8_t pad3[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tier_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tier_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tier_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TIER2; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t tier_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tier_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tier_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TIER3; // @ 0x48
		uint8_t pad4[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tplvr : 32; // @ 31 -- 0 # 0x0
			};
		} TPLVR2; // @ 0x50
		union {
			uint32_t value;
			struct {
				uint32_t tplvr : 32; // @ 31 -- 0 # 0x0
			};
		} TPLVR3; // @ 0x54
		uint8_t pad5[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tplcr : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} TPLCR2; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t tplcr : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} TPLCR3; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t we : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t wrie : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} WMER; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t wmr : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} WMR; // @ 0x68
		union {
			uint32_t value;
			struct {
				uint32_t wvr : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} WVR; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t wts : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} WSR; // @ 0x70
		uint8_t pad6[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tclr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tclr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tclr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TICR2; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t tclr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tclr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tclr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TICR3; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t wiclr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} WICR; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t timer2_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t timer3_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad1 : 29;
			};
		} TCER; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 1;
				uint32_t timer2_mode : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t timer3_mode : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad1 : 29;
			};
		} TCMR; // @ 0x88
		uint8_t pad7[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tilr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tilr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tilr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TILR2; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t tilr_0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tilr_1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tilr_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 29;
			};
		} TILR3; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t wcr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} WCR; // @ 0x98
		union {
			uint32_t value;
			struct {
				uint32_t wfar : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} WFAR; // @ 0x9c
		union {
			uint32_t value;
			struct {
				uint32_t wsar : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} WSAR; // @ 0xa0
		uint8_t pad8[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tcvwr : 32; // @ 31 -- 0 # 0x0
			};
		} TCVWR2; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t tcvwr : 32; // @ 31 -- 0 # 0x0
			};
		} TCVWR3; // @ 0xac
		uint8_t pad9[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t tcvsyn2 : 32; // @ 31 -- 0 # 0x0
			};
		} TCVSYN2; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t tcvsyn3 : 32; // @ 31 -- 0 # 0x0
			};
		} TCVSYN3; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t tcdr2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t tcdr3 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t wcdr : 8; // @ 31 -- 24 # 0xffffff
			};
		} TCDR; // @ 0xbc
	};
} timer_regs;
#define TIMER_BASE 0x4000a500
#define TIMER ((volatile timer_regs*)(TIMER_BASE))
#endif