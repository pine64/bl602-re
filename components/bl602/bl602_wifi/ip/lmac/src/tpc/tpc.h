#ifndef __TPC_H__
#define __TPC_H__

#include <stdint.h>

#include <vif/vif_mgmt.h>


void tpc_update_tx_power(int8_t pwr);
void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx);
void tpc_update_frame_tx_power(struct vif_info_tag *vif, struct txl_frame_desc_tag *frame);
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config);

#endif // __TPC_H__
