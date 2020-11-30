
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, _Bool rx);
void td_pck_ps_ind(uint8_t vif_index, _Bool rx);
void td_reset(uint8_t vif_index);
void td_start(uint8_t vif_index);
void td_timer_end(void * env);
#if 0 //TODO EXISTS ALEADY
/**
* @file td.c
* Source file for BL602
*/
#include "td.h"


struct td_env_tag td_env[2];

static void td_timer_end(void *env);
void td_init(void);
void td_reset(uint8_t vif_index);
void td_start(uint8_t vif_index);
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, bool rx);
void td_pck_ps_ind(uint8_t vif_index, bool rx);




/** td_init
 */
void td_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** td_reset
 */
void td_reset(uint8_t vif_index)
{
	ASSER_ERR(FALSE);
	return;
}

/** td_start
 */
void td_start(uint8_t vif_index)
{
	ASSER_ERR(FALSE);
	return;
}

/** td_pck_ind
 */
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, bool rx)
{
	ASSER_ERR(FALSE);
	return;
}

/** td_pck_ps_ind
 */
void td_pck_ps_ind(uint8_t vif_index, bool rx)
{
	ASSER_ERR(FALSE);
	return;
}

/** td_timer_end
 */
static void td_timer_end(void *env)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
