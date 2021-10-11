#ifndef __KEYMGMTAP_ROM_H__
#define __KEYMGMTAP_ROM_H__

#include <keyMgmtApTypes_rom.h>
#include <keyMgmtCommon.h>
#include <keyMgmtStaHostTypes_rom.h>
#include <keyMgmtStaTypes.h>
#include <wltypes.h>


void PopulateKeyMsg(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, Cipher_t *Cipher, UINT16 Type, UINT32 *replay_cnt, UINT8 *Nonce);
void prepareKDE(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, KeyData_t *grKey, Cipher_t *cipher);
BOOLEAN Encrypt_keyData(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, UINT8 *EAPOL_Encr_Key, Cipher_t *cipher);
void KeyMgmtAp_DerivePTK(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf);

extern BOOLEAN (*PopulateKeyMsg_hook)(EAPOL_KeyMsg_Tx_t*, Cipher_t*, UINT16, UINT32*, UINT8*);
extern BOOLEAN (*prepareKDE_hook)(EAPOL_KeyMsg_Tx_t*, KeyData_t*, Cipher_t*);
extern BOOLEAN (*Encrypt_keyData_hook)(EAPOL_KeyMsg_Tx_t*, UINT8*, Cipher_t*, BOOLEAN*);

void ROM_InitGTK(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr);
BOOLEAN KeyData_UpdateKeyMaterial(EAPOL_KeyMsg_Tx_t *pTxEAPOL, SecurityMode_t *pSecType, void *pWPA, void *pWPA2);
void InitKeyMgmtInfo(apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType);

#endif // __KEYMGMTAP_ROM_H__
