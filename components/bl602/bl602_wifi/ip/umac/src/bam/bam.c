
void bam_send_air_action_frame(uint8_t sta_idx, bam_env_tag * bam_env, uint8_t action, uint8_t dialog_token, uint16_t param, uint16_t status_code, anon_subr_void_void_ptr_uint32_t * cfm_func);
#if 0 //TODO EXISTS ALEADY
/**
* @file bam.c
* Source file for BL602
*/
#include "bam.h"


struct bam_env_tag bam_env[1];

void bam_init(void);
void bam_send_air_action_frame(uint8_t sta_idx, struct bam_env_tag *bam_env, uint8_t action, uint8_t dialog_token, uint16_t param, uint16_t status_code, void (*cfm_func)(void *, uint32_t));




/** bam_init
 */
void bam_init(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
