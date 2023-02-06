#ifndef _KEYMGMTAPTYPES_ROM_H_
#define _KEYMGMTAPTYPES_ROM_H_

#include <modules/supplicant/keyMgmtStaTypes.h>
#include <modules/supplicant/wltypes.h>


typedef enum {
    HSK_NOT_STARTED = 0,
    MSG1_PENDING = 1,
    WAITING_4_MSG2 = 2,
    MSG3_PENDING = 3,
    WAITING_4_MSG4 = 4,
    GRPMSG1_PENDING = 5,
    WAITING_4_GRPMSG2 = 6,
    GRP_REKEY_MSG1_PENDING = 7,
    WAITING_4_GRP_REKEY_MSG2 = 8,
    HSK_DUMMY_STATE = 9,
    HSK_END = 10,
} keyMgmtState_e;

typedef struct {
    UINT16 staRsnCap; // +0
    SecurityMode_t staSecType; // +2
    Cipher_t staUcstCipher; // +4
    UINT8 staAkmType; // +5
    keyMgmtState_e keyMgmtState; // +6
} apKeyMgmtInfoStaRom_t;

#endif // _KEYMGMTAPTYPES_ROM_H_
