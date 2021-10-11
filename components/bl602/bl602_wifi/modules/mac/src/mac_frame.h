#ifndef __MAC_FRAME_H__
#define __MAC_FRAME_H__

#include <stdint.h>

#include <mac.h>


struct mac_hdr_ctrl {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
};

struct mac_hdr {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
};

struct mac_hdr_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    uint16_t qos; // +24
};

struct mac_hdr_long {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
};

struct mac_hdr_long_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
    uint16_t qos; // +30
};

struct eth_hdr {
    struct mac_addr da; // +0
    struct mac_addr sa; // +6
    uint16_t len; // +12
};

struct bcn_frame {
    struct mac_hdr h; // +0
    uint64_t tsf; // +24
    uint16_t bcnint; // +32
    uint16_t capa; // +34
    uint8_t variable[0]; // +36
};

struct preq_frame {
    struct mac_hdr h; // +0
    uint8_t payload[0]; // +24
};

#endif // __MAC_FRAME_H__
