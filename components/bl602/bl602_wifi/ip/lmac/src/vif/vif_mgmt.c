
void vif_mgmt_add_key(mm_key_add_req * param, uint8_t hw_key_idx);
void vif_mgmt_bcn_recv(vif_info_tag * p_vif_entry);
void vif_mgmt_bcn_to_evt(void * env);
void vif_mgmt_bcn_to_prog(vif_info_tag * p_vif_entry);
void vif_mgmt_del_key(vif_info_tag * vif, uint8_t keyid);
void vif_mgmt_entry_init(vif_info_tag * vif_entry);
vif_info_tag * vif_mgmt_get_first_ap_inf(void);
uint8_t vif_mgmt_register(mac_addr * mac_addr, uint8_t vif_type, _Bool p2p, uint8_t * vif_idx);
void vif_mgmt_reset(void);
void vif_mgmt_send_postponed_frame(vif_info_tag * p_vif_entry);
void vif_mgmt_set_ap_bcn_int(vif_info_tag * p_vif_entry, uint16_t bcn_int);
void vif_mgmt_switch_channel(vif_info_tag * p_vif_entry);
void vif_mgmt_unregister(uint8_t vif_idx);
