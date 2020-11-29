
void apm_sta_add(void);
Status_e GenerateApEapolMsg(cm_ConnectionInfo_t * connPtr, keyMgmtState_e msgState, BufferDesc_t * pBufDesc);
Status_e GeneratePWKMsg1(cm_ConnectionInfo_t * connPtr, BufferDesc_t * pBufDesc);
Status_e GeneratePWKMsg3(cm_ConnectionInfo_t * connPtr, BufferDesc_t * pBufDesc);
void incrementReplayCounter(apKeyMgmtInfoSta_t * pKeyMgmtInfo);
void InitGroupKey(cm_ConnectionInfo_t * connPtr);
void InitStaKeyInfo(void * pConn, SecurityMode_t * secType, Cipher_t * pwCipher, UINT16 staRsnCap, UINT8 akmType);
BOOLEAN IsAuthenticatorEnabled(cm_ConnectionInfo_t * connPtr);
int isValidReplayCount(apKeyMgmtInfoSta_t * pKeyMgmtInfo, UINT8 * pRxReplayCount);
void KeyMgmtInit(cm_ConnectionInfo_t * connPtr);
BufferDesc_t * PrepDefaultEapolMsg(cm_ConnectionInfo_t * connPtr, EAPOL_KeyMsg_Tx_t * * pTxEapolPtr, BufferDesc_t * pBufDesc);
Status_e ProcessKeyMgmtDataAp(BufferDesc_t * pBufDesc);
Status_e ProcessPWKMsg2(BufferDesc_t * pBufDesc);
Status_e ProcessPWKMsg4(BufferDesc_t * pBufDesc);
void ReInitGTK(cm_ConnectionInfo_t * connPtr);
void RemoveAPKeyInfo(void * pConn);
BOOLEAN SendEAPOLMsgUsingBufDesc(cm_ConnectionInfo_t * connPtr, BufferDesc_t * pBufDesc);
#if 0 //TODO EXISTS ALEADY
/**
* @file bl_ap_mgmt.c
* Source file for BL602
*/
#include "bl_ap_mgmt.h"


void ReInitGTK(cm_ConnectionInfo_t *connPtr);
void KeyMgmtInit(cm_ConnectionInfo_t *connPtr);
BufferDesc_t *PrepDefaultEapolMsg(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **pTxEapolPtr, BufferDesc_t *pBufDesc);
Status_e GeneratePWKMsg1(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc);

uint8_t int_rsn_ie[26];
uint8_t rsn_len;

Status_e ProcessPWKMsg2(BufferDesc_t *pBufDesc);
Status_e GeneratePWKMsg3(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc);
Status_e ProcessPWKMsg4(BufferDesc_t *pBufDesc);
BOOLEAN SendEAPOLMsgUsingBufDesc(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc);
Status_e GenerateApEapolMsg(cm_ConnectionInfo_t *connPtr, keyMgmtState_e msgState, BufferDesc_t *pBufDesc);
Status_e ProcessKeyMgmtDataAp(BufferDesc_t *pBufDesc);
BOOLEAN IsAuthenticatorEnabled(cm_ConnectionInfo_t *connPtr);
void InitStaKeyInfo(void *pConn, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType);
void RemoveAPKeyInfo(void *pConn);
void InitGroupKey(cm_ConnectionInfo_t *connPtr);




/** ReInitGTK
 */
void ReInitGTK(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyMgmtInit
 */
void KeyMgmtInit(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** *PrepDefaultEapolMsg
 */
BufferDesc_t *PrepDefaultEapolMsg(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **pTxEapolPtr, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** GeneratePWKMsg1
 */
Status_e GeneratePWKMsg1(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** ProcessPWKMsg2
 */
Status_e ProcessPWKMsg2(BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** GeneratePWKMsg3
 */
Status_e GeneratePWKMsg3(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** ProcessPWKMsg4
 */
Status_e ProcessPWKMsg4(BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** SendEAPOLMsgUsingBufDesc
 */
BOOLEAN SendEAPOLMsgUsingBufDesc(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** GenerateApEapolMsg
 */
Status_e GenerateApEapolMsg(cm_ConnectionInfo_t *connPtr, keyMgmtState_e msgState, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** ProcessKeyMgmtDataAp
 */
Status_e ProcessKeyMgmtDataAp(BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** IsAuthenticatorEnabled
 */
BOOLEAN IsAuthenticatorEnabled(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** InitStaKeyInfo
 */
void InitStaKeyInfo(void *pConn, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType)
{
	ASSER_ERR(FALSE);
	return;
}

/** RemoveAPKeyInfo
 */
void RemoveAPKeyInfo(void *pConn)
{
	ASSER_ERR(FALSE);
	return;
}

/** InitGroupKey
 */
void InitGroupKey(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
