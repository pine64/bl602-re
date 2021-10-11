#include <pmkCache_rom.h>
#include <wltypes.h>


SINT8 replacementRankMax;
SINT32 ramHook_MAX_PMK_CACHE_ENTRIES;
pmkElement_t *ramHook_pmkCache;
UINT8 *ramHook_PSKPassPhrase;


pmkElement_t *pmkCacheNewElement(void)
{
	__builtin_trap();
}

void pmkCacheUpdateReplacementRank(pmkElement_t *pPMKElement)
{
	__builtin_trap();
}

pmkElement_t *pmkCacheFindPSKElement(UINT8 *pSsid, UINT8 ssidLen)
{
	__builtin_trap();
}

void pmkCacheAddPSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPSK, UINT8 pPSKLen)
{
	__builtin_trap();
}

void pmkCacheDeletePSK(UINT8 *pSsid, UINT8 ssidLen)
{
	__builtin_trap();
}

UINT8 pmkCacheGetHexNibble(UINT8 nibble)
{
	__builtin_trap();
}

void pmkCacheGeneratePSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen, UINT8 *pPSK)
{
	__builtin_trap();
}

