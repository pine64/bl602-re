/**
* @file w81connmgr.h
* Header file for BL602
*/
#ifndef __W81CONNMGR_H__
#define __W81CONNMGR_H__

typedef struct {
    apInfo_t *apInfo; // +0
    BufferDesc_t *apInfoBuffDesc; // +4
    ChanBandInfo_t chanBandInfo; // +8
    staData_t staData; // +12
} apSpecificData_t;
struct cm_ConnectionInfo {
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
};
typedef struct cm_ConnectionInfo cm_ConnectionInfo_t;
cm_ConnectionInfo_t sta_conn_info;cm_ConnectionInfo_t *uap_conn_info;

#endif // __W81CONNMGR_H__
