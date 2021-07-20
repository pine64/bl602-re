typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t APP2EMB_TRIGGER : 32; // @ 0x1f -- 0x0 
			};
		} APP2EMB_TRIGGER; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t EMB2APP_RAWSTATUS : 32; // @ 0x1f -- 0x0 
			};
		} EMB2APP_RAWSTATUS; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t EMB2APP_ACK : 32; // @ 0x1f -- 0x0 
			};
		} EMB2APP_ACK; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t EMB2APP_UNMASK : 32; // @ 0x1f -- 0x0 
			};
		} EMB2APP_UNMASK_SET; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t EMB2APP_UNMASK : 32; // @ 0x1f -- 0x0 
			};
		} EMB2APP_UNMASK_CLEAR; // @ 0x10
		uint8_t pad0[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t EMB2APP_STATUS : 32; // @ 0x1f -- 0x0 
			};
		} EMB2APP_STATUS; // @ 0x1c
		uint8_t pad1[0x20];
		union {
			uint32_t value;
			struct {
				uint32_t APP_SIGNATURE : 32; // @ 0x1f -- 0x0 
			};
		} APP_SIGNATURE; // @ 0x40
	};
} ipc_regs;
#define IPC_BASE 0x44800000
#define IPC ((ipc_regs* volatile)(IPC_BASE))