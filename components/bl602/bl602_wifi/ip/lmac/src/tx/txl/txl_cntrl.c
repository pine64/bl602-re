#include "txl_cntrl.h"

#include <mac_frame.h>


extern const uint16_t VHT_NDBPS[10];
extern const uint32_t TX_TIMEOUT[5];


struct txl_cntrl_env_tag txl_cntrl_env;


void txl_timer_move(uint8_t ac)
{
	__builtin_trap();
}

static void txl_int_fake_transfer(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

bool txl_payload_transfer(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx)
{
	__builtin_trap();
}

bool txl_payload_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx)
{
	__builtin_trap();
}

void txl_hwdesc_config_pre(struct txdesc *txdesc, int access_category)
{
	__builtin_trap();
}

void txl_hwdesc_config_post(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

void txl_machdr_format(uint32_t machdrptr)
{
	__builtin_trap();
}

void txl_cntrl_newhead(uint32_t desc, uint8_t access_category)
{
	__builtin_trap();
}

void txl_cntrl_newtail(uint8_t access_category)
{
	__builtin_trap();
}

void txl_frame_exchange_chain(struct tx_hd *first_thd, struct tx_hd *last_thd, uint8_t access_category)
{
	__builtin_trap();
}

void txl_frame_exchange_done(uint8_t access_category)
{
	__builtin_trap();
}

void txl_frame_exchange_manage(struct txdesc *txdesc, struct txl_buffer_tag *buffer, uint8_t access_category)
{
	__builtin_trap();
}

void txl_cntrl_postpone(struct txdesc *p_txdesc, uint8_t access_category)
{
	__builtin_trap();
}

bool txl_cntrl_start_pm_mon(struct mac_hdr *p_mac_hdr)
{
	__builtin_trap();
}

void txl_check_bcmc_status(struct txdesc *txdesc, uint8_t access_category, struct mac_hdr *mac_hdr)
{
	__builtin_trap();
}

void txl_cntrl_init(void)
{
	__builtin_trap();
}

bool txl_cntrl_tx_check(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void txl_cntrl_halt_ac(uint8_t access_category)
{
	__builtin_trap();
}

void txl_cntrl_flush_ac(uint8_t access_category, uint32_t status)
{
	__builtin_trap();
}

void txl_cntrl_clear_bcn_ac(void)
{
	__builtin_trap();
}

void txl_cntrl_clear_all_ac(void)
{
	__builtin_trap();
}

bool txl_cntrl_push(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

void txl_cntrl_inc_pck_cnt(void)
{
	__builtin_trap();
}

bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category)
{
	__builtin_trap();
}

void txl_payload_handle(void)
{
	__builtin_trap();
}

void txl_payload_handle_backup(void)
{
	__builtin_trap();
}

void txl_transmit_trigger(void)
{
	__builtin_trap();
}

void txl_current_desc_get(int access_category, struct tx_hd **thd)
{
	__builtin_trap();
}

void txl_reset(void)
{
	__builtin_trap();
}

void txdesc_dump(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txl_cntrl_env_dump(void)
{
	__builtin_trap();
}

