
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
