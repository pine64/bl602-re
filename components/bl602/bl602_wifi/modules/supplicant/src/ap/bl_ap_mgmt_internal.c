
BOOLEAN Encrypt_keyData(EAPOL_KeyMsg_Tx_t * tx_eapol_ptr, UINT8 * EAPOL_Encr_Key, Cipher_t * cipher);
void GenerateGTK_internal(KeyData_t * grpKeyData, UINT8 * nonce, IEEEtypes_Addr_t * StaMacAddr);
void InitKeyMgmtInfo(apKeyMgmtInfoStaRom_t * pKeyMgmtInfo, SecurityMode_t * secType, Cipher_t * pwCipher, UINT16 staRsnCap, UINT8 akmType);
BOOLEAN KeyData_CopyWPAWP2(EAPOL_KeyMsg_Tx_t * pTxEAPOL, void * pIe);
BOOLEAN KeyData_UpdateKeyMaterial(EAPOL_KeyMsg_Tx_t * pTxEAPOL, SecurityMode_t * pSecType, void * pWPA, void * pWPA2);
void KeyMgmtAp_DerivePTK(UINT8 * pPMK, IEEEtypes_MacAddr_t * da, IEEEtypes_MacAddr_t * sa, UINT8 * ANonce, UINT8 * SNonce, UINT8 * EAPOL_MIC_Key, UINT8 * EAPOL_Encr_Key, KeyData_t * newPWKey, BOOLEAN use_kdf);
void PopulateKeyMsg(EAPOL_KeyMsg_Tx_t * tx_eapol_ptr, Cipher_t * Cipher, UINT16 Type, UINT32 * replay_cnt, UINT8 * Nonce);
void prepareKDE(EAPOL_KeyMsg_Tx_t * tx_eapol_ptr, KeyData_t * grKey, Cipher_t * cipher);
void ROM_InitGTK(KeyData_t * grpKeyData, UINT8 * nonce, IEEEtypes_Addr_t * StaMacAddr);
int validate4WayHandshakeIe(SecurityMode_t secType, Cipher_t pwCipher, Cipher_t grpCipher, apKeyMgmtInfoStaRom_t * pKeyMgmtInfo, UINT8 akmType, UINT16 rsnCap, Cipher_t config_mcstCipher);
#if 0 //TODO EXISTS ALEADY
/**
* @file bl_ap_mgmt_internal.c
* Source file for BL602
*/
#include "bl_ap_mgmt_internal.h"


void GenerateGTK_internal(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr);
void PopulateKeyMsg(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, Cipher_t *Cipher, UINT16 Type, UINT32 *replay_cnt, UINT8 *Nonce);
void prepareKDE(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, KeyData_t *grKey, Cipher_t *cipher);
BOOLEAN Encrypt_keyData(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, UINT8 *EAPOL_Encr_Key, Cipher_t *cipher);
void KeyMgmtAp_DerivePTK(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf);
BOOLEAN KeyData_CopyWPAWP2(EAPOL_KeyMsg_Tx_t *pTxEAPOL, void *pIe);
BOOLEAN KeyData_UpdateKeyMaterial(EAPOL_KeyMsg_Tx_t *pTxEAPOL, SecurityMode_t *pSecType, void *pWPA, void *pWPA2);
void ROM_InitGTK(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr);
int validate4WayHandshakeIe(SecurityMode_t secType, Cipher_t pwCipher, Cipher_t grpCipher, apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, UINT8 akmType, UINT16 rsnCap, Cipher_t config_mcstCipher);
void InitKeyMgmtInfo(apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType);




/** GenerateGTK_internal
 */
void GenerateGTK_internal(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** PopulateKeyMsg
 */
void PopulateKeyMsg(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, Cipher_t *Cipher, UINT16 Type, UINT32 *replay_cnt, UINT8 *Nonce)
{
	ASSER_ERR(FALSE);
	return;
}

/** prepareKDE
 */
void prepareKDE(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, KeyData_t *grKey, Cipher_t *cipher)
{
	ASSER_ERR(FALSE);
	return;
}

/** Encrypt_keyData
 */
BOOLEAN Encrypt_keyData(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, UINT8 *EAPOL_Encr_Key, Cipher_t *cipher)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** KeyMgmtAp_DerivePTK
 */
void KeyMgmtAp_DerivePTK(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf)
{
	ASSER_ERR(FALSE);
	return;
}

/** KeyData_CopyWPAWP2
 */
BOOLEAN KeyData_CopyWPAWP2(EAPOL_KeyMsg_Tx_t *pTxEAPOL, void *pIe)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** KeyData_UpdateKeyMaterial
 */
BOOLEAN KeyData_UpdateKeyMaterial(EAPOL_KeyMsg_Tx_t *pTxEAPOL, SecurityMode_t *pSecType, void *pWPA, void *pWPA2)
{
	ASSER_ERR(FALSE);
	return FALSE;
}

/** ROM_InitGTK
 */
void ROM_InitGTK(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** validate4WayHandshakeIe
 */
int validate4WayHandshakeIe(SecurityMode_t secType, Cipher_t pwCipher, Cipher_t grpCipher, apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, UINT8 akmType, UINT16 rsnCap, Cipher_t config_mcstCipher)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** InitKeyMgmtInfo
 */
void InitKeyMgmtInfo(apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
