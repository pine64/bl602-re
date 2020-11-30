
uint32_t ewma(uint32_t old_val, uint32_t new_val, uint32_t weight);
_Bool is_cck_group(uint16_t rate_config);
void rc_calc_prob_ewma(rc_rate_stats * rc_rs);
uint32_t rc_calc_tp(rc_sta_stats * rc_ss, uint8_t sample_idx);
void rc_check(uint8_t sta_idx, _Bool * tx_ampdu);
_Bool rc_check_fixed_rate_config(rc_sta_stats * rc_ss, uint16_t fixed_rate_config);
_Bool rc_check_next_retry_chain(rc_sta_stats * rc_ss);
_Bool rc_check_rate_duplicated(rc_sta_stats * rc_ss, uint16_t rate_config);
_Bool rc_check_valid_rate(rc_sta_stats * rc_ss, uint16_t rate_config);
uint8_t rc_get_bw(uint16_t rate_config);
uint32_t rc_get_duration(uint16_t rate_config);
uint8_t rc_get_format_mod(uint16_t rate_config);
uint8_t rc_get_gi(uint32_t rate_config);
uint16_t rc_get_initial_rate_config(rc_sta_stats * rc_ss);
uint16_t rc_get_lowest_rate_config(rc_sta_stats * rc_ss);
uint8_t rc_get_mcs_index(uint16_t rate_config);
void rc_get_new_sample_rates(rc_sta_stats * rc_ss, uint16_t * new_rate_cfg_array, uint8_t n_new_samples);
void rc_get_new_samples(rc_sta_stats * rc_ss, uint32_t * cur_tp);
uint8_t rc_get_nss(uint16_t rate_config);
uint16_t rc_get_num_samples(rc_sta_stats * rc_ss);
uint8_t rc_get_pre_type(uint16_t rate_config);
void rc_init(sta_info_tag * sta_entry);
void rc_init_bcmc_rate(sta_info_tag * sta_entry, uint8_t basic_rate_idx);
void rc_init_rates(uint8_t sta_idx);
uint16_t rc_new_random_rate(rc_sta_stats * rc_ss);
void rc_revert_trial_tx(rc_sta_stats * rc_ss);
uint16_t rc_set_next_mcs_index(rc_sta_stats * rc_ss, uint16_t rate_config);
uint16_t rc_set_previous_mcs_index(rc_sta_stats * rc_ss, uint16_t rate_config);
_Bool rc_set_trial_tx(rc_sta_stats * rc_ss);
void rc_sort_samples_tp(rc_sta_stats * rc_ss, uint32_t * cur_tp);
void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max);
void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, _Bool tx_ampdu, _Bool retry_required);
void rc_update_preamble_type(uint8_t sta_idx, uint8_t preamble_type);
void rc_update_retry_chain(rc_sta_stats * rc_ss, uint32_t * cur_tp);
_Bool rc_update_stats(rc_sta_stats * rc_ss, _Bool init);
_Bool rc_update_stats_fixed_rate(rc_sta_stats * rc_ss);
#if 0 //TODO EXISTS ALEADY
/**
* @file rc.c
* Source file for BL602
*/
#include "rc.h"


struct rc_sta_stats sta_stats[10];
static const uint32_t rc_duration_ht_ampdu[80];
static const uint32_t rc_duration_cck[8];
static const uint32_t rc_duration_non_ht[8];

static uint8_t rc_get_nss(uint16_t rate_config);
static uint8_t rc_get_mcs_index(uint16_t rate_config);
static void rc_calc_prob_ewma(struct rc_rate_stats *rc_rs);
static uint16_t rc_set_previous_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config);
static uint16_t rc_set_next_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config);
static uint16_t rc_new_random_rate(struct rc_sta_stats *rc_ss);
static bool is_cck_group(uint16_t rate_config);
static void rc_sort_samples_tp(struct rc_sta_stats *rc_ss, uint32_t *cur_tp);
static bool rc_update_stats(struct rc_sta_stats *rc_ss, bool init);
static void rc_update_retry_chain(struct rc_sta_stats *rc_ss, uint32_t *cur_tp);
static bool rc_check_valid_rate(struct rc_sta_stats *rc_ss, uint16_t rate_config);
static uint16_t rc_get_lowest_rate_config(struct rc_sta_stats *rc_ss);
static uint16_t rc_get_initial_rate_config(struct rc_sta_stats *rc_ss);
void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, bool tx_ampdu, bool retry_required);
void rc_check(uint8_t sta_idx, bool *tx_ampdu);
void rc_init(struct sta_info_tag *sta_entry);
uint32_t rc_get_duration(uint16_t rate_config);
void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max);
void rc_update_preamble_type(uint8_t sta_idx, uint8_t preamble_type);
void rc_init_bcmc_rate(struct sta_info_tag *sta_entry, uint8_t basic_rate_idx);
bool rc_check_fixed_rate_config(struct rc_sta_stats *rc_ss, uint16_t fixed_rate_config);
uint32_t rc_calc_tp(struct rc_sta_stats *rc_ss, uint8_t sample_idx);




/** rc_update_counters
 */
void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, bool tx_ampdu, bool retry_required)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_check
 */
void rc_check(uint8_t sta_idx, bool *tx_ampdu)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_init
 */
void rc_init(struct sta_info_tag *sta_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_get_duration
 */
uint32_t rc_get_duration(uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** rc_update_bw_nss_max
 */
void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_update_preamble_type
 */
void rc_update_preamble_type(uint8_t sta_idx, uint8_t preamble_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_init_bcmc_rate
 */
void rc_init_bcmc_rate(struct sta_info_tag *sta_entry, uint8_t basic_rate_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_check_fixed_rate_config
 */
bool rc_check_fixed_rate_config(struct rc_sta_stats *rc_ss, uint16_t fixed_rate_config)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rc_calc_tp
 */
uint32_t rc_calc_tp(struct rc_sta_stats *rc_ss, uint8_t sample_idx)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** rc_get_nss
 */
static uint8_t rc_get_nss(uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** rc_get_mcs_index
 */
static uint8_t rc_get_mcs_index(uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** rc_calc_prob_ewma
 */
static void rc_calc_prob_ewma(struct rc_rate_stats *rc_rs)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_set_previous_mcs_index
 */
static uint16_t rc_set_previous_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** rc_set_next_mcs_index
 */
static uint16_t rc_set_next_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** rc_new_random_rate
 */
static uint16_t rc_new_random_rate(struct rc_sta_stats *rc_ss)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** is_cck_group
 */
static bool is_cck_group(uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rc_sort_samples_tp
 */
static void rc_sort_samples_tp(struct rc_sta_stats *rc_ss, uint32_t *cur_tp)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_update_stats
 */
static bool rc_update_stats(struct rc_sta_stats *rc_ss, bool init)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rc_update_retry_chain
 */
static void rc_update_retry_chain(struct rc_sta_stats *rc_ss, uint32_t *cur_tp)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc_check_valid_rate
 */
static bool rc_check_valid_rate(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rc_get_lowest_rate_config
 */
static uint16_t rc_get_lowest_rate_config(struct rc_sta_stats *rc_ss)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** rc_get_initial_rate_config
 */
static uint16_t rc_get_initial_rate_config(struct rc_sta_stats *rc_ss)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}
#endf 0 //TODO EXISTS ALEADY
