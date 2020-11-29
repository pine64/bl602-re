/**
* @file keyMgmtSta_rom.h
* Header file for BL602
*/
#ifndef __KEYMGMTSTA_ROM_H__
#define __KEYMGMTSTA_ROM_H__

typedef enum {
    NO_MIC_FAILURE = 0,
    FIRST_MIC_FAIL_IN_60_SEC = 1,
    SECOND_MIC_FAIL_IN_60_SEC = 2,
} MIC_Fail_State_e;
typedef struct {
    MIC_Fail_State_e status; // +0
    BOOLEAN MICCounterMeasureEnabled; // +4
    UINT32 disableStaAsso; // +8
} MIC_Error_t;
typedef struct {
    UINT8 TKIPICVErrors; // +0
    UINT8 TKIPLocalMICFailures; // +1
    UINT8 TKIPCounterMeasuresInvoked; // +2
} customMIB_RSNStats_t;
typedef struct {
    UINT8 ANonce[32]; // +0
    UINT8 SNonce[32]; // +32
    UINT8 EAPOL_MIC_Key[16]; // +64
    UINT8 EAPOL_Encr_Key[16]; // +80
    UINT32 apCounterLo; // +96
    UINT32 apCounterHi; // +100
    UINT32 apCounterZeroDone; // +104
    UINT32 staCounterLo; // +108
    UINT32 staCounterHi; // +112
    BOOLEAN RSNDataTrafficEnabled; // +116
    BOOLEAN RSNSecured; // +120
    BOOLEAN pwkHandshakeComplete; // +124
    cipher_key_t *pRxDecryptKey; // +128
    KeyData_t PWKey; // +132
    KeyData_t GRKey; // +172
    KeyData_t newPWKey; // +212
    MIC_Error_t sta_MIC_Error; // +252
    struct mm_timer_tag rsnTimer; // +264
    struct cm_ConnectionInfo *connPtr; // +280
    KeyData_t IGtk; // +284
} keyMgmtInfoSta_t;
typedef struct {
    UINT8 kck[16]; // +0
    UINT8 kek[16]; // +16
    UINT8 tk[16]; // +32
    UINT8 rxMicKey[8]; // +48
    UINT8 txMicKey[8]; // +56
} TkipPtk_t;

#endif // __KEYMGMTSTA_ROM_H__
