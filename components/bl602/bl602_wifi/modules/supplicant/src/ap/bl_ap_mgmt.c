#include <keyMgmtApTypes.h>
#include <keyMgmtCommon.h>
#include <w81connmgr.h>


void incrementReplayCounter(apKeyMgmtInfoSta_t *pKeyMgmtInfo)
{
	__builtin_trap();
}

int isValidReplayCount(apKeyMgmtInfoSta_t *pKeyMgmtInfo, UINT8 *pRxReplayCount)
{
	__builtin_trap();
}

void ReInitGTK(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

void KeyMgmtInit(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

BufferDesc_t *PrepDefaultEapolMsg(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **pTxEapolPtr, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

Status_e GeneratePWKMsg1(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}


extern uint8_t int_rsn_ie[26];
extern uint8_t rsn_len;

Status_e ProcessPWKMsg2(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

Status_e GeneratePWKMsg3(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

void apm_sta_add(uint8_t sta_idx);

Status_e ProcessPWKMsg4(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

BOOLEAN SendEAPOLMsgUsingBufDesc(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

Status_e GenerateApEapolMsg(cm_ConnectionInfo_t *connPtr, keyMgmtState_e msgState, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

Status_e ProcessKeyMgmtDataAp(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

BOOLEAN IsAuthenticatorEnabled(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

void InitStaKeyInfo(void *pConn, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType)
{
	__builtin_trap();
}

void RemoveAPKeyInfo(void *pConn)
{
	__builtin_trap();
}

void InitGroupKey(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}
