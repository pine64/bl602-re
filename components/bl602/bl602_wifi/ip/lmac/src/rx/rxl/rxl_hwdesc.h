
void rxl_hd_append(void);
typedef struct rxl_hwdesc_env_tag rxl_hwdesc_env_tag, *rxl_hwdesc_env_tag;

typedef struct rx_pbd rx_pbd, *rx_pbd;

typedef ulong uint32_t;

typedef ushort uint16_t;

struct rx_pbd {
    uint32_t upattern;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint16_t bufstatinfo;
    uint16_t reserved;
};

struct rxl_hwdesc_env_tag {
    struct rx_pbd * last;
    struct rx_pbd * free;
};

void rxl_hwdesc_init(void);
void rxl_pd_append(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file rxl_hwdesc.h
* Header file for BL602
*/
#ifndef __RXL_HWDESC_H__
#define __RXL_HWDESC_H__

struct rxl_hwdesc_env_tag {
    struct rx_pbd *last; // +0
    struct rx_pbd *free; // +4
};
struct rxl_hwdesc_env_tag rx_hwdesc_env;

#endif // __RXL_HWDESC_H__
#endf 0 //TODO EXISTS ALEADY
