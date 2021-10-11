#include "mm.h"

#include <cfg/cfg_api.h>
#include <mac_frame.h>
#include <w81connmgr.h>


void mm_env_max_ampdu_duration_set(void)
{
	__builtin_trap();
}

void mm_env_init(void)
{
	__builtin_trap();
}

void mm_init(void)
{
	__builtin_trap();
}

void mm_tbtt_compute(struct bcn_frame *bcn, uint16_t len, struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t tim)
{
	__builtin_trap();
}

static void mm_ap_probe_cfm(void *env, uint32_t status)
{
	__builtin_trap();
}

uint32_t mm_compute_beacon_crc(struct bcn_frame *bcn, uint16_t len, uint32_t *tim)
{
	__builtin_trap();
}

extern uint32_t beacon_rx_count;

bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t *tim)
{
	__builtin_trap();
}

void mm_reset(void)
{
	__builtin_trap();
}

void mm_active(void)
{
	__builtin_trap();
}

void mm_sta_tbtt(void *env)
{
	__builtin_trap();
}

void mm_ap_tbtt(uint32_t evt)
{
	__builtin_trap();
}

void mm_tbtt_evt(int dummy)
{
	__builtin_trap();
}

uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr)
{
	__builtin_trap();
}

void dump_keyram_config(uint32_t val)
{
	__builtin_trap();
}

void mm_sec_keydump(void)
{
	__builtin_trap();
}

uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param)
{
	__builtin_trap();
}

void mm_sec_machwkey_del(uint8_t hw_key_idx)
{
	__builtin_trap();
}

void mm_sec_machwaddr_del(uint8_t sta_idx)
{
	__builtin_trap();
}

void mm_hw_idle_evt(int dummy)
{
	__builtin_trap();
}

void mm_hw_info_set(const struct mac_addr *mac_addr)
{
	__builtin_trap();
}

void mm_hw_ap_info_set(void)
{
	__builtin_trap();
}

void mm_hw_ap_info_reset(void)
{
	__builtin_trap();
}

void mm_back_to_host_idle(void)
{
	__builtin_trap();
}

void mm_force_idle_req(void)
{
	__builtin_trap();
}

static unsigned char ascii_to_hex(char asccode)
{
	__builtin_trap();
}

void ascii_str_to_hex(unsigned char *hex, unsigned char *ascs, int srclen)
{
	__builtin_trap();
}

extern uint8_t wep_hw_keyid;

uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx)
{
	__builtin_trap();
}

void mm_sta_del(uint8_t sta_idx)
{
	__builtin_trap();
}

void supplicantDisable(cm_ConnectionInfo_t *connPtr)
{
	__builtin_trap();
}

void mm_cfg_element_keepalive_timestamp_update(void)
{
	__builtin_trap();
}

void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

long long int last_us;

void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi)
{
	__builtin_trap();
}

void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable)
{
	__builtin_trap();
}

uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie)
{
	__builtin_trap();
}

static int element_notify_status_enabled(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	__builtin_trap();
}

static int element_notify_time_last_received_set(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	__builtin_trap();
}

static int element_notify_keepalive_received(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops)
{
	__builtin_trap();
}

const struct cfg_element_entry cfg_entrys_mm[3];

