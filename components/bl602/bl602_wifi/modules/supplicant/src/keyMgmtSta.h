#ifndef __KEYMGMTSTA_H__
#define __KEYMGMTSTA_H__

#include <bufferMgmtLib.h>
#include <customApp_mib.h>
#include <IEEE_types.h>
#include <keyMgmtCommon.h>
#include <keyMgmtSta_rom.h>
#include <macMgmtMain.h>
#include <w81connmgr.h>
#include <wltypes.h>


struct supplicantData {
    BOOLEAN inUse; // +0
    IEEEtypes_SsIdElement_t hashSsId; // +4
    IEEEtypes_MacAddr_t localBssid; // +38
    IEEEtypes_MacAddr_t localStaAddr; // +44
    customMIB_RSNStats_t customMIB_RSNStats; // +50
    RSNConfig_t customMIB_RSNConfig; // +53
    keyMgmtInfoSta_t keyMgmtInfoSta; // +84
    SecurityParams_t currParams; // +408
};
typedef struct supplicantData supplicantData_t;


BOOLEAN supplicantAkmIsWpaWpa2(AkmSuite_t *pAkm);
BOOLEAN supplicantAkmIsWpaWpa2Psk(AkmSuite_t *pAkm);
BOOLEAN supplicantAkmUsesKdf(AkmSuite_t *pAkm);
void UpdateEAPOLWcbLenAndTransmit(BufferDesc_t *pBufDesc, UINT16 frameLen);
BufferDesc_t *GetTxEAPOLBuffer(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **ppTxEapol, BufferDesc_t *pBufDesc);
void allocSupplicantData(void *connectionPtr);
void supplicantEnable(void *connectionPtr, int security_mode, void *mcstCipher, void *ucstCipher, bool is_pmf_required);
uint8_t add_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise);

#endif // __KEYMGMTSTA_H__
