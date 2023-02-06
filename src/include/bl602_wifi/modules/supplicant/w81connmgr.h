#ifndef _W81CONNMGR_H_
#define _W81CONNMGR_H_

#include <modules/supplicant/bufferMgmtLib.h>
#include <modules/supplicant/keyApiStaTypes.h>
#include <modules/supplicant/macMgmtMain.h>
#include <modules/supplicant/wltypes.h>


typedef struct {
    apInfo_t *apInfo; // +0
    BufferDesc_t *apInfoBuffDesc; // +4
    ChanBandInfo_t chanBandInfo; // +8
    staData_t staData; // +12
} apSpecificData_t;

typedef struct cm_ConnectionInfo {
    UINT8 conType; // +0
    UINT8 staId; // +1
    UINT8 instNbr; // +2
    UINT8 gtkHwKeyId; // +3
    UINT8 ptkHwKeyId; // +4
    UINT8 mfpHwKeyId; // +5
    struct supplicantData *suppData; // +8
    CommonMlmeData_t comData; // +12
    IEEEtypes_MacAddr_t peerMacAddr; // +64
    IEEEtypes_MacAddr_t localMacAddr; // +70
    union {
        apSpecificData_t apData;
    } specDat; // +76
    cipher_key_buf_t TxRxCipherKeyBuf; // +164
} cm_ConnectionInfo_t;


extern cm_ConnectionInfo_t sta_conn_info;
extern cm_ConnectionInfo_t *uap_conn_info;


cm_ConnectionInfo_t *cm_InitConnection(UINT8 conType, UINT8 bssType, UINT8 bssNum, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr, UINT8 channel, mdev_t *hostMdev);
void cm_DeleteConnection(cm_ConnectionInfo_t *connPtr);
void cm_SetPeerAddr(cm_ConnectionInfo_t *connPtr, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr);
void cm_SetComData(cm_ConnectionInfo_t *connPtr, char *ssid);
apInfo_t *cm_GetApInfo(cm_ConnectionInfo_t *connPtr);
apSpecificData_t *cm_GetApData(cm_ConnectionInfo_t *connPtr);

#endif // _W81CONNMGR_H_
