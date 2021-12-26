#ifndef _KEYMGMTCOMMON_H_
#define _KEYMGMTCOMMON_H_

#include <modules/supplicant/IEEE_types.h>
#include <modules/supplicant/wltypes.h>


typedef struct {
    UINT8 protocol_ver; // +0
    IEEEtypes_8021x_PacketType_e pckt_type; // +1
    UINT16 pckt_body_len; // +2
} Hdr_8021x_t;

typedef struct {
    UINT16 KeyMIC:1; // +0
    UINT16 Secure:1; // +0
    UINT16 Error:1; // +0
    UINT16 Request:1; // +0
    UINT16 EncryptedKeyData:1; // +0
    UINT16 Reserved:3; // +0
    UINT16 KeyDescriptorVersion:3; // +0
    UINT16 KeyType:1; // +0
    UINT16 KeyIndex:2; // +0
    UINT16 Install:1; // +0
    UINT16 KeyAck:1; // +0
} key_info_t;

typedef struct {
    UINT8 KeyID:2; // +0
    UINT8 Tx:1; // +0
    UINT8 rsvd:5; // +0
    UINT8 rsvd1; // +1
    UINT8 GTK[1]; // +2
} GTK_KDE_t;

typedef struct {
    UINT8 type; // +0
    UINT8 length; // +1
    UINT8 OUI[3]; // +2
    UINT8 dataType; // +5
    UINT8 data[1]; // +6
} KDE_t;

typedef struct {
    Hdr_8021x_t hdr_8021x; // +0
    UINT8 desc_type; // +4
    key_info_t key_info; // +5
    UINT16 key_length; // +7
    UINT32 replay_cnt[2]; // +9
    UINT8 key_nonce[32]; // +17
    UINT8 EAPOL_key_IV[16]; // +49
    UINT8 key_RSC[8]; // +65
    UINT8 key_ID[8]; // +73
    UINT8 key_MIC[16]; // +81
    UINT16 key_material_len; // +97
    UINT8 key_data[1]; // +99
} EAPOL_KeyMsg_t;

typedef struct {
    Hdr_8021x_t hdr_8021x; // +0
    IEEEtypes_8021x_CodeType_e code; // +4
    UINT8 identifier; // +5
    UINT16 length; // +6
    UINT8 data[1]; // +8
} EAP_PacketMsg_t;

typedef struct {
    ether_hdr_t ethHdr; // +0
    EAPOL_KeyMsg_t keyMsg; // +14
} EAPOL_KeyMsg_Tx_t;

#endif // __KEYMGMTCOMMON_H__
