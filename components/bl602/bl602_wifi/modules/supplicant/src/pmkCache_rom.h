/**
* @file pmkCache_rom.h
* Header file for BL602
*/
#ifndef __PMKCACHE_ROM_H__
#define __PMKCACHE_ROM_H__

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
SINT8 replacementRankMax;SINT32 ramHook_MAX_PMK_CACHE_ENTRIES;pmkElement_t *ramHook_pmkCache;UINT8 *ramHook_PSKPassPhrase;

#endif // __PMKCACHE_ROM_H__
