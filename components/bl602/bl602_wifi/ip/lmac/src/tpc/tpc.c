
void bl_tpc_power_table_get(int8_t * power_table_config);
void bl_tpc_update_power_rate_11b(int8_t * power_rate_table);
void bl_tpc_update_power_rate_11g(int8_t * power_rate_table);
void bl_tpc_update_power_rate_11n(int8_t * power_rate_table);
void bl_tpc_update_power_table(int8_t * power_table);
void bl_tpc_update_power_table_channel_offset(int8_t * power_table);
void bl_tpc_update_power_table_rate(int8_t * power_table);
uint8_t tpc_get_vif_tx_power(vif_info_tag * vif);
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config);
void tpc_update_frame_tx_power(vif_info_tag * vif, txl_frame_desc_tag * frame);
void tpc_update_tx_power(int8_t pwr);
void tpc_update_vif_tx_power(vif_info_tag * vif, int8_t * pwr, uint8_t * idx);
