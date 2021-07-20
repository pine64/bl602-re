typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t nextTBTT : 16; // @ 0xf -- 0x0 
			};
		} Definitions; // @ 0x40
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t wakeUpSW : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 30;
				uint32_t wakeUpFromDoze : 1; // @ 0x1f -- 0x1f 
			};
		} Returns; // @ 0x48
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t softReset : 1; // @ 0x0 -- 0x0 
			};
		} Returns; // @ 0x50
		uint8_t pad3[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0x0 -- 0x0 
				uint32_t impSecTBTT : 1; // @ 0x1 -- 0x1 
				uint32_t idleInterrupt : 1; // @ 0x2 -- 0x2 
				uint32_t absGenTimers : 1; // @ 0x3 -- 0x3 
				uint32_t pad0 : 1;
				uint32_t coexEvent : 1; // @ 0x5 -- 0x5 
				uint32_t macPHYIFOverflow : 1; // @ 0x6 -- 0x6 
				uint32_t rxDMAEmpty : 1; // @ 0x7 -- 0x7 
				uint32_t rxFIFOOverFlow : 1; // @ 0x8 -- 0x8 
				uint32_t olbcOFDM : 1; // @ 0x9 -- 0x9 
				uint32_t olbcDSSS : 1; // @ 0xa -- 0xa 
				uint32_t timSet : 1; // @ 0xb -- 0xb 
				uint32_t ptError : 1; // @ 0xc -- 0xc 
				uint32_t ac0TxDMADead : 1; // @ 0xd -- 0xd 
				uint32_t ac1TxDMADead : 1; // @ 0xe -- 0xe 
				uint32_t ac2TxDMADead : 1; // @ 0xf -- 0xf 
				uint32_t ac3TxDMADead : 1; // @ 0x10 -- 0x10 
				uint32_t bcnTxDMADead : 1; // @ 0x11 -- 0x11 
				uint32_t impPriDTIM : 1; // @ 0x12 -- 0x12 
				uint32_t impSecDTIM : 1; // @ 0x13 -- 0x13 
				uint32_t hwErr : 1; // @ 0x14 -- 0x14 
				uint32_t macPHYIFUnderRun : 1; // @ 0x15 -- 0x15 
				uint32_t phyErr : 1; // @ 0x16 -- 0x16 
				uint32_t phyRxStart : 1; // @ 0x17 -- 0x17 
				uint32_t rxHeaderDMADead : 1; // @ 0x18 -- 0x18 
				uint32_t rxPayloadDMADead : 1; // @ 0x19 -- 0x19 
			};
		} Returns; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0x0 -- 0x0 
				uint32_t impSecTBTT : 1; // @ 0x1 -- 0x1 
				uint32_t idleInterrupt : 1; // @ 0x2 -- 0x2 
				uint32_t pad0 : 2;
				uint32_t coexEvent : 1; // @ 0x5 -- 0x5 
				uint32_t macPHYIFOverflow : 1; // @ 0x6 -- 0x6 
				uint32_t rxDMAEmpty : 1; // @ 0x7 -- 0x7 
				uint32_t rxFIFOOverFlow : 1; // @ 0x8 -- 0x8 
				uint32_t olbcOFDM : 1; // @ 0x9 -- 0x9 
				uint32_t olbcDSSS : 1; // @ 0xa -- 0xa 
				uint32_t timSet : 1; // @ 0xb -- 0xb 
				uint32_t ptError : 1; // @ 0xc -- 0xc 
				uint32_t ac0TxDMADead : 1; // @ 0xd -- 0xd 
				uint32_t ac1TxDMADead : 1; // @ 0xe -- 0xe 
				uint32_t ac2TxDMADead : 1; // @ 0xf -- 0xf 
				uint32_t ac3TxDMADead : 1; // @ 0x10 -- 0x10 
				uint32_t bcnTxDMADead : 1; // @ 0x11 -- 0x11 
				uint32_t impPriDTIM : 1; // @ 0x12 -- 0x12 
				uint32_t impSecDTIM : 1; // @ 0x13 -- 0x13 
				uint32_t hwErr : 1; // @ 0x14 -- 0x14 
				uint32_t macPHYIFUnderRun : 1; // @ 0x15 -- 0x15 
				uint32_t phyErr : 1; // @ 0x16 -- 0x16 
				uint32_t phyRxStart : 1; // @ 0x17 -- 0x17 
				uint32_t rxHeaderDMADead : 1; // @ 0x18 -- 0x18 
				uint32_t rxPayloadDMADead : 1; // @ 0x19 -- 0x19 
			};
		} Returns; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0x0 -- 0x0 
				uint32_t impSecTBTT : 1; // @ 0x1 -- 0x1 
				uint32_t idleInterrupt : 1; // @ 0x2 -- 0x2 
				uint32_t absGenTimers : 1; // @ 0x3 -- 0x3 
				uint32_t pad0 : 1;
				uint32_t coexEvent : 1; // @ 0x5 -- 0x5 
				uint32_t macPHYIFOverflow : 1; // @ 0x6 -- 0x6 
				uint32_t rxDMAEmpty : 1; // @ 0x7 -- 0x7 
				uint32_t rxFIFOOverFlow : 1; // @ 0x8 -- 0x8 
				uint32_t olbcOFDM : 1; // @ 0x9 -- 0x9 
				uint32_t olbcDSSS : 1; // @ 0xa -- 0xa 
				uint32_t timSet : 1; // @ 0xb -- 0xb 
				uint32_t ptError : 1; // @ 0xc -- 0xc 
				uint32_t ac0TxDMADead : 1; // @ 0xd -- 0xd 
				uint32_t ac1TxDMADead : 1; // @ 0xe -- 0xe 
				uint32_t ac2TxDMADead : 1; // @ 0xf -- 0xf 
				uint32_t ac3TxDMADead : 1; // @ 0x10 -- 0x10 
				uint32_t bcnTxDMADead : 1; // @ 0x11 -- 0x11 
				uint32_t impPriDTIM : 1; // @ 0x12 -- 0x12 
				uint32_t impSecDTIM : 1; // @ 0x13 -- 0x13 
				uint32_t hwErr : 1; // @ 0x14 -- 0x14 
				uint32_t macPHYIFUnderRun : 1; // @ 0x15 -- 0x15 
				uint32_t phyErr : 1; // @ 0x16 -- 0x16 
				uint32_t phyRxStart : 1; // @ 0x17 -- 0x17 
				uint32_t rxHeaderDMADead : 1; // @ 0x18 -- 0x18 
				uint32_t rxPayloadDMADead : 1; // @ 0x19 -- 0x19 
				uint32_t pad1 : 5;
				uint32_t masterGenIntEn : 1; // @ 0x1f -- 0x1f 
			};
		} Sets; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t ac1ProtTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t ac2ProtTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t ac3ProtTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t hccaProtTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t rdProtTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t ac0TxTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t ac1TxTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t ac2TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t ac3TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t bcnTxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t hccaTxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t rdTxTrigger : 1; // @ 0xc -- 0xc 
				uint32_t txopComplete : 1; // @ 0xd -- 0xd 
				uint32_t timerTxTrigger : 1; // @ 0xe -- 0xe 
				uint32_t secUserTxTrigger : 1; // @ 0xf -- 0xf 
				uint32_t rxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t timerRxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t baRxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t counterRxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t ac0BWDropTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t ac1BWDropTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t ac2BWDropTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t ac3BWDropTrigger : 1; // @ 0x17 -- 0x17 
				uint32_t ac0TxBufTrigger : 1; // @ 0x18 -- 0x18 
				uint32_t ac1TxBufTrigger : 1; // @ 0x19 -- 0x19 
				uint32_t ac2TxBufTrigger : 1; // @ 0x1a -- 0x1a 
				uint32_t ac3TxBufTrigger : 1; // @ 0x1b -- 0x1b 
				uint32_t bcnTxBufTrigger : 1; // @ 0x1c -- 0x1c 
			};
		} Returns; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t ac1ProtTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t ac2ProtTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t ac3ProtTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t hccaProtTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t rdProtTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t ac0TxTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t ac1TxTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t ac2TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t ac3TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t bcnTxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t hccaTxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t rdTxTrigger : 1; // @ 0xc -- 0xc 
				uint32_t txopComplete : 1; // @ 0xd -- 0xd 
				uint32_t timerTxTrigger : 1; // @ 0xe -- 0xe 
				uint32_t pad0 : 1;
				uint32_t rxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t timerRxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t baRxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t counterRxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t ac0BWDropTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t ac1BWDropTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t ac2BWDropTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t ac3BWDropTrigger : 1; // @ 0x17 -- 0x17 
				uint32_t ac0TxBufTrigger : 1; // @ 0x18 -- 0x18 
				uint32_t ac1TxBufTrigger : 1; // @ 0x19 -- 0x19 
				uint32_t ac2TxBufTrigger : 1; // @ 0x1a -- 0x1a 
				uint32_t ac3TxBufTrigger : 1; // @ 0x1b -- 0x1b 
				uint32_t bcnTxBufTrigger : 1; // @ 0x1c -- 0x1c 
			};
		} Returns; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t ac1ProtTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t ac2ProtTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t ac3ProtTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t hccaProtTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t rdProtTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t ac0TxTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t ac1TxTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t ac2TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t ac3TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t bcnTxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t hccaTxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t rdTxTrigger : 1; // @ 0xc -- 0xc 
				uint32_t txopComplete : 1; // @ 0xd -- 0xd 
				uint32_t timerTxTrigger : 1; // @ 0xe -- 0xe 
				uint32_t secUserTxTrigger : 1; // @ 0xf -- 0xf 
				uint32_t rxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t timerRxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t baRxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t counterRxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t ac0BWDropTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t ac1BWDropTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t ac2BWDropTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t ac3BWDropTrigger : 1; // @ 0x17 -- 0x17 
				uint32_t ac0TxBufTrigger : 1; // @ 0x18 -- 0x18 
				uint32_t ac1TxBufTrigger : 1; // @ 0x19 -- 0x19 
				uint32_t ac2TxBufTrigger : 1; // @ 0x1a -- 0x1a 
				uint32_t ac3TxBufTrigger : 1; // @ 0x1b -- 0x1b 
				uint32_t bcnTxBufTrigger : 1; // @ 0x1c -- 0x1c 
				uint32_t pad0 : 2;
				uint32_t masterTxRxIntEn : 1; // @ 0x1f -- 0x1f 
			};
		} Sets; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t absTimers0 : 1; // @ 0x0 -- 0x0 
				uint32_t absTimers1 : 1; // @ 0x1 -- 0x1 
				uint32_t absTimers2 : 1; // @ 0x2 -- 0x2 
				uint32_t absTimers3 : 1; // @ 0x3 -- 0x3 
				uint32_t absTimers4 : 1; // @ 0x4 -- 0x4 
				uint32_t absTimers5 : 1; // @ 0x5 -- 0x5 
				uint32_t absTimers6 : 1; // @ 0x6 -- 0x6 
				uint32_t absTimers7 : 1; // @ 0x7 -- 0x7 
				uint32_t absTimers8 : 1; // @ 0x8 -- 0x8 
				uint32_t absTimers9 : 1; // @ 0x9 -- 0x9 
			};
		} Returns; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t absTimers0 : 1; // @ 0x0 -- 0x0 
				uint32_t absTimers1 : 1; // @ 0x1 -- 0x1 
				uint32_t absTimers2 : 1; // @ 0x2 -- 0x2 
				uint32_t absTimers3 : 1; // @ 0x3 -- 0x3 
				uint32_t absTimers4 : 1; // @ 0x4 -- 0x4 
				uint32_t absTimers5 : 1; // @ 0x5 -- 0x5 
				uint32_t absTimers6 : 1; // @ 0x6 -- 0x6 
				uint32_t absTimers7 : 1; // @ 0x7 -- 0x7 
				uint32_t absTimers8 : 1; // @ 0x8 -- 0x8 
				uint32_t absTimers9 : 1; // @ 0x9 -- 0x9 
			};
		} Returns; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t maskabsTimers0 : 1; // @ 0x0 -- 0x0 
				uint32_t maskabsTimers1 : 1; // @ 0x1 -- 0x1 
				uint32_t maskabsTimers2 : 1; // @ 0x2 -- 0x2 
				uint32_t maskabsTimers3 : 1; // @ 0x3 -- 0x3 
				uint32_t maskabsTimers4 : 1; // @ 0x4 -- 0x4 
				uint32_t maskabsTimers5 : 1; // @ 0x5 -- 0x5 
				uint32_t maskabsTimers6 : 1; // @ 0x6 -- 0x6 
				uint32_t maskabsTimers7 : 1; // @ 0x7 -- 0x7 
				uint32_t maskabsTimers8 : 1; // @ 0x8 -- 0x8 
				uint32_t maskabsTimers9 : 1; // @ 0x9 -- 0x9 
			};
		} Sets; // @ 0x8c
		uint8_t pad4[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t tsfTimerLow : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t tsfTimerHigh : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0xa8
		uint8_t pad5[0xb4];
		union {
			uint32_t value;
			struct {
				uint32_t ppduLength : 20; // @ 0x13 -- 0x0 
				uint32_t pad0 : 2;
				uint32_t ppduBW : 2; // @ 0x17 -- 0x16 
				uint32_t ppduPreType : 3; // @ 0x1a -- 0x18 
				uint32_t ppduShortGI : 1; // @ 0x1b -- 0x1b 
				uint32_t ppduNumExtnSS : 2; // @ 0x1d -- 0x1c 
				uint32_t ppduSTBC : 2; // @ 0x1f -- 0x1e 
			};
		} Returns; // @ 0x160
		union {
			uint32_t value;
			struct {
				uint32_t ppduMCSIndex : 7; // @ 0x6 -- 0x0 
			};
		} Returns; // @ 0x164
		union {
			uint32_t value;
			struct {
				uint32_t timeOnAir : 16; // @ 0xf -- 0x0 
				uint32_t pad0 : 14;
				uint32_t timeOnAirValid : 1; // @ 0x1e -- 0x1e 
				uint32_t computeDuration : 1; // @ 0x1f -- 0x1f 
			};
		} Returns; // @ 0x168
		uint8_t pad6[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t txBcnNewTail : 1; // @ 0x0 -- 0x0 
				uint32_t txAC0NewTail : 1; // @ 0x1 -- 0x1 
				uint32_t txAC1NewTail : 1; // @ 0x2 -- 0x2 
				uint32_t txAC2NewTail : 1; // @ 0x3 -- 0x3 
				uint32_t txAC3NewTail : 1; // @ 0x4 -- 0x4 
				uint32_t pad0 : 3;
				uint32_t txBcnNewHead : 1; // @ 0x8 -- 0x8 
				uint32_t txAC0NewHead : 1; // @ 0x9 -- 0x9 
				uint32_t txAC1NewHead : 1; // @ 0xa -- 0xa 
				uint32_t txAC2NewHead : 1; // @ 0xb -- 0xb 
				uint32_t txAC3NewHead : 1; // @ 0xc -- 0xc 
				uint32_t pad1 : 2;
				uint32_t haltBcnAfterTXOP : 1; // @ 0xf -- 0xf 
				uint32_t haltAC0AfterTXOP : 1; // @ 0x10 -- 0x10 
				uint32_t haltAC1AfterTXOP : 1; // @ 0x11 -- 0x11 
				uint32_t haltAC2AfterTXOP : 1; // @ 0x12 -- 0x12 
				uint32_t haltAC3AfterTXOP : 1; // @ 0x13 -- 0x13 
				uint32_t pad2 : 4;
				uint32_t rxHeaderNewTail : 1; // @ 0x18 -- 0x18 
				uint32_t rxPayloadNewTail : 1; // @ 0x19 -- 0x19 
				uint32_t rxHeaderNewHead : 1; // @ 0x1a -- 0x1a 
				uint32_t rxPayloadNewHead : 1; // @ 0x1b -- 0x1b 
			};
		} Returns; // @ 0x180
		union {
			uint32_t value;
			struct {
				uint32_t txBcnNewTail : 1; // @ 0x0 -- 0x0 
				uint32_t txAC0NewTail : 1; // @ 0x1 -- 0x1 
				uint32_t txAC1NewTail : 1; // @ 0x2 -- 0x2 
				uint32_t txAC2NewTail : 1; // @ 0x3 -- 0x3 
				uint32_t txAC3NewTail : 1; // @ 0x4 -- 0x4 
				uint32_t pad0 : 3;
				uint32_t txBcnNewHead : 1; // @ 0x8 -- 0x8 
				uint32_t txAC0NewHead : 1; // @ 0x9 -- 0x9 
				uint32_t txAC1NewHead : 1; // @ 0xa -- 0xa 
				uint32_t txAC2NewHead : 1; // @ 0xb -- 0xb 
				uint32_t txAC3NewHead : 1; // @ 0xc -- 0xc 
				uint32_t pad1 : 2;
				uint32_t haltBcnAfterTXOP : 1; // @ 0xf -- 0xf 
				uint32_t haltAC0AfterTXOP : 1; // @ 0x10 -- 0x10 
				uint32_t haltAC1AfterTXOP : 1; // @ 0x11 -- 0x11 
				uint32_t haltAC2AfterTXOP : 1; // @ 0x12 -- 0x12 
				uint32_t haltAC3AfterTXOP : 1; // @ 0x13 -- 0x13 
				uint32_t pad2 : 4;
				uint32_t rxHeaderNewTail : 1; // @ 0x18 -- 0x18 
				uint32_t rxPayloadNewTail : 1; // @ 0x19 -- 0x19 
				uint32_t rxHeaderNewHead : 1; // @ 0x1a -- 0x1a 
				uint32_t rxPayloadNewHead : 1; // @ 0x1b -- 0x1b 
			};
		} Returns; // @ 0x184
		union {
			uint32_t value;
			struct {
				uint32_t txBcnState : 2; // @ 0x1 -- 0x0 
				uint32_t pad0 : 2;
				uint32_t txAC0State : 2; // @ 0x5 -- 0x4 
				uint32_t pad1 : 2;
				uint32_t txAC1State : 2; // @ 0x9 -- 0x8 
				uint32_t pad2 : 2;
				uint32_t txAC2State : 2; // @ 0xd -- 0xc 
				uint32_t pad3 : 2;
				uint32_t txAC3State : 2; // @ 0x11 -- 0x10 
				uint32_t pad4 : 6;
				uint32_t rxHeaderState : 2; // @ 0x19 -- 0x18 
				uint32_t pad5 : 2;
				uint32_t rxPayloadState : 2; // @ 0x1d -- 0x1c 
			};
		} Sets; // @ 0x188
		union {
			uint32_t value;
			struct {
				uint32_t txBcnLenMismatch : 1; // @ 0x0 -- 0x0 
				uint32_t txAC0LenMismatch : 1; // @ 0x1 -- 0x1 
				uint32_t txAC1LenMismatch : 1; // @ 0x2 -- 0x2 
				uint32_t txAC2LenMismatch : 1; // @ 0x3 -- 0x3 
				uint32_t txAC3LenMismatch : 1; // @ 0x4 -- 0x4 
				uint32_t txBcnUPatternErr : 1; // @ 0x5 -- 0x5 
				uint32_t txAC0UPatternErr : 1; // @ 0x6 -- 0x6 
				uint32_t txAC1UPatternErr : 1; // @ 0x7 -- 0x7 
				uint32_t txAC2UPatternErr : 1; // @ 0x8 -- 0x8 
				uint32_t txAC3UPatternErr : 1; // @ 0x9 -- 0x9 
				uint32_t txBcnNextPointerErr : 1; // @ 0xa -- 0xa 
				uint32_t txAC0NextPointerErr : 1; // @ 0xb -- 0xb 
				uint32_t txAC1NextPointerErr : 1; // @ 0xc -- 0xc 
				uint32_t txAC2NextPointerErr : 1; // @ 0xd -- 0xd 
				uint32_t txAC3NextPointerErr : 1; // @ 0xe -- 0xe 
				uint32_t txBcnPTAddressErr : 1; // @ 0xf -- 0xf 
				uint32_t txAC0PTAddressErr : 1; // @ 0x10 -- 0x10 
				uint32_t txAC1PTAddressErr : 1; // @ 0x11 -- 0x11 
				uint32_t txAC2PTAddressErr : 1; // @ 0x12 -- 0x12 
				uint32_t txAC3PTAddressErr : 1; // @ 0x13 -- 0x13 
				uint32_t txBcnBusErr : 1; // @ 0x14 -- 0x14 
				uint32_t txAC0BusErr : 1; // @ 0x15 -- 0x15 
				uint32_t txAC1BusErr : 1; // @ 0x16 -- 0x16 
				uint32_t txAC2BusErr : 1; // @ 0x17 -- 0x17 
				uint32_t txAC3BusErr : 1; // @ 0x18 -- 0x18 
				uint32_t txBcnNewHeadErr : 1; // @ 0x19 -- 0x19 
				uint32_t txAC0NewHeadErr : 1; // @ 0x1a -- 0x1a 
				uint32_t txAC1NewHeadErr : 1; // @ 0x1b -- 0x1b 
				uint32_t txAC2NewHeadErr : 1; // @ 0x1c -- 0x1c 
				uint32_t txAC3NewHeadErr : 1; // @ 0x1d -- 0x1d 
			};
		} Returns; // @ 0x18c
		union {
			uint32_t value;
			struct {
				uint32_t rxHdrUPatternErr : 1; // @ 0x0 -- 0x0 
				uint32_t rxPayUPatternErr : 1; // @ 0x1 -- 0x1 
				uint32_t rxHdrNextPointerErr : 1; // @ 0x2 -- 0x2 
				uint32_t rxPayNextPointerErr : 1; // @ 0x3 -- 0x3 
				uint32_t rxHdrBusErr : 1; // @ 0x4 -- 0x4 
				uint32_t rxPayBusErr : 1; // @ 0x5 -- 0x5 
				uint32_t rxHdrNewHeadErr : 1; // @ 0x6 -- 0x6 
				uint32_t rxPayNewHeadErr : 1; // @ 0x7 -- 0x7 
			};
		} Returns; // @ 0x190
		union {
			uint32_t value;
			struct {
				uint32_t txBcnStartup : 1; // @ 0x0 -- 0x0 
				uint32_t txAC0Startup : 1; // @ 0x1 -- 0x1 
				uint32_t txAC1Startup : 1; // @ 0x2 -- 0x2 
				uint32_t txAC2Startup : 1; // @ 0x3 -- 0x3 
				uint32_t txAC3Startup : 1; // @ 0x4 -- 0x4 
				uint32_t txBcnEndQ : 1; // @ 0x5 -- 0x5 
				uint32_t txAC0EndQ : 1; // @ 0x6 -- 0x6 
				uint32_t txAC1EndQ : 1; // @ 0x7 -- 0x7 
				uint32_t txAC2EndQ : 1; // @ 0x8 -- 0x8 
				uint32_t txAC3EndQ : 1; // @ 0x9 -- 0x9 
				uint32_t txBcnHaltAfterTXOP : 1; // @ 0xa -- 0xa 
				uint32_t txAC0HaltAfterTXOP : 1; // @ 0xb -- 0xb 
				uint32_t txAC1HaltAfterTXOP : 1; // @ 0xc -- 0xc 
				uint32_t txAC2HaltAfterTXOP : 1; // @ 0xd -- 0xd 
				uint32_t txAC3HaltAfterTXOP : 1; // @ 0xe -- 0xe 
			};
		} Returns; // @ 0x194
		union {
			uint32_t value;
			struct {
				uint32_t txBcnHeadPtr : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x198
		union {
			uint32_t value;
			struct {
				uint32_t txAC0HeadPtr : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x19c
		union {
			uint32_t value;
			struct {
				uint32_t txAC1HeadPtr : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x1a0
		union {
			uint32_t value;
			struct {
				uint32_t txAC2HeadPtr : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x1a4
		union {
			uint32_t value;
			struct {
				uint32_t txAC3HeadPtr : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x1a8
		union {
			uint32_t value;
			struct {
				uint32_t ptEntrySize : 6; // @ 0x5 -- 0x0 
				uint32_t dmaTHDSize : 6; // @ 0xb -- 0x6 
				uint32_t dmaTBDSize : 6; // @ 0x11 -- 0xc 
				uint32_t dmaRHDSize : 6; // @ 0x17 -- 0x12 
				uint32_t dmaRBDSize : 6; // @ 0x1d -- 0x18 
			};
		} Returns; // @ 0x1ac
		uint8_t pad7[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t rxHeaderHeadPtrValid : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 1;
				uint32_t rxHeaderHeadPtr : 30; // @ 0x1f -- 0x2 
			};
		} Returns; // @ 0x1b8
		union {
			uint32_t value;
			struct {
				uint32_t rxPayloadHeadPtrValid : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 1;
				uint32_t rxPayloadHeadPtr : 30; // @ 0x1f -- 0x2 
			};
		} Returns; // @ 0x1bc
		union {
			uint32_t value;
			struct {
				uint32_t txFIFOThreshold : 8; // @ 0x7 -- 0x0 
				uint32_t pad0 : 8;
				uint32_t rxFIFOThreshold : 8; // @ 0x17 -- 0x10 
			};
		} Returns; // @ 0x1c0
		uint8_t pad8[0x4c];
		union {
			uint32_t value;
			struct {
				uint32_t ac0HasData : 1; // @ 0x0 -- 0x0 
				uint32_t ac1HasData : 1; // @ 0x1 -- 0x1 
				uint32_t ac2HasData : 1; // @ 0x2 -- 0x2 
				uint32_t ac3HasData : 1; // @ 0x3 -- 0x3 
			};
		} Returns; // @ 0x210
		union {
			uint32_t value;
			struct {
				uint32_t ac0HasData : 1; // @ 0x0 -- 0x0 
				uint32_t ac1HasData : 1; // @ 0x1 -- 0x1 
				uint32_t ac2HasData : 1; // @ 0x2 -- 0x2 
				uint32_t ac3HasData : 1; // @ 0x3 -- 0x3 
			};
		} Returns; // @ 0x214
		uint8_t pad9[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t ac0MOT : 16; // @ 0xf -- 0x0 
				uint32_t ac1MOT : 16; // @ 0x1f -- 0x10 
			};
		} Sets; // @ 0x228
		union {
			uint32_t value;
			struct {
				uint32_t ac2MOT : 16; // @ 0xf -- 0x0 
				uint32_t ac3MOT : 16; // @ 0x1f -- 0x10 
			};
		} Returns; // @ 0x22c
		union {
			uint32_t value;
			struct {
				uint32_t hccaQAPMOT : 16; // @ 0xf -- 0x0 
				uint32_t miscMOT : 16; // @ 0x1f -- 0x10 
			};
		} Returns; // @ 0x230
		uint8_t pad10[0xfc];
		union {
			uint32_t value;
			struct {
				uint32_t txBWAfterDrop : 2; // @ 0x1 -- 0x0 
			};
		} Returns; // @ 0x330
		uint8_t pad11[0x30];
		union {
			uint32_t value;
			struct {
				uint32_t secU1ac0TxTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t secU1ac1TxTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t secU1ac2TxTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t secU1ac3TxTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t secU1ac0TxBufTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t secU1ac1TxBufTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t secU1ac2TxBufTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t secU1ac3TxBufTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t secU2ac0TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t secU2ac1TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t secU2ac2TxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t secU2ac3TxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t secU2ac0TxBufTrigger : 1; // @ 0xc -- 0xc 
				uint32_t secU2ac1TxBufTrigger : 1; // @ 0xd -- 0xd 
				uint32_t secU2ac2TxBufTrigger : 1; // @ 0xe -- 0xe 
				uint32_t secU2ac3TxBufTrigger : 1; // @ 0xf -- 0xf 
				uint32_t secU3ac0TxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t secU3ac1TxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t secU3ac2TxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t secU3ac3TxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t secU3ac0TxBufTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t secU3ac1TxBufTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t secU3ac2TxBufTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t secU3ac3TxBufTrigger : 1; // @ 0x17 -- 0x17 
			};
		} Returns; // @ 0x364
		union {
			uint32_t value;
			struct {
				uint32_t secU1ac0TxTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t secU1ac1TxTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t secU1ac2TxTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t secU1ac3TxTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t secU1ac0TxBufTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t secU1ac1TxBufTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t secU1ac2TxBufTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t secU1ac3TxBufTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t secU2ac0TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t secU2ac1TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t secU2ac2TxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t secU2ac3TxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t secU2ac0TxBufTrigger : 1; // @ 0xc -- 0xc 
				uint32_t secU2ac1TxBufTrigger : 1; // @ 0xd -- 0xd 
				uint32_t secU2ac2TxBufTrigger : 1; // @ 0xe -- 0xe 
				uint32_t secU2ac3TxBufTrigger : 1; // @ 0xf -- 0xf 
				uint32_t secU3ac0TxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t secU3ac1TxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t secU3ac2TxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t secU3ac3TxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t secU3ac0TxBufTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t secU3ac1TxBufTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t secU3ac2TxBufTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t secU3ac3TxBufTrigger : 1; // @ 0x17 -- 0x17 
			};
		} Returns; // @ 0x368
		union {
			uint32_t value;
			struct {
				uint32_t masksecU1ac0TxTrigger : 1; // @ 0x0 -- 0x0 
				uint32_t masksecU1ac1TxTrigger : 1; // @ 0x1 -- 0x1 
				uint32_t masksecU1ac2TxTrigger : 1; // @ 0x2 -- 0x2 
				uint32_t masksecU1ac3TxTrigger : 1; // @ 0x3 -- 0x3 
				uint32_t masksecU1ac0TxBufTrigger : 1; // @ 0x4 -- 0x4 
				uint32_t masksecU1ac1TxBufTrigger : 1; // @ 0x5 -- 0x5 
				uint32_t masksecU1ac2TxBufTrigger : 1; // @ 0x6 -- 0x6 
				uint32_t masksecU1ac3TxBufTrigger : 1; // @ 0x7 -- 0x7 
				uint32_t masksecU2ac0TxTrigger : 1; // @ 0x8 -- 0x8 
				uint32_t masksecU2ac1TxTrigger : 1; // @ 0x9 -- 0x9 
				uint32_t masksecU2ac2TxTrigger : 1; // @ 0xa -- 0xa 
				uint32_t masksecU2ac3TxTrigger : 1; // @ 0xb -- 0xb 
				uint32_t masksecU2ac0TxBufTrigger : 1; // @ 0xc -- 0xc 
				uint32_t masksecU2ac1TxBufTrigger : 1; // @ 0xd -- 0xd 
				uint32_t masksecU2ac2TxBufTrigger : 1; // @ 0xe -- 0xe 
				uint32_t masksecU2ac3TxBufTrigger : 1; // @ 0xf -- 0xf 
				uint32_t masksecU3ac0TxTrigger : 1; // @ 0x10 -- 0x10 
				uint32_t masksecU3ac1TxTrigger : 1; // @ 0x11 -- 0x11 
				uint32_t masksecU3ac2TxTrigger : 1; // @ 0x12 -- 0x12 
				uint32_t masksecU3ac3TxTrigger : 1; // @ 0x13 -- 0x13 
				uint32_t masksecU3ac0TxBufTrigger : 1; // @ 0x14 -- 0x14 
				uint32_t masksecU3ac1TxBufTrigger : 1; // @ 0x15 -- 0x15 
				uint32_t masksecU3ac2TxBufTrigger : 1; // @ 0x16 -- 0x16 
				uint32_t masksecU3ac3TxBufTrigger : 1; // @ 0x17 -- 0x17 
				uint32_t pad0 : 7;
				uint32_t masterSecUsersTxIntEn : 1; // @ 0x1f -- 0x1f 
			};
		} Sets; // @ 0x36c
		uint8_t pad12[0x1b4];
		union {
			uint32_t value;
			struct {
				uint32_t bcnStatusPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x524
		union {
			uint32_t value;
			struct {
				uint32_t ac0StatusPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x528
		union {
			uint32_t value;
			struct {
				uint32_t ac1StatusPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x52c
		union {
			uint32_t value;
			struct {
				uint32_t ac2StatusPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x530
		union {
			uint32_t value;
			struct {
				uint32_t ac3StatusPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x534
		uint8_t pad13[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t txCurrentPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x540
		union {
			uint32_t value;
			struct {
				uint32_t rxPayStatPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x544
		union {
			uint32_t value;
			struct {
				uint32_t rxHdrStatPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x548
		union {
			uint32_t value;
			struct {
				uint32_t rxPayCurrentPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x54c
		uint8_t pad14[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t swProf0 : 1; // @ 0x0 -- 0x0 
				uint32_t swProf1 : 1; // @ 0x1 -- 0x1 
				uint32_t swProf2 : 1; // @ 0x2 -- 0x2 
				uint32_t swProf3 : 1; // @ 0x3 -- 0x3 
				uint32_t swProf4 : 1; // @ 0x4 -- 0x4 
				uint32_t swProf5 : 1; // @ 0x5 -- 0x5 
				uint32_t swProf6 : 1; // @ 0x6 -- 0x6 
				uint32_t swProf7 : 1; // @ 0x7 -- 0x7 
				uint32_t swProf8 : 1; // @ 0x8 -- 0x8 
				uint32_t swProf9 : 1; // @ 0x9 -- 0x9 
				uint32_t swProf10 : 1; // @ 0xa -- 0xa 
				uint32_t swProf11 : 1; // @ 0xb -- 0xb 
				uint32_t swProf12 : 1; // @ 0xc -- 0xc 
				uint32_t swProf13 : 1; // @ 0xd -- 0xd 
				uint32_t swProf14 : 1; // @ 0xe -- 0xe 
				uint32_t swProf15 : 1; // @ 0xf -- 0xf 
				uint32_t swProf16 : 1; // @ 0x10 -- 0x10 
				uint32_t swProf17 : 1; // @ 0x11 -- 0x11 
				uint32_t swProf18 : 1; // @ 0x12 -- 0x12 
				uint32_t swProf19 : 1; // @ 0x13 -- 0x13 
				uint32_t swProf20 : 1; // @ 0x14 -- 0x14 
				uint32_t swProf21 : 1; // @ 0x15 -- 0x15 
				uint32_t swProf22 : 1; // @ 0x16 -- 0x16 
				uint32_t swProf23 : 1; // @ 0x17 -- 0x17 
				uint32_t swProf24 : 1; // @ 0x18 -- 0x18 
				uint32_t swProf25 : 1; // @ 0x19 -- 0x19 
				uint32_t swProf26 : 1; // @ 0x1a -- 0x1a 
				uint32_t swProf27 : 1; // @ 0x1b -- 0x1b 
				uint32_t swProf28 : 1; // @ 0x1c -- 0x1c 
				uint32_t swProf29 : 1; // @ 0x1d -- 0x1d 
				uint32_t swProf30 : 1; // @ 0x1e -- 0x1e 
				uint32_t swProf31 : 1; // @ 0x1f -- 0x1f 
			};
		} Returns; // @ 0x560
		union {
			uint32_t value;
			struct {
				uint32_t swSetProf0 : 1; // @ 0x0 -- 0x0 
				uint32_t swSetProf1 : 1; // @ 0x1 -- 0x1 
				uint32_t swSetProf2 : 1; // @ 0x2 -- 0x2 
				uint32_t swSetProf3 : 1; // @ 0x3 -- 0x3 
				uint32_t swSetProf4 : 1; // @ 0x4 -- 0x4 
				uint32_t swSetProf5 : 1; // @ 0x5 -- 0x5 
				uint32_t swSetProf6 : 1; // @ 0x6 -- 0x6 
				uint32_t swSetProf7 : 1; // @ 0x7 -- 0x7 
				uint32_t swSetProf8 : 1; // @ 0x8 -- 0x8 
				uint32_t swSetProf9 : 1; // @ 0x9 -- 0x9 
				uint32_t swSetProf10 : 1; // @ 0xa -- 0xa 
				uint32_t swSetProf11 : 1; // @ 0xb -- 0xb 
				uint32_t swSetProf12 : 1; // @ 0xc -- 0xc 
				uint32_t swSetProf13 : 1; // @ 0xd -- 0xd 
				uint32_t swSetProf14 : 1; // @ 0xe -- 0xe 
				uint32_t swSetProf15 : 1; // @ 0xf -- 0xf 
				uint32_t swSetProf16 : 1; // @ 0x10 -- 0x10 
				uint32_t swSetProf17 : 1; // @ 0x11 -- 0x11 
				uint32_t swSetProf18 : 1; // @ 0x12 -- 0x12 
				uint32_t swSetProf19 : 1; // @ 0x13 -- 0x13 
				uint32_t swSetProf20 : 1; // @ 0x14 -- 0x14 
				uint32_t swSetProf21 : 1; // @ 0x15 -- 0x15 
				uint32_t swSetProf22 : 1; // @ 0x16 -- 0x16 
				uint32_t swSetProf23 : 1; // @ 0x17 -- 0x17 
				uint32_t swSetProf24 : 1; // @ 0x18 -- 0x18 
				uint32_t swSetProf25 : 1; // @ 0x19 -- 0x19 
				uint32_t swSetProf26 : 1; // @ 0x1a -- 0x1a 
				uint32_t swSetProf27 : 1; // @ 0x1b -- 0x1b 
				uint32_t swSetProf28 : 1; // @ 0x1c -- 0x1c 
				uint32_t swSetProf29 : 1; // @ 0x1d -- 0x1d 
				uint32_t swSetProf30 : 1; // @ 0x1e -- 0x1e 
				uint32_t swSetProf31 : 1; // @ 0x1f -- 0x1f 
			};
		} Returns; // @ 0x564
		union {
			uint32_t value;
			struct {
				uint32_t swClearProf0 : 1; // @ 0x0 -- 0x0 
				uint32_t swClearProf1 : 1; // @ 0x1 -- 0x1 
				uint32_t swClearProf2 : 1; // @ 0x2 -- 0x2 
				uint32_t swClearProf3 : 1; // @ 0x3 -- 0x3 
				uint32_t swClearProf4 : 1; // @ 0x4 -- 0x4 
				uint32_t swClearProf5 : 1; // @ 0x5 -- 0x5 
				uint32_t swClearProf6 : 1; // @ 0x6 -- 0x6 
				uint32_t swClearProf7 : 1; // @ 0x7 -- 0x7 
				uint32_t swClearProf8 : 1; // @ 0x8 -- 0x8 
				uint32_t swClearProf9 : 1; // @ 0x9 -- 0x9 
				uint32_t swClearProf10 : 1; // @ 0xa -- 0xa 
				uint32_t swClearProf11 : 1; // @ 0xb -- 0xb 
				uint32_t swClearProf12 : 1; // @ 0xc -- 0xc 
				uint32_t swClearProf13 : 1; // @ 0xd -- 0xd 
				uint32_t swClearProf14 : 1; // @ 0xe -- 0xe 
				uint32_t swClearProf15 : 1; // @ 0xf -- 0xf 
				uint32_t swClearProf16 : 1; // @ 0x10 -- 0x10 
				uint32_t swClearProf17 : 1; // @ 0x11 -- 0x11 
				uint32_t swClearProf18 : 1; // @ 0x12 -- 0x12 
				uint32_t swClearProf19 : 1; // @ 0x13 -- 0x13 
				uint32_t swClearProf20 : 1; // @ 0x14 -- 0x14 
				uint32_t swClearProf21 : 1; // @ 0x15 -- 0x15 
				uint32_t swClearProf22 : 1; // @ 0x16 -- 0x16 
				uint32_t swClearProf23 : 1; // @ 0x17 -- 0x17 
				uint32_t swClearProf24 : 1; // @ 0x18 -- 0x18 
				uint32_t swClearProf25 : 1; // @ 0x19 -- 0x19 
				uint32_t swClearProf26 : 1; // @ 0x1a -- 0x1a 
				uint32_t swClearProf27 : 1; // @ 0x1b -- 0x1b 
				uint32_t swClearProf28 : 1; // @ 0x1c -- 0x1c 
				uint32_t swClearProf29 : 1; // @ 0x1d -- 0x1d 
				uint32_t swClearProf30 : 1; // @ 0x1e -- 0x1e 
				uint32_t swClearProf31 : 1; // @ 0x1f -- 0x1f 
			};
		} Returns; // @ 0x568
		uint8_t pad15[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t secU1TxCurrentPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x570
		union {
			uint32_t value;
			struct {
				uint32_t secU2TxCurrentPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x574
		union {
			uint32_t value;
			struct {
				uint32_t secU3TxCurrentPointer : 32; // @ 0x1f -- 0x0 
			};
		} Returns; // @ 0x578
	};
} mac_pl_regs;
#define MAC_PL_BASE 0x44b08000
#define MAC_PL ((mac_pl_regs* volatile)(MAC_PL_BASE))