#ifndef __LLC_CH_ASSES_H__
#define __LLC_CH_ASSES_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_bt_defines.h>

enum lld_ch_asses_ponderation {
	LLD_CH_ASSES_SYNC_ERR_HIGH_RSSI = -3,
	LLD_CH_ASSES_CRC_ERR = -3,
	LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_NO_LATENCY = -1,
	LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_LATENCY = 0,
	LLD_CH_ASSES_SYNC_FOUND_NO_CRC_ERR = 3,
};
struct llc_ch_asses_tag {
	int8_t rcvd_quality[37]; // +0
	bool latency_en; // +37
	uint8_t reassess_count; // +38
	uint8_t reassess_cursor; // +39
};

void llc_ch_assess_local(uint16_t conhdl, uint16_t status, int8_t rssi, uint8_t channel);
uint8_t llc_ch_assess_get_local_ch_map(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap);
struct le_chnl_map *llc_ch_assess_get_current_ch_map(uint16_t conhdl);
void llc_ch_assess_reass_ch(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap, uint8_t nb_chgood);

#endif // __LLC_CH_ASSES_H__
