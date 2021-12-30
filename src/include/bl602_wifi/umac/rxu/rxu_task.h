#ifndef _RXU_TASK_H_
#define _RXU_TASK_H_

#include <stdint.h>


enum rxu_msg_tag {
    RXU_MGT_IND = 11264,
    RXU_NULL_DATA = 11265,
};

struct rxu_mgt_ind {
    uint16_t length; // +0
    uint16_t framectrl; // +2
    uint16_t center_freq; // +4
    uint8_t band; // +6
    uint8_t sta_idx; // +7
    uint8_t inst_nbr; // +8
    uint8_t sa[6]; // +9
    uint32_t tsflo; // +16
    uint32_t tsfhi; // +20
    int8_t rssi; // +24
    int8_t ppm_abs; // +25
    int8_t ppm_rel; // +26
    uint8_t data_rate; // +27
    uint32_t payload[0]; // +28
};

#endif // _RXU_TASK_H_
