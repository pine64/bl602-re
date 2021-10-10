#ifndef __CRYPT_NEW_ROM_H__
#define __CRYPT_NEW_ROM_H__

#include <wltypes.h>


typedef struct {
    UINT8 enDeAction; // +0
    UINT8 *pData; // +4
} BL_ENDECRYPT_t;

extern BOOLEAN (*BL_AesPrimitiveEncrypt_hook)(BL_ENDECRYPT_t*, int*);
extern BOOLEAN (*BL_AesPrimitiveDecrypt_hook)(BL_ENDECRYPT_t*, int*);
extern BOOLEAN (*BL_AesWrapEncrypt_hook)(BL_ENDECRYPT_t*, int*);
extern BOOLEAN (*BL_AesWrapDecrypt_hook)(BL_ENDECRYPT_t*, int*);
extern BOOLEAN (*BL_AesEncrypt_hook)(UINT8*, UINT8, UINT8*, UINT8*, int*);

int BL_AesEncrypt(UINT8 *kek, UINT8 kekLen, UINT8 *data, UINT8 *ret);

extern BOOLEAN (*BL_AesValidateHostRequest_hook)(UINT32*, UINT8*, UINT8*, SINT8*, int*);
extern BOOLEAN (*BL_AesWrap_hook)(UINT8*, UINT8, UINT32, UINT8*, UINT8*, UINT8*, int*);

int BL_AesWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *plain, UINT8 *keyIv, UINT8 *cipher);

extern BOOLEAN (*BL_AesUnWrap_hook)(UINT8*, UINT8, UINT32, UINT8*, UINT8*, UINT8*, int*);

int BL_AesUnWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *cipher, UINT8 *keyIv, UINT8 *plain);

extern BOOLEAN (*BL_AesSetKey_hook)(const UINT8*, UINT8, int*);
extern UINT32 ramHook_WAPI_PROFILE_MAX;
extern UINT32 (*ramHook_CryptNew_EnterCritical)(void);
extern void (*ramHook_CryptNew_ExitCritical)(UINT32);

#endif // __CRYPT_NEW_ROM_H__
