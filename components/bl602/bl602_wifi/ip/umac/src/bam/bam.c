#include "bam.h"


struct bam_env_tag bam_env[1];

void bam_init(void)
{
	__builtin_trap();
}

void bam_send_air_action_frame(uint8_t sta_idx, struct bam_env_tag *bam_env, uint8_t action, uint8_t dialog_token, uint16_t param, uint16_t status_code, void (*cfm_func)(void*, uint32_t))
{
	__builtin_trap();
}
