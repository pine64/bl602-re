#ifndef _KEYAPISTATYPES_H_
#define _KEYAPISTATYPES_H_

#include <modules/supplicant/keyApiStaTypes_rom.h>


struct cipher_key_buf {
    cipher_key_t cipher_key; // +0
};
typedef struct cipher_key_buf cipher_key_buf_t;

#endif // _KEYAPISTATYPES_H_
