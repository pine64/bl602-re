#ifndef __PMKCACHE_H__
#define __PMKCACHE_H__

#include <wltypes.h>


extern UINT8 PSKPassPhrase[];


UINT8 *pmkCacheFindPSK(UINT8 *pSsid, UINT8 ssidLen);
void pmkCacheFlush(void);
void pmkCacheSetPassphrase(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen);
void pmkCacheInit(void);
void pmkCacheRomInit(void);

#endif // __PMKCACHE_H__
