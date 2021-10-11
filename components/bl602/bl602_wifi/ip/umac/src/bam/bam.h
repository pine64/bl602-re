#ifndef __BAM_H__
#define __BAM_H__

#include <stdint.h>


struct bam_baw;
typedef unsigned int (*bam_baw_index_func_ptr)(struct bam_baw*, unsigned int);

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

extern struct bam_env_tag bam_env[1];

void bam_init(void);
void bam_send_air_action_frame(uint8_t sta_idx, struct bam_env_tag *bam_env, uint8_t action, uint8_t dialog_token, uint16_t param, uint16_t status_code, void (*cfm_func)(void*, uint32_t));

#endif // __BAM_H__
