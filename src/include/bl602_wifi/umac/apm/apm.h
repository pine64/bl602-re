#ifndef _APM_H_
#define _APM_H_

#include <stdbool.h>
#include <stdint.h>

#include <umac/apm/apm_task.h>
#include <umac/rxu/rxu_task.h>
#include <lmac/vif/vif_mgmt.h>
#include <modules/common/co_list.h>


struct apm {
    const struct apm_start_req *param; // +0
    struct co_list bss_config; // +4
    uint8_t aging_sta_idx; // +12
    uint8_t *bcn_buf; // +16
    bool apm_emb_enabled; // +20
    uint8_t hidden_ssid; // +21
    uint8_t assoc_sta_count; // +22
    uint8_t max_sta_supported; // +23
    struct {
        uint8_t mac[6]; // +0
        uint8_t used; // +6
    } aid_list[10]; // +24
};

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

extern struct apm apm_env;

void apm_send_mlme(struct vif_info_tag *vif, uint16_t fctl, const struct mac_addr *ra, cfm_func_ptr cfm_func, void *env, uint16_t status_code);
bool apm_embedded_enabled(struct vif_info_tag *vif);
void apm_sta_fw_delete(uint8_t sta_idx);
void apm_sta_add(uint8_t sta_idx);
void apm_probe_req_handler(const struct rxu_mgt_ind *param);
void apm_auth_handler(const struct rxu_mgt_ind *param);
void apm_assoc_req_handler(const struct rxu_mgt_ind *param, bool is_reassoc);
void apm_deauth_handler(const struct rxu_mgt_ind *param);
void apm_disassoc_handler(const struct rxu_mgt_ind *param);
void apm_beacon_handler(const struct rxu_mgt_ind *param);
void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx);

#endif // _APM_H_
