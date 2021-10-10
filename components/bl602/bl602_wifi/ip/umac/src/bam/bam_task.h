#ifndef __BAM_TASK_H__
#define __BAM_TASK_H__

#include <ke_msg.h>


enum bam_state_tag {
    BAM_IDLE = 0,
    BAM_ACTIVE = 1,
    BAM_WAIT_RSP = 2,
    BAM_CHECK_ADMISSION = 3,
    BAM_RESET = 4,
    BAM_STATE_MAX = 5,
};

extern const struct ke_state_handler bam_default_handler;
extern ke_state_t bam_state[1];

#endif // __BAM_TASK_H__
