
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
