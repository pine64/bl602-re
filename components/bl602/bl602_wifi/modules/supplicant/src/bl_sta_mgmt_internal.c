/**
* @file bl_sta_mgmt_internal.c
* Source file for BL602
*/
#include "bl_sta_mgmt_internal.h"


const UINT8 wpa_oui_none[4];
const UINT8 wpa_oui01[4];
const UINT8 wpa_oui02[4];
const UINT8 wpa_oui03[4];
const UINT8 wpa_oui04[4];
const UINT8 wpa_oui05[4];
const UINT8 wpa_oui06[4];
const UINT8 wpa2_oui01[4];
const UINT8 wpa2_oui02[4];
const UINT8 wpa2_oui03[4];
const UINT8 wpa2_oui04[4];
const UINT8 wpa2_oui05[4];
const UINT8 wpa2_oui06[4];
const UINT8 wpa2_oui08[4];
const UINT8 wpa_oui[3];
const UINT8 kde_oui[3];

void supplicantGenerateRand(UINT8 *dataOut, UINT32 length);
void ComputeEAPOL_MIC(EAPOL_KeyMsg_t *pKeyMsg, UINT16 data_length, UINT8 *MIC_Key, UINT8 MIC_Key_length, UINT8 micKeyDescVersion);
UINT16 keyMgmtGetKeySize_internal(RSNConfig_t *pRsnConfig, UINT8 isPairwise);
int isApReplayCounterFresh(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT8 *pRxReplayCount);
void updateApReplayCounter(keyMgmtInfoSta_t *pKeyMgmtStaInfo, UINT8 *pRxReplayCount);
void formEAPOLEthHdr(EAPOL_KeyMsg_Tx_t *pTxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa);
BOOLEAN IsEAPOL_MICValid(EAPOL_KeyMsg_t *pKeyMsg, UINT8 *pMICKey);
UINT16 KeyMgmtSta_PopulateEAPOLLengthMic(EAPOL_KeyMsg_Tx_t *pTxEapol, UINT8 *pEAPOLMICKey, UINT8 eapolProtocolVersion, UINT8 forceKeyDescVersion);
KDE_t *parseKeyKDE(IEEEtypes_InfoElementHdr_t *pIe);
KDE_t *parseKeyKDE_DataType(UINT8 *pData, SINT32 dataLen, IEEEtypes_KDEDataType_e KDEDataType);
KDE_t *parseKeyDataGTK(UINT8 *pKey, UINT16 len, KeyData_t *pGRKey);
void KeyMgmtSta_ApplyKEK(EAPOL_KeyMsg_t *pKeyMsg, KeyData_t *pGRKey, UINT8 *EAPOL_Encr_Key);
BOOLEAN KeyMgmtSta_IsRxEAPOLValid(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg);
void KeyMgmtSta_PrepareEAPOLFrame(EAPOL_KeyMsg_Tx_t *pTxEapol, EAPOL_KeyMsg_t *pRxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *pSNonce);
BOOLEAN supplicantAkmIsWpaWpa2(AkmSuite_t *pAkm);
BOOLEAN supplicantAkmIsWpa2(AkmSuite_t *pAkm);
BOOLEAN supplicantAkmIsWpaWpa2Psk(AkmSuite_t *pAkm);
BOOLEAN supplicantAkmUsesKdf(AkmSuite_t *pAkm);
void supplicantConstructContext(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pContext);
void KeyMgmt_DerivePTK(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pPTK, UINT8 *pPMK, BOOLEAN use_kdf);
void KeyMgmtSta_DeriveKeys(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf);
void SetEAPOLKeyDescTypeVersion(EAPOL_KeyMsg_Tx_t *pTxEapol, BOOLEAN isWPA2, BOOLEAN isKDF, BOOLEAN nonTKIP);
EAPOL_KeyMsg_t *GetKeyMsgNonceFromEAPOL(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
EAPOL_KeyMsg_t *ProcessRxEAPOL_PwkMsg3(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
EAPOL_KeyMsg_t *ProcessRxEAPOL_GrpMsg1(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
void KeyMgmtResetCounter(keyMgmtInfoSta_t *pKeyMgmtInfo);
void keyMgmtStaRsnSecuredTimeoutHandler(void *env);
void keyMgmtSta_StartSession_internal(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT32 expiry);
void KeyMgmtSta_InitSession(keyMgmtInfoSta_t *pKeyMgmtInfoSta);




/** supplicantGenerateRand
 */
void supplicantGenerateRand(UINT8 *dataOut, UINT32 length)
{
	ASSER_ERR(FALSE);
	return;
}

/** ComputeEAPOL_MIC
 */
void ComputeEAPOL_MIC(EAPOL_KeyMsg_t *pKeyMsg, UINT16 data_length, UINT8 *MIC_Key, UINT8 MIC_Key_length, UINT8 micKeyDescVersion)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtGetKeySize_internal
 */
UINT16 keyMgmtGetKeySize_internal(RSNConfig_t *pRsnConfig, UINT8 isPairwise)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** isApReplayCounterFresh
 */
int isApReplayCounterFresh(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT8 *pRxReplayCount)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** updateApReplayCounter
 */
void updateApReplayCounter(keyMgmtInfoSta_t *pKeyMgmtStaInfo, UINT8 *pRxReplayCount)
{
	ASSER_ERR(FALSE);
	return;
}

/** formEAPOLEthHdr
 */
void formEAPOLEthHdr(EAPOL_KeyMsg_Tx_t *pTxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa)
{
	ASSER_ERR(FALSE);
	return;
}

/** IsEAPOL_MICValid
 */
BOOLEAN IsEAPOL_MICValid(EAPOL_KeyMsg_t *pKeyMsg, UINT8 *pMICKey)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** KeyMgmtSta_PopulateEAPOLLengthMic
 */
UINT16 KeyMgmtSta_PopulateEAPOLLengthMic(EAPOL_KeyMsg_Tx_t *pTxEapol, UINT8 *pEAPOLMICKey, UINT8 eapolProtocolVersion, UINT8 forceKeyDescVersion)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** *parseKeyKDE
 */
KDE_t *parseKeyKDE(IEEEtypes_InfoElementHdr_t *pIe)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *parseKeyKDE_DataType
 */
KDE_t *parseKeyKDE_DataType(UINT8 *pData, SINT32 dataLen, IEEEtypes_KDEDataType_e KDEDataType)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *parseKeyDataGTK
 */
KDE_t *parseKeyDataGTK(UINT8 *pKey, UINT16 len, KeyData_t *pGRKey)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** KeyMgmtSta_ApplyKEK
 */
void KeyMgmtSta_ApplyKEK(EAPOL_KeyMsg_t *pKeyMsg, KeyData_t *pGRKey, UINT8 *EAPOL_Encr_Key)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyMgmtSta_IsRxEAPOLValid
 */
BOOLEAN KeyMgmtSta_IsRxEAPOLValid(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** KeyMgmtSta_PrepareEAPOLFrame
 */
void KeyMgmtSta_PrepareEAPOLFrame(EAPOL_KeyMsg_Tx_t *pTxEapol, EAPOL_KeyMsg_t *pRxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *pSNonce)
{
	ASSER_ERR(FALSE);
	return;
}

/** supplicantAkmIsWpaWpa2
 */
BOOLEAN supplicantAkmIsWpaWpa2(AkmSuite_t *pAkm)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** supplicantAkmIsWpa2
 */
BOOLEAN supplicantAkmIsWpa2(AkmSuite_t *pAkm)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** supplicantAkmIsWpaWpa2Psk
 */
BOOLEAN supplicantAkmIsWpaWpa2Psk(AkmSuite_t *pAkm)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** supplicantAkmUsesKdf
 */
BOOLEAN supplicantAkmUsesKdf(AkmSuite_t *pAkm)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** supplicantConstructContext
 */
void supplicantConstructContext(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pContext)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyMgmt_DerivePTK
 */
void KeyMgmt_DerivePTK(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pPTK, UINT8 *pPMK, BOOLEAN use_kdf)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyMgmtSta_DeriveKeys
 */
void KeyMgmtSta_DeriveKeys(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf)
{
	ASSER_ERR(FALSE);
	return;
}

/** SetEAPOLKeyDescTypeVersion
 */
void SetEAPOLKeyDescTypeVersion(EAPOL_KeyMsg_Tx_t *pTxEapol, BOOLEAN isWPA2, BOOLEAN isKDF, BOOLEAN nonTKIP)
{
	ASSER_ERR(FALSE);
	return;
}

/** *GetKeyMsgNonceFromEAPOL
 */
EAPOL_KeyMsg_t *GetKeyMsgNonceFromEAPOL(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *ProcessRxEAPOL_PwkMsg3
 */
EAPOL_KeyMsg_t *ProcessRxEAPOL_PwkMsg3(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *ProcessRxEAPOL_GrpMsg1
 */
EAPOL_KeyMsg_t *ProcessRxEAPOL_GrpMsg1(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** KeyMgmtResetCounter
 */
void KeyMgmtResetCounter(keyMgmtInfoSta_t *pKeyMgmtInfo)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtStaRsnSecuredTimeoutHandler
 */
void keyMgmtStaRsnSecuredTimeoutHandler(void *env)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtSta_StartSession_internal
 */
void keyMgmtSta_StartSession_internal(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT32 expiry)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyMgmtSta_InitSession
 */
void KeyMgmtSta_InitSession(keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	ASSER_ERR(FALSE);
	return;
}
