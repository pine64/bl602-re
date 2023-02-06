#ifndef _BUFFERMGMTLIB_H_
#define _BUFFERMGMTLIB_H_

#include <modules/supplicant/wltypes.h>


typedef void (*BufferReturnNotify_t)(void);

struct BufferDesc {
    union {
        uint32 Interface;
        struct cm_ConnectionInfo *connPtr;
    } intf; // +0
    uint16 DataLen; // +4
    void *Buffer; // +8
};

typedef struct BufferDesc BufferDesc_t;

#endif // _BUFFERMGMTLIB_H_
