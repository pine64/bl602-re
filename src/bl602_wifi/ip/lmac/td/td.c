#include <lmac/td/td.h>

#include <lmac/mm/mm_timer.h>

#include <modules/ke/ke_timer.h>

#include <utils.h>

#include <blconfig.h>

struct td_env_tag td_env[NX_VIRT_DEV_MAX];

void td_timer_end(void *env) {
    uint32_t now = ke_time();
    struct td_env_tag *p_td_env = (struct td_env_tag *)env;
    uint8_t new_status = 0;
    if (p_td_env->has_active_chan != false) {
        if (p_td_env->pck_cnt_tx != 0) {
            new_status = new_status | CO_BIT(TD_STATUS_TX);
        }
        if (p_td_env->pck_cnt_rx != 0) {
            new_status = new_status | CO_BIT(TD_STATUS_RX);
        }
        if (p_td_env->pck_cnt_tx_ps != 0) {
            new_status = new_status | CO_BIT(TD_STATUS_TX_PS);
        }
        if (p_td_env->pck_cnt_rx_ps != 0) {
            new_status = new_status | CO_BIT(TD_STATUS_RX_PS);
        }
        if (((p_td_env->status ^ new_status) & (CO_BIT(TD_STATUS_TX_PS) | CO_BIT(TD_STATUS_RX_PS))) != 0) {
            if ((new_status & CO_BIT(TD_STATUS_TX_PS)) == 0) {
                puVar3 = "nul";
            } else {
                puVar3 = "TX";
            }
            if ((new_status & CO_BIT(TD_STATUS_RX_PS)) == 0) {
                puVar4 = "nul";
            } else {
                puVar4 = "RX";
            }
            printf("Power Status %s:%s\r\n", puVar3, puVar4);
            ps_traffic_status_update(p_td_env->vif_index,new_status & (CO_BIT(TD_STATUS_TX_PS) | CO_BIT(TD_STATUS_RX_PS)));
        }
        p_td_env->status = new_status;
    }
    p_td_env->pck_cnt_tx = 0;
    p_td_env->pck_cnt_rx = 0;
    p_td_env->pck_cnt_tx_ps = 0;
    p_td_env->pck_cnt_rx_ps = 0;
    p_td_env->has_active_chan = (vif_info_tab[p_td_env->vif_index].chan_ctxt == chan_env.current_channel);
    mm_timer_set(&p_td_env->td_timer, now + TD_DEFAULT_INTV_US);
}

/** td_init
 */
void td_init(void) {
    printf("td_init\r\n");
    for (int i = 0; i < NX_VIRT_DEV_MAX; i++)
        td_reset(i);
}

/** td_reset
 */
void td_reset(uint8_t vif_index) {
	printf("td_reset idx=%d\r\n", vif_index);
    if (td_env[vif_index].is_on) {
        mm_timer_clear(&timer->td_timer);
    }
    memset(td_env + vif_index, 0, sizeof(struct td_env_tag));                       
    td_env[vif_index].td_timer.cb = td_timer_end;
    td_env[vif_index].td_timer.env = timer;
    td_env[vif_index].vif_index = vif_index;
}

/** td_start
 */
void td_start(uint8_t vif_index) {
    if (td_env[vif_index].is_on == false) {
        uint32_t now = ke_time();
        printf("td_start idx=%d\r\n", vif_index);
        td_env[vif_index].is_on = true;
        /// WARN: the value used by 602 is 1000000
        mm_timer_set(&td_env[vif_index].td_timer, now + TD_DEFAULT_INTV_US);
        return;
    }
}

/** td_pck_ind
 */
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, bool rx) {
	if (rx) {
        td_env[vif_index].pck_cnt_rx++;
    }
    td_env[vif_index].pck_cnt_tx++;
}

/** td_pck_ps_ind
 */
void td_pck_ps_ind(uint8_t vif_index, bool rx) {
	if (rx) {
        td_env[vif_index].pck_cnt_rx_ps++;
    }
    td_env[vif_index].pck_cnt_tx_ps++;
}
