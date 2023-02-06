#ifndef _BAM_TASK_H_
#define _BAM_TASK_H_

#include <modules/ke/ke_msg.h>

#define BAM_IDX_MAX 1

enum bam_state_tag {
    BAM_IDLE = 0,
    BAM_ACTIVE = 1,
    BAM_WAIT_RSP = 2,
    BAM_CHECK_ADMISSION = 3,
    BAM_RESET = 4,
    BAM_STATE_MAX = 5,
};

extern const struct ke_state_handler bam_default_handler;
extern ke_state_t bam_state[BAM_IDX_MAX];

#endif // _BAM_TASK_H_
