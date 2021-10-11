#include <bufferMgmtLib.h>
#include <keyMgmtCommon.h>
#include <keyMgmtSta.h>
#include <keyMgmtSta_rom.h>
#include <w81connmgr.h>
#include <wltypes.h>


static supplicantData_t keyMgmt_SuppData[1];


void ProcessEAPoLKeyPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	__builtin_trap();
}

UINT8 ProcessEAPoLPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	__builtin_trap();
}

BufferDesc_t *GetTxEAPOLBuffer(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **ppTxEapol, BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

void allocSupplicantData(void *connectionPtr)
{
	__builtin_trap();
}

void freeSupplicantData(void *connectionPtr)
{
	__builtin_trap();
}

void UpdateEAPOLWcbLenAndTransmit(BufferDesc_t *pBufDesc, UINT16 frameLen)
{
	__builtin_trap();
}

BOOLEAN keyMgmtProcessMsgExt(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg)
{
	__builtin_trap();
}

void KeyMgmtInitSta(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

Status_e GeneratePWKMsg2(BufferDesc_t *pEAPoLBufDesc, UINT8 *pSNonce, UINT8 *pEAPOLMICKey, UINT8 forceKeyDescVersion)
{
	__builtin_trap();
}

Status_e GeneratePWKMsg4(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta, BOOLEAN groupKeyReceived)
{
	__builtin_trap();
}

Status_e GenerateGrpMsg2(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta)
{
	__builtin_trap();
}

BOOLEAN KeyMgmtStaHsk_Recvd_PWKMsg1(BufferDesc_t *pEAPoLBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	__builtin_trap();
}

const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_PWKMsg3(BufferDesc_t *pEAPoLBufDesc)
{
	__builtin_trap();
}

const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_GrpMsg1(BufferDesc_t *pEAPoLBufDesc)
{
	__builtin_trap();
}

void ProcessKeyMgmtDataSta(BufferDesc_t *pBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da)
{
	__builtin_trap();
}

void keyMgmtSta_StartSession(cm_ConnectionInfo_t *connPtr, CHAR *pBssid, UINT8 *pStaAddr)
{
	__builtin_trap();
}

void supplicantInitSession(cm_ConnectionInfo_t *connPtr, CHAR *pSsid, UINT16 len, CHAR *pBssid, UINT8 *pStaAddr)
{
	__builtin_trap();
}

void init_customApp_mibs(supplicantData_t *suppData)
{
	__builtin_trap();
}

UINT8 supplicantIsEnabled(void *connectionPtr)
{
	__builtin_trap();
}

void supplicantDisable(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

void supplicantEnable(void *connectionPtr, int security_mode, void *mcstCipher, void *ucstCipher, bool is_pmf_required)
{
	__builtin_trap();
}

UINT16 keyMgmtFormatWpaRsnIe(cm_ConnectionInfo_t *connPtr, UINT8 *pos, IEEEtypes_MacAddr_t *pBssid, IEEEtypes_MacAddr_t *pStaAddr, UINT8 *pPmkid, BOOLEAN addPmkid)
{
	__builtin_trap();
}

void supplicantInit(supplicantData_t *suppData)
{
	__builtin_trap();
}

UINT16 keyMgmtGetKeySize(cm_ConnectionInfo_t *connPtr, UINT8 isPairwise)
{
	__builtin_trap();
}

uint8_t add_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise)
{
	__builtin_trap();
}

uint8_t add_mfp_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise)
{
	__builtin_trap();
}

void keyMgmtPlumbPairwiseKey(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

BufferReturnNotify_t keyMgmtKeyGroupTxDone(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

BufferReturnNotify_t keyMgmtKeyPairwiseTxDone(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

BufferReturnNotify_t keyMgmtKeyPairAndGroupTxDone(BufferDesc_t *pBufDesc)
{
	__builtin_trap();
}

void supplicantRemoveKeyInfo(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}


struct _wpa_suite_t {
  uint8_t oui[3]; // +0
  uint8_t type; // +3
};
typedef struct _wpa_suite_t wpa_suite;
typedef struct _wpa_suite_t wpa_suite_mcast_t;

typedef struct {
  uint16_t count; // +0
  wpa_suite list[2]; // +2
} wpa_suite_ucast_t;

typedef struct {
  uint16_t count; // +0
  wpa_suite list[2]; // +2
} wpa_suite_auth_key_mgmt_t;

struct _IEEEtypes_Rsn_t {
  uint8_t element_id; // +0
  uint8_t len; // +1
  uint16_t version; // +2
  wpa_suite_mcast_t group_cipher; // +4
  wpa_suite_ucast_t pairwise_cipher; // +8
  wpa_suite_auth_key_mgmt_t auth_key_mgmt; // +18
};
typedef struct _IEEEtypes_Rsn_t IEEEtypes_Rsn_t;

struct _IEEEtypes_Wpa_t {
  uint8_t element_id; // +0
  uint8_t len; // +1
  uint8_t oui[4]; // +2
  uint16_t version; // +6
  wpa_suite_mcast_t group_cipher; // +8
  wpa_suite_ucast_t pairwise_cipher; // +12
  wpa_suite_auth_key_mgmt_t auth_key_mgmt; // +22
};
typedef struct _IEEEtypes_Wpa_t IEEEtypes_Wpa_t;


unsigned char process_rsn_ie(uint8_t *rsn_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher, bool *is_pmf_required, SecurityMode_t *security_mode, bool wpa2_prefered)
{
	__builtin_trap();
}

unsigned char process_wpa_ie(uint8_t *wpa_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher)
{
	__builtin_trap();
}
