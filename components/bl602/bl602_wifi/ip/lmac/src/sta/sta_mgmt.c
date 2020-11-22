
void sta_mgmt_add_key(mm_key_add_req * param, uint8_t hw_key_idx);
void sta_mgmt_del_key(sta_info_tag * sta);
void sta_mgmt_entry_init(sta_info_tag * sta_entry);
uint8_t sta_mgmt_register(mm_sta_add_req * param, uint8_t * sta_idx);
int sta_mgmt_send_postponed_frame(vif_info_tag * p_vif_entry, sta_info_tag * p_sta_entry, int limit);
void sta_mgmt_unregister(uint8_t sta_idx);
