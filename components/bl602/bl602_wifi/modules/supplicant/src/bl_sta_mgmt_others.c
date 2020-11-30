/**
* @file bl_sta_mgmt_others.c
* Source file for BL602
*/
#include "bl_sta_mgmt_others.h"


NoHostSecurityParams_t nohostParams;

void set_psk(char *pSsid, UINT8 ssidLen, char *phrase);
void set_pmk(char *pSsid, UINT8 ssidLen, char *pPMK);
char *get_pmk(char *pSsid, UINT8 ssidLen);
void remove_psk(char *pSsid, UINT8 ssidLen);




/** set_psk
 */
void set_psk(char *pSsid, UINT8 ssidLen, char *phrase)
{
	ASSER_ERR(FALSE);
	return;
}

/** set_pmk
 */
void set_pmk(char *pSsid, UINT8 ssidLen, char *pPMK)
{
	ASSER_ERR(FALSE);
	return;
}

/** *get_pmk
 */
char *get_pmk(char *pSsid, UINT8 ssidLen)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** remove_psk
 */
void remove_psk(char *pSsid, UINT8 ssidLen)
{
	ASSER_ERR(FALSE);
	return;
}
