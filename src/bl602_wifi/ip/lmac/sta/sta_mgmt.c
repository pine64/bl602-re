#include <lmac/sta/sta_mgmt.h>

#include <lmac/tx/tx_swdesc.h>
#include <lmac/vif/vif_mgmt.h>
#include <lmac/tx/txl/txl_cntrl.h>

#include <umac/apm/apm.h>

#include <modules/common/co_list.h>
#include <modules/common/co_utils.h>
#include <modules/mac/mac.h>
#include <modules/mac/mac_frame.h>

#include <utils.h>

#include <blconfig.h>

struct sta_info_env_tag sta_info_env;
struct sta_info_tag sta_info_tab[STA_MAX];

static void sta_mgmt_entry_init(struct sta_info_tag *sta_entry) {
    while (!co_list_is_empty(&sta_entry->tx_desc_post)) {
        struct txdesc *p_txdesc = (struct txdesc *)co_list_pop_front(&sta_entry->tx_desc_post);
        txl_frame_release(p_txdesc, true);
    }
    memset(sta_entry, 0, sizeof(struct sta_info_tag));
    sta_entry->inst_nbr = 0xff;
}

void sta_mgmt_init(void) {
    co_list_init(&sta_info_env.free_sta_list);
    for (int i = 0; i < NX_REMOTE_STA_MAX; i++) {
        sta_mgmt_entry_init(sta_info_tab + i);
        co_list_push_back(&sta_info_env.free_sta_list, &sta_info_tab[i].list_hdr);
    }

    for (int i = 0; i < NX_VIRT_DEV_MAX; i++) {
        uint8_t idx = VIF_TO_BCMC_IDX(i);
        sta_mgmt_entry_init(sta_info_tab + idx);
        sta_info_tab[idx].pol_tbl.buf_ctrl = txl_buffer_control_desc_bcmc + i;
        sta_info_tab[idx].sta_sec_info.cur_key = &(vif_info_tab[i].default_key);
        sta_info_tab[idx].inst_nbr = i;
        sta_info_tab[idx].ctrl_port_state = PORT_CLOSED;
        printf("------ set default key %p, key ptr %p\r\n", &(vif_info_tab[i].default_key), vif_info_tab[i].default_key);
    }
}

uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx) {
    int inst_nbr = param->inst_nbr;
    struct sta_info_tag* sta_entry = (struct sta_info_tag *)co_list_pop_front(&sta_info_env.free_sta_list);
    if (!sta_entry) {
        return 1;
    }

    memcpy(&sta_entry->mac_addr, &param->mac_addr,6);
    int ampdu_spacing_min = param->ampdu_spacing_min;
    if (ampdu_spacing_min < 0x10) {
        ampdu_spacing_min = 0x10;
    }

    sta_entry->ampdu_spacing_min = ampdu_spacing_min;
    sta_entry->ampdu_size_max_ht = param->ampdu_size_max_ht;
    sta_entry->ampdu_size_max_vht = param->ampdu_size_max_vht;
    sta_entry->paid_gid = param->paid_gid;
    sta_entry->inst_nbr = param->inst_nbr;
    sta_entry->rssi = param->rssi;
    sta_entry->tsflo = param->tsflo;
    sta_entry->tsfhi = param->tsfhi;
    sta_entry->data_rate = param->data_rate;

    *sta_idx = CO_GET_INDEX(sta_entry, sta_info_tab);
    sta_entry->staid = *sta_idx;

    sta_entry->bcn_int = 100 * TU_DURATION; // 0x19000;
    sta_entry->rx_nqos_last_seqcntl = 0xffff;
    for (int i = 0; i < TID_MAX; i++) {
        sta_entry->rx_qos_last_seqcntl[i] = 0xffff;
    }

    sta_entry->ctrl_port_state = PORT_CLOSED;
    sta_entry->pol_tbl.buf_ctrl = txl_buffer_control_desc + *sta_idx;

    if (!(vif_info_tag[inst_nbr].flags & WPA_WPA2_IN_USE)) {
        (sta_entry->sta_sec_info).cur_key = &vif_info_tab[insn_nbr].default_key;
        printf("------ %d set default key %p, ptr %p\r\n", 0x102, &(vif_info_tab[insn_nbr].default_key), vif_info_tab[insn_nbr].default_key);
    } else {
        (sta_entry->sta_sec_info).cur_key = &(sta_entry->sta_sec_info).pairwise_key;
        printf("------ %d set default key %p, ptr %p\r\n", 0xf7, &(vif_info_tab[insn_nbr].default_key), vif_info_tab[insn_nbr].default_key);
    }

    co_list_push_back(&vif_info_tab[insn_nbr].sta_list, (struct co_list_hdr *)sta_entry);
    sta_entry->valid = true;

    return 0;
}

