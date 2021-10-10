#ifndef __IEEE_TYPES_H__
#define __IEEE_TYPES_H__

#include <wltypes.h>


typedef enum {
    IEEE_8021X_PACKET_TYPE_EAP_PACKET = 0,
    IEEE_8021X_PACKET_TYPE_EAPOL_START = 1,
    IEEE_8021X_PACKET_TYPE_EAPOL_LOGOFF = 2,
    IEEE_8021X_PACKET_TYPE_EAPOL_KEY = 3,
    IEEE_8021X_PACKET_TYPE_ASF_ALERT = 4,
} IEEEtypes_8021x_PacketType_e;
typedef enum {
    IEEE_8021X_CODE_TYPE_REQUEST = 1,
    IEEE_8021X_CODE_TYPE_RESPONSE = 2,
    IEEE_8021X_CODE_TYPE_SUCCESS = 3,
    IEEE_8021X_CODE_TYPE_FAILURE = 4,
} IEEEtypes_8021x_CodeType_e;
typedef enum {
    ELEM_ID_SSID = 0,
    ELEM_ID_SUPPORTED_RATES = 1,
    ELEM_ID_FH_PARAM_SET = 2,
    ELEM_ID_DS_PARAM_SET = 3,
    ELEM_ID_CF_PARAM_SET = 4,
    ELEM_ID_TIM = 5,
    ELEM_ID_IBSS_PARAM_SET = 6,
    ELEM_ID_COUNTRY = 7,
    ELEM_ID_HOP_PARAM = 8,
    ELEM_ID_HOP_TABLE = 9,
    ELEM_ID_REQUEST = 10,
    ELEM_ID_BSS_LOAD = 11,
    ELEM_ID_EDCA_PARAM_SET = 12,
    ELEM_ID_TSPEC = 13,
    ELEM_ID_TCLAS = 14,
    ELEM_ID_SCHEDULE = 15,
    ELEM_ID_CHALLENGE_TEXT = 16,
    ELEM_ID_POWER_CONSTRAINT = 32,
    ELEM_ID_POWER_CAPABILITY = 33,
    ELEM_ID_TPC_REQUEST = 34,
    ELEM_ID_TPC_REPORT = 35,
    ELEM_ID_SUPPORTED_CHANNELS = 36,
    ELEM_ID_CHANNEL_SWITCH_ANN = 37,
    ELEM_ID_MEASUREMENT_REQ = 38,
    ELEM_ID_MEASUREMENT_RPT = 39,
    ELEM_ID_QUIET = 40,
    ELEM_ID_IBSS_DFS = 41,
    ELEM_ID_ERP_INFO = 42,
    ELEM_ID_TS_DELAY = 43,
    ELEM_ID_TCLAS_PROCESS = 44,
    ELEM_ID_HT_CAPABILITY = 45,
    ELEM_ID_QOS_CAPABILITY = 46,
    ELEM_ID_RSN = 48,
    ELEM_ID_EXT_SUPPORTED_RATES = 50,
    ELEM_ID_AP_CHANNEL_REPORT = 51,
    ELEM_ID_NEIGHBOR_REPORT = 52,
    ELEM_ID_RCPI = 53,
    ELEM_ID_MOBILITY_DOMAIN = 54,
    ELEM_ID_FAST_BSS_TRANS = 55,
    ELEM_ID_TIMEOUT_INTERVAL = 56,
    ELEM_ID_RIC_DATA = 57,
    ELEM_ID_DSE_REGISTERED_LOC = 58,
    ELEM_ID_SUPPORTED_REGCLASS = 59,
    ELEM_ID_EXT_CHAN_SWITCH_ANN = 60,
    ELEM_ID_HT_INFORMATION = 61,
    ELEM_ID_SECONDARY_CHAN_OFFSET = 62,
    ELEM_ID_BSS_ACCESS_DELAY = 63,
    ELEM_ID_ANTENNA_INFO = 64,
    ELEM_ID_RSNI = 65,
    ELEM_ID_MEAS_PILOT_TX_INFO = 66,
    ELEM_ID_BSS_AVAIL_ADM_CAP = 67,
    ELEM_ID_BSS_AC_ACCESS_DELAY = 68,
    ELEM_ID_RRM_ENABLED_CAP = 70,
    ELEM_ID_MULTI_BSSID = 71,
    ELEM_ID_2040_BSS_COEXISTENCE = 72,
    ELEM_ID_2040_BSS_INTOL_CHRPT = 73,
    ELEM_ID_OBSS_SCAN_PARAM = 74,
    ELEM_ID_RIC_DESCRIPTOR = 75,
    ELEM_ID_MANAGEMENT_MIC = 76,
    ELEM_ID_EVENT_REQUEST = 78,
    ELEM_ID_EVENT_REPORT = 79,
    ELEM_ID_DIAG_REQUEST = 80,
    ELEM_ID_DIAG_REPORT = 81,
    ELEM_ID_LOCATION_PARAM = 82,
    ELEM_ID_NONTRANS_BSSID_CAP = 83,
    ELEM_ID_SSID_LIST = 84,
    ELEM_ID_MBSSID_INDEX = 85,
    ELEM_ID_FMS_DESCRIPTOR = 86,
    ELEM_ID_FMS_REQUEST = 87,
    ELEM_ID_FMS_RESPONSE = 88,
    ELEM_ID_QOS_TRAFFIC_CAP = 89,
    ELEM_ID_BSS_MAX_IDLE_PERIOD = 90,
    ELEM_ID_TFS_REQUEST = 91,
    ELEM_ID_TFS_RESPONSE = 92,
    ELEM_ID_WNM_SLEEP_MODE = 93,
    ELEM_ID_TIM_BCAST_REQUEST = 94,
    ELEM_ID_TIM_BCAST_RESPONSE = 95,
    ELEM_ID_COLLOC_INTF_REPORT = 96,
    ELEM_ID_CHANNEL_USAGE = 97,
    ELEM_ID_TIME_ZONE = 98,
    ELEM_ID_DMS_REQUEST = 99,
    ELEM_ID_DMS_RESPONSE = 100,
    ELEM_ID_LINK_ID = 101,
    ELEM_ID_WAKEUP_SCHEDULE = 102,
    ELEM_ID_TDLS_CS_TIMING = 104,
    ELEM_ID_PTI_CONTROL = 105,
    ELEM_ID_PU_BUFFER_STATUS = 106,
    ELEM_ID_EXT_CAPABILITIES = 127,
    ELEM_ID_VHT_CAPABILITIES = 191,
    ELEM_ID_VHT_OPERATION = 192,
    ELEM_ID_WIDE_BAND_CHAN_SW = 193,
    ELEM_ID_AID = 197,
    ELEM_ID_VHT_OP_MODE_NOTIFICATION = 199,
    ELEM_ID_VENDOR_SPECIFIC = 221,
    ELEM_ID_EXTENSION = 255,
    ELEM_ID_EXT_ASSOC_DELAY_INFO = 1,
    ELEM_ID_EXT_FILS_REQ_PARAMS = 2,
    ELEM_ID_EXT_FILS_KEY_CONFIRM = 3,
    ELEM_ID_EXT_FILS_SESSION = 4,
    ELEM_ID_EXT_FILS_HLP_CONTAINER = 5,
    ELEM_ID_EXT_FILS_IP_ADDR_ASSIGN = 6,
    ELEM_ID_EXT_KEY_DELIVERY = 7,
    ELEM_ID_EXT_FILS_WRAPPED_DATA = 8,
    ELEM_ID_EXT_FTM_SYNC_INFO = 9,
    ELEM_ID_EXT_EXTENDED_REQUEST = 10,
    ELEM_ID_EXT_ESTIMATED_SERVICE_PARAMS = 11,
    ELEM_ID_EXT_FILS_PUBLIC_KEY = 12,
    ELEM_ID_EXT_FILS_NONCE = 13,
    ELEM_ID_EXT_FUTURE_CHANNEL_GUIDANCE = 14,
    ELEM_ID_EXT_OWE_DH_PARAM = 32,
    ELEM_ID_EXT_PASSWORD_IDENTIFIER = 33,
    ELEM_ID_EXT_HE_CAPABILITIES = 35,
    ELEM_ID_EXT_HE_OPERATION = 36,
    SUBELEM_ID_REPORTED_FRAME_BODY = 1,
    SUBELEM_ID_REPORTING_DETAIL = 2,
    SUBELEM_ID_PMK_R1_KEY_HOLDER_ID = 1,
    SUBELEM_ID_GTK = 2,
    SUBELEM_ID_PMK_R0_KEY_HOLDER_ID = 3,
    SUBELEM_ID_IGTK = 4,
    ELEM_ID_WAPI = 68,
} IEEEtypes_ElementId_e;
typedef enum {
    KDE_DATA_TYPE_RESERVED = 0,
    KDE_DATA_TYPE_GTK = 1,
    KDE_DATA_TYPE_RESERVED2 = 2,
    KDE_DATA_TYPE_MACADDR = 3,
    KDE_DATA_TYPE_PMKID = 4,
    KDE_DATA_TYPE_SMK = 5,
    KDE_DATA_TYPE_NONCE = 6,
    KDE_DATA_TYPE_LIFETIME = 7,
    KDE_DATA_TYPE_ERROR = 8,
    KDE_DATA_TYPE_IGTK = 9,
} IEEEtypes_KDEDataType_e;
typedef enum {
    PWR_MODE_ACTIVE = 0,
    PWR_MODE_PWR_SAVE = 1,
} IEEEtypes_PwrMgmtMode_e;
typedef UINT8 IEEEtypes_Len_t;typedef UINT8 IEEEtypes_Addr_t;typedef IEEEtypes_Addr_t IEEEtypes_MacAddr_t[6];typedef UINT8 IEEEtypes_SsId_t[32];typedef UINT16 IEEEtypes_BcnInterval_t;typedef UINT8 IEEEtypes_DtimPeriod_t;
typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
} IEEEtypes_InfoElementHdr_t;
typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    IEEEtypes_SsId_t SsId; // +2
} IEEEtypes_SsIdElement_t;
typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    UINT8 OuiType[4]; // +2
    UINT16 Ver; // +6
    UINT8 GrpKeyCipher[4]; // +8
    UINT16 PwsKeyCnt; // +12
    UINT8 PwsKeyCipherList[4]; // +14
    UINT16 AuthKeyCnt; // +18
    UINT8 AuthKeyList[4]; // +20
} IEEEtypes_WPAElement_t;
typedef struct {
    UINT8 PreAuth:1; // +0
    UINT8 NoPairwise:1; // +0
    UINT8 PtksaReplayCtr:2; // +0
    UINT8 GtksaReplayCtr:2; // +0
    UINT8 MFPR:1; // +0
    UINT8 MFPC:1; // +0
    UINT8 Reserved_8:1; // +1
    UINT8 PeerkeyEnabled:1; // +1
    UINT8 SppAmsduCap:1; // +1
    UINT8 SppAmsduReq:1; // +1
    UINT8 PBAC:1; // +1
    UINT8 Reserved_13_15:3; // +1
} IEEEtypes_RSNCapability_t;
typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    UINT16 Ver; // +2
    UINT8 GrpKeyCipher[4]; // +4
    UINT16 PwsKeyCnt; // +8
    UINT8 PwsKeyCipherList[4]; // +10
    UINT16 AuthKeyCnt; // +14
    UINT8 AuthKeyList[4]; // +16
    IEEEtypes_RSNCapability_t RsnCap; // +20
    UINT16 PMKIDCnt; // +22
    UINT8 PMKIDList[16]; // +24
    UINT8 GrpMgmtCipher[4]; // +40
} IEEEtypes_RSNElement_t;
typedef enum {
    Band_2_4_GHz = 0,
    Band_5_GHz = 1,
    Band_4_GHz = 2,
} ChanBand_e;
typedef enum {
    ChanWidth_20_MHz = 0,
    ChanWidth_10_MHz = 1,
    ChanWidth_40_MHz = 2,
    ChanWidth_80_MHz = 3,
} ChanWidth_e;
typedef enum {
    SECONDARY_CHAN_NONE = 0,
    SECONDARY_CHAN_ABOVE = 1,
    SECONDARY_CHAN_BELOW = 3,
} Chan2Offset_e;
typedef enum {
    MANUAL_MODE = 0,
    ACS_MODE = 1,
} ScanMode_e;
typedef struct {
    ChanBand_e chanBand:2; // +0
    ChanWidth_e chanWidth:2; // +0
    Chan2Offset_e chan2Offset:2; // +0
    ScanMode_e scanMode:2; // +0
} BandConfig_t;
typedef struct {
    BandConfig_t bandConfig; // +0
    UINT8 chanNum; // +1
} ChanBandInfo_t;
typedef struct {
    IEEEtypes_MacAddr_t da; // +0
    IEEEtypes_MacAddr_t sa; // +6
    UINT16 type; // +12
} ether_hdr_t;

#endif // __IEEE_TYPES_H__
