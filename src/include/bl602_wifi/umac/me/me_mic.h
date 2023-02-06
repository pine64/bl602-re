#ifndef _ME_MIC_H_
#define _ME_MIC_H_

#include <stdint.h>

#include <modules/mac/mac.h>

struct mic_calc {
    uint32_t mic_key_least; // +0
    uint32_t mic_key_most; // +4
    uint32_t last_m_i; // +8
    uint8_t last_m_i_len; // +12
};


void me_mic_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, struct mac_addr *da, struct mac_addr *sa, uint8_t tid);
void me_mic_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void me_mic_end(struct mic_calc *mic_calc_ptr);

#endif // _ME_MIC_H_
