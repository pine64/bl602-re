#ifndef __PMKCACHE_ROM_H__
#define __PMKCACHE_ROM_H__

#include <IEEE_types.h>
#include <wltypes.h>


typedef struct {
    union {
        IEEEtypes_MacAddr_t Bssid;
        char Ssid[32];
    } key; // +0
    UINT8 PMK[32]; // +32
    UINT8 length; // +64
    UINT8 psk_length; // +65
    SINT8 replacementRank; // +66
} pmkElement_t;

extern BOOLEAN (*pmkCacheFindPSKElement_hook)(UINT8*, UINT8, pmkElement_t**);

pmkElement_t *pmkCacheFindPSKElement(UINT8 *pSsid, UINT8 ssidLen);

extern BOOLEAN (*pmkCacheAddPMK_hook)(IEEEtypes_MacAddr_t*, UINT8*);
extern BOOLEAN (*pmkCacheAddPSK_hook)(UINT8*, UINT8, UINT8*);

void pmkCacheAddPSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPSK, UINT8 pPSKLen);
void pmkCacheDeletePSK(UINT8 *pSsid, UINT8 ssidLen);

extern BOOLEAN (*pmkCacheGeneratePSK_hook)(UINT8*, UINT8, char*, UINT8*);

void pmkCacheGeneratePSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen, UINT8 *pPSK);

extern BOOLEAN (*pmkCacheNewElement_hook)(pmkElement_t**);
extern BOOLEAN (*pmkCacheFindPMKElement_hook)(IEEEtypes_MacAddr_t*, pmkElement_t**);
extern SINT8 replacementRankMax;
extern SINT32 ramHook_MAX_PMK_CACHE_ENTRIES;
extern pmkElement_t *ramHook_pmkCache;
extern UINT8 *ramHook_PSKPassPhrase;
extern void (*ramHook_hal_SetCpuMaxSpeed)(void);
extern void (*ramHook_hal_RestoreCpuSpeed)(void);

#endif // __PMKCACHE_ROM_H__
