#ifndef __SUPPLICANT_H__
#define __SUPPLICANT_H__

#include <bufferMgmtLib.h>
#include <IEEE_types.h>
#include <wltypes.h>


UINT8 ProcessEAPoLPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da);

#endif // __SUPPLICANT_H__
