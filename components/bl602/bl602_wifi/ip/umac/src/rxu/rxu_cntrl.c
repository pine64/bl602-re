
_Bool rxu_cntrl_check_pn(uint64_t * pn, key_info_tag * key, uint8_t tid);
_Bool rxu_cntrl_defrag_check(rx_swdesc * swdesc, uint8_t sta_idx, _Bool qos, uint16_t pdu_len);
_Bool rxu_cntrl_desc_prepare(rx_swdesc * swdesc, uint8_t rx_status, uint32_t host_id);
void rxu_cntrl_desc_transfer(void);
_Bool rxu_cntrl_duplicate_check(uint16_t frame_cntrl, uint8_t sta_idx, uint8_t qos);
_Bool rxu_cntrl_duplicate_nsta_check(uint8_t * p_frame);
_Bool rxu_cntrl_eapol_packet_check(rx_swdesc * swdesc, uint8_t sta_idx);
void rxu_cntrl_evt(int dummy);
_Bool rxu_cntrl_frame_handle(rx_swdesc * swdesc);
void rxu_cntrl_get_da_sa(mac_hdr_long * machdr_ptr);
uint8_t rxu_cntrl_get_pm(void);
void rxu_cntrl_mac2eth_update(rx_swdesc * rx_swdesc_ptr);
uint8_t rxu_cntrl_machdr_len_get(uint16_t frame_cntl);
void rxu_cntrl_machdr_read(uint8_t * p_frame);
_Bool rxu_cntrl_mic_check(rx_swdesc * rx_swdesc_ptr, rxu_mic_calc * mic, _Bool first_frag, _Bool last_frag);
_Bool rxu_cntrl_mic_compare(uint32_t * mic_value1, uint32_t * mic_value2);
void rxu_cntrl_mic_failure(void);
void rxu_cntrl_mic_rd_concat(uint32_t mic_buffer, uint8_t mic_p1_len, uint32_t mic_p1_addr, uint32_t mic_p2_addr);
void rxu_cntrl_monitor_pm(mac_addr * addr);
void rxu_cntrl_pm_mon_check(uint8_t * p_frame, uint32_t statinfo);
_Bool rxu_cntrl_protected_handle(uint8_t * frame, uint32_t statinfo);
void rxu_cntrl_remove_sec_hdr_mgmt_frame(rx_swdesc * rx_swdesc, rx_cntrl_rx_status * rx_status);
_Bool rxu_mgt_frame_check(rx_swdesc * swdesc, uint8_t sta_idx);
_Bool rxu_mgt_frame_ind(uint16_t framectrl, rx_hd * rhd, uint8_t sta_idx, uint8_t * vif_idx, uint32_t * payload, uint16_t machdr_length, int8_t ppm_rel);
_Bool rxu_mgt_route(uint16_t framectrl, uint16_t length, uint16_t machdr_length, uint8_t sta_idx, uint8_t * vif_idx, uint32_t * payload, ke_task_id_t * task_id, _Bool * need_machdr);
_Bool rxu_mgt_route_action(uint32_t * payload, uint16_t length, uint8_t sta_idx, uint8_t * vif_idx, ke_task_id_t * task_id, uint16_t machdr_length, _Bool * need_machdr);
uint8_t rxu_mgt_search_rx_vif(mac_hdr * hdr, uint32_t statinfo);
void rxu_mpdu_upload_and_indicate(rx_swdesc * p_rx_swdesc, uint8_t rx_status);
void rxu_msdu_upload_and_indicate(rx_swdesc * p_rx_swdesc, uint8_t rx_status);
void rxu_swdesc_upload_evt(int arg);
void tcpip_stack_input(void);
typedef struct wifi_pkt wifi_pkt, *wifi_pkt;

typedef ulong uint32_t;

typedef ushort uint16_t;

struct wifi_pkt {
    uint32_t pkt[4];
    void * pbuf[4];
    uint16_t len[4];
};

