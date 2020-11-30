
int _aid_list_add(uint8_t * mac);
int _aid_list_delete(uint8_t * mac);
void apm_assoc_req_handler(rxu_mgt_ind * param, _Bool is_reassoc);
void apm_auth_handler(rxu_mgt_ind * param);
void apm_bcn_set(void);
void apm_beacon_handler(rxu_mgt_ind * param);
void apm_bss_config_push(void * param);
void apm_deauth_handler(rxu_mgt_ind * param);
void apm_disassoc_handler(rxu_mgt_ind * param);
_Bool apm_embedded_enabled(vif_info_tag * vif);
void apm_probe_req_handler(rxu_mgt_ind * param);
void apm_send_mlme(vif_info_tag * vif, uint16_t fctl, mac_addr * ra, cfm_func_ptr * cfm_func, void * env, uint16_t status_code);
void apm_send_next_bss_param(void);
void apm_set_bss_param(void);
void apm_sta_add(uint8_t sta_idx);
void apm_sta_delete(uint8_t sta_idx, uint8_t * mac);
void apm_sta_fw_delete(uint8_t sta_idx);
void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx);
void apm_start_cfm(uint8_t status);
void apm_stop(vif_info_tag * vif);
void apm_tx_cfm_handler(void * env, uint32_t status);
_Bool apm_tx_int_ps_check(txdesc * txdesc);
void apm_tx_int_ps_clear(vif_info_tag * vif, uint8_t sta_idx);
txdesc * apm_tx_int_ps_get_postpone(vif_info_tag * vif, sta_info_tag * sta, int * stop);
void apm_tx_int_ps_postpone(txdesc * txdesc, sta_info_tag * sta);
#if 0 //TODO EXISTS ALEADY
/**
* @file apm.c
* Source file for BL602
*/
#include "apm.h"


struct apm apm_env;

void apm_init(void);
void apm_start_cfm(uint8_t status);
void apm_set_bss_param(void);
void apm_send_next_bss_param(void);
void apm_bcn_set(void);
void apm_stop(struct vif_info_tag *vif);
bool apm_tx_int_ps_check(struct txdesc *txdesc);
void apm_tx_int_ps_postpone(struct txdesc *txdesc, struct sta_info_tag *sta);
struct txdesc *apm_tx_int_ps_get_postpone(struct vif_info_tag *vif, struct sta_info_tag *sta, int *stop);
void apm_tx_int_ps_clear(struct vif_info_tag *vif, uint8_t sta_idx);
static int _aid_list_delete(uint8_t *mac);
static void apm_sta_delete(uint8_t sta_idx, uint8_t *mac);
void apm_sta_fw_delete(uint8_t sta_idx);
void apm_sta_add(uint8_t sta_idx);
void apm_tx_cfm_handler(void *env, uint32_t status);
void apm_send_mlme(struct vif_info_tag *vif, uint16_t fctl, const struct mac_addr *ra, cfm_func_ptr cfm_func, void *env, uint16_t status_code);
bool apm_embedded_enabled(struct vif_info_tag *vif);
void apm_probe_req_handler(const struct rxu_mgt_ind *param);
void apm_auth_handler(const struct rxu_mgt_ind *param);
void apm_assoc_req_handler(const struct rxu_mgt_ind *param, bool is_reassoc);
void apm_deauth_handler(const struct rxu_mgt_ind *param);
void apm_disassoc_handler(const struct rxu_mgt_ind *param);
void apm_beacon_handler(const struct rxu_mgt_ind *param);
void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx);




/** apm_init
 */
void apm_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_start_cfm
 */
void apm_start_cfm(uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_set_bss_param
 */
void apm_set_bss_param(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_send_next_bss_param
 */
void apm_send_next_bss_param(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_bcn_set
 */
void apm_bcn_set(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_stop
 */
void apm_stop(struct vif_info_tag *vif)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_tx_int_ps_check
 */
bool apm_tx_int_ps_check(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return false;
}

/** apm_tx_int_ps_postpone
 */
void apm_tx_int_ps_postpone(struct txdesc *txdesc, struct sta_info_tag *sta)
{
	ASSER_ERR(FALSE);
	return;
}

/** *apm_tx_int_ps_get_postpone
 */
struct txdesc *apm_tx_int_ps_get_postpone(struct vif_info_tag *vif, struct sta_info_tag *sta, int *stop)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** apm_tx_int_ps_clear
 */
void apm_tx_int_ps_clear(struct vif_info_tag *vif, uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_sta_fw_delete
 */
void apm_sta_fw_delete(uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_sta_add
 */
void apm_sta_add(uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_tx_cfm_handler
 */
void apm_tx_cfm_handler(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_send_mlme
 */
void apm_send_mlme(struct vif_info_tag *vif, uint16_t fctl, const struct mac_addr *ra, cfm_func_ptr cfm_func, void *env, uint16_t status_code)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_embedded_enabled
 */
bool apm_embedded_enabled(struct vif_info_tag *vif)
{
	ASSER_ERR(FALSE);
	return false;
}

/** apm_probe_req_handler
 */
void apm_probe_req_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_auth_handler
 */
void apm_auth_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_assoc_req_handler
 */
void apm_assoc_req_handler(const struct rxu_mgt_ind *param, bool is_reassoc)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_deauth_handler
 */
void apm_deauth_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_disassoc_handler
 */
void apm_disassoc_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_beacon_handler
 */
void apm_beacon_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** apm_sta_remove
 */
void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** _aid_list_delete
 */
static int _aid_list_delete(uint8_t *mac)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_sta_delete
 */
static void apm_sta_delete(uint8_t sta_idx, uint8_t *mac)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
