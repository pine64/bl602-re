
Status_e cm_AllocAPResources(cm_ConnectionInfo_t * connPtr);
Status_e cm_AllocResources(cm_ConnectionInfo_t * connPtr);
Status_e cm_DeAllocAPResources(cm_ConnectionInfo_t * connPtr);
void cm_DeleteAPConnection(cm_ConnectionInfo_t * connPtr);
void cm_DeleteConnection(cm_ConnectionInfo_t * connPtr);
apSpecificData_t * cm_GetApData(cm_ConnectionInfo_t * connPtr);
apInfo_t * cm_GetApInfo(cm_ConnectionInfo_t * connPtr);
cm_ConnectionInfo_t * cm_InitConnection(UINT8 conType, UINT8 bssType, UINT8 bssNum, IEEEtypes_MacAddr_t * bssId, IEEEtypes_MacAddr_t * peerMacAddr, UINT8 channel, mdev_t * hostMdev);
void cm_SetComData(cm_ConnectionInfo_t * connPtr, char * ssid);
void cm_SetPeerAddr(cm_ConnectionInfo_t * connPtr, IEEEtypes_MacAddr_t * bssId, IEEEtypes_MacAddr_t * peerMacAddr);
#if 0 //TODO EXISTS ALEADY
/**
* @file bl_connection_mgmt.c
* Source file for BL602
*/
#include "bl_connection_mgmt.h"


Status_e cm_AllocAPResources(cm_ConnectionInfo_t *connPtr);
Status_e cm_AllocResources(cm_ConnectionInfo_t *connPtr);
cm_ConnectionInfo_t *cm_InitConnection(UINT8 conType, UINT8 bssType, UINT8 bssNum, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr, UINT8 channel, mdev_t *hostMdev);
void cm_DeleteConnection(cm_ConnectionInfo_t *connPtr);
apInfo_t *cm_GetApInfo(cm_ConnectionInfo_t *connPtr);
apSpecificData_t *cm_GetApData(cm_ConnectionInfo_t *connPtr);
void cm_SetPeerAddr(cm_ConnectionInfo_t *connPtr, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr);
void cm_SetComData(cm_ConnectionInfo_t *connPtr, char *ssid);




/** cm_AllocAPResources
 */
Status_e cm_AllocAPResources(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** cm_AllocResources
 */
Status_e cm_AllocResources(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return FAIL;
}

/** *cm_InitConnection
 */
cm_ConnectionInfo_t *cm_InitConnection(UINT8 conType, UINT8 bssType, UINT8 bssNum, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr, UINT8 channel, mdev_t *hostMdev)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** cm_DeleteConnection
 */
void cm_DeleteConnection(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	return;
}

/** *cm_GetApInfo
 */
apInfo_t *cm_GetApInfo(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *cm_GetApData
 */
apSpecificData_t *cm_GetApData(cm_ConnectionInfo_t *connPtr)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** cm_SetPeerAddr
 */
void cm_SetPeerAddr(cm_ConnectionInfo_t *connPtr, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** cm_SetComData
 */
void cm_SetComData(cm_ConnectionInfo_t *connPtr, char *ssid)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
