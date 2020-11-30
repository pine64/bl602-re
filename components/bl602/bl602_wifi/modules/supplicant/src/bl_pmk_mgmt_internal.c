/**
* @file bl_pmk_mgmt_internal.c
* Source file for BL602
*/
#include "bl_pmk_mgmt_internal.h"


SINT8 replacementRankMax;
SINT32 ramHook_MAX_PMK_CACHE_ENTRIES;
pmkElement_t *ramHook_pmkCache;
UINT8 *ramHook_PSKPassPhrase;

pmkElement_t *pmkCacheNewElement(void);
void pmkCacheUpdateReplacementRank(pmkElement_t *pPMKElement);
pmkElement_t *pmkCacheFindPSKElement(UINT8 *pSsid, UINT8 ssidLen);
void pmkCacheAddPSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPSK, UINT8 pPSKLen);
void pmkCacheDeletePSK(UINT8 *pSsid, UINT8 ssidLen);
UINT8 pmkCacheGetHexNibble(UINT8 nibble);
void pmkCacheGeneratePSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen, UINT8 *pPSK);




/** *pmkCacheNewElement
 */
pmkElement_t *pmkCacheNewElement(void)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** pmkCacheUpdateReplacementRank
 */
void pmkCacheUpdateReplacementRank(pmkElement_t *pPMKElement)
{
	ASSER_ERR(FALSE);
	return;
}

/** *pmkCacheFindPSKElement
 */
pmkElement_t *pmkCacheFindPSKElement(UINT8 *pSsid, UINT8 ssidLen)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** pmkCacheAddPSK
 */
void pmkCacheAddPSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPSK, UINT8 pPSKLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** pmkCacheDeletePSK
 */
void pmkCacheDeletePSK(UINT8 *pSsid, UINT8 ssidLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** pmkCacheGetHexNibble
 */
UINT8 pmkCacheGetHexNibble(UINT8 nibble)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** pmkCacheGeneratePSK
 */
void pmkCacheGeneratePSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen, UINT8 *pPSK)
{
	ASSER_ERR(FALSE);
	return;
}
