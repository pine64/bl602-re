
typedef struct bam_baw bam_baw, *bam_baw;

uint bam_baw_index_func_ptr(bam_baw * , uint );
typedef ushort uint16_t;

typedef uchar uint8_t;

struct bam_baw {
    uint (* idx_compute)(struct bam_baw *, uint);
    uint16_t fsn;
    uint8_t states[64];
    uint8_t fsn_idx;
    uint8_t buf_size;
    uint8_t mask;
    undefined field_0x49;
    undefined field_0x4a;
    undefined field_0x4b;
};

uint bam_baw_index_func_ptr(bam_baw * , uint );
typedef struct bam_env_tag bam_env_tag, *bam_env_tag;

typedef ulong uint32_t;

struct bam_env_tag {
    uint32_t pkt_cnt;
    uint32_t last_activity_time;
    uint16_t ssn;
    uint16_t ba_timeout;
    uint8_t sta_idx;
    uint8_t dev_type;
    uint8_t ba_policy;
    uint8_t buffer_size;
    uint8_t tid;
    uint8_t dialog_token;
    uint8_t amsdu;
    uint8_t delba_count;
    struct bam_baw baw;
};

void bam_init(void);
void bam_send_air_action_frame(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file bam.h
* Header file for BL602
*/
#ifndef __BAM_H__
#define __BAM_H__

typedef unsigned int (*bam_baw_index_func_ptr)(struct bam_baw *, unsigned int);
struct bam_baw {
    bam_baw_index_func_ptr idx_compute; // +0
    uint16_t fsn; // +4
    uint8_t states[64]; // +6
    uint8_t fsn_idx; // +70
    uint8_t buf_size; // +71
    uint8_t mask; // +72
};
struct bam_env_tag {
    uint32_t pkt_cnt; // +0
    uint32_t last_activity_time; // +4
    uint16_t ssn; // +8
    uint16_t ba_timeout; // +10
    uint8_t sta_idx; // +12
    uint8_t dev_type; // +13
    uint8_t ba_policy; // +14
    uint8_t buffer_size; // +15
    uint8_t tid; // +16
    uint8_t dialog_token; // +17
    uint8_t amsdu; // +18
    uint8_t delba_count; // +19
    struct bam_baw baw; // +20
};
struct bam_env_tag bam_env[1];

#endif // __BAM_H__
#endf 0 //TODO EXISTS ALEADY
