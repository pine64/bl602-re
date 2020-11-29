/**
* @file keyMgmtSta.h
* Header file for BL602
*/
#ifndef __KEYMGMTSTA_H__
#define __KEYMGMTSTA_H__

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

#endif // __KEYMGMTSTA_H__
