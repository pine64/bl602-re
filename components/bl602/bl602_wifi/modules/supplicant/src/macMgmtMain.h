/**
* @file macMgmtMain.h
* Header file for BL602
*/
#ifndef __MACMGMTMAIN_H__
#define __MACMGMTMAIN_H__

typedef struct {
    IEEEtypes_SsId_t SsId; // +0
    IEEEtypes_Len_t SsIdLen; // +32
    IEEEtypes_DtimPeriod_t DtimPeriod; // +33
    IEEEtypes_BcnInterval_t BcnPeriod; // +34
    IEEEtypes_MacAddr_t BssId; // +36
    UINT16 RtsThresh; // +42
    UINT16 FragThresh; // +44
    UINT8 ShortRetryLim; // +46
    UINT8 LongRetryLim; // +47
    UINT8 MbssBcnIntFac; // +48
    UINT8 MbssCurBcnIntCnt; // +49
    UINT16 Reserved; // +50
} CommonMlmeData_t;
struct _txQingInfo_t {
    IEEEtypes_PwrMgmtMode_e mode; // +0
};
typedef struct _txQingInfo_t txQingInfo_t;
typedef struct {
    UINT16 keyExchange:1; // +0
    UINT16 authenticate:1; // +0
    UINT16 reserved:14; // +0
} Operation_t;
typedef struct {
    Cipher_t mcstCipher; // +0
    UINT8 mcstCipherCount; // +1
    Cipher_t wpaUcstCipher; // +2
    UINT8 wpaUcstCipherCount; // +3
    Cipher_t wpa2UcstCipher; // +4
    UINT8 wpa2UcstCipherCount; // +5
    UINT16 AuthKey; // +6
    UINT16 AuthKeyCount; // +8
    Operation_t Akmp; // +10
    UINT32 GrpReKeyTime; // +12
    UINT8 PSKPassPhrase[64]; // +16
    UINT8 PSKPassPhraseLen; // +80
    UINT8 PSKValue[32]; // +81
    UINT8 MaxPwsHskRetries; // +113
    UINT8 MaxGrpHskRetries; // +114
    UINT32 PwsHskTimeOut; // +116
    UINT32 GrpHskTimeOut; // +120
} apRsnConfig_t;
typedef struct {
    UINT32 StaAgeOutTime; // +0
    UINT32 PsStaAgeOutTime; // +4
    apRsnConfig_t RsnConfig; // +8
    CommonMlmeData_t comData; // +132
} BssConfig_t;
typedef struct {
    BOOLEAN updatePassPhrase; // +0
    struct mm_timer_tag apMicTimer; // +4
    KeyData_t grpKeyData; // +20
    UINT8 GNonce[32]; // +60
    UINT32 grpRekeyBcnCntConfigured; // +92
    UINT32 grpRekeyBcnCntRemaining; // +96
} BssData_t;
typedef struct {
    txQingInfo_t pwrSaveInfo; // +0
    apKeyMgmtInfoSta_t keyMgmtInfo; // +4
} staData_t;
typedef struct {
    BssConfig_t bssConfig; // +0
    BssData_t bssData; // +184
    UINT8 ApStop_Req_Pending; // +284
} apInfo_t;

#endif // __MACMGMTMAIN_H__
