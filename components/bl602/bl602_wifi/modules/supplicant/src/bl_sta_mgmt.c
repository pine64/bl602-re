/**
* @file bl_sta_mgmt.c
* Source file for BL602
*/
#include "bl_sta_mgmt.h"


static supplicantData_t keyMgmt_SuppData[1];

UINT8 ProcessEAPoLPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da);
BufferDesc_t *GetTxEAPOLBuffer(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **ppTxEapol, BufferDesc_t *pBufDesc);
void allocSupplicantData(void *connectionPtr);
void freeSupplicantData(void *connectionPtr);
void UpdateEAPOLWcbLenAndTransmit(BufferDesc_t *pBufDesc, UINT16 frameLen);
BOOLEAN keyMgmtProcessMsgExt(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg);
void KeyMgmtInitSta(cm_ConnectionInfo_t *connPtr);
Status_e GeneratePWKMsg2(BufferDesc_t *pEAPoLBufDesc, UINT8 *pSNonce, UINT8 *pEAPOLMICKey, UINT8 forceKeyDescVersion);
Status_e GeneratePWKMsg4(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta, BOOLEAN groupKeyReceived);
Status_e GenerateGrpMsg2(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta);
BOOLEAN KeyMgmtStaHsk_Recvd_PWKMsg1(BufferDesc_t *pEAPoLBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da);
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_PWKMsg3(BufferDesc_t *pEAPoLBufDesc);
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_GrpMsg1(BufferDesc_t *pEAPoLBufDesc);
void ProcessKeyMgmtDataSta(BufferDesc_t *pBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da);
void keyMgmtSta_StartSession(cm_ConnectionInfo_t *connPtr, CHAR *pBssid, UINT8 *pStaAddr);
void supplicantInitSession(cm_ConnectionInfo_t *connPtr, CHAR *pSsid, UINT16 len, CHAR *pBssid, UINT8 *pStaAddr);
void init_customApp_mibs(supplicantData_t *suppData);
UINT8 supplicantIsEnabled(void *connectionPtr);
void supplicantDisable(cm_ConnectionInfo_t *connPtr);
void supplicantEnable(void *connectionPtr, int security_mode, void *mcstCipher, void *ucstCipher, bool is_pmf_required);
UINT16 keyMgmtFormatWpaRsnIe(cm_ConnectionInfo_t *connPtr, UINT8 *pos, IEEEtypes_MacAddr_t *pBssid, IEEEtypes_MacAddr_t *pStaAddr, UINT8 *pPmkid, BOOLEAN addPmkid);
void supplicantInit(supplicantData_t *suppData);
UINT16 keyMgmtGetKeySize(cm_ConnectionInfo_t *connPtr, UINT8 isPairwise);
uint8_t add_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise);
uint8_t add_mfp_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise);
void keyMgmtPlumbPairwiseKey(cm_ConnectionInfo_t *connPtr);
void supplicantRemoveKeyInfo(cm_ConnectionInfo_t *connPtr);

struct _wpa_suite_t {
    uint8_t oui[3];
 // +0
    uint8_t type;
 // +3
};

typedef struct _wpa_suite_t wpa_suite_mcast_t;
typedef struct _wpa_suite_t wpa_suite;

typedef struct {
    uint16_t count;
 // +0
    wpa_suite list[2];
 // +2
} wpa_suite_auth_key_mgmt_t;

typedef struct {
    uint16_t count;
 // +0
    wpa_suite list[2];
 // +2
} wpa_suite_ucast_t;

struct _IEEEtypes_Rsn_t {
    uint8_t element_id;
 // +0
    uint8_t len;
 // +1
    uint16_t version;
 // +2
    wpa_suite_mcast_t group_cipher;
 // +4
    wpa_suite_ucast_t pairwise_cipher;
 // +8
    wpa_suite_auth_key_mgmt_t auth_key_mgmt;
 // +18
};

typedef struct _IEEEtypes_Rsn_t IEEEtypes_Rsn_t;

struct _IEEEtypes_Wpa_t {
    uint8_t element_id;
 // +0
    uint8_t len;
 // +1
    uint8_t oui[4];
 // +2
    uint16_t version;
 // +6
    wpa_suite_mcast_t group_cipher;
 // +8
    wpa_suite_ucast_t pairwise_cipher;
 // +12
    wpa_suite_auth_key_mgmt_t auth_key_mgmt;
 // +22
};

