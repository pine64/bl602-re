
uint32_t scanu_build_ie(void);
void scanu_confirm(uint8_t status);
void scanu_dma_cb(void * env, int dma_type);
mac_scan_result * scanu_find_result(mac_addr * bssid_ptr, _Bool allocate);
int scanu_frame_handler(rxu_mgt_ind * frame);
void scanu_ie_download(void);
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id);
void scanu_rm_exist_ssid(mac_ssid * ssid, int index);
void scanu_scan_next(void);
mac_scan_result * scanu_search_by_bssid(mac_addr * bssid);
mac_scan_result * scanu_search_by_ssid(mac_ssid * ssid, int * idx);
void scanu_start(void);
