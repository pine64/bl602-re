
typedef enum bam_state_tag {
    BAM_IDLE=0,
    BAM_STATE_MAX=5,
    BAM_WAIT_RSP=2,
    BAM_CHECK_ADMISSION=3,
    BAM_ACTIVE=1,
    BAM_RESET=4
} bam_state_tag;

#if 0 //TODO EXISTS ALEADY
/**
* @file bam_task.h
* Header file for BL602
*/
#ifndef __BAM_TASK_H__
#define __BAM_TASK_H__

enum bam_state_tag {
    BAM_IDLE = 0,
    BAM_ACTIVE = 1,
    BAM_WAIT_RSP = 2,
    BAM_CHECK_ADMISSION = 3,
    BAM_RESET = 4,
    BAM_STATE_MAX = 5,
};
const struct ke_state_handler bam_default_handler;ke_state_t bam_state[1];

#endif // __BAM_TASK_H__
#endf 0 //TODO EXISTS ALEADY