typedef struct _IEEEtypes_Wpa_t IEEEtypes_Wpa_t;

unsigned char process_rsn_ie(uint8_t *rsn_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher, bool *is_pmf_required, SecurityMode_t *security_mode, bool wpa2_prefered);
unsigned char process_wpa_ie(uint8_t *wpa_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher);




/** ProcessEAPoLPkt
 */
UINT8 ProcessEAPoLPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** *GetTxEAPOLBuffer
 */
BufferDesc_t *GetTxEAPOLBuffer(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **ppTxEapol, BufferDesc_t *pBufDesc)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** allocSupplicantData
 */
void allocSupplicantData(void *connectionPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** freeSupplicantData
 */
void freeSupplicantData(void *connectionPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** UpdateEAPOLWcbLenAndTransmit
 */
void UpdateEAPOLWcbLenAndTransmit(BufferDesc_t *pBufDesc, UINT16 frameLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtProcessMsgExt
 */
BOOLEAN keyMgmtProcessMsgExt(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** KeyMgmtInitSta
 */
void KeyMgmtInitSta(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** GeneratePWKMsg2
 */
Status_e GeneratePWKMsg2(BufferDesc_t *pEAPoLBufDesc, UINT8 *pSNonce, UINT8 *pEAPOLMICKey, UINT8 forceKeyDescVersion)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** GeneratePWKMsg4
 */
Status_e GeneratePWKMsg4(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta, BOOLEAN groupKeyReceived)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** GenerateGrpMsg2
 */
Status_e GenerateGrpMsg2(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** KeyMgmtStaHsk_Recvd_PWKMsg1
 */
BOOLEAN KeyMgmtStaHsk_Recvd_PWKMsg1(BufferDesc_t *pEAPoLBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** *KeyMgmtStaHsk_Recvd_PWKMsg3
 */
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_PWKMsg3(BufferDesc_t *pEAPoLBufDesc)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *KeyMgmtStaHsk_Recvd_GrpMsg1
 */
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_GrpMsg1(BufferDesc_t *pEAPoLBufDesc)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** ProcessKeyMgmtDataSta
 */
void ProcessKeyMgmtDataSta(BufferDesc_t *pBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtSta_StartSession
 */
void keyMgmtSta_StartSession(cm_ConnectionInfo_t *connPtr, CHAR *pBssid, UINT8 *pStaAddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** supplicantInitSession
 */
void supplicantInitSession(cm_ConnectionInfo_t *connPtr, CHAR *pSsid, UINT16 len, CHAR *pBssid, UINT8 *pStaAddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** init_customApp_mibs
 */
void init_customApp_mibs(supplicantData_t *suppData)
{
	ASSER_ERR(FALSE);
	return;
}

/** supplicantIsEnabled
 */
UINT8 supplicantIsEnabled(void *connectionPtr)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** supplicantDisable
 */
void supplicantDisable(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** supplicantEnable
 */
void supplicantEnable(void *connectionPtr, int security_mode, void *mcstCipher, void *ucstCipher, bool is_pmf_required)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtFormatWpaRsnIe
 */
UINT16 keyMgmtFormatWpaRsnIe(cm_ConnectionInfo_t *connPtr, UINT8 *pos, IEEEtypes_MacAddr_t *pBssid, IEEEtypes_MacAddr_t *pStaAddr, UINT8 *pPmkid, BOOLEAN addPmkid)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** supplicantInit
 */
void supplicantInit(supplicantData_t *suppData)
{
	ASSER_ERR(FALSE);
	return;
}

/** keyMgmtGetKeySize
 */
UINT16 keyMgmtGetKeySize(cm_ConnectionInfo_t *connPtr, UINT8 isPairwise)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** add_key_to_mac
 */
uint8_t add_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** add_mfp_key_to_mac
 */
uint8_t add_mfp_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** keyMgmtPlumbPairwiseKey
 */
void keyMgmtPlumbPairwiseKey(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** supplicantRemoveKeyInfo
 */
void supplicantRemoveKeyInfo(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** process_rsn_ie
 */
unsigned char process_rsn_ie(uint8_t *rsn_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher, bool *is_pmf_required, SecurityMode_t *security_mode, bool wpa2_prefered)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** process_wpa_ie
 */
unsigned char process_wpa_ie(uint8_t *wpa_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher)
{
	ASSER_ERR(FALSE);
	return 0xff;
}
