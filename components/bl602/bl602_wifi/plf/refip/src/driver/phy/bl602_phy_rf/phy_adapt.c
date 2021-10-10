#include "phy_adapt.h"


typedef struct {
  int8_t rssi; // +0
  int8_t lna; // +1
  float ppm; // +4
  uint8_t new; // +8
} input_t;

typedef struct {
  uint8_t used; // +0
  uint32_t vif_tag; // +4
  input_t input_buffer[8]; // +8
  int8_t input_buffer_ptr; // +104
  uint32_t last_update; // +108
  int8_t rss; // +112
  int8_t rss_acq; // +113
  int8_t rss_trk; // +114
  int8_t rss_state; // +115
  uint8_t rss_hit_count; // +116
  uint32_t rss_count; // +120
  int8_t ris; // +124
  float ce; // +128
  int8_t ce_in; // +132
  int8_t ce_acq; // +133
  int8_t ce_trk; // +134
  int8_t ce_state; // +135
  int8_t ce_num_up_cmds; // +136
  int8_t ce_num_dn_cmds; // +137
} pa_state_t;

typedef struct {
  uint32_t leg_length; // +0
  uint32_t leg_rate; // +0
  uint32_t ht_length; // +0
  uint32_t _ht_length; // +4
  uint32_t short_gi; // +4
  uint32_t stbc; // +4
  uint32_t smoothing; // +4
  uint32_t mcs; // +4
  uint32_t pre_type; // +4
  uint32_t format_mod; // +4
  uint32_t ch_bw; // +4
  uint32_t n_sts; // +4
  uint32_t lsig_valid; // +4
  uint32_t sounding; // +4
  uint32_t num_extn_ss; // +4
  uint32_t aggregation; // +4
  uint32_t fec_coding; // +4
  uint32_t dyn_bw; // +4
  uint32_t doze_not_allowed; // +4
  uint32_t antenna_set; // +8
  uint32_t partial_aid; // +8
  uint32_t group_id; // +8
  uint32_t reserved_1c; // +8
  int32_t rssi1; // +8
  int32_t rssi2; // +12
  int32_t agc_lna; // +12
  int32_t agc_rbb1; // +12
  int32_t agc_dg; // +12
  uint32_t reserved_1d; // +12
  uint32_t rcpi; // +16
  uint32_t evm1; // +16
  uint32_t evm2; // +16
  uint32_t freqoff_lo; // +16
  uint32_t freqoff_hi; // +20
  uint32_t reserved2b_1; // +20
  uint32_t reserved2b_2; // +20
  uint32_t reserved2b_3; // +20
} rvec_t;


static pa_state_t pa_env[4];


void pa_init(void)
{
	__builtin_trap();
}

int8_t pa_alloc(uint32_t vif_addr)
{
	__builtin_trap();
}

void pa_free(uint8_t id)
{
	__builtin_trap();
}

void pa_reset(uint8_t id)
{
	__builtin_trap();
}

float calc_ppm_ofdm(uint16_t rxv_freqoff)
{
	__builtin_trap();
}

float calc_ppm_dsss(uint8_t rxv_freqoff)
{
	__builtin_trap();
}

float calc_ppm(rvec_t *rvec)
{
	__builtin_trap();
}

void pa_input(uint8_t id, struct rx_hd *rhd)
{
	__builtin_trap();
}

void pa_adapt(uint8_t id)
{
	__builtin_trap();
}
