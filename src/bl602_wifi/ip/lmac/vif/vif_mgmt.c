#include <lmac/vif/vif_mgmt.h>

#include <modules/common/co_list.h>
#include <lmac/ke/ke_timer.h>

#include <blconfig.h>

struct vif_mgmt_env_tag vif_mgmt_env;
struct vif_info_tag vif_info_tab[NX_VIRT_DEV_MAX];

static void vif_mgmt_bcn_to_evt(void *env) {
    struct vif_info_tag *p_info_env = (struct vif_info_tag *)env;
    if (p_info_env->chan_ctxt != 0) {
        chan_bcn_to_evt(p_info_env);
        return;
    }
}

static void vif_mgmt_entry_init(struct vif_info_tag *vif_entry) {
    memset(vif_entry, 0, sizeof(*vif_entry));

    vif_entry->type = VIF_UNKNOWN;
    vif_entry->tx_power = VIF_UNDEF_POWER;
    vif_entry->user_tx_power = VIF_UNDEF_POWER;

    #if (NX_P2P || NX_CHNL_CTXT)
    vif_entry->tmr_bcn_to.cb  = vif_mgmt_bcn_to_evt;
    vif_entry->tmr_bcn_to.env = vif_entry;
    #endif
}

void vif_mgmt_init(void) { 
    memset(&vif_mgmt_env, 0, sizeof(struct vif_mgmt_env_tag));
    co_list_init(&vif_mgmt_env.free_list);
    co_list_init(&vif_mgmt_env.used_list);
	for (int i = 0; i < NX_VIRT_DEV_MAX; i++) {
        vif_mgmt_entry_init(&vif_info_tab[i]);
        co_list_push_back(&vif_mgmt_env.free_list, &vif_info_tab[i].list_hdr);
    }
}

void vif_mgmt_reset(void) {
    struct vif_info_tag *p_vif_entry = co_list_pick(&vif_mgmt_env.used_list);
    
    for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
        vif_mgmt_send_postponed_frame(p_vif_entry);
    }
}

uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx) {
	__builtin_trap();
}

void vif_mgmt_unregister(uint8_t vif_idx) {
	__builtin_trap();
}

void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx) {
	__builtin_trap();
}

void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid) {
	vif->key_info[keyid].valid = false;
    if (vif->default_key == vif->key_info + keyid) {
        vif->default_key = NULL;
        for (int i = 0 ; i < MAC_DEFAULT_KEY_COUNT; i++) {
            if (vif->key_info[i].valid) {
                vif->default_key = vif->key_info + i;
                break;
            }
        }
    }
}

void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry) {
	struct sta_info_tag *p_sta_entry = co_list_pick(&p_vif_entry->sta_list);
    for (; p_sta_entry != NULL; p_sta_entry = co_list_next(&p_sta_entry->list_hdr)) {
        sta_mgmt_send_postponed_frame(p_vif_entry,p_sta_entry, 0);
    }
}

#if (NX_CHNL_CTXT || NX_P2P)
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry) {
	mm_timer_set(&p_vif_entry->tmr_bcn_to, ke_time() + VIF_MGMT_BCN_TO_DUR);
}

void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry) {
    if (((ps_env.ps_on != false) && 
        ((ps_env.prevent_sleep & PS_VIF_WAITING_EOSP) == 0)) &&
        (p_vif_entry->prevent_sleep == 0)
    ) {
        mm_timer_clear(&p_vif_entry->tmr_bcn_to);
        vif_mgmt_bcn_to_evt(p_vif_entry);
    }
}
#endif

void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int) {
    uint16_t new_bcn_int = bcn_int;
    p_vif_entry->u.ap.bcn_int = bcn_int;
	__disable_irq();
    if (vif_mgmt_env.vif_ap_cnt < 2) {
        vif_mgmt_env.low_bcn_int_idx = p_vif_entry->index;
        p_vif_entry->u.ap.bcn_tbtt_ratio = 1;
        p_vif_entry->u.ap.bcn_tbtt_cnt = 1;
    } else {
        uint16_t lowest_bcn_int = vif_info_tab[vif_mgmt_env.low_bcn_int_idx].u.ap.bcn_int;
        if (new_bcn_int < lowest_bcn_int) {
            vif_mgmt_env.low_bcn_int_idx = p_vif_entry->index;
        } else {
            new_bcn_int = lowest_bcn_int;
        }
        struct vif_info_tag * p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
        for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
            p_vif_entry->u.ap.bcn_tbtt_cnt = 1; /// e5: 229
            uint8_t ratio = p_vif_entry->u.ap.bcn_int / new_bcn_intl; // e2: 226
            p_vif_entry->u.ap.bcn_tbtt_ratio = ratio /// e4: 228
        }
    }
    MAC_CORE->BCN_CNTRL_1.beaconInt = new_bcn_int;
    __enable_irq();
}

void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry) {
	__builtin_trap();
}

struct vif_info_tag *vif_mgmt_get_first_ap_inf(void) {
    if (vif_mgmt_env.vif_ap_cnt != '\0') {
        struct vif_info_tag* p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
        for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
            if (p_vif_entry->type == VIF_AP) {
                return p_vif_entry;
            }
        }
    }
    return NULL;
}
