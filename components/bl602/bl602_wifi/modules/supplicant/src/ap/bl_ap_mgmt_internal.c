
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
