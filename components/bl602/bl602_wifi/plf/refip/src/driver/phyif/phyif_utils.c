#include "phyif_utils.h"


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
  int32_t rssi3; // +12
  int32_t rssi4; // +12
  uint32_t reserved_1d; // +12
  uint32_t rcpi; // +16
  uint32_t evm1; // +16
  uint32_t evm2; // +16
  uint32_t evm3; // +16
  uint32_t evm4; // +20
  uint32_t reserved2b_1; // +20
  uint32_t reserved2b_2; // +20
  uint32_t reserved2b_3; // +20
} phyif_utils_recvtable_priv_t;


int phyif_utils_decode(phyif_utils_recvtable_t *vec, int8_t *ppm)
{
	__builtin_trap();
}
