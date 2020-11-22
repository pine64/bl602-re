
typedef enum bam_state_tag {
    BAM_IDLE=0,
    BAM_STATE_MAX=5,
    BAM_WAIT_RSP=2,
    BAM_CHECK_ADMISSION=3,
    BAM_ACTIVE=1,
    BAM_RESET=4
} bam_state_tag;

