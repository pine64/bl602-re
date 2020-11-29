
void txdesc_dump(txdesc * txdesc);
void txl_check_bcmc_status(txdesc * txdesc, uint8_t access_category, mac_hdr * mac_hdr);
void txl_cntrl_clear_all_ac(void);
void txl_cntrl_clear_bcn_ac(void);
void txl_cntrl_env_dump(void);
void txl_cntrl_flush_ac(uint8_t access_category, uint32_t status);
void txl_cntrl_halt_ac(uint8_t access_category);
void txl_cntrl_inc_pck_cnt(void);
void txl_cntrl_newhead(uint32_t desc, uint8_t access_category);
void txl_cntrl_newtail(uint8_t access_category);
void txl_cntrl_postpone(txdesc * p_txdesc, uint8_t access_category);
_Bool txl_cntrl_push(txdesc * txdesc, uint8_t access_category);
_Bool txl_cntrl_push_int(txdesc * txdesc, uint8_t access_category);
_Bool txl_cntrl_push_int_force(txdesc * txdesc, uint8_t access_category);
_Bool txl_cntrl_start_pm_mon(mac_hdr * p_mac_hdr);
_Bool txl_cntrl_tx_check(vif_info_tag * p_vif_entry);
void txl_current_desc_get(int access_category, tx_hd * * thd);
void txl_frame_exchange_chain(tx_hd * first_thd, tx_hd * last_thd, uint8_t access_category);
void txl_frame_exchange_done(uint8_t access_category);
void txl_frame_exchange_manage(txdesc * txdesc, txl_buffer_tag * buffer, uint8_t access_category);
void txl_hwdesc_config_post(txdesc * txdesc, uint8_t access_category);
void txl_hwdesc_config_pre(txdesc * txdesc, int access_category);
void txl_int_fake_transfer(txdesc * txdesc, uint8_t access_category);
void txl_machdr_format(uint32_t machdrptr);
_Bool txl_payload_alloc(txdesc * txdesc, uint8_t access_category, uint8_t user_idx);
void txl_payload_handle(void);
void txl_payload_handle_backup(void);
_Bool txl_payload_transfer(txdesc * txdesc, uint8_t access_category, uint8_t user_idx);
void txl_timer_move(uint8_t ac);
void txl_transmit_trigger(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_cntrl.c
* Source file for BL602
*/
#include "txl_cntrl.h"


const uint16_t VHT_NDBPS[4];
const uint32_t TX_TIMEOUT[5];
struct txl_cntrl_env_tag txl_cntrl_env;

void txl_cntrl_inc_pck_cnt(void);
bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category);
bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category);
void txl_payload_handle(void);
void txl_payload_handle_backup(void);
void txl_transmit_trigger(void);
void txl_current_desc_get(int access_category, struct tx_hd **thd);
void txl_reset(void);
void txl_cntrl_env_dump(void);




/** txl_cntrl_inc_pck_cnt
 */
void txl_cntrl_inc_pck_cnt(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cntrl_push_int
 */
bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category)
{
	ASSER_ERR(FALSE);
	return false;
}

/** txl_cntrl_push_int_force
 */
bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category)
{
	ASSER_ERR(FALSE);
	return false;
}

/** txl_payload_handle
 */
void txl_payload_handle(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_payload_handle_backup
 */
void txl_payload_handle_backup(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_transmit_trigger
 */
void txl_transmit_trigger(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_current_desc_get
 */
void txl_current_desc_get(int access_category, struct tx_hd **thd)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_reset
 */
void txl_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cntrl_env_dump
 */
void txl_cntrl_env_dump(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
