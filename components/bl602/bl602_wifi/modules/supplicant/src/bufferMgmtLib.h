#ifndef __BUFFERMGMTLIB_H__
#define __BUFFERMGMTLIB_H__

#include <wltypes.h>


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

#endif // __BUFFERMGMTLIB_H__
