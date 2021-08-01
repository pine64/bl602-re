typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t nextTBTT : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} NEXT_TBTT; // @ 0x40
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t wakeUpSW : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 30;
				uint32_t wakeUpFromDoze : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DOZE_CNTRL_2; // @ 0x48
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t softReset : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} MAC_CNTRL_2; // @ 0x50
		uint8_t pad3[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t impSecTBTT : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t idleInterrupt : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t absGenTimers : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 1;
				uint32_t coexEvent : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t macPHYIFOverflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rxDMAEmpty : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t rxFIFOOverFlow : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t olbcOFDM : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t olbcDSSS : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t timSet : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ptError : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ac0TxDMADead : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t ac1TxDMADead : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ac2TxDMADead : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ac3TxDMADead : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t bcnTxDMADead : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t impPriDTIM : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t impSecDTIM : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t hwErr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t macPHYIFUnderRun : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t phyErr : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t phyRxStart : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t rxHeaderDMADead : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rxPayloadDMADead : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t pad1 : 6;
			};
		} GEN_INT_STATUS; // @ 0x6c
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t impSecTBTT : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t idleInterrupt : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 2;
				uint32_t coexEvent : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t macPHYIFOverflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rxDMAEmpty : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t rxFIFOOverFlow : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t olbcOFDM : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t olbcDSSS : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t timSet : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ptError : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ac0TxDMADead : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t ac1TxDMADead : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ac2TxDMADead : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ac3TxDMADead : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t bcnTxDMADead : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t impPriDTIM : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t impSecDTIM : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t hwErr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t macPHYIFUnderRun : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t phyErr : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t phyRxStart : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t rxHeaderDMADead : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rxPayloadDMADead : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t pad1 : 6;
			};
		} GEN_INT_ACK; // @ 0x70
		union {
			uint32_t value;
			struct {
				uint32_t impPriTBTT : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t impSecTBTT : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t idleInterrupt : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t absGenTimers : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 1;
				uint32_t coexEvent : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t macPHYIFOverflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rxDMAEmpty : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t rxFIFOOverFlow : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t olbcOFDM : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t olbcDSSS : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t timSet : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t ptError : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t ac0TxDMADead : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t ac1TxDMADead : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t ac2TxDMADead : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t ac3TxDMADead : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t bcnTxDMADead : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t impPriDTIM : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t impSecDTIM : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t hwErr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t macPHYIFUnderRun : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t phyErr : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t phyRxStart : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t rxHeaderDMADead : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rxPayloadDMADead : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t pad1 : 5;
				uint32_t masterGenIntEn : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} GEN_INT_ENABLE; // @ 0x74
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ac1ProtTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ac2ProtTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ac3ProtTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t hccaProtTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rdProtTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ac0TxTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ac1TxTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ac2TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ac3TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bcnTxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t hccaTxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t rdTxTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t txopComplete : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t timerTxTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t secUserTxTrigger : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t rxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t timerRxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t baRxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t counterRxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ac0BWDropTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ac1BWDropTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ac2BWDropTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ac3BWDropTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ac0TxBufTrigger : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t ac1TxBufTrigger : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t ac2TxBufTrigger : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t ac3TxBufTrigger : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t bcnTxBufTrigger : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad0 : 3;
			};
		} TX_RX_INT_STATUS; // @ 0x78
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ac1ProtTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ac2ProtTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ac3ProtTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t hccaProtTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rdProtTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ac0TxTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ac1TxTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ac2TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ac3TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bcnTxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t hccaTxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t rdTxTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t txopComplete : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t timerTxTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad0 : 1;
				uint32_t rxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t timerRxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t baRxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t counterRxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ac0BWDropTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ac1BWDropTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ac2BWDropTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ac3BWDropTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ac0TxBufTrigger : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t ac1TxBufTrigger : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t ac2TxBufTrigger : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t ac3TxBufTrigger : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t bcnTxBufTrigger : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad1 : 3;
			};
		} TX_RX_INT_ACK; // @ 0x7c
		union {
			uint32_t value;
			struct {
				uint32_t ac0ProtTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ac1ProtTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ac2ProtTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ac3ProtTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t hccaProtTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rdProtTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t ac0TxTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ac1TxTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t ac2TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t ac3TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t bcnTxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t hccaTxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t rdTxTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t txopComplete : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t timerTxTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t secUserTxTrigger : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t rxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t timerRxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t baRxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t counterRxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t ac0BWDropTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t ac1BWDropTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t ac2BWDropTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t ac3BWDropTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t ac0TxBufTrigger : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t ac1TxBufTrigger : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t ac2TxBufTrigger : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t ac3TxBufTrigger : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t bcnTxBufTrigger : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t pad0 : 2;
				uint32_t masterTxRxIntEn : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} TX_RX_INT_ENABLE; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t absTimers0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t absTimers1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t absTimers2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t absTimers3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t absTimers4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t absTimers5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t absTimers6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t absTimers7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t absTimers8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t absTimers9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 22;
			};
		} TIMERS_INT_EVENT_SET; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t absTimers0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t absTimers1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t absTimers2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t absTimers3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t absTimers4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t absTimers5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t absTimers6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t absTimers7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t absTimers8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t absTimers9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 22;
			};
		} TIMERS_INT_EVENT_CLEAR; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t maskabsTimers0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t maskabsTimers1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t maskabsTimers2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t maskabsTimers3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t maskabsTimers4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t maskabsTimers5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t maskabsTimers6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t maskabsTimers7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t maskabsTimers8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t maskabsTimers9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 22;
			};
		} TIMERS_INT_UN_MASK; // @ 0x8c
		uint8_t pad4[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t tsfTimerLow : 32; // @ 31 -- 0 # 0x0
			};
		} TSF_LO; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t tsfTimerHigh : 32; // @ 31 -- 0 # 0x0
			};
		} TSF_HI; // @ 0xa8
		uint8_t pad5[0xb4];
		union {
			uint32_t value;
			struct {
				uint32_t ppduLength : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t pad0 : 2;
				uint32_t ppduBW : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t ppduPreType : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t ppduShortGI : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t ppduNumExtnSS : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t ppduSTBC : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} TIME_ON_AIR_PARAM_1; // @ 0x160
		union {
			uint32_t value;
			struct {
				uint32_t ppduMCSIndex : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t pad0 : 25;
			};
		} TIME_ON_AIR_PARAM_2; // @ 0x164
		union {
			uint32_t value;
			struct {
				uint32_t timeOnAir : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 14;
				uint32_t timeOnAirValid : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t computeDuration : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} TIME_ON_AIR_VALUE; // @ 0x168
		uint8_t pad6[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t txBcnNewTail : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t txAC0NewTail : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t txAC1NewTail : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t txAC2NewTail : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t txAC3NewTail : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t txBcnNewHead : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t txAC0NewHead : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t txAC1NewHead : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t txAC2NewHead : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t txAC3NewHead : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 2;
				uint32_t haltBcnAfterTXOP : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t haltAC0AfterTXOP : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t haltAC1AfterTXOP : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t haltAC2AfterTXOP : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t haltAC3AfterTXOP : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad2 : 4;
				uint32_t rxHeaderNewTail : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rxPayloadNewTail : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t rxHeaderNewHead : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t rxPayloadNewHead : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad3 : 4;
			};
		} DMA_CNTRL_SET; // @ 0x180
		union {
			uint32_t value;
			struct {
				uint32_t txBcnNewTail : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t txAC0NewTail : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t txAC1NewTail : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t txAC2NewTail : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t txAC3NewTail : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t pad0 : 3;
				uint32_t txBcnNewHead : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t txAC0NewHead : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t txAC1NewHead : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t txAC2NewHead : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t txAC3NewHead : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 2;
				uint32_t haltBcnAfterTXOP : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t haltAC0AfterTXOP : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t haltAC1AfterTXOP : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t haltAC2AfterTXOP : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t haltAC3AfterTXOP : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad2 : 4;
				uint32_t rxHeaderNewTail : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t rxPayloadNewTail : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t rxHeaderNewHead : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t rxPayloadNewHead : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t pad3 : 4;
			};
		} DMA_CNTRL_CLEAR; // @ 0x184
		union {
			uint32_t value;
			struct {
				uint32_t txBcnState : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 2;
				uint32_t txAC0State : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t txAC1State : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad2 : 2;
				uint32_t txAC2State : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad3 : 2;
				uint32_t txAC3State : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad4 : 6;
				uint32_t rxHeaderState : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad5 : 2;
				uint32_t rxPayloadState : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad6 : 2;
			};
		} DMA_STATUS_1; // @ 0x188
		union {
			uint32_t value;
			struct {
				uint32_t txBcnLenMismatch : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t txAC0LenMismatch : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t txAC1LenMismatch : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t txAC2LenMismatch : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t txAC3LenMismatch : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t txBcnUPatternErr : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t txAC0UPatternErr : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t txAC1UPatternErr : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t txAC2UPatternErr : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t txAC3UPatternErr : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t txBcnNextPointerErr : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t txAC0NextPointerErr : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t txAC1NextPointerErr : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t txAC2NextPointerErr : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t txAC3NextPointerErr : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t txBcnPTAddressErr : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t txAC0PTAddressErr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t txAC1PTAddressErr : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t txAC2PTAddressErr : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t txAC3PTAddressErr : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t txBcnBusErr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t txAC0BusErr : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t txAC1BusErr : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t txAC2BusErr : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t txAC3BusErr : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t txBcnNewHeadErr : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t txAC0NewHeadErr : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t txAC1NewHeadErr : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t txAC2NewHeadErr : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t txAC3NewHeadErr : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad0 : 2;
			};
		} DMA_STATUS_2; // @ 0x18c
		union {
			uint32_t value;
			struct {
				uint32_t rxHdrUPatternErr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t rxPayUPatternErr : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rxHdrNextPointerErr : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rxPayNextPointerErr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t rxHdrBusErr : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t rxPayBusErr : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rxHdrNewHeadErr : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rxPayNewHeadErr : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} DMA_STATUS_3; // @ 0x190
		union {
			uint32_t value;
			struct {
				uint32_t txBcnStartup : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t txAC0Startup : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t txAC1Startup : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t txAC2Startup : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t txAC3Startup : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t txBcnEndQ : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t txAC0EndQ : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t txAC1EndQ : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t txAC2EndQ : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t txAC3EndQ : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t txBcnHaltAfterTXOP : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t txAC0HaltAfterTXOP : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t txAC1HaltAfterTXOP : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t txAC2HaltAfterTXOP : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t txAC3HaltAfterTXOP : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad0 : 17;
			};
		} DMA_STATUS_4; // @ 0x194
		union {
			uint32_t value;
			struct {
				uint32_t txBcnHeadPtr : 32; // @ 31 -- 0 # 0x0
			};
		} TX_BCN_HEAD_PTR; // @ 0x198
		union {
			uint32_t value;
			struct {
				uint32_t txAC0HeadPtr : 32; // @ 31 -- 0 # 0x0
			};
		} TX_AC_0_HEAD_PTR; // @ 0x19c
		union {
			uint32_t value;
			struct {
				uint32_t txAC1HeadPtr : 32; // @ 31 -- 0 # 0x0
			};
		} TX_AC_1_HEAD_PTR; // @ 0x1a0
		union {
			uint32_t value;
			struct {
				uint32_t txAC2HeadPtr : 32; // @ 31 -- 0 # 0x0
			};
		} TX_AC_2_HEAD_PTR; // @ 0x1a4
		union {
			uint32_t value;
			struct {
				uint32_t txAC3HeadPtr : 32; // @ 31 -- 0 # 0x0
			};
		} TX_AC_3_HEAD_PTR; // @ 0x1a8
		union {
			uint32_t value;
			struct {
				uint32_t ptEntrySize : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t dmaTHDSize : 6; // @ 11 -- 6 # 0xfffff03f
				uint32_t dmaTBDSize : 6; // @ 17 -- 12 # 0xfffc0fff
				uint32_t dmaRHDSize : 6; // @ 23 -- 18 # 0xff03ffff
				uint32_t dmaRBDSize : 6; // @ 29 -- 24 # 0xc0ffffff
				uint32_t pad0 : 2;
			};
		} TX_STRUCT_SIZES; // @ 0x1ac
		uint8_t pad7[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t rxHeaderHeadPtrValid : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 1;
				uint32_t rxHeaderHeadPtr : 30; // @ 31 -- 2 # 0x3
			};
		} RX_HEADER_HEAD_PTR; // @ 0x1b8
		union {
			uint32_t value;
			struct {
				uint32_t rxPayloadHeadPtrValid : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 1;
				uint32_t rxPayloadHeadPtr : 30; // @ 31 -- 2 # 0x3
			};
		} RX_PAYLOAD_HEAD_PTR; // @ 0x1bc
		union {
			uint32_t value;
			struct {
				uint32_t txFIFOThreshold : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 8;
				uint32_t rxFIFOThreshold : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad1 : 8;
			};
		} DMA_THRESHOLD; // @ 0x1c0
		uint8_t pad8[0x4c];
		union {
			uint32_t value;
			struct {
				uint32_t ac0HasData : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ac1HasData : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ac2HasData : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ac3HasData : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} EDCA_AC_HAS_DATA_SET; // @ 0x210
		union {
			uint32_t value;
			struct {
				uint32_t ac0HasData : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ac1HasData : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t ac2HasData : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t ac3HasData : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} EDCA_AC_HAS_DATA_CLEAR; // @ 0x214
		uint8_t pad9[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t ac0MOT : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t ac1MOT : 16; // @ 31 -- 16 # 0xffff
			};
		} MOT_1; // @ 0x228
		union {
			uint32_t value;
			struct {
				uint32_t ac2MOT : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t ac3MOT : 16; // @ 31 -- 16 # 0xffff
			};
		} MOT_2; // @ 0x22c
		union {
			uint32_t value;
			struct {
				uint32_t hccaQAPMOT : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t miscMOT : 16; // @ 31 -- 16 # 0xffff
			};
		} MOT_3; // @ 0x230
		uint8_t pad10[0xfc];
		union {
			uint32_t value;
			struct {
				uint32_t txBWAfterDrop : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 30;
			};
		} TX_BW_DROP_INFO; // @ 0x330
		uint8_t pad11[0x30];
		union {
			uint32_t value;
			struct {
				uint32_t secU1ac0TxTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t secU1ac1TxTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t secU1ac2TxTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t secU1ac3TxTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t secU1ac0TxBufTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t secU1ac1TxBufTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t secU1ac2TxBufTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t secU1ac3TxBufTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t secU2ac0TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t secU2ac1TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t secU2ac2TxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t secU2ac3TxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t secU2ac0TxBufTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t secU2ac1TxBufTrigger : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t secU2ac2TxBufTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t secU2ac3TxBufTrigger : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t secU3ac0TxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t secU3ac1TxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t secU3ac2TxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t secU3ac3TxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t secU3ac0TxBufTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t secU3ac1TxBufTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t secU3ac2TxBufTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t secU3ac3TxBufTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad0 : 8;
			};
		} SEC_USERS_TX_INT_EVENT_SET; // @ 0x364
		union {
			uint32_t value;
			struct {
				uint32_t secU1ac0TxTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t secU1ac1TxTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t secU1ac2TxTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t secU1ac3TxTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t secU1ac0TxBufTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t secU1ac1TxBufTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t secU1ac2TxBufTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t secU1ac3TxBufTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t secU2ac0TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t secU2ac1TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t secU2ac2TxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t secU2ac3TxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t secU2ac0TxBufTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t secU2ac1TxBufTrigger : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t secU2ac2TxBufTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t secU2ac3TxBufTrigger : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t secU3ac0TxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t secU3ac1TxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t secU3ac2TxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t secU3ac3TxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t secU3ac0TxBufTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t secU3ac1TxBufTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t secU3ac2TxBufTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t secU3ac3TxBufTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad0 : 8;
			};
		} SEC_USERS_TX_INT_EVENT_CLEAR; // @ 0x368
		union {
			uint32_t value;
			struct {
				uint32_t masksecU1ac0TxTrigger : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t masksecU1ac1TxTrigger : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t masksecU1ac2TxTrigger : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t masksecU1ac3TxTrigger : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t masksecU1ac0TxBufTrigger : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t masksecU1ac1TxBufTrigger : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t masksecU1ac2TxBufTrigger : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t masksecU1ac3TxBufTrigger : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t masksecU2ac0TxTrigger : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t masksecU2ac1TxTrigger : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t masksecU2ac2TxTrigger : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t masksecU2ac3TxTrigger : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t masksecU2ac0TxBufTrigger : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t masksecU2ac1TxBufTrigger : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t masksecU2ac2TxBufTrigger : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t masksecU2ac3TxBufTrigger : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t masksecU3ac0TxTrigger : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t masksecU3ac1TxTrigger : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t masksecU3ac2TxTrigger : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t masksecU3ac3TxTrigger : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t masksecU3ac0TxBufTrigger : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t masksecU3ac1TxBufTrigger : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t masksecU3ac2TxBufTrigger : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t masksecU3ac3TxBufTrigger : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t pad0 : 7;
				uint32_t masterSecUsersTxIntEn : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} SEC_USERS_TX_INT_EVENT_UN_MASK; // @ 0x36c
		uint8_t pad12[0x1b4];
		union {
			uint32_t value;
			struct {
				uint32_t bcnStatusPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_BCN_S_PTR; // @ 0x524
		union {
			uint32_t value;
			struct {
				uint32_t ac0StatusPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_AC_0S_PTR; // @ 0x528
		union {
			uint32_t value;
			struct {
				uint32_t ac1StatusPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_AC_1S_PTR; // @ 0x52c
		union {
			uint32_t value;
			struct {
				uint32_t ac2StatusPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_AC_2S_PTR; // @ 0x530
		union {
			uint32_t value;
			struct {
				uint32_t ac3StatusPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_AC_3S_PTR; // @ 0x534
		uint8_t pad13[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t txCurrentPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_TX_C_PTR; // @ 0x540
		union {
			uint32_t value;
			struct {
				uint32_t rxPayStatPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_RX_PAY_S_PTR; // @ 0x544
		union {
			uint32_t value;
			struct {
				uint32_t rxHdrStatPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_RX_HDR_C_PTR; // @ 0x548
		union {
			uint32_t value;
			struct {
				uint32_t rxPayCurrentPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_RX_PAY_C_PTR; // @ 0x54c
		uint8_t pad14[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t swProf0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t swProf1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t swProf2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t swProf3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t swProf4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t swProf5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t swProf6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t swProf7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t swProf8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t swProf9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t swProf10 : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t swProf11 : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t swProf12 : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t swProf13 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t swProf14 : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t swProf15 : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t swProf16 : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t swProf17 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t swProf18 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t swProf19 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t swProf20 : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t swProf21 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t swProf22 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t swProf23 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t swProf24 : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t swProf25 : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t swProf26 : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t swProf27 : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t swProf28 : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t swProf29 : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t swProf30 : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t swProf31 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} SW_PROFILING; // @ 0x560
		union {
			uint32_t value;
			struct {
				uint32_t swSetProf0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t swSetProf1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t swSetProf2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t swSetProf3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t swSetProf4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t swSetProf5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t swSetProf6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t swSetProf7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t swSetProf8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t swSetProf9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t swSetProf10 : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t swSetProf11 : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t swSetProf12 : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t swSetProf13 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t swSetProf14 : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t swSetProf15 : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t swSetProf16 : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t swSetProf17 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t swSetProf18 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t swSetProf19 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t swSetProf20 : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t swSetProf21 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t swSetProf22 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t swSetProf23 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t swSetProf24 : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t swSetProf25 : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t swSetProf26 : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t swSetProf27 : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t swSetProf28 : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t swSetProf29 : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t swSetProf30 : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t swSetProf31 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} SW_SET_PROFILING; // @ 0x564
		union {
			uint32_t value;
			struct {
				uint32_t swClearProf0 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t swClearProf1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t swClearProf2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t swClearProf3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t swClearProf4 : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t swClearProf5 : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t swClearProf6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t swClearProf7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t swClearProf8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t swClearProf9 : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t swClearProf10 : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t swClearProf11 : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t swClearProf12 : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t swClearProf13 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t swClearProf14 : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t swClearProf15 : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t swClearProf16 : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t swClearProf17 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t swClearProf18 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t swClearProf19 : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t swClearProf20 : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t swClearProf21 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t swClearProf22 : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t swClearProf23 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t swClearProf24 : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t swClearProf25 : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t swClearProf26 : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t swClearProf27 : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t swClearProf28 : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t swClearProf29 : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t swClearProf30 : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t swClearProf31 : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} SW_CLEAR_PROFILING; // @ 0x568
		uint8_t pad15[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t secU1TxCurrentPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_SEC_U_1_TX_C_PTR; // @ 0x570
		union {
			uint32_t value;
			struct {
				uint32_t secU2TxCurrentPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_SEC_U_2_TX_C_PTR; // @ 0x574
		union {
			uint32_t value;
			struct {
				uint32_t secU3TxCurrentPointer : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_SEC_U_3_TX_C_PTR; // @ 0x578
	};
} mac_pl_regs;
#define MAC_PL_BASE 0x44b08000
#define MAC_PL ((mac_pl_regs* volatile)(MAC_PL_BASE))