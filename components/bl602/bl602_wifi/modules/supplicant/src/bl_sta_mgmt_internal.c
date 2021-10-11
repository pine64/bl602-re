#include <bufferMgmtLib.h>
#include <customApp_mib.h>
#include <keyMgmtCommon.h>
#include <keyMgmtSta_rom.h>
#include <keyMgmtStaHostTypes_rom.h>
#include <wltypes.h>


BOOLEAN keyMgmtProcessMsgExt(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg)
{
	__builtin_trap();
}


extern const UINT8 wpa_oui_none[4];
extern const UINT8 wpa_oui01[4];
extern const UINT8 wpa_oui02[4];
extern const UINT8 wpa_oui03[4];
extern const UINT8 wpa_oui04[4];
extern const UINT8 wpa_oui05[4];
extern const UINT8 wpa_oui06[4];
extern const UINT8 wpa2_oui01[4];
extern const UINT8 wpa2_oui02[4];
extern const UINT8 wpa2_oui03[4];
extern const UINT8 wpa2_oui04[4];
extern const UINT8 wpa2_oui05[4];
extern const UINT8 wpa2_oui06[4];
extern const UINT8 wpa2_oui08[4];
extern const UINT8 wpa_oui[3];
extern const UINT8 kde_oui[3];

void supplicantGenerateRand(UINT8 *dataOut, UINT32 length)
{
	__builtin_trap();
}

void ComputeEAPOL_MIC(EAPOL_KeyMsg_t *pKeyMsg, UINT16 data_length, UINT8 *MIC_Key, UINT8 MIC_Key_length, UINT8 micKeyDescVersion)
{
	__builtin_trap();
}

UINT16 keyMgmtGetKeySize_internal(RSNConfig_t *pRsnConfig, UINT8 isPairwise)
{
	__builtin_trap();
}

int isApReplayCounterFresh(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT8 *pRxReplayCount)
{
	__builtin_trap();
}

void updateApReplayCounter(keyMgmtInfoSta_t *pKeyMgmtStaInfo, UINT8 *pRxReplayCount)
{
	__builtin_trap();
}

void formEAPOLEthHdr(EAPOL_KeyMsg_Tx_t *pTxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa)
{
	__builtin_trap();
}

BOOLEAN IsEAPOL_MICValid(EAPOL_KeyMsg_t *pKeyMsg, UINT8 *pMICKey)
{
	__builtin_trap();
}

UINT16 KeyMgmtSta_PopulateEAPOLLengthMic(EAPOL_KeyMsg_Tx_t *pTxEapol, UINT8 *pEAPOLMICKey, UINT8 eapolProtocolVersion, UINT8 forceKeyDescVersion)
{
	__builtin_trap();
}

KDE_t *parseKeyKDE(IEEEtypes_InfoElementHdr_t *pIe)
{
	__builtin_trap();
}

KDE_t *parseKeyKDE_DataType(UINT8 *pData, SINT32 dataLen, IEEEtypes_KDEDataType_e KDEDataType)
{
	__builtin_trap();
}

KDE_t *parseKeyDataGTK(UINT8 *pKey, UINT16 len, KeyData_t *pGRKey)
{
	__builtin_trap();
}

void KeyMgmtSta_ApplyKEK(EAPOL_KeyMsg_t *pKeyMsg, KeyData_t *pGRKey, UINT8 *EAPOL_Encr_Key)
{
	__builtin_trap();
}

BOOLEAN KeyMgmtSta_IsRxEAPOLValid(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg)
{
	__builtin_trap();
}

void KeyMgmtSta_PrepareEAPOLFrame(EAPOL_KeyMsg_Tx_t *pTxEapol, EAPOL_KeyMsg_t *pRxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *pSNonce)
{
	__builtin_trap();
}

BOOLEAN supplicantAkmIsWpaWpa2(AkmSuite_t *pAkm)
{
	__builtin_trap();
}

BOOLEAN supplicantAkmIsWpa2(AkmSuite_t *pAkm)
{
	__builtin_trap();
}

BOOLEAN supplicantAkmIsWpaWpa2Psk(AkmSuite_t *pAkm)
{
	__builtin_trap();
}

BOOLEAN supplicantAkmUsesKdf(AkmSuite_t *pAkm)
{
	__builtin_trap();
}

void supplicantConstructContext(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pContext)
{
	__builtin_trap();
}

void KeyMgmt_DerivePTK(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pPTK, UINT8 *pPMK, BOOLEAN use_kdf)
{
	__builtin_trap();
}

void KeyMgmtSta_DeriveKeys(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf)
{
	__builtin_trap();
}

void SetEAPOLKeyDescTypeVersion(EAPOL_KeyMsg_Tx_t *pTxEapol, BOOLEAN isWPA2, BOOLEAN isKDF, BOOLEAN nonTKIP)
{
	__builtin_trap();
}

EAPOL_KeyMsg_t *GetKeyMsgNonceFromEAPOL(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	__builtin_trap();
}

EAPOL_KeyMsg_t *ProcessRxEAPOL_PwkMsg3(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	__builtin_trap();
}

EAPOL_KeyMsg_t *ProcessRxEAPOL_GrpMsg1(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	__builtin_trap();
}

void KeyMgmtResetCounter(keyMgmtInfoSta_t *pKeyMgmtInfo)
{
	__builtin_trap();
}

void keyMgmtStaRsnSecuredTimeoutHandler(void *env)
{
	__builtin_trap();
}

void keyMgmtSta_StartSession_internal(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT32 expiry)
{
	__builtin_trap();
}

void KeyMgmtSta_InitSession(keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	__builtin_trap();
}
