#include "txu_cntrl.h"

#include <vif/vif_mgmt.h>


bool txu_cntrl_logic_port_filter(uint8_t sta_idx, uint16_t eth_type, uint16_t *flags)
{
	__builtin_trap();
}

static int txu_cntrl_sechdr_len_compute(struct txdesc *txdesc, int *tail_len)
{
	__builtin_trap();
}

void txu_cntrl_umacdesc_prep(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txu_cntrl_umacdesc_mgmt_prep(struct txdesc *p_txdesc, struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

uint32_t txu_cntrl_mac_hdr_append(struct txdesc *txdesc, uint32_t buf)
{
	__builtin_trap();
}

static uint32_t txu_cntrl_sec_hdr_append(struct txdesc *txdesc, uint32_t buf, bool umac_pol)
{
	__builtin_trap();
}

uint32_t txu_cntrl_llc_hdr_append(struct txdesc *txdesc, uint32_t buf)
{
	__builtin_trap();
}

void txu_cntrl_check_rate(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txu_cntrl_discard(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

void txu_cntrl_init(void)
{
	__builtin_trap();
}

void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf)
{
	__builtin_trap();
}

bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac)
{
	__builtin_trap();
}

void txu_cntrl_cfm(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len)
{
	__builtin_trap();
}
