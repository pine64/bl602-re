
typedef struct llc_snap llc_snap, *llc_snap;

typedef ushort uint16_t;

struct llc_snap {
    uint16_t dsap_ssap;
    uint16_t control_oui0;
    uint16_t oui1_2;
    uint16_t proto_id;
};

typedef struct llc_snap_short llc_snap_short, *llc_snap_short;

struct llc_snap_short {
    uint16_t dsap_ssap;
    uint16_t control_oui0;
    uint16_t oui1_2;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file llc.h
* Header file for BL602
*/
#ifndef __LLC_H__
#define __LLC_H__

struct llc_snap_short {
    uint16_t dsap_ssap; // +0
    uint16_t control_oui0; // +2
    uint16_t oui1_2; // +4
};
struct llc_snap {
    uint16_t dsap_ssap; // +0
    uint16_t control_oui0; // +2
    uint16_t oui1_2; // +4
    uint16_t proto_id; // +6
};

#endif // __LLC_H__
#endf 0 //TODO EXISTS ALEADY
