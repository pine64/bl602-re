#include "rc.h"


extern struct rc_sta_stats sta_stats[10];
static const uint32_t rc_duration_ht_ampdu[80];
static const uint32_t rc_duration_cck[8];
static const uint32_t rc_duration_non_ht[8];


uint32_t ewma(uint32_t old_val, uint32_t new_val, uint32_t weight)
{
	__builtin_trap();
}

uint8_t rc_get_format_mod(uint16_t rate_config)
{
	__builtin_trap();
}

uint8_t rc_get_bw(uint16_t rate_config)
{
	__builtin_trap();
}

static uint8_t rc_get_nss(uint16_t rate_config)
{
	__builtin_trap();
}

static uint8_t rc_get_mcs_index(uint16_t rate_config)
{
	__builtin_trap();
}

uint8_t rc_get_gi(uint32_t rate_config)
{
	__builtin_trap();
}

uint8_t rc_get_pre_type(uint16_t rate_config)
{
	__builtin_trap();
}

static void rc_calc_prob_ewma(struct rc_rate_stats *rc_rs)
{
	__builtin_trap();
}

static uint16_t rc_set_previous_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	__builtin_trap();
}

static uint16_t rc_set_next_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	__builtin_trap();
}

bool rc_check_rate_duplicated(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	__builtin_trap();
}

static uint16_t rc_new_random_rate(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

static bool is_cck_group(uint16_t rate_config)
{
	__builtin_trap();
}

bool rc_set_trial_tx(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

void rc_revert_trial_tx(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

bool rc_check_next_retry_chain(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

static void rc_sort_samples_tp(struct rc_sta_stats *rc_ss, uint32_t *cur_tp)
{
	__builtin_trap();
}

static bool rc_update_stats(struct rc_sta_stats *rc_ss, bool init)
{
	__builtin_trap();
}

static void rc_update_retry_chain(struct rc_sta_stats *rc_ss, uint32_t *cur_tp)
{
	__builtin_trap();
}

static bool rc_check_valid_rate(struct rc_sta_stats *rc_ss, uint16_t rate_config)
{
	__builtin_trap();
}

void rc_get_new_sample_rates(struct rc_sta_stats *rc_ss, uint16_t *new_rate_cfg_array, uint8_t n_new_samples)
{
	__builtin_trap();
}

void rc_get_new_samples(struct rc_sta_stats *rc_ss, uint32_t *cur_tp)
{
	__builtin_trap();
}

static uint16_t rc_get_lowest_rate_config(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

static uint16_t rc_get_initial_rate_config(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

uint16_t rc_get_num_samples(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

void rc_init_rates(uint8_t sta_idx)
{
	__builtin_trap();
}

bool rc_update_stats_fixed_rate(struct rc_sta_stats *rc_ss)
{
	__builtin_trap();
}

void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, bool tx_ampdu, bool retry_required)
{
	__builtin_trap();
}

void rc_check(uint8_t sta_idx, bool *tx_ampdu)
{
	__builtin_trap();
}

void rc_init(struct sta_info_tag *sta_entry)
{
	__builtin_trap();
}

uint32_t rc_get_duration(uint16_t rate_config)
{
	__builtin_trap();
}

void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max)
{
	__builtin_trap();
}

void rc_update_preamble_type(uint8_t sta_idx, uint8_t preamble_type)
{
	__builtin_trap();
}

void rc_init_bcmc_rate(struct sta_info_tag *sta_entry, uint8_t basic_rate_idx)
{
	__builtin_trap();
}

bool rc_check_fixed_rate_config(struct rc_sta_stats *rc_ss, uint16_t fixed_rate_config)
{
	__builtin_trap();
}

uint32_t rc_calc_tp(struct rc_sta_stats *rc_ss, uint8_t sample_idx)
{
	__builtin_trap();
}