void sta_mgmt_unregister(uint8_t sta_idx) {
    struct sta_info_tag *sta_entry = &sta_info_tab[sta_idx];
    co_list_extract(&vif_info_tab[sta_entry->inst_nbr].sta_list, &sta_entry->list_hdr);
    sta_mgmt_entry_init(sta_entry);
    co_list_push_back(&sta_info_env.free_sta_list, &sta_entry->list_hdr);
}

void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx) {
	int sta_idx = param->sta_idx;
    struct key_info_tag* key_info = &sta_info_tab[sta_idx].sta_sec_info.key_info;
    key_info->hw_key_idx = hw_key_idx;
    key_info->cipher = param->cipher_suite;
    key_info->key_idx = param->key_idx;
    // clear 0x48 bytes
    memset(&(key_info->rx_pn), 0, sizeof(key_info->rx_pn));
    int cipher = param->cipher_suite;
    if (cipher == MAC_RSNIE_CIPHER_TKIP) {
        key_info->tx_pn = 0;
        key_info->u.mic.tx_key[0] = param->key.array[4];
        key_info->u.mic.tx_key[1] = param->key.array[5];
        key_info->u.mic.rx_key[0] = param->key.array[6];
        key_info->u.mic.rx_key[1] = param->key.array[7];
    } else {
        if ((cipher == MAC_RSNIE_CIPHER_WEP40) || (cipher == MAC_RSNIE_CIPHER_WEP104)) {
            key_info->tx_pn = co_rand_word() & 0xFFFFFF;
        } else {
            key_info->tx_pn = 0;
        }
    }
    key_info->valid = true;
    sta_info_tab[sta_idx].sta_sec_info.pairwise_key = key_info;
}

void sta_mgmt_del_key(struct sta_info_tag *sta) { 
    (sta->sta_sec_info).key_info.valid = false;
    (sta->sta_sec_info).pairwise_key = NULL;
    sta->ctrl_port_state = PORT_CONTROLED;
}

int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit) {
    int cnt = 0;
	while (!co_list_is_empty(&(p_sta_entry->tx_desc_post))) {
        struct txdesc* desc = co_list_pick(&(p_sta_entry->tx_desc_post));
        if (!txl_cntrl_tx_check(p_vif_entry))
            break;
        if (!apm_tx_int_ps_check(desc)) {
            break;
        }
        int stop;
        // prioritize the frame from apm 
        desc = apm_tx_int_ps_get_postpone(p_vif_entry, p_sta_entry, &stop);
        if (stop) break;
        if (desc == NULL) {
            desc = co_list_pop_front(&(p_sta_entry->tx_desc_post));
        }
        uint8_t tid = (desc->host).tid;
        /// TODO: why this is 9??
        /// the offset is 0xd5 = 213 from txdesc*
        /// Also, I can't see where p_sta_entry->tx_desc_post get data from...
        ((char*)desc->buf)[9] = 0;
        cnt++;
        txl_cntrl_push_int(desc, tid);
        if ((limit != 0) && (cnt == limit)) {
            break;
        }
    }
    return cnt;
}
