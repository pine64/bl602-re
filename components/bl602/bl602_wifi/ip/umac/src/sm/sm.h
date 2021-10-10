#ifndef __SM_H__
#define __SM_H__

#include <stdbool.h>
#include <stdint.h>

#include <rxu/rxu_task.h>
#include <vif/vif_mgmt.h>
#include <co_list.h>
#include <mac.h>


struct sm_env_tag {
    struct sm_connect_req *connect_param; // +0
    struct sm_connect_ind *connect_ind; // +4
    struct co_list bss_config; // +8
    bool join_passive; // +16
    bool ft_over_ds; // +17
    int exist_ssid_idx; // +20
    struct mac_addr ft_old_bssid; // +24
};


void sm_init(void);
void sm_get_bss_params(const struct mac_addr **bssid, const struct scan_chan_tag **chan);
void sm_join_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan, bool passive);
void sm_scan_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan);
void sm_connect_ind(uint16_t status);
void sm_auth_handler(const struct rxu_mgt_ind *param);
void sm_assoc_rsp_handler(const struct rxu_mgt_ind *param);
int sm_deauth_handler(const struct rxu_mgt_ind *param);
uint8_t sm_add_chan_ctx(uint8_t *p_chan_idx);
void sm_set_bss_param(void);
void sm_send_next_bss_param(void);
void sm_disconnect(uint8_t vif_index, uint16_t reason_code);
void sm_disconnect_process(struct vif_info_tag *vif, uint16_t reason);
void sm_assoc_req_send(void);
void sm_auth_send(uint16_t auth_seq, uint32_t *challenge);


extern struct sm_env_tag sm_env;

#endif // __SM_H__
