typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t signature : 32; // @ 0x1f -- 0x0 
			};
		} SIGNATURE; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t qos : 1; // @ 0x0 -- 0x0 
				uint32_t edca : 1; // @ 0x1 -- 0x1 
				uint32_t hcca : 1; // @ 0x2 -- 0x2 
				uint32_t sme : 1; // @ 0x3 -- 0x3 
				uint32_t security : 1; // @ 0x4 -- 0x4 
				uint32_t wep : 1; // @ 0x5 -- 0x5 
				uint32_t tkip : 1; // @ 0x6 -- 0x6 
				uint32_t ccmp : 1; // @ 0x7 -- 0x7 
				uint32_t rce : 1; // @ 0x8 -- 0x8 
				uint32_t pad0 : 1;
				uint32_t ht : 1; // @ 0xa -- 0xa 
				uint32_t vht : 1; // @ 0xb -- 0xb 
				uint32_t tpc : 1; // @ 0xc -- 0xc 
				uint32_t wapi : 1; // @ 0xd -- 0xd 
				uint32_t coex : 1; // @ 0xe -- 0xe 
				uint32_t pad1 : 1;
				uint32_t mac80211MHFormat : 1; // @ 0x10 -- 0x10 
			};
		} VERSION_1; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t umVersion : 7; // @ 0x6 -- 0x0 
				uint32_t ieRelease : 1; // @ 0x7 -- 0x7 
				uint32_t releaseNumber : 6; // @ 0xd -- 0x8 
				uint32_t phaseNumber : 3; // @ 0x10 -- 0xe 
			};
		} VERSION_2; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t bitmapCnt : 16; // @ 0xf -- 0x0 
			};
		} BITMAP_CNT; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t macAddrLow : 32; // @ 0x1f -- 0x0 
			};
		} MAC_ADDR_LOW; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t macAddrHigh : 16; // @ 0xf -- 0x0 
			};
		} MAC_ADDR_HI; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t macAddrLowMask : 32; // @ 0x1f -- 0x0 
			};
		} MAC_ADDR_LOW_MASK; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t macAddrHighMask : 16; // @ 0xf -- 0x0 
			};
		} MAC_ADDR_HI_MASK; // @ 0x1c
		union {
			uint32_t value;
			struct {
				uint32_t bssIDLow : 32; // @ 0x1f -- 0x0 
			};
		} BSS_ID_LOW; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t bssIDHigh : 16; // @ 0xf -- 0x0 
			};
		} BSS_ID_HI; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t bssIDLowMask : 32; // @ 0x1f -- 0x0 
			};
		} BSS_ID_LOW_MASK; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t bssIDHighMask : 16; // @ 0xf -- 0x0 
			};
		} BSS_ID_HI_MASK; // @ 0x2c
		uint8_t pad0[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t currentState : 4; // @ 0x3 -- 0x0 
				uint32_t nextState : 4; // @ 0x7 -- 0x4 
			};
		} STATE_CNTRL; // @ 0x38
		union {
			uint32_t value;
			struct {
				uint32_t probeDelay : 16; // @ 0xf -- 0x0 
			};
		} SCAN_CNTRL; // @ 0x3c
		uint8_t pad1[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t listenInterval : 16; // @ 0xf -- 0x0 
				uint32_t wakeupDTIM : 1; // @ 0x10 -- 0x10 
				uint32_t atimW : 15; // @ 0x1f -- 0x11 
			};
		} DOZE_CNTRL_1; // @ 0x44
		uint8_t pad2[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssType : 1; // @ 0x0 -- 0x0 
				uint32_t ap : 1; // @ 0x1 -- 0x1 
				uint32_t pwrMgt : 1; // @ 0x2 -- 0x2 
				uint32_t cfpAware : 1; // @ 0x3 -- 0x3 
				uint32_t pad0 : 2;
				uint32_t enableLPClkSwitch : 1; // @ 0x6 -- 0x6 
				uint32_t activeClkGating : 1; // @ 0x7 -- 0x7 
				uint32_t disableACKResp : 1; // @ 0x8 -- 0x8 
				uint32_t disableCTSResp : 1; // @ 0x9 -- 0x9 
				uint32_t disableBAResp : 1; // @ 0xa -- 0xa 
				uint32_t rateControllerMPIF : 1; // @ 0xb -- 0xb 
				uint32_t mibTableReset : 1; // @ 0xc -- 0xc 
				uint32_t keyStoRAMReset : 1; // @ 0xd -- 0xd 
				uint32_t abgnMode : 3; // @ 0x10 -- 0xe 
				uint32_t pad1 : 7;
				uint32_t tsfUpdatedBySW : 1; // @ 0x18 -- 0x18 
				uint32_t tsfMgtDisable : 1; // @ 0x19 -- 0x19 
				uint32_t rxRIFSEn : 1; // @ 0x1a -- 0x1a 
			};
		} MAC_CNTRL_1; // @ 0x4c
		uint8_t pad3[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t useErrRec : 1; // @ 0x0 -- 0x0 
				uint32_t useErrDet : 1; // @ 0x1 -- 0x1 
				uint32_t hwFSMReset : 1; // @ 0x2 -- 0x2 
				uint32_t rxFIFOReset : 1; // @ 0x3 -- 0x3 
				uint32_t txFIFOReset : 1; // @ 0x4 -- 0x4 
				uint32_t macPHYIFFIFOReset : 1; // @ 0x5 -- 0x5 
				uint32_t encrRxFIFOReset : 1; // @ 0x6 -- 0x6 
				uint32_t baPSBitmapReset : 1; // @ 0x7 -- 0x7 
				uint32_t pad0 : 8;
				uint32_t rxFlowCntrlEn : 1; // @ 0x10 -- 0x10 
			};
		} MAC_ERR_REC_CNTRL; // @ 0x54
		union {
			uint32_t value;
			struct {
				uint32_t errInTxLevel1 : 1; // @ 0x0 -- 0x0 
				uint32_t errInRxLevel1 : 1; // @ 0x1 -- 0x1 
				uint32_t errInTxRxLevel2 : 1; // @ 0x2 -- 0x2 
				uint32_t errInHWLevel3 : 1; // @ 0x3 -- 0x3 
			};
		} MAC_ERR_SET_STATUS; // @ 0x58
		union {
			uint32_t value;
			struct {
				uint32_t clearErrInTxLevel1 : 1; // @ 0x0 -- 0x0 
				uint32_t clearErrInRxLevel1 : 1; // @ 0x1 -- 0x1 
				uint32_t clearErrInTxRxLevel2 : 1; // @ 0x2 -- 0x2 
				uint32_t clearErrInHWLevel3 : 1; // @ 0x3 -- 0x3 
			};
		} MAC_ERR_CLEAR_STATUS; // @ 0x5c
		union {
			uint32_t value;
			struct {
				uint32_t excUnencrypted : 1; // @ 0x0 -- 0x0 
				uint32_t dontDecrypt : 1; // @ 0x1 -- 0x1 
				uint32_t acceptMulticast : 1; // @ 0x2 -- 0x2 
				uint32_t acceptBroadcast : 1; // @ 0x3 -- 0x3 
				uint32_t acceptOtherBSSID : 1; // @ 0x4 -- 0x4 
				uint32_t acceptErrorFrames : 1; // @ 0x5 -- 0x5 
				uint32_t acceptUnicast : 1; // @ 0x6 -- 0x6 
				uint32_t acceptMyUnicast : 1; // @ 0x7 -- 0x7 
				uint32_t acceptProbeReq : 1; // @ 0x8 -- 0x8 
				uint32_t acceptProbeResp : 1; // @ 0x9 -- 0x9 
				uint32_t acceptBeacon : 1; // @ 0xa -- 0xa 
				uint32_t acceptDecryptErrorFrames : 1; // @ 0xb -- 0xb 
				uint32_t acceptNotExpectedBA : 1; // @ 0xc -- 0xc 
				uint32_t acceptAllBeacon : 1; // @ 0xd -- 0xd 
				uint32_t pad0 : 1;
				uint32_t acceptOtherMgmtFrames : 1; // @ 0xf -- 0xf 
				uint32_t acceptBAR : 1; // @ 0x10 -- 0x10 
				uint32_t acceptBA : 1; // @ 0x11 -- 0x11 
				uint32_t acceptPSPoll : 1; // @ 0x12 -- 0x12 
				uint32_t acceptRTS : 1; // @ 0x13 -- 0x13 
				uint32_t acceptCTS : 1; // @ 0x14 -- 0x14 
				uint32_t acceptACK : 1; // @ 0x15 -- 0x15 
				uint32_t acceptCFEnd : 1; // @ 0x16 -- 0x16 
				uint32_t acceptOtherCntrlFrames : 1; // @ 0x17 -- 0x17 
				uint32_t acceptData : 1; // @ 0x18 -- 0x18 
				uint32_t acceptCFWOData : 1; // @ 0x19 -- 0x19 
				uint32_t acceptQData : 1; // @ 0x1a -- 0x1a 
				uint32_t acceptQCFWOData : 1; // @ 0x1b -- 0x1b 
				uint32_t acceptQoSNull : 1; // @ 0x1c -- 0x1c 
				uint32_t acceptOtherDataFrames : 1; // @ 0x1d -- 0x1d 
				uint32_t acceptUnknown : 1; // @ 0x1e -- 0x1e 
				uint32_t enDuplicateDetection : 1; // @ 0x1f -- 0x1f 
			};
		} RX_CNTRL; // @ 0x60
		union {
			uint32_t value;
			struct {
				uint32_t beaconInt : 16; // @ 0xf -- 0x0 
				uint32_t impTBTTPeriod : 7; // @ 0x16 -- 0x10 
				uint32_t impTBTTIn128Us : 1; // @ 0x17 -- 0x17 
				uint32_t noBcnTxTime : 8; // @ 0x1f -- 0x18 
			};
		} BCN_CNTRL_1; // @ 0x64
		union {
			uint32_t value;
			struct {
				uint32_t bcnUpdateOffset : 8; // @ 0x7 -- 0x0 
				uint32_t timOffset : 8; // @ 0xf -- 0x8 
				uint32_t aid : 12; // @ 0x1b -- 0x10 
			};
		} BCN_CNTRL_2; // @ 0x68
		uint8_t pad4[0x24];
		union {
			uint32_t value;
			struct {
				uint32_t dtimPeriod : 8; // @ 0x7 -- 0x0 
				uint32_t cfpPeriod : 8; // @ 0xf -- 0x8 
				uint32_t pad0 : 15;
				uint32_t dtimUpdatedBySW : 1; // @ 0x1f -- 0x1f 
			};
		} DTIM_CFP_1; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t cfpMaxDuration : 16; // @ 0xf -- 0x0 
			};
		} DTIM_CFP_2; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t dot11ShortRetryLimit : 8; // @ 0x7 -- 0x0 
				uint32_t dot11LongRetryLimit : 8; // @ 0xf -- 0x8 
			};
		} RETRY_LIMITS; // @ 0x98
		union {
			uint32_t value;
			struct {
				uint32_t bbServiceA : 16; // @ 0xf -- 0x0 
				uint32_t bbServiceB : 8; // @ 0x17 -- 0x10 
				uint32_t pad0 : 2;
				uint32_t maxPHYNtx : 3; // @ 0x1c -- 0x1a 
			};
		} BB_SERVICE; // @ 0x9c
		union {
			uint32_t value;
			struct {
				uint32_t ofdmMaxPwrLevel : 8; // @ 0x7 -- 0x0 
				uint32_t dsssMaxPwrLevel : 8; // @ 0xf -- 0x8 
			};
		} MAX_POWER_LEVEL; // @ 0xa0
		uint8_t pad5[0x8];
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord0 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_KEY_0; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord1 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_KEY_1; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord2 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_KEY_2; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t encrKeyRAMWord3 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_KEY_3; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t macAddrRAMLow : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_MAC_ADDR_LOW; // @ 0xbc
		union {
			uint32_t value;
			struct {
				uint32_t macAddrRAMHigh : 16; // @ 0xf -- 0x0 
			};
		} ENCR_MAC_ADDR_HIGH; // @ 0xc0
		union {
			uint32_t value;
			struct {
				uint32_t cLenRAM : 1; // @ 0x0 -- 0x0 
				uint32_t useDefKeyRAM : 1; // @ 0x1 -- 0x1 
				uint32_t sppRAM : 2; // @ 0x3 -- 0x2 
				uint32_t vlanIDRAM : 4; // @ 0x7 -- 0x4 
				uint32_t cTypeRAM : 3; // @ 0xa -- 0x8 
				uint32_t pad0 : 5;
				uint32_t keyIndexRAM : 10; // @ 0x19 -- 0x10 
				uint32_t pad1 : 4;
				uint32_t newWrite : 1; // @ 0x1e -- 0x1e 
				uint32_t newRead : 1; // @ 0x1f -- 0x1f 
			};
		} ENCR_CNTRL; // @ 0xc4
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord0 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_WPI_INT_KEY_0; // @ 0xc8
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord1 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_WPI_INT_KEY_1; // @ 0xcc
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord2 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_WPI_INT_KEY_2; // @ 0xd0
		union {
			uint32_t value;
			struct {
				uint32_t encrIntKeyRAMWord3 : 32; // @ 0x1f -- 0x0 
			};
		} ENCR_WPI_INT_KEY_3; // @ 0xd4
		uint8_t pad6[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicRateSet : 12; // @ 0xb -- 0x0 
			};
		} RATES; // @ 0xdc
		union {
			uint32_t value;
			struct {
				uint32_t olbcTimer : 16; // @ 0xf -- 0x0 
				uint32_t ofdmCount : 8; // @ 0x17 -- 0x10 
				uint32_t dsssCount : 8; // @ 0x1f -- 0x18 
			};
		} OLBC; // @ 0xe0
		union {
			uint32_t value;
			struct {
				uint32_t macCoreClkFreq : 8; // @ 0x7 -- 0x0 
				uint32_t txRFDelayInMACClk : 10; // @ 0x11 -- 0x8 
				uint32_t txChainDelayInMACClk : 10; // @ 0x1b -- 0x12 
			};
		} TIMINGS_1; // @ 0xe4
		union {
			uint32_t value;
			struct {
				uint32_t slotTime : 8; // @ 0x7 -- 0x0 
				uint32_t slotTimeInMACClk : 16; // @ 0x17 -- 0x8 
			};
		} TIMINGS_2; // @ 0xe8
		union {
			uint32_t value;
			struct {
				uint32_t macProcDelayInMACClk : 10; // @ 0x9 -- 0x0 
				uint32_t txDelayRFOnInMACClk : 10; // @ 0x13 -- 0xa 
				uint32_t rxRFDelayInMACClk : 10; // @ 0x1d -- 0x14 
			};
		} TIMINGS_3; // @ 0xec
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t radioChirpTime : 10; // @ 0x15 -- 0xc 
				uint32_t radioWakeUpTime : 10; // @ 0x1f -- 0x16 
			};
		} TIMINGS_4; // @ 0xf0
		union {
			uint32_t value;
			struct {
				uint32_t sifsB : 8; // @ 0x7 -- 0x0 
				uint32_t sifsBInMACClk : 16; // @ 0x17 -- 0x8 
			};
		} TIMINGS_5; // @ 0xf4
		union {
			uint32_t value;
			struct {
				uint32_t sifsA : 8; // @ 0x7 -- 0x0 
				uint32_t sifsAInMACClk : 16; // @ 0x17 -- 0x8 
			};
		} TIMINGS_6; // @ 0xf8
		union {
			uint32_t value;
			struct {
				uint32_t rifs : 8; // @ 0x7 -- 0x0 
				uint32_t rxCCADelay : 4; // @ 0xb -- 0x8 
			};
		} TIMINGS_7; // @ 0xfc
		union {
			uint32_t value;
			struct {
				uint32_t rxStartDelayOFDM : 8; // @ 0x7 -- 0x0 
				uint32_t rxStartDelayLong : 8; // @ 0xf -- 0x8 
				uint32_t rxStartDelayShort : 8; // @ 0x17 -- 0x10 
				uint32_t rxStartDelayMIMO : 8; // @ 0x1f -- 0x18 
			};
		} TIMINGS_8; // @ 0x100
		union {
			uint32_t value;
			struct {
				uint32_t txDMAProcDlyInMACClk : 10; // @ 0x9 -- 0x0 
				uint32_t rifsInMACClk : 10; // @ 0x13 -- 0xa 
				uint32_t rifsTOInMACClk : 10; // @ 0x1d -- 0x14 
			};
		} TIMINGS_9; // @ 0x104
		uint8_t pad7[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t edcaTriggerTimer : 8; // @ 0x7 -- 0x0 
				uint32_t hccaTriggerTimer : 8; // @ 0xf -- 0x8 
			};
		} PROT_TRIG_TIMER; // @ 0x10c
		union {
			uint32_t value;
			struct {
				uint32_t txAbsoluteTimeout : 8; // @ 0x7 -- 0x0 
				uint32_t txPacketTimeout : 8; // @ 0xf -- 0x8 
			};
		} TX_TRIGGER_TIMER; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t rxAbsoluteTimeout : 8; // @ 0x7 -- 0x0 
				uint32_t rxPacketTimeout : 8; // @ 0xf -- 0x8 
				uint32_t rxPayloadUsedCount : 8; // @ 0x17 -- 0x10 
			};
		} RX_TRIGGER_TIMER; // @ 0x114
		union {
			uint32_t value;
			struct {
				uint32_t mibTableIndex : 10; // @ 0x9 -- 0x0 
				uint32_t pad0 : 4;
				uint32_t mibIncrementMode : 1; // @ 0xe -- 0xe 
				uint32_t mibWrite : 1; // @ 0xf -- 0xf 
				uint32_t mibValue : 16; // @ 0x1f -- 0x10 
			};
		} MIB_TABLE_WRITE; // @ 0x118
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounter1 : 32; // @ 0x1f -- 0x0 
			};
		} MONOTONIC_COUNTER_1; // @ 0x11c
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounterLow2 : 32; // @ 0x1f -- 0x0 
			};
		} MONOTONIC_COUNTER_2_LO; // @ 0x120
		union {
			uint32_t value;
			struct {
				uint32_t monotonicCounterHigh2 : 16; // @ 0xf -- 0x0 
			};
		} MONOTONIC_COUNTER_2_HI; // @ 0x124
		union {
			uint32_t value;
			struct {
				uint32_t absTimerValue : 32; // @ 0x1f -- 0x0 
			};
		} ABS_TIMER; // @ 0x128
		uint8_t pad8[0x24];
		union {
			uint32_t value;
			struct {
				uint32_t maxAllowedLength : 20; // @ 0x13 -- 0x0 
			};
		} MAX_RX_LENGTH; // @ 0x150
		uint8_t pad9[0xac];
		union {
			uint32_t value;
			struct {
				uint32_t aifsn0 : 4; // @ 0x3 -- 0x0 
				uint32_t cwMin0 : 4; // @ 0x7 -- 0x4 
				uint32_t cwMax0 : 4; // @ 0xb -- 0x8 
				uint32_t txOpLimit0 : 16; // @ 0x1b -- 0xc 
			};
		} EDCA_AC_0; // @ 0x200
		union {
			uint32_t value;
			struct {
				uint32_t aifsn1 : 4; // @ 0x3 -- 0x0 
				uint32_t cwMin1 : 4; // @ 0x7 -- 0x4 
				uint32_t cwMax1 : 4; // @ 0xb -- 0x8 
				uint32_t txOpLimit1 : 16; // @ 0x1b -- 0xc 
			};
		} EDCA_AC_1; // @ 0x204
		union {
			uint32_t value;
			struct {
				uint32_t aifsn2 : 4; // @ 0x3 -- 0x0 
				uint32_t cwMin2 : 4; // @ 0x7 -- 0x4 
				uint32_t cwMax2 : 4; // @ 0xb -- 0x8 
				uint32_t txOpLimit2 : 16; // @ 0x1b -- 0xc 
			};
		} EDCA_AC_2; // @ 0x208
		union {
			uint32_t value;
			struct {
				uint32_t aifsn3 : 4; // @ 0x3 -- 0x0 
				uint32_t cwMin3 : 4; // @ 0x7 -- 0x4 
				uint32_t cwMax3 : 4; // @ 0xb -- 0x8 
				uint32_t txOpLimit3 : 16; // @ 0x1b -- 0xc 
			};
		} EDCA_AC_3; // @ 0x20c
		uint8_t pad10[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDur : 32; // @ 0x1f -- 0x0 
			};
		} EDCA_CCA_BUSY; // @ 0x220
		union {
			uint32_t value;
			struct {
				uint32_t sendCFEndNow : 1; // @ 0x0 -- 0x0 
				uint32_t sendCFEnd : 1; // @ 0x1 -- 0x1 
				uint32_t pad0 : 2;
				uint32_t remTXOPInDurField : 1; // @ 0x4 -- 0x4 
				uint32_t keepTXOPOpen : 1; // @ 0x5 -- 0x5 
			};
		} EDCA_CNTRL; // @ 0x224
		uint8_t pad11[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t quietCount1 : 8; // @ 0x7 -- 0x0 
				uint32_t quietPeriod1 : 8; // @ 0xf -- 0x8 
				uint32_t quietDuration1 : 16; // @ 0x1f -- 0x10 
			};
		} QUIET_ELEMENT_1A; // @ 0x280
		union {
			uint32_t value;
			struct {
				uint32_t quietOffset1 : 16; // @ 0xf -- 0x0 
			};
		} QUIET_ELEMENT_1B; // @ 0x284
		union {
			uint32_t value;
			struct {
				uint32_t quietCount2 : 8; // @ 0x7 -- 0x0 
				uint32_t quietPeriod2 : 8; // @ 0xf -- 0x8 
				uint32_t quietDuration2 : 16; // @ 0x1f -- 0x10 
			};
		} QUIET_ELEMENT_2A; // @ 0x288
		union {
			uint32_t value;
			struct {
				uint32_t quietOffset2 : 16; // @ 0xf -- 0x0 
			};
		} QUIET_ELEMENT_2B; // @ 0x28c
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec20 : 32; // @ 0x1f -- 0x0 
			};
		} ADD_CCA_BUSY_SEC_20; // @ 0x290
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec40 : 32; // @ 0x1f -- 0x0 
			};
		} ADD_CCA_BUSY_SEC_40; // @ 0x294
		union {
			uint32_t value;
			struct {
				uint32_t ccaBusyDurSec80 : 32; // @ 0x1f -- 0x0 
			};
		} ADD_CCA_BUSY_SEC_80; // @ 0x298
		uint8_t pad12[0x64];
		union {
			uint32_t value;
			struct {
				uint32_t cfEndSTBCDur : 16; // @ 0xf -- 0x0 
				uint32_t ctsSTBCDur : 8; // @ 0x17 -- 0x10 
				uint32_t dualCTSProt : 1; // @ 0x18 -- 0x18 
				uint32_t basicSTBCMCS : 7; // @ 0x1f -- 0x19 
			};
		} STBC_CNTRL; // @ 0x300
		union {
			uint32_t value;
			struct {
				uint32_t startTxFrameEx : 1; // @ 0x0 -- 0x0 
				uint32_t startTxFrmExType : 2; // @ 0x2 -- 0x1 
				uint32_t startTxAC : 2; // @ 0x4 -- 0x3 
				uint32_t pad0 : 1;
				uint32_t startTxKSRIndex : 10; // @ 0xf -- 0x6 
				uint32_t startTxMCSIndex0 : 8; // @ 0x17 -- 0x10 
				uint32_t startTxFormatMod : 3; // @ 0x1a -- 0x18 
				uint32_t startTxPreType : 1; // @ 0x1b -- 0x1b 
				uint32_t startTxBW : 2; // @ 0x1d -- 0x1c 
			};
		} START_TX_1; // @ 0x304
		union {
			uint32_t value;
			struct {
				uint32_t durControlFrm : 16; // @ 0xf -- 0x0 
			};
		} START_TX_2; // @ 0x308
		union {
			uint32_t value;
			struct {
				uint32_t startTxNumExtnSS : 2; // @ 0x1 -- 0x0 
				uint32_t startTxSTBC : 2; // @ 0x3 -- 0x2 
				uint32_t startTxFecCoding : 1; // @ 0x4 -- 0x4 
				uint32_t startTxNTx : 3; // @ 0x7 -- 0x5 
				uint32_t startTxShortGI : 1; // @ 0x8 -- 0x8 
				uint32_t pad0 : 3;
				uint32_t startTxSmoothing : 1; // @ 0xc -- 0xc 
				uint32_t startTxLSTP : 1; // @ 0xd -- 0xd 
				uint32_t pad1 : 2;
				uint32_t startTxAntennaSet : 8; // @ 0x17 -- 0x10 
				uint32_t startTxSMMIndex : 8; // @ 0x1f -- 0x18 
			};
		} START_TX_3; // @ 0x30c
		union {
			uint32_t value;
			struct {
				uint32_t defaultBWTXOPV : 1; // @ 0x0 -- 0x0 
				uint32_t defaultBWTXOP : 2; // @ 0x2 -- 0x1 
				uint32_t dropToLowerBW : 1; // @ 0x3 -- 0x3 
				uint32_t numTryBWAcquisition : 3; // @ 0x6 -- 0x4 
				uint32_t dynBWEn : 1; // @ 0x7 -- 0x7 
				uint32_t aPPDUMaxTime : 8; // @ 0xf -- 0x8 
				uint32_t maxSupportedBW : 2; // @ 0x11 -- 0x10 
			};
		} TX_BW_CNTRL; // @ 0x310
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicHTMCSSetEM : 16; // @ 0xf -- 0x0 
				uint32_t bssBasicHTMCSSetUM : 6; // @ 0x15 -- 0x10 
			};
		} HTMCS; // @ 0x314
		uint8_t pad13[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t bssBasicVHTMCSSet : 16; // @ 0xf -- 0x0 
			};
		} VHTMCS; // @ 0x31c
		union {
			uint32_t value;
			struct {
				uint32_t supportLSTP : 1; // @ 0x0 -- 0x0 
			};
		} LSTP; // @ 0x320
		uint8_t pad14[0xdc];
		union {
			uint32_t value;
			struct {
				uint32_t coexEnable : 1; // @ 0x0 -- 0x0 
				uint32_t pad0 : 11;
				uint32_t coexWlanChanOffset : 1; // @ 0xc -- 0xc 
				uint32_t pad1 : 3;
				uint32_t coexWlanChanFreq : 7; // @ 0x16 -- 0x10 
			};
		} COEX_CONTROL; // @ 0x400
		union {
			uint32_t value;
			struct {
				uint32_t coexPTIAck : 4; // @ 0x3 -- 0x0 
				uint32_t coexPTICntl : 4; // @ 0x7 -- 0x4 
				uint32_t coexPTIMgt : 4; // @ 0xb -- 0x8 
				uint32_t coexPTIVOData : 4; // @ 0xf -- 0xc 
				uint32_t coexPTIVIData : 4; // @ 0x13 -- 0x10 
				uint32_t coexPTIBEData : 4; // @ 0x17 -- 0x14 
				uint32_t coexPTIBKData : 4; // @ 0x1b -- 0x18 
				uint32_t coexPTIBcnData : 4; // @ 0x1f -- 0x1c 
			};
		} COEX_PTI; // @ 0x404
		uint8_t pad15[0xf8];
		union {
			uint32_t value;
			struct {
				uint32_t rxControlLs : 5; // @ 0x4 -- 0x0 
				uint32_t pad0 : 3;
				uint32_t txControlLs : 9; // @ 0x10 -- 0x8 
				uint32_t pad1 : 7;
				uint32_t macControlLs : 8; // @ 0x1f -- 0x18 
			};
		} DEBUG_HWSM_1; // @ 0x500
		union {
			uint32_t value;
			struct {
				uint32_t rxControlCs : 5; // @ 0x4 -- 0x0 
				uint32_t pad0 : 3;
				uint32_t txControlCs : 9; // @ 0x10 -- 0x8 
				uint32_t pad1 : 7;
				uint32_t macControlCs : 8; // @ 0x1f -- 0x18 
			};
		} DEBUG_HWSM_2; // @ 0x504
		uint8_t pad16[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t debugPortRead : 32; // @ 0x1f -- 0x0 
			};
		} DEBUG_PORT_VALUE; // @ 0x50c
		union {
			uint32_t value;
			struct {
				uint32_t debugPortSel1 : 8; // @ 0x7 -- 0x0 
				uint32_t debugPortSel2 : 8; // @ 0xf -- 0x8 
			};
		} DEBUG_PORT_SEL; // @ 0x510
		union {
			uint32_t value;
			struct {
				uint32_t navCounter : 26; // @ 0x19 -- 0x0 
			};
		} DEBUG_NAV; // @ 0x514
		union {
			uint32_t value;
			struct {
				uint32_t currentCW0 : 4; // @ 0x3 -- 0x0 
				uint32_t currentCW1 : 4; // @ 0x7 -- 0x4 
				uint32_t currentCW2 : 4; // @ 0xb -- 0x8 
				uint32_t currentCW3 : 4; // @ 0xf -- 0xc 
				uint32_t activeAC : 2; // @ 0x11 -- 0x10 
				uint32_t pad0 : 6;
				uint32_t backoffOffset : 2; // @ 0x19 -- 0x18 
			};
		} DEBUG_CW; // @ 0x518
		union {
			uint32_t value;
			struct {
				uint32_t ac0QSRC : 8; // @ 0x7 -- 0x0 
				uint32_t ac1QSRC : 8; // @ 0xf -- 0x8 
				uint32_t ac2QSRC : 8; // @ 0x17 -- 0x10 
				uint32_t ac3QSRC : 8; // @ 0x1f -- 0x18 
			};
		} DEBUG_QSRC; // @ 0x51c
		union {
			uint32_t value;
			struct {
				uint32_t ac0QLRC : 8; // @ 0x7 -- 0x0 
				uint32_t ac1QLRC : 8; // @ 0xf -- 0x8 
				uint32_t ac2QLRC : 8; // @ 0x17 -- 0x10 
				uint32_t ac3QLRC : 8; // @ 0x1f -- 0x18 
			};
		} DEBUG_QLRC; // @ 0x520
		uint8_t pad17[0x38];
		union {
			uint32_t value;
			struct {
				uint32_t rxReqForceDeassertion : 1; // @ 0x0 -- 0x0 
			};
		} DEBUG_PHY; // @ 0x55c
	};
} mac_core_regs;
#define MAC_CORE_BASE 0x44b00000
#define MAC_CORE ((mac_core_regs* volatile)(MAC_CORE_BASE))