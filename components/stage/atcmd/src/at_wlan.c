/**
* @file at_wlan.c
* Source file for BL602
*/
#include "at_wlan.h"


static at_peer_t peers[5];
AT_ERROR_CODE at_peers(s32 pn, char *pv);AT_ERROR_CODE at_ping(char *hostname);AT_ERROR_CODE at_wifi(s32 value);AT_ERROR_CODE at_reassociate(void);AT_ERROR_CODE at_scan(char *mode, char *repeat);