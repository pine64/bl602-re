#ifndef _KEYMGMTSTA_ROM_H_
#define _KEYMGMTSTA_ROM_H_

#include <lmac/mm/mm_timer.h>
#include <modules/supplicant/bufferMgmtLib.h>
#include <modules/supplicant/customApp_mib.h>
#include <modules/supplicant/KeyApiStaDefs.h>
#include <modules/supplicant/keyApiStaTypes_rom.h>
#include <modules/supplicant/keyMgmtCommon.h>
#include <modules/supplicant/wltypes.h>


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


void updateApReplayCounter(keyMgmtInfoSta_t *pKeyMgmtStaInfo, UINT8 *pRxReplayCount);
void formEAPOLEthHdr(EAPOL_KeyMsg_Tx_t *pTxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa);


extern BOOLEAN (*ComputeEAPOL_MIC_hook)(EAPOL_KeyMsg_t*, UINT16, UINT8*, UINT8, UINT8);
extern BOOLEAN (*FillKeyMaterialStruct_internal_hook)(key_MgtMaterial_t*, UINT16, UINT8, KeyData_t*);
extern BOOLEAN (*supplicantSetAssocRsn_internal_hook)(RSNConfig_t*, SecurityParams_t*, SecurityMode_t, Cipher_t*, Cipher_t*, AkmSuite_t*, IEEEtypes_RSNCapability_t*, Cipher_t*);
extern BOOLEAN (*keyMgmtFormatWpaRsnIe_internal_hook)(RSNConfig_t*, UINT8*, IEEEtypes_MacAddr_t*, IEEEtypes_MacAddr_t*, UINT8*, BOOLEAN, UINT16*);
extern BOOLEAN (*install_wpa_none_keys_internal_hook)(key_MgtMaterial_t*, UINT8*, UINT8, UINT8);
extern BOOLEAN (*keyMgmtGetKeySize_internal_hook)(RSNConfig_t*, UINT8, UINT16*);


UINT16 keyMgmtGetKeySize_internal(RSNConfig_t *pRsnConfig, UINT8 isPairwise);


extern BOOLEAN (*parseKeyKDE_DataType_hook)(UINT8*, SINT32, IEEEtypes_KDEDataType_e, UINT32*);
extern BOOLEAN (*parseKeyDataGTK_hook)(UINT8*, UINT16, KeyData_t*, UINT32*);


BOOLEAN IsEAPOL_MICValid(EAPOL_KeyMsg_t *pKeyMsg, UINT8 *pMICKey);


extern BOOLEAN (*KeyMgmtSta_ApplyKEK_hook)(EAPOL_KeyMsg_t*, KeyData_t*, UINT8*);
extern BOOLEAN (*KeyMgmtSta_IsRxEAPOLValid_hook)(keyMgmtInfoSta_t*, EAPOL_KeyMsg_t*, BOOLEAN*);
extern BOOLEAN (*KeyMgmtSta_PrepareEAPOLFrame_hook)(EAPOL_KeyMsg_Tx_t*, EAPOL_KeyMsg_t*, IEEEtypes_MacAddr_t*, IEEEtypes_MacAddr_t*, UINT8*);


void KeyMgmtSta_PrepareEAPOLFrame(EAPOL_KeyMsg_Tx_t *pTxEapol, EAPOL_KeyMsg_t *pRxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *pSNonce);


extern BOOLEAN (*KeyMgmtSta_PopulateEAPOLLengthMic_hook)(EAPOL_KeyMsg_Tx_t*, UINT8*, UINT8, UINT8, UINT16*);


UINT16 KeyMgmtSta_PopulateEAPOLLengthMic(EAPOL_KeyMsg_Tx_t *pTxEapol, UINT8 *pEAPOLMICKey, UINT8 eapolProtocolVersion, UINT8 forceKeyDescVersion);


extern BOOLEAN (*KeyMgmtSta_PrepareEAPOLMicErrFrame_hook)(EAPOL_KeyMsg_Tx_t*, BOOLEAN, IEEEtypes_MacAddr_t*, IEEEtypes_MacAddr_t*, keyMgmtInfoSta_t*);


void KeyMgmtSta_DeriveKeys(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf);
void SetEAPOLKeyDescTypeVersion(EAPOL_KeyMsg_Tx_t *pTxEapol, BOOLEAN isWPA2, BOOLEAN isKDF, BOOLEAN nonTKIP);
void KeyMgmtResetCounter(keyMgmtInfoSta_t *pKeyMgmtInfo);
void keyMgmtSta_StartSession_internal(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT32 expiry);


extern BOOLEAN (*ramHook_keyMgmtProcessMsgExt)(keyMgmtInfoSta_t*, EAPOL_KeyMsg_t*);
extern void (*ramHook_keyMgmtSendDeauth)(void*, UINT16);


EAPOL_KeyMsg_t *GetKeyMsgNonceFromEAPOL(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
EAPOL_KeyMsg_t *ProcessRxEAPOL_PwkMsg3(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
EAPOL_KeyMsg_t *ProcessRxEAPOL_GrpMsg1(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
void KeyMgmtSta_InitSession(keyMgmtInfoSta_t *pKeyMgmtInfoSta);

#endif // _KEYMGMTSTA_ROM_H_
