
typedef struct bcn_frame bcn_frame, *bcn_frame;

typedef struct mac_hdr mac_hdr, *mac_hdr;

typedef ulonglong __uint64_t;

typedef __uint64_t uint64_t;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef struct mac_addr mac_addr, *mac_addr;

struct mac_addr {
    uint16_t array[3];
};

struct mac_hdr {
    uint16_t fctl;
    uint16_t durid;
    struct mac_addr addr1;
    struct mac_addr addr2;
    struct mac_addr addr3;
    uint16_t seq;
};

struct bcn_frame {
    struct mac_hdr h;
    uint64_t tsf;
    uint16_t bcnint;
    uint16_t capa;
    uint8_t[0] variable;
};

typedef struct eth_hdr eth_hdr, *eth_hdr;

typedef struct eth_addr eth_addr, *eth_addr;

typedef uint16_t u16_t;

typedef uint8_t u8_t;

struct eth_addr {
    u8_t addr[6];
};

struct eth_hdr {
    struct eth_addr dest;
    struct eth_addr src;
    u16_t type;
};

typedef struct mac_hdr_ctrl mac_hdr_ctrl, *mac_hdr_ctrl;

struct mac_hdr_ctrl {
    uint16_t fctl;
    uint16_t durid;
    struct mac_addr addr1;
    struct mac_addr addr2;
};

typedef struct mac_hdr_long mac_hdr_long, *mac_hdr_long;

struct mac_hdr_long {
    uint16_t fctl;
    uint16_t durid;
    struct mac_addr addr1;
    struct mac_addr addr2;
    struct mac_addr addr3;
    uint16_t seq;
    struct mac_addr addr4;
};

typedef struct mac_hdr_long_qos mac_hdr_long_qos, *mac_hdr_long_qos;

struct mac_hdr_long_qos {
    uint16_t fctl;
    uint16_t durid;
    struct mac_addr addr1;
    struct mac_addr addr2;
    struct mac_addr addr3;
    uint16_t seq;
    struct mac_addr addr4;
    uint16_t qos;
};

typedef struct mac_hdr_qos mac_hdr_qos, *mac_hdr_qos;

struct mac_hdr_qos {
    uint16_t fctl;
    uint16_t durid;
    struct mac_addr addr1;
    struct mac_addr addr2;
    struct mac_addr addr3;
    uint16_t seq;
    uint16_t qos;
};

typedef struct preq_frame preq_frame, *preq_frame;

struct preq_frame {
    struct mac_hdr h;
    uint8_t[0] payload;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file mac_frame.h
* Header file for BL602
*/
#ifndef __MAC_FRAME_H__
#define __MAC_FRAME_H__

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
#endf 0 //TODO EXISTS ALEADY
