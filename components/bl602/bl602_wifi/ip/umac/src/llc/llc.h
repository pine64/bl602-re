#ifndef __LLC_H__
#define __LLC_H__

#include <stdint.h>


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
