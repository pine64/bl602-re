#ifndef __KEYMGMTAPTYPES_H__
#define __KEYMGMTAPTYPES_H__

#include <mm/mm_timer.h>
#include <keyMgmtApTypes_rom.h>
#include <wltypes.h>


typedef struct {
    apKeyMgmtInfoStaRom_t rom; // +0
    UINT8 numHskTries; // +8
    UINT32 counterLo; // +12
    UINT32 counterHi; // +16
    struct mm_timer_tag HskTimer; // +20
    UINT8 EAPOL_MIC_Key[16]; // +36
    UINT8 EAPOL_Encr_Key[16]; // +52
    UINT8 EAPOLProtoVersion; // +68
    UINT8 rsvd[3]; // +69
} apKeyMgmtInfoSta_t;

#endif // __KEYMGMTAPTYPES_H__
