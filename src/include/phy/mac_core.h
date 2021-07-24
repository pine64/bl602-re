typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t signature : 32; // @ 31 -- 0 # 0x0
			};
		} SIGNATURE; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t qos : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t edca : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t hcca : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t sme : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t security : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t wep : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t tkip : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t ccmp : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t rce : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad0 : 1;
				uint32_t ht : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t vht : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t tpc : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t wapi : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t coex : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad1 : 1;
				uint32_t mac80211MHFormat : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 15;
			};
		} VERSION_1; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t umVersion : 7; // @ 6 -- 0 # 0xffffff80
				uint32_t ieRelease : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t releaseNumber : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t phaseNumber : 3; // @ 16 -- 14 # 0xfffe3fff
				uint32_t pad0 : 15;
			};
		} VERSION_2; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t bitmapCnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} BITMAP_CNT; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t macAddrLow : 32; // @ 31 -- 0 # 0x0
			};
		} MAC_ADDR_LOW; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t macAddrHigh : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} MAC_ADDR_HI; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t macAddrLowMask : 32; // @ 31 -- 0 # 0x0
			};
		} MAC_ADDR_LOW_MASK; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t macAddrHighMask : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} MAC_ADDR_HI_MASK; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t bssIDLow : 32; // @ 31 -- 0 # 0x0
			};
		} BSS_ID_LOW; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t bssIDHigh : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} BSS_ID_HI; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t bssIDLowMask : 32; // @ 31 -- 0 # 0x0
			};
		} BSS_ID_LOW_MASK; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t bssIDHighMask : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} BSS_ID_HI_MASK; // @ 0x2c
		uint8_t pad0[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t currentState : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t nextState : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t pad0 : 24;
			};
		} STATE_CNTRL; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t probeDelay : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} SCAN_CNTRL; // @ 0x3c
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t listenInterval : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t wakeupDTIM : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t atimW : 15; // @ 31 -- 17 # 0x1ffff
			};
		} DOZE_CNTRL_1; // @ 0x44
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssType : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t ap : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pwrMgt : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cfpAware : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 2;
				uint32_t enableLPClkSwitch : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t activeClkGating : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t disableACKResp : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t disableCTSResp : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t disableBAResp : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t rateControllerMPIF : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t mibTableReset : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t keyStoRAMReset : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t abgnMode : 3; // @ 16 -- 14 # 0xfffe3fff
				uint32_t pad1 : 7;
				uint32_t tsfUpdatedBySW : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t tsfMgtDisable : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t rxRIFSEn : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t pad2 : 5;
			};
		} MAC_CNTRL_1; // @ 0x4c
		uint8_t pad3[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t useErrRec : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t useErrDet : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t hwFSMReset : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rxFIFOReset : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t txFIFOReset : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t macPHYIFFIFOReset : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t encrRxFIFOReset : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t baPSBitmapReset : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 8;
				uint32_t rxFlowCntrlEn : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad1 : 15;
			};
		} MAC_ERR_REC_CNTRL; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t errInTxLevel1 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t errInRxLevel1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t errInTxRxLevel2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t errInHWLevel3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} MAC_ERR_SET_STATUS; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t clearErrInTxLevel1 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t clearErrInRxLevel1 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t clearErrInTxRxLevel2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t clearErrInHWLevel3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 28;
			};
		} MAC_ERR_CLEAR_STATUS; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t excUnencrypted : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t dontDecrypt : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t acceptMulticast : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t acceptBroadcast : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t acceptOtherBSSID : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t acceptErrorFrames : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t acceptUnicast : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t acceptMyUnicast : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t acceptProbeReq : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t acceptProbeResp : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t acceptBeacon : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t acceptDecryptErrorFrames : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t acceptNotExpectedBA : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t acceptAllBeacon : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad0 : 1;
				uint32_t acceptOtherMgmtFrames : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t acceptBAR : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t acceptBA : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t acceptPSPoll : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t acceptRTS : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t acceptCTS : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t acceptACK : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t acceptCFEnd : 1; // @ 22 -- 22 # 0xffbfffff
				uint32_t acceptOtherCntrlFrames : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t acceptData : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t acceptCFWOData : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t acceptQData : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t acceptQCFWOData : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t acceptQoSNull : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t acceptOtherDataFrames : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t acceptUnknown : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t enDuplicateDetection : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} RX_CNTRL; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t beaconInt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t impTBTTPeriod : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t impTBTTIn128Us : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t noBcnTxTime : 8; // @ 31 -- 24 # 0xffffff
			};
		} BCN_CNTRL_1; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t bcnUpdateOffset : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t timOffset : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t aid : 12; // @ 27 -- 16 # 0xf000ffff
				uint32_t pad0 : 4;
			};
		} BCN_CNTRL_2; // @ 0x68
		uint8_t pad4[0x24];
		union {
			uint32_t value;
			struct {
				uint32_t dtimPeriod : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cfpPeriod : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 15;
				uint32_t dtimUpdatedBySW : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} DTIM_CFP_1; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t cfpMaxDuration : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} DTIM_CFP_2; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t dot11ShortRetryLimit : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t dot11LongRetryLimit : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} RETRY_LIMITS; // @ 0x98
		union {
			uint32_t value;
			struct {
				uint32_t bbServiceA : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t bbServiceB : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 2;
				uint32_t maxPHYNtx : 3; // @ 28 -- 26 # 0xe3ffffff
				uint32_t pad1 : 3;
			};
		} BB_SERVICE; // @ 0x9c
		union {
			uint32_t value;
			struct {
				uint32_t ofdmMaxPwrLevel : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t dsssMaxPwrLevel : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} MAX_POWER_LEVEL; // @ 0xa0
		uint8_t pad5[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord0 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_KEY_0; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord1 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_KEY_1; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord2 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_KEY_2; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord3 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_KEY_3; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t macAddrRAMLow : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_MAC_ADDR_LOW; // @ 0xbc
		union {
			uint32_t value;
			struct {
				uint32_t macAddrRAMHigh : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} ENCR_MAC_ADDR_HIGH; // @ 0xc0
		union {
			uint32_t value;
			struct {
				uint32_t cLenRAM : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t useDefKeyRAM : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t sppRAM : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t vlanIDRAM : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cTypeRAM : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad0 : 5;
				uint32_t keyIndexRAM : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t pad1 : 4;
				uint32_t newWrite : 1; // @ 30 -- 30 # 0xbfffffff
				uint32_t newRead : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} ENCR_CNTRL; // @ 0xc4
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord0 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_WPI_INT_KEY_0; // @ 0xc8
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord1 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_WPI_INT_KEY_1; // @ 0xcc
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord2 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_WPI_INT_KEY_2; // @ 0xd0
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord3 : 32; // @ 31 -- 0 # 0x0
			};
		} ENCR_WPI_INT_KEY_3; // @ 0xd4
		uint8_t pad6[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicRateSet : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 20;
			};
		} RATES; // @ 0xdc
		union {
			uint32_t value;
			struct {
				uint32_t olbcTimer : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t ofdmCount : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t dsssCount : 8; // @ 31 -- 24 # 0xffffff
			};
		} OLBC; // @ 0xe0
		union {
			uint32_t value;
			struct {
				uint32_t macCoreClkFreq : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t txRFDelayInMACClk : 10; // @ 17 -- 8 # 0xfffc00ff
				uint32_t txChainDelayInMACClk : 10; // @ 27 -- 18 # 0xf003ffff
				uint32_t pad0 : 4;
			};
		} TIMINGS_1; // @ 0xe4
		union {
			uint32_t value;
			struct {
				uint32_t slotTime : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t slotTimeInMACClk : 16; // @ 23 -- 8 # 0xff0000ff
				uint32_t pad0 : 8;
			};
		} TIMINGS_2; // @ 0xe8
		union {
			uint32_t value;
			struct {
				uint32_t macProcDelayInMACClk : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t txDelayRFOnInMACClk : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t rxRFDelayInMACClk : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad0 : 2;
			};
		} TIMINGS_3; // @ 0xec
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t radioChirpTime : 10; // @ 21 -- 12 # 0xffc00fff
				uint32_t radioWakeUpTime : 10; // @ 31 -- 22 # 0x3fffff
			};
		} TIMINGS_4; // @ 0xf0
		union {
			uint32_t value;
			struct {
				uint32_t sifsB : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t sifsBInMACClk : 16; // @ 23 -- 8 # 0xff0000ff
				uint32_t pad0 : 8;
			};
		} TIMINGS_5; // @ 0xf4
		union {
			uint32_t value;
			struct {
				uint32_t sifsA : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t sifsAInMACClk : 16; // @ 23 -- 8 # 0xff0000ff
				uint32_t pad0 : 8;
			};
		} TIMINGS_6; // @ 0xf8
		union {
			uint32_t value;
			struct {
				uint32_t rifs : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t rxCCADelay : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t pad0 : 20;
			};
		} TIMINGS_7; // @ 0xfc
		union {
			uint32_t value;
			struct {
				uint32_t rxStartDelayOFDM : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t rxStartDelayLong : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t rxStartDelayShort : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t rxStartDelayMIMO : 8; // @ 31 -- 24 # 0xffffff
			};
		} TIMINGS_8; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t txDMAProcDlyInMACClk : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t rifsInMACClk : 10; // @ 19 -- 10 # 0xfff003ff
				uint32_t rifsTOInMACClk : 10; // @ 29 -- 20 # 0xc00fffff
				uint32_t pad0 : 2;
			};
		} TIMINGS_9; // @ 0x104
		uint8_t pad7[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t edcaTriggerTimer : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t hccaTriggerTimer : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} PROT_TRIG_TIMER; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t txAbsoluteTimeout : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t txPacketTimeout : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} TX_TRIGGER_TIMER; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t rxAbsoluteTimeout : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t rxPacketTimeout : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t rxPayloadUsedCount : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad0 : 8;
			};
		} RX_TRIGGER_TIMER; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t mibTableIndex : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 4;
				uint32_t mibIncrementMode : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t mibWrite : 1; // @ 15 -- 15 # 0xffff7fff
				uint32_t mibValue : 16; // @ 31 -- 16 # 0xffff
			};
		} MIB_TABLE_WRITE; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounter1 : 32; // @ 31 -- 0 # 0x0
			};
		} MONOTONIC_COUNTER_1; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounterLow2 : 32; // @ 31 -- 0 # 0x0
			};
		} MONOTONIC_COUNTER_2_LO; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounterHigh2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} MONOTONIC_COUNTER_2_HI; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t absTimerValue : 32; // @ 31 -- 0 # 0x0
			};
		} ABS_TIMER; // @ 0x128
		uint8_t pad8[0x24];
		union {
			uint32_t value;
			struct {
				uint32_t maxAllowedLength : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t pad0 : 12;
			};
		} MAX_RX_LENGTH; // @ 0x150
		uint8_t pad9[0xac];
		union {
			uint32_t value;
			struct {
				uint32_t aifsn0 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t cwMin0 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cwMax0 : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t txOpLimit0 : 16; // @ 27 -- 12 # 0xf0000fff
				uint32_t pad0 : 4;
			};
		} EDCA_AC_0; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t aifsn1 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t cwMin1 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cwMax1 : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t txOpLimit1 : 16; // @ 27 -- 12 # 0xf0000fff
				uint32_t pad0 : 4;
			};
		} EDCA_AC_1; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t aifsn2 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t cwMin2 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cwMax2 : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t txOpLimit2 : 16; // @ 27 -- 12 # 0xf0000fff
				uint32_t pad0 : 4;
			};
		} EDCA_AC_2; // @ 0x208
		union {
			uint32_t value;
			struct {
				uint32_t aifsn3 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t cwMin3 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t cwMax3 : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t txOpLimit3 : 16; // @ 27 -- 12 # 0xf0000fff
				uint32_t pad0 : 4;
			};
		} EDCA_AC_3; // @ 0x20c
		uint8_t pad10[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDur : 32; // @ 31 -- 0 # 0x0
			};
		} EDCA_CCA_BUSY; // @ 0x220
		union {
			uint32_t value;
			struct {
				uint32_t sendCFEndNow : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sendCFEnd : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 2;
				uint32_t remTXOPInDurField : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t keepTXOPOpen : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad1 : 26;
			};
		} EDCA_CNTRL; // @ 0x224
		uint8_t pad11[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t quietCount1 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t quietPeriod1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t quietDuration1 : 16; // @ 31 -- 16 # 0xffff
			};
		} QUIET_ELEMENT_1A; // @ 0x280
		union {
			uint32_t value;
			struct {
				uint32_t quietOffset1 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} QUIET_ELEMENT_1B; // @ 0x284
		union {
			uint32_t value;
			struct {
				uint32_t quietCount2 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t quietPeriod2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t quietDuration2 : 16; // @ 31 -- 16 # 0xffff
			};
		} QUIET_ELEMENT_2A; // @ 0x288
		union {
			uint32_t value;
			struct {
				uint32_t quietOffset2 : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} QUIET_ELEMENT_2B; // @ 0x28c
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec20 : 32; // @ 31 -- 0 # 0x0
			};
		} ADD_CCA_BUSY_SEC_20; // @ 0x290
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec40 : 32; // @ 31 -- 0 # 0x0
			};
		} ADD_CCA_BUSY_SEC_40; // @ 0x294
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec80 : 32; // @ 31 -- 0 # 0x0
			};
		} ADD_CCA_BUSY_SEC_80; // @ 0x298
		uint8_t pad12[0x64];
		union {
			uint32_t value;
			struct {
				uint32_t cfEndSTBCDur : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t ctsSTBCDur : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t dualCTSProt : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t basicSTBCMCS : 7; // @ 31 -- 25 # 0x1ffffff
			};
		} STBC_CNTRL; // @ 0x300
		union {
			uint32_t value;
			struct {
				uint32_t startTxFrameEx : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t startTxFrmExType : 2; // @ 2 -- 1 # 0xfffffff9
				uint32_t startTxAC : 2; // @ 4 -- 3 # 0xffffffe7
				uint32_t pad0 : 1;
				uint32_t startTxKSRIndex : 10; // @ 15 -- 6 # 0xffff003f
				uint32_t startTxMCSIndex0 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t startTxFormatMod : 3; // @ 26 -- 24 # 0xf8ffffff
				uint32_t startTxPreType : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t startTxBW : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t pad1 : 2;
			};
		} START_TX_1; // @ 0x304
		union {
			uint32_t value;
			struct {
				uint32_t durControlFrm : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} START_TX_2; // @ 0x308
		union {
			uint32_t value;
			struct {
				uint32_t startTxNumExtnSS : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t startTxSTBC : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t startTxFecCoding : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t startTxNTx : 3; // @ 7 -- 5 # 0xffffff1f
				uint32_t startTxShortGI : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad0 : 3;
				uint32_t startTxSmoothing : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t startTxLSTP : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad1 : 2;
				uint32_t startTxAntennaSet : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t startTxSMMIndex : 8; // @ 31 -- 24 # 0xffffff
			};
		} START_TX_3; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t defaultBWTXOPV : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t defaultBWTXOP : 2; // @ 2 -- 1 # 0xfffffff9
				uint32_t dropToLowerBW : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t numTryBWAcquisition : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t dynBWEn : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t aPPDUMaxTime : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t maxSupportedBW : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad0 : 14;
			};
		} TX_BW_CNTRL; // @ 0x310
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicHTMCSSetEM : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t bssBasicHTMCSSetUM : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad0 : 10;
			};
		} HTMCS; // @ 0x314
		uint8_t pad13[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicVHTMCSSet : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} VHTMCS; // @ 0x31c
		union {
			uint32_t value;
			struct {
				uint32_t supportLSTP : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} LSTP; // @ 0x320
		uint8_t pad14[0xdc];
		union {
			uint32_t value;
			struct {
				uint32_t coexEnable : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 11;
				uint32_t coexWlanChanOffset : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad1 : 3;
				uint32_t coexWlanChanFreq : 7; // @ 22 -- 16 # 0xff80ffff
				uint32_t pad2 : 9;
			};
		} COEX_CONTROL; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t coexPTIAck : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t coexPTICntl : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t coexPTIMgt : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t coexPTIVOData : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t coexPTIVIData : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t coexPTIBEData : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t coexPTIBKData : 4; // @ 27 -- 24 # 0xf0ffffff
				uint32_t coexPTIBcnData : 4; // @ 31 -- 28 # 0xfffffff
			};
		} COEX_PTI; // @ 0x404
		uint8_t pad15[0xf8];
		union {
			uint32_t value;
			struct {
				uint32_t rxControlLs : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t txControlLs : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad1 : 7;
				uint32_t macControlLs : 8; // @ 31 -- 24 # 0xffffff
			};
		} DEBUG_HWSM_1; // @ 0x500
		union {
			uint32_t value;
			struct {
				uint32_t rxControlCs : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 3;
				uint32_t txControlCs : 9; // @ 16 -- 8 # 0xfffe00ff
				uint32_t pad1 : 7;
				uint32_t macControlCs : 8; // @ 31 -- 24 # 0xffffff
			};
		} DEBUG_HWSM_2; // @ 0x504
		uint8_t pad16[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t debugPortRead : 32; // @ 31 -- 0 # 0x0
			};
		} DEBUG_PORT_VALUE; // @ 0x50c
		union {
			uint32_t value;
			struct {
				uint32_t debugPortSel1 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t debugPortSel2 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 16;
			};
		} DEBUG_PORT_SEL; // @ 0x510
		union {
			uint32_t value;
			struct {
				uint32_t navCounter : 26; // @ 25 -- 0 # 0xfc000000
				uint32_t pad0 : 6;
			};
		} DEBUG_NAV; // @ 0x514
		union {
			uint32_t value;
			struct {
				uint32_t currentCW0 : 4; // @ 3 -- 0 # 0xfffffff0
				uint32_t currentCW1 : 4; // @ 7 -- 4 # 0xffffff0f
				uint32_t currentCW2 : 4; // @ 11 -- 8 # 0xfffff0ff
				uint32_t currentCW3 : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t activeAC : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad0 : 6;
				uint32_t backoffOffset : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad1 : 6;
			};
		} DEBUG_CW; // @ 0x518
		union {
			uint32_t value;
			struct {
				uint32_t ac0QSRC : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t ac1QSRC : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t ac2QSRC : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t ac3QSRC : 8; // @ 31 -- 24 # 0xffffff
			};
		} DEBUG_QSRC; // @ 0x51c
		union {
			uint32_t value;
			struct {
				uint32_t ac0QLRC : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t ac1QLRC : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t ac2QLRC : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t ac3QLRC : 8; // @ 31 -- 24 # 0xffffff
			};
		} DEBUG_QLRC; // @ 0x520
		uint8_t pad17[0x38];
		union {
			uint32_t value;
			struct {
				uint32_t rxReqForceDeassertion : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} DEBUG_PHY; // @ 0x55c
	};
} mac_core_regs;
#define MAC_CORE_BASE 0x44b00000
#define MAC_CORE ((mac_core_regs* volatile)(MAC_CORE_BASE))