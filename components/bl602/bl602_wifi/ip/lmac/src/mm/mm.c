
void supplicantDisable(cm_ConnectionInfo_t * );
void ascii_str_to_hex(uchar * hex, uchar * ascs, int srclen);
uchar ascii_to_hex(char asccode);
void dump_keyram_config(uint32_t val);
int element_notify_keepalive_received(cfg_element_entry * entry, void * arg1, void * arg2, CFG_ELEMENT_TYPE_OPS ops);
int element_notify_status_enabled(cfg_element_entry * entry, void * arg1, void * arg2, CFG_ELEMENT_TYPE_OPS ops);
int element_notify_time_last_received_set(cfg_element_entry * entry, void * arg1, void * arg2, CFG_ELEMENT_TYPE_OPS ops);
void mm_active(void);
void mm_ap_probe_cfm(void * env, uint32_t status);
void mm_ap_tbtt(uint32_t evt);
void mm_back_to_host_idle(void);
void mm_cfg_element_keepalive_timestamp_update(void);
_Bool mm_check_beacon(rx_hd * rhd, vif_info_tag * vif_entry, sta_info_tag * p_sta_entry, uint32_t * tim);
void mm_check_rssi(vif_info_tag * vif_entry, int8_t rssi);
uint32_t mm_compute_beacon_crc(bcn_frame * bcn, uint16_t len, uint32_t * tim);
void mm_env_init(void);
void mm_env_max_ampdu_duration_set(void);
void mm_force_idle_req(void);
uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t * wpa_ie);
void mm_hw_ap_info_reset(void);
void mm_hw_ap_info_set(void);
void mm_hw_idle_evt(int dummy);
void mm_hw_info_set(mac_addr * mac_addr);
void mm_init(void);
void mm_reset(void);
void mm_sec_machwaddr_del(uint8_t sta_idx);
uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr);
void mm_sec_machwkey_del(uint8_t hw_key_idx);
uint8_t mm_sec_machwkey_wr(mm_key_add_req * param);
void mm_send_connection_loss_ind(vif_info_tag * p_vif_entry);
void mm_send_csa_traffic_ind(uint8_t vif_index, _Bool enable);
uint8_t mm_sta_add(mm_sta_add_req * param, uint8_t * sta_idx, uint8_t * hw_sta_idx);
void mm_sta_del(uint8_t sta_idx);
void mm_sta_tbtt(void * env);
void mm_tbtt_compute(bcn_frame * bcn, uint16_t len, rx_hd * rhd, vif_info_tag * vif_entry, sta_info_tag * p_sta_entry, uint32_t tim);
void mm_tbtt_evt(int dummy);
void supplicantDisable(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file mm.c
* Source file for BL602
*/
#include "mm.h"


struct mm_env_tag mm_env;

void mm_env_max_ampdu_duration_set(void);
void mm_env_init(void);
void mm_init(void);
static void mm_ap_probe_cfm(void *env, uint32_t status);

uint32_t beacon_rx_count;

bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t *tim);
void mm_reset(void);
void mm_active(void);
void mm_sta_tbtt(void *env);
void mm_tbtt_evt(int dummy);
uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr);
void mm_sec_keydump(void);
uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param);
void mm_sec_machwkey_del(uint8_t hw_key_idx);
void mm_sec_machwaddr_del(uint8_t sta_idx);
void mm_hw_idle_evt(int dummy);
void mm_hw_info_set(const struct mac_addr *mac_addr);
void mm_hw_ap_info_set(void);
void mm_hw_ap_info_reset(void);
void mm_back_to_host_idle(void);
void mm_force_idle_req(void);
static unsigned char ascii_to_hex(char asccode);

uint8_t wep_hw_keyid;

uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx);
void mm_sta_del(uint8_t sta_idx);
void mm_cfg_element_keepalive_timestamp_update(void);
void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry);

static long long last_us;

void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi);
void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable);
uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie);
static int element_notify_status_enabled(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops);
static int element_notify_time_last_received_set(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops);
static int element_notify_keepalive_received(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops);

static const struct cfg_element_entry cfg_entrys_mm[3];




/** mm_env_max_ampdu_duration_set
 */
void mm_env_max_ampdu_duration_set(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_env_init
 */
void mm_env_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_init
 */
void mm_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_check_beacon
 */
bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t *tim)
{
	ASSER_ERR(FALSE);
	return false;
}

/** mm_reset
 */
void mm_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_active
 */
void mm_active(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_sta_tbtt
 */
void mm_sta_tbtt(void *env)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_tbtt_evt
 */
void mm_tbtt_evt(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_sec_machwaddr_wr
 */
uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** mm_sec_keydump
 */
void mm_sec_keydump(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_sec_machwkey_wr
 */
uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** mm_sec_machwkey_del
 */
void mm_sec_machwkey_del(uint8_t hw_key_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_sec_machwaddr_del
 */
void mm_sec_machwaddr_del(uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_hw_idle_evt
 */
void mm_hw_idle_evt(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_hw_info_set
 */
void mm_hw_info_set(const struct mac_addr *mac_addr)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_hw_ap_info_set
 */
void mm_hw_ap_info_set(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_hw_ap_info_reset
 */
void mm_hw_ap_info_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_back_to_host_idle
 */
void mm_back_to_host_idle(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_force_idle_req
 */
void mm_force_idle_req(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_sta_add
 */
uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** mm_sta_del
 */
void mm_sta_del(uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_cfg_element_keepalive_timestamp_update
 */
void mm_cfg_element_keepalive_timestamp_update(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_send_connection_loss_ind
 */
void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_check_rssi
 */
void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_send_csa_traffic_ind
 */
void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_get_rsn_wpa_ie
 */
uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** mm_ap_probe_cfm
 */
static void mm_ap_probe_cfm(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** ascii_to_hex
 */
static unsigned char ascii_to_hex(char asccode)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** element_notify_status_enabled
 */
static int element_notify_status_enabled(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** element_notify_time_last_received_set
 */
static int element_notify_time_last_received_set(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** element_notify_keepalive_received
 */
static int element_notify_keepalive_received(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
