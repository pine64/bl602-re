typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t IntStatus : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_IntStatus; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t IntTCStatus : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_IntTCStatus; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t IntTCClear : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_IntTCClear; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t IntErrorStatus : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_IntErrorStatus; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t IntErrClr : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_IntErrClr; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t RawIntTCStatus : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_RawIntTCStatus; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t RawIntErrorStatus : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_RawIntErrorStatus; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t EnabledChannels : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} DMA_EnbldChns; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t SoftBReq : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_SoftBReq; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t SoftSReq : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_SoftSReq; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t SoftLBReq : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_SoftLBReq; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t SoftLSReq : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_SoftLSReq; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t E : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t M : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} DMA_Top_Config; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t DMA_Sync : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_Sync; // @ 0x34
		uint8_t pad0[0xc8];
		union {
			uint32_t value;
			struct {
				uint32_t SrcAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C0SrcAddr; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t DstAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C0DstAddr; // @ 0x104
		union {
			uint32_t value;
			struct {
				uint32_t LLI : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C0LLI; // @ 0x108
		union {
			uint32_t value;
			struct {
				uint32_t TransferSize : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t SBSize : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t DBSize : 3; // @ 17 -- 15 # 0xfffc7fff
				uint32_t SWidth : 3; // @ 20 -- 18 # 0xffe3ffff
				uint32_t DWidth : 3; // @ 23 -- 21 # 0xff1fffff
				uint32_t SLargerD : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad0 : 1;
				uint32_t SI : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t DI : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t Prot : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t I : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DMA_C0Control; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t E : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t SrcPeripheral : 5; // @ 5 -- 1 # 0xffffffc1
				uint32_t DstPeripheral : 5; // @ 10 -- 6 # 0xfffff83f
				uint32_t FlowCntrl : 3; // @ 13 -- 11 # 0xffffc7ff
				uint32_t IE : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ITC : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t L : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t A : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t H : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad0 : 1;
				uint32_t LLICounter : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad1 : 2;
			};
		} DMA_C0Config; // @ 0x110
		uint8_t pad1[0xec];
		union {
			uint32_t value;
			struct {
				uint32_t SrcAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C1SrcAddr; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t DstAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C1DstAddr; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t LLI : 30; // @ 31 -- 2 # 0x3
			};
		} DMA_C1LLI; // @ 0x208
		union {
			uint32_t value;
			struct {
				uint32_t TransferSize : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t SBSize : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t DBSize : 3; // @ 17 -- 15 # 0xfffc7fff
				uint32_t SWidth : 3; // @ 20 -- 18 # 0xffe3ffff
				uint32_t DWidth : 3; // @ 23 -- 21 # 0xff1fffff
				uint32_t pad0 : 2;
				uint32_t SI : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t DI : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t Prot : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t I : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DMA_C1Control; // @ 0x20c
		union {
			uint32_t value;
			struct {
				uint32_t E : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t SrcPeripheral : 5; // @ 5 -- 1 # 0xffffffc1
				uint32_t DstPeripheral : 5; // @ 10 -- 6 # 0xfffff83f
				uint32_t FlowCntrl : 3; // @ 13 -- 11 # 0xffffc7ff
				uint32_t IE : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ITC : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t L : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t A : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t H : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad0 : 13;
			};
		} DMA_C1Config; // @ 0x210
		uint8_t pad2[0xec];
		union {
			uint32_t value;
			struct {
				uint32_t SrcAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C2SrcAddr; // @ 0x300
		union {
			uint32_t value;
			struct {
				uint32_t DstAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C2DstAddr; // @ 0x304
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t LLI : 30; // @ 31 -- 2 # 0x3
			};
		} DMA_C2LLI; // @ 0x308
		union {
			uint32_t value;
			struct {
				uint32_t TransferSize : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t SBSize : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t DBSize : 3; // @ 17 -- 15 # 0xfffc7fff
				uint32_t SWidth : 3; // @ 20 -- 18 # 0xffe3ffff
				uint32_t DWidth : 3; // @ 23 -- 21 # 0xff1fffff
				uint32_t pad0 : 2;
				uint32_t SI : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t DI : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t Prot : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t I : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DMA_C2Control; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t E : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t SrcPeripheral : 5; // @ 5 -- 1 # 0xffffffc1
				uint32_t DstPeripheral : 5; // @ 10 -- 6 # 0xfffff83f
				uint32_t FlowCntrl : 3; // @ 13 -- 11 # 0xffffc7ff
				uint32_t IE : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ITC : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t L : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t A : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t H : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad0 : 13;
			};
		} DMA_C2Config; // @ 0x310
		uint8_t pad3[0xec];
		union {
			uint32_t value;
			struct {
				uint32_t SrcAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C3SrcAddr; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t DstAddr : 32; // @ 31 -- 0 # 0x0
			};
		} DMA_C3DstAddr; // @ 0x404
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 2;
				uint32_t LLI : 30; // @ 31 -- 2 # 0x3
			};
		} DMA_C3LLI; // @ 0x408
		union {
			uint32_t value;
			struct {
				uint32_t TransferSize : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t SBSize : 3; // @ 14 -- 12 # 0xffff8fff
				uint32_t DBSize : 3; // @ 17 -- 15 # 0xfffc7fff
				uint32_t SWidth : 3; // @ 20 -- 18 # 0xffe3ffff
				uint32_t DWidth : 3; // @ 23 -- 21 # 0xff1fffff
				uint32_t pad0 : 2;
				uint32_t SI : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t DI : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t Prot : 3; // @ 30 -- 28 # 0x8fffffff
				uint32_t I : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DMA_C3Control; // @ 0x40c
		union {
			uint32_t value;
			struct {
				uint32_t E : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t SrcPeripheral : 5; // @ 5 -- 1 # 0xffffffc1
				uint32_t DstPeripheral : 5; // @ 10 -- 6 # 0xfffff83f
				uint32_t FlowCntrl : 3; // @ 13 -- 11 # 0xffffc7ff
				uint32_t IE : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ITC : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t L : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t A : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t H : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t pad0 : 13;
			};
		} DMA_C3Config; // @ 0x410
	};
} dma_regs;
#define DMA_BASE 0x4000c000
#define DMA ((dma_regs* volatile)(DMA_BASE))