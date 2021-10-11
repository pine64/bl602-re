#include "rxu_cntrl.h"

#include <llc/llc.h>
#include <rxu/rxu_cntrl.h>
#include <ke_task.h>
#include <mac_frame.h>
#include <w81connmgr.h>


struct rxu_cntrl_env_tag rxu_cntrl_env;
static const struct llc_snap_short rxu_cntrl_rfc1042_hdr;
static const struct llc_snap_short rxu_cntrl_bridge_tunnel_hdr;


bool rxu_cntrl_desc_prepare(struct rx_swdesc *swdesc, uint8_t rx_status, uint32_t host_id)
{
	__builtin_trap();
}

void rxu_cntrl_desc_transfer(void)
{
	__builtin_trap();
}

static uint8_t rxu_cntrl_machdr_len_get(uint16_t frame_cntl)
{
	__builtin_trap();
}

static bool rxu_cntrl_protected_handle(uint8_t *frame, uint32_t statinfo)
{
	__builtin_trap();
}

bool rxu_cntrl_check_pn(uint64_t *pn, struct key_info_tag *key, uint8_t tid)
{
	__builtin_trap();
}

void rxu_cntrl_remove_sec_hdr_mgmt_frame(struct rx_swdesc *rx_swdesc, struct rx_cntrl_rx_status *rx_status)
{
	__builtin_trap();
}


extern uint32_t mac_payload_offset;


void rxu_cntrl_mac2eth_update(struct rx_swdesc *rx_swdesc_ptr)
{
	__builtin_trap();
}

void rxu_msdu_upload_and_indicate(struct rx_swdesc *p_rx_swdesc, uint8_t rx_status)
{
	__builtin_trap();
}

void rxu_mpdu_upload_and_indicate(struct rx_swdesc *p_rx_swdesc, uint8_t rx_status)
{
	__builtin_trap();
}

void rxu_cntrl_get_da_sa(struct mac_hdr_long *machdr_ptr)
{
	__builtin_trap();
}

void rxu_cntrl_machdr_read(uint8_t *p_frame)
{
	__builtin_trap();
}

void rxu_cntrl_mic_rd_concat(uint32_t mic_buffer, uint8_t mic_p1_len, uint32_t mic_p1_addr, uint32_t mic_p2_addr)
{
	__builtin_trap();
}

bool rxu_cntrl_mic_compare(uint32_t *mic_value1, uint32_t *mic_value2)
{
	__builtin_trap();
}

void rxu_cntrl_mic_failure(void)
{
	__builtin_trap();
}

bool rxu_cntrl_mic_check(struct rx_swdesc *rx_swdesc_ptr, struct rxu_mic_calc *mic, bool first_frag, bool last_frag)
{
	__builtin_trap();
}

bool rxu_cntrl_defrag_check(struct rx_swdesc *swdesc, uint8_t sta_idx, bool qos, uint16_t pdu_len)
{
	__builtin_trap();
}

bool rxu_cntrl_duplicate_nsta_check(uint8_t *p_frame)
{
	__builtin_trap();
}

bool rxu_cntrl_duplicate_check(uint16_t frame_cntrl, uint8_t sta_idx, uint8_t qos)
{
	__builtin_trap();
}

void rxu_cntrl_pm_mon_check(uint8_t *p_frame, uint32_t statinfo)
{
	__builtin_trap();
}

bool rxu_mgt_route_action(uint32_t *payload, uint16_t length, uint8_t sta_idx, uint8_t *vif_idx, ke_task_id_t *task_id, uint16_t machdr_length, bool *need_machdr)
{
	__builtin_trap();
}

bool rxu_mgt_route(uint16_t framectrl, uint16_t length, uint16_t machdr_length, uint8_t sta_idx, uint8_t *vif_idx, uint32_t *payload, ke_task_id_t *task_id, bool *need_machdr)
{
	__builtin_trap();
}

bool rxu_mgt_frame_ind(uint16_t framectrl, struct rx_hd *rhd, uint8_t sta_idx, uint8_t *vif_idx, uint32_t *payload, uint16_t machdr_length, int8_t ppm_rel)
{
	__builtin_trap();
}

uint8_t rxu_mgt_search_rx_vif(struct mac_hdr *hdr, uint32_t statinfo)
{
	__builtin_trap();
}

static bool rxu_mgt_frame_check(struct rx_swdesc *swdesc, uint8_t sta_idx)
{
	__builtin_trap();
}


cm_ConnectionInfo_t sta_conn_info;
cm_ConnectionInfo_t *uap_conn_info;


bool rxu_cntrl_eapol_packet_check(struct rx_swdesc *swdesc, uint8_t sta_idx)
{
	__builtin_trap();
}

void rxu_cntrl_init(void)
{
	__builtin_trap();
}

bool rxu_cntrl_frame_handle(struct rx_swdesc *swdesc)
{
	__builtin_trap();
}

void rxu_cntrl_monitor_pm(struct mac_addr *addr)
{
	__builtin_trap();
}

uint8_t rxu_cntrl_get_pm(void)
{
	__builtin_trap();
}

void rxu_cntrl_evt(int dummy)
{
	__builtin_trap();
}


struct wifi_pkt {
  uint32_t pkt[4]; // +0
  void *pbuf[4]; // +16
  uint16_t len[4]; // +32
};


void tcpip_stack_input(void)
{
	__builtin_trap();
}

void rxu_swdesc_upload_evt(int arg)
{
	__builtin_trap();
}
