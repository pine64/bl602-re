/**
* @file bl_pmk_mgmt.c
* Source file for BL602
*/
#include "bl_pmk_mgmt.h"


pmkElement_t pmkCache[2];
UINT8 PSKPassPhrase[];

UINT8 *pmkCacheFindPSK(UINT8 *pSsid, UINT8 ssidLen);
void pmkCacheSetPassphrase(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen);
void pmkCacheInit(void);
void pmkCacheFlush(void);
void pmkCacheRomInit(void);




/** *pmkCacheFindPSK
 */
UINT8 *pmkCacheFindPSK(UINT8 *pSsid, UINT8 ssidLen)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** pmkCacheSetPassphrase
 */
void pmkCacheSetPassphrase(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** pmkCacheInit
 */
void pmkCacheInit(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** pmkCacheFlush
 */
void pmkCacheFlush(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** pmkCacheRomInit
 */
void pmkCacheRomInit(void)
{
	ASSER_ERR(FALSE);
	return;
}
