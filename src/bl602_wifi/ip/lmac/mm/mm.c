#include <blconfig.h>

#include <lmac/mm/mm.h>
#include <cfg/cfg_api.h>

#include <modules/mac/mac_frame.h>
#include <modules/mac/mac_common.h>
#include <modules/supplicant/w81connmgr.h>

#include <modules/ke/ke_event.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_timer.h>

#include <modules/common/co_utils.h>
#include <modules/common/co_status.h>

#include <hal/hal_machw.h>
#include <hal/hal_dma.h>
#include <hal/hal_desc.h>

#include <lmac/vif/vif_mgmt.h>
#include <lmac/sta/sta_mgmt.h>
#include <lmac/td/td.h>
#include <lmac/ps/ps.h>
#include <lmac/rx/rxl/rxl_cntrl.h>
#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/mm/mm_timer.h>
#include <lmac/scan/scan.h>
#include <lmac/chan/chan.h>
#include <lmac/mm/mm_bcn.h>

#include <umac/sm/sm_task.h>
#include <umac/sm/sm.h>
#include <umac/apm/apm.h>

#include <modules/supplicant/nohostSecurityParams.h>
#include <modules/supplicant/keyMgmtSta.h>

#include <phy/mac_core.h>
#include <phy/mac_pl.h>

#include <modules/common/co_utils.h>

#include <utils.h>

#include <arch/rv32i/ll.h>

#include <FreeRTOS.h>
#include <task.h>

#if NX_BEACONING
#define MM_TBTT_EVT_MASK (KE_EVT_PRIMARY_TBTT_BIT | KE_EVT_SECONDARY_TBTT_BIT)
#else
#define MM_TBTT_EVT_MASK KE_EVT_PRIMARY_TBTT_BIT
#endif

#if NX_MULTI_ROLE
/// Wake up delay before TBTT is occurring
#define TBTT_DELAY                  400  ///< 400us
#endif

/// Margin taken when checking if the computed TBTT is not in the past
/// This number was 300 on alios, but 700 (or say 3200 = 2500 + 700) in 
/// bl602
#if NX_CHNL_CTXT
#define MM_TBTT_COMPUTE_MARGIN      (CHAN_SWITCH_DELAY + 700)
#else
#define MM_TBTT_COMPUTE_MARGIN      700
#endif

struct mm_env_tag mm_env;

void mm_env_max_ampdu_duration_set(void) {
    mm_env.ampdu_max_dur[AC_BK] = TXOP(MAC_CORE->EDCA_AC_0.txOpLimit0);
    mm_env.ampdu_max_dur[AC_BE] = TXOP(MAC_CORE->EDCA_AC_1.txOpLimit1);
    mm_env.ampdu_max_dur[AC_VI] = TXOP(MAC_CORE->EDCA_AC_2.txOpLimit2);
    mm_env.ampdu_max_dur[AC_VO] = TXOP(MAC_CORE->EDCA_AC_3.txOpLimit3);
    #if NX_BEACONING
    mm_env.ampdu_max_dur[AC_BCN] = mm_env.ampdu_max_dur[AC_VO];
    #endif
}

void mm_env_init(void) {
    memset(&mm_env, 0, sizeof(struct mm_env_tag));

    mm_env.host_idle = 0x1;
    mm_env.keep_alive_status_enabled = 0x1; // new?
    mm_env.prev_mm_state = MM_IDLE;
    mm_env.prev_hw_state = HW_IDLE;
    
    mm_rx_filter_umac_set(MM_RX_FILTER_MONITOR);

    mm_env_max_ampdu_duration_set();
}

void mm_init(void) {
    hal_machw_init();
    mm_env_init();
    vif_mgmt_init();
    sta_mgmt_init();
#if (NX_TD)
    td_init();
#endif
#if NX_POWERSAVE
    ps_init();
#endif
    txl_cntrl_init();
    rxl_init();
#if NX_MM_TIMER
    mm_timer_init();
#endif
#if NX_HW_SCAN
    scan_init();
#endif
#if NX_CHNL_CTXT
    chan_init();
#endif
#if NX_GP_DMA
    hal_dma_init();
#endif
    mm_bcn_init();
}

#if NX_MULTI_ROLE
static void mm_tbtt_compute(struct bcn_frame *bcn, uint16_t len, struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t tim) {
    uint16_t interval;
    uint32_t drift = 0;
#if NX_POWERSAVE
    if (vif_entry->u.sta.listen_interval) {
        interval = vif_entry->u.sta.listen_interval;
    } else
#endif
    {
        if (tim) {
            interval = co_read8p(tim + MAC_TIM_CNT_OFT);
            if (interval == 0)
                interval = co_read8p(tim + MAC_TIM_PERIOD_OFT);
        } else {
            interval = 1; // new for bl602
        }
    }
#if (NX_POWERSAVE)
    drift = p_sta_entry->drift * interval;
#endif //(NX_POWERSAVE)
    // It seems that bl602 is using uint32_t for most thingy here
    // except tbtt_tsf, tsf_start_peer
    uint32_t duration_of_frame = hal_machw_rx_duration(rhd, len);
    uint32_t duration_to_timestamp = hal_machw_rx_duration(rhd, MAC_BEACON_TIMESTAMP_OFT); 
    uint64_t tsf_start_local = ((uint64_t)rhd->tsflo) | (((uint64_t)rhd->tsfhi) << 32);
    //uint32_t tsf_start_local = rhd->tsflo; // seems that bl602 use uint32_t here
    // I think that's because of optimization..
    // I will use uint64_t for all of them
    uint32_t bcn_int = (bcn->bcnint << 10);

    uint64_t tsf_start_peer = bcn->tsf;
    uint64_t tbtt_tsf;

    uint64_t next_tbtt_tsf; // this is uint32_t in bl602 assembly
    
    tsf_start_local -= (duration_of_frame - duration_to_timestamp);
    
    tbtt_tsf = (tsf_start_peer / bcn_int) * bcn_int;
    int64_t tsf_offset = tsf_start_peer - tsf_start_local;

    if (tbtt_tsf < (tsf_start_peer - duration_to_timestamp))
        tbtt_tsf = tsf_start_peer - duration_to_timestamp;
        
    next_tbtt_tsf = tbtt_tsf + interval * bcn_int;

    uint32_t next_tbtt = (uint32_t)(next_tbtt_tsf - tsf_offset) - TBTT_DELAY - drift;

    if (hal_machw_time_past(next_tbtt - MM_TBTT_COMPUTE_MARGIN)) {
        next_tbtt += bcn_int;
    }

    next_tbtt += ke_time() - MAC_PL->TSF_LO.value;

    if (next_tbtt != (vif_entry->tbtt_timer).time) {
        mm_timer_set(&vif_entry->tbtt_timer, next_tbtt);
    }
}
#endif

static void mm_ap_probe_cfm(void *env, uint32_t status) {
    struct vif_info_tag *vif_entry = (struct vif_info_tag *) env;
    if (status & FRAME_SUCCESSFUL_TX_BIT) {
        vif_entry->u.sta.beacon_loss_cnt = 0;
        return ;
    }
    mm_send_connection_loss_ind(env);
}

static uint32_t mm_compute_beacon_crc(struct bcn_frame *bcn, uint16_t len, uint32_t *tim) {
    uint32_t bcn_addr = CPU2HW(bcn);
    uint32_t crc = co_crc32(bcn_addr + MAC_BEACON_INTERVAL_OFT, 4, 0);
    uint32_t addr = bcn_addr + MAC_BEACON_VARIABLE_PART_OFT;
    len -= MAC_BEACON_VARIABLE_PART_OFT;
    while (len >= MAC_INFOELT_INFO_OFT) {
        uint8_t ie_id = co_read8p(addr++);
        uint8_t ie_len = co_read8p(addr++);
        if ((ie_len + MAC_INFOELT_INFO_OFT) > len) // len <= ie_len + 1
            break;
        if (ie_id == MAC_ELTID_TIM) {
            *tim = addr - MAC_INFOELT_INFO_OFT;
        } else {
            crc = co_crc32(addr, ie_len, crc);
        }
        len -= ie_len + MAC_INFOELT_INFO_OFT;
        addr += ie_len;
    }
    return crc;
}

#if NX_CONNECTION_MONITOR || NX_MULTI_ROLE
bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry,
                     struct sta_info_tag *p_sta_entry, uint32_t *tim)
{
    static uint32_t beacon_rx_count = 0;
    beacon_rx_count++;
    uint16_t len = rhd->frmlen;
    struct rx_pbd *pbd = HW2CPU(rhd->first_pbd_ptr);
    struct bcn_frame *bcn = HW2CPU(pbd->datastartptr);
    #if NX_CONNECTION_MONITOR
    uint32_t crc_prev = vif_entry->u.sta.mon_last_crc;
    vif_entry->u.sta.beacon_loss_cnt = 0;

    if (vif_entry->u.sta.csa_occured) {
        mm_send_csa_traffic_ind(vif_entry->index, true);
        vif_entry->u.sta.csa_occured = false;
    }

    if (ke_time_past(vif_entry->u.sta.mon_last_tx + MM_KEEP_ALIVE_PERIOD)) {
        if (mm_env.keep_alive_status_enabled) {
            if (txl_frame_send_null_frame(vif_entry->u.sta.ap_id, 0, 0) == CO_OK) {
                vif_entry->u.sta.mon_last_tx = ke_time();
            }
        }
    }
    
    int8_t rssi = (rhd->recvec1c >> 24) & 0xFF; // ((rvec_t *)&(rhd->recvec1a))->rssi1
    
    mm_check_rssi(vif_entry, rssi);

    vif_entry->u.sta.mon_last_crc = mm_compute_beacon_crc(bcn, len, tim);
    #endif
#if NX_MULTI_ROLE
    // Compute the time of the next TBTT
    mm_tbtt_compute(bcn, len, rhd, vif_entry, p_sta_entry, *tim);
#endif
#if NX_CONNECTION_MONITOR
    return (crc_prev != vif_entry->u.sta.mon_last_crc);
#else
    return (true);
#endif
}
#endif

void mm_reset(void) {
    if (ke_state_get(TASK_MM) == MM_ACTIVE) {
        mm_active();
    } else {
        ke_state_set(TASK_MM, MM_IDLE);
    }
}

void mm_active(void) {
    PACK(MAC_CORE->STATE_CNTRL, cntrl) {
        cntrl.value = 0;
        cntrl.nextState = HW_ACTIVE;
    }
    ke_state_set(TASK_MM, MM_ACTIVE);
}

#if NX_POWERSAVE || NX_CONNECTION_MONITOR || NX_MULTI_ROLE
void mm_sta_tbtt(void *env) {
    struct vif_info_tag *vif_entry = (struct vif_info_tag *)env;

#if (NX_MULTI_ROLE || NX_CHNL_CTXT)
    // TBTT Time
    uint32_t tbtt_time;
#endif //(NX_MULTI_ROLE || NX_CHAN_CTXT)
    if (!vif_entry->active)
        return ;

    if (vif_entry->u.sta.csa_count != 0){
        vif_entry->u.sta.csa_count--;
        if (vif_entry->u.sta.csa_count <= 1) {
            vif_mgmt_switch_channel(vif_entry);
            return ;
        } else if (vif_entry->u.sta.csa_count == 2) {
            mm_send_csa_traffic_ind(vif_entry->index, false);
        }
    }
#if (NX_MULTI_ROLE || NX_CHNL_CTXT)
    tbtt_time = sta_info_tab[(vif_entry->u).sta.ap_id].bcn_int + (vif_entry->tbtt_timer).time;
#endif
#if NX_MULTI_ROLE
    mm_timer_set(&vif_entry->tbtt_timer, tbtt_time);
#endif
#if (NX_P2P || NX_CHNL_CTXT)
    vif_mgmt_bcn_to_prog(vif_entry);
#endif
#if (NX_CHNL_CTXT)
    chan_tbtt_switch_update(vif_entry,tbtt_time);
    if (!chan_is_on_channel(vif_entry)) {
        return;
    }
#endif
#if NX_POWERSAVE
    vif_entry->prevent_sleep = vif_entry->prevent_sleep | PS_VIF_WAITING_BCN;
#endif
#if NX_CONNECTION_MONITOR
    (vif_entry->u).sta.beacon_loss_cnt++;
    if (vif_entry->u.sta.beacon_loss_cnt > MM_BEACON_LOSS_THD) {
        // vif_entry->u.sta.beacon_loss_cnt = 0; // reversed code doesn't have this line
        // bl602 only set this to zero if the null frame send succeed and mm_ap_probe_cfm is called
        // but the alios one set this to zero here
        txl_frame_send_null_frame(vif_entry->u.sta.ap_id, mm_ap_probe_cfm, vif_entry);
    }
#if (NX_CHNL_CTXT)
    else if (vif_entry->u.sta.beacon_loss_cnt == MM_BEACON_LOSS_THD) {
        chan_bcn_detect_start(vif_entry);
    }
#endif
#endif
}
#endif

void mm_ap_tbtt(uint32_t evt) {
    struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
    __disable_irq();
    txl_cntrl_halt_ac(AC_BCN);
    txl_cntrl_flush_ac(AC_BCN, DESC_DONE_SW_TX_BIT);

    for (; p_vif_entry; p_vif_entry = (struct vif_info_tag *)co_list_next(&(p_vif_entry->list_hdr))) {
        if (p_vif_entry->type == VIF_AP) {
            p_vif_entry->u.ap.bcn_tbtt_cnt--;
            if (p_vif_entry->u.ap.bcn_tbtt_cnt == 0) {
                p_vif_entry->u.ap.bcn_tbtt_cnt = p_vif_entry->u.ap.bcn_tbtt_ratio;
                vif_mgmt_bcn_to_prog(p_vif_entry);
                #if (NX_CHNL_CTXT || NX_P2P_GO)
                uint32_t beacon_int = (uint32_t)p_vif_entry->u.ap.bcn_int << 10;
                uint32_t next_tbtt = ke_time() + ((uint32_t)MAC_PL->NEXT_TBTT.nextTBTT << 5) + beacon_int;
                #endif //(NX_CHNL_CTXT || NX_P2P_GO)
                #if (NX_CHNL_CTXT)
                if (p_vif_entry->chan_ctxt != NULL) {
                    chan_tbtt_switch_update(p_vif_entry, next_tbtt);
                }
                #endif //(NX_CHNL_CTXT)

            }
        }
    }
#if NX_BCN_AUTONOMOUS_TX
    // Transmit the beacon(s)
    mm_bcn_transmit();
#endif
    __enable_irq();
}

#if NX_BEACONING && (!NX_MULTI_ROLE)
void mm_tbtt_evt(int dummy) {
    // ...    
    uint32_t evt = ke_evt_get() & MM_TBTT_EVT_MASK;
    ASSERT_ERR(evt != MM_TBTT_EVT_MASK);
    ke_evt_clear(evt);
    
    if (vif_entry->type == VIF_STA)
        mm_sta_tbtt(vif_entry);
    else if (mm_env.beaconing)
        mm_ap_tbtt(evt);
}
#elif (!NX_MULTI_ROLE)
void mm_tbtt_evt(int dummy) {
    uint32_t evt = ke_evt_get() & MM_TBTT_EVT_MASK;
    ASSERT_ERR(evt != MM_TBTT_EVT_MASK);
    ke_evt_clear(evt);
    
    mm_sta_tbtt(evt);
}
#elif NX_BEACONING
void mm_tbtt_evt(int dummy) {
    uint32_t evt = ke_evt_get() & MM_TBTT_EVT_MASK;
    ASSERT_ERR(evt != MM_TBTT_EVT_MASK);
    ke_evt_clear(evt);
    mm_ap_tbtt(evt);
}
#endif

uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr) {
    uint8_t hw_sta_idx;
    struct sta_info_tag *sta = sta_info_tab + sta_idx;

    // Compute the HW STA index
    hw_sta_idx = MM_SEC_DEFAULT_KEY_COUNT + sta_idx; // 8 + sta_idx

    MAC_CORE->ENCR_MAC_ADDR_LOW.macAddrRAMLow = *((uint32_t*)sta->mac_addr.array);
    MAC_CORE->ENCR_MAC_ADDR_HIGH.value = sta->mac_addr.array[2];

    MAC_CORE->ENCR_KEY_0.value = 0;
    MAC_CORE->ENCR_KEY_1.value = 0;
    MAC_CORE->ENCR_KEY_2.value = 0;
    MAC_CORE->ENCR_KEY_3.value = 0;

    PACK0(MAC_CORE->ENCR_CNTRL, encr_cntrl) {
        //                (uint8_t newread,uint8_t newwrite,uint16_t keyindexram,uint8_t ctyperam,
        //       uint8_t vlanidram,uint8_t sppram,uint8_t usedefkeyram,uint8_t clenram,
        //       uint8_t searcherror,uint8_t newsearch)
        encr_cntrl.newRead = 0;
        encr_cntrl.newWrite = 1;
        encr_cntrl.keyIndexRAM = hw_sta_idx;
        encr_cntrl.cTypeRAM = 0;
        encr_cntrl.vlanIDRAM = inst_nbr;
        encr_cntrl.sppRAM = 0;
        encr_cntrl.useDefKeyRAM = 1;
        encr_cntrl.cLenRAM = 0;
    }

    for (;MAC_CORE->ENCR_CNTRL.newWrite;);

    return hw_sta_idx;
}

static void dump_keyram_config(uint32_t val) {
    puts("==========================  Keyram Config ========================\r\n");
    printf("  start %02u -->> end %02u; nVAP %02u; max %02u\r\n",val & 0xff,val >> 8 & 0xff,
           val >> 0x10 & 0xff,val >> 0x18);
    puts("==========================  Keyram Dump =========================\r\n");
    puts("[id]   MAC Address     Key Len  VLan ID  Default      \tKey Hexdump(16Bytes MAX)\r\n");
}

static void dump_mac_like(const char* format, uint32_t a, uint16_t b) {
    union {
        struct {
            uint32_t a;
            uint16_t b;
        };
        uint8_t c[6];
    } mac_addr = {
        .a = a,
        .b = b
    };
    printf("%s%02X:%02X:%02X:%02X:%02X:%02X", format,
        mac_addr.c[0], mac_addr.c[1], mac_addr.c[2],
        mac_addr.c[3], mac_addr.c[4], mac_addr.c[5]);
} 

void mm_sec_keydump(void) {
    static const char* bits[] = {"128-Bit", " 64-Bit"};
    dump_keyram_config(MAC_CORE->encr_ram_config.value);
    int end = MAC_CORE->encr_ram_config.end;
    for (int i = 0; i < end; i++) {
        PACK0(MAC_CORE->ENCR_CNTRL, encr_cntrl) {
            encr_cntrl.newRead = 1;
            encr_cntrl.newWrite = 0;
            encr_cntrl.keyIndexRAM = i;
            encr_cntrl.cTypeRAM = 0;
            encr_cntrl.vlanIDRAM = 0;
            encr_cntrl.sppRAM = 0;
            encr_cntrl.useDefKeyRAM = 0;
            encr_cntrl.cLenRAM = 0;
        }
        for (;MAC_CORE->ENCR_CNTRL.newRead;);
        struct mac_addr mac;
        *((uint32_t*)mac.array) = MAC_CORE->ENCR_MAC_ADDR_LOW.macAddrRAMLow;
        mac.array[2] = MAC_CORE->ENCR_MAC_ADDR_HIGH.macAddrRAMHigh;
        mac_addr_unpack* unpack_mac = (mac_addr_unpack*)&mac;
        printf("[%02d] %02X:%02X:%02X:%02X:%02X:%02X", i, 
            unpack_mac->array[0], unpack_mac->array[1], unpack_mac->array[2], 
            unpack_mac->array[3], unpack_mac->array[4], unpack_mac->array[5]);
        const char *keyLen = bits[0];
        if (MAC_CORE->ENCR_CNTRL.cLenRAM == 0) {
            keyLen = bits[1];
        }
        printf(" %s", keyLen);
        printf("    %02u", MAC_CORE->ENCR_CNTRL.vlanIDRAM);
        printf("        %u", MAC_CORE->ENCR_CNTRL.useDefKeyRAM);
        union {
            uint32_t keys[4];
            uint8_t keys8[4 * 4];
        } key = {
            .keys = {
                MAC_CORE->ENCR_KEY_0.value,
                MAC_CORE->ENCR_KEY_1.value,
                MAC_CORE->ENCR_KEY_2.value,
                MAC_CORE->ENCR_KEY_3.value,
            }
        };
        
        printf("     %02X%02X%02X%02X %02X%02X%02X%02X %02X%02X%02X%02X %02X%02X%02X%02X",
            key.keys8[0],key.keys8[1],key.keys8[2],key.keys8[3],
            key.keys8[4],key.keys8[5],key.keys8[6],key.keys8[7],
            key.keys8[8],key.keys8[9],key.keys8[10],key.keys8[11],
            key.keys8[12],key.keys8[13],key.keys8[14],key.keys8[15]);
        puts("\r\n");
    }
    puts("==========================  MAC Address =========================\r\n");
    dump_mac_like("    MAC ", MAC_CORE->MAC_ADDR_LOW.value, MAC_CORE->MAC_ADDR_HI.value);
    dump_mac_like(" Mask ", MAC_CORE->MAC_ADDR_LOW_MASK.value, MAC_CORE->MAC_ADDR_HI_MASK.value);
    puts("\r\n");
    dump_mac_like("    MAC ", MAC_CORE->BSS_ID_LOW.value, MAC_CORE->BSS_ID_HI.value);
    dump_mac_like(" Mask ", MAC_CORE->BSS_ID_LOW_MASK.value, MAC_CORE->BSS_ID_HI_MASK.value);
    puts("\r\n");
}

uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param) {
    uint8_t sta_idx = param->sta_idx;
    uint8_t vlan_idx = param->inst_nbr;
    uint8_t key_idx_hw;
    if (sta_idx == INVALID_STA_IDX) {
        key_idx_hw = MM_VIF_TO_KEY(param->key_idx, param->inst_nbr);

        MAC_CORE->ENCR_MAC_ADDR_LOW.value = 0xffffffff;
        MAC_CORE->ENCR_MAC_ADDR_HIGH.value = 0xffffffff;

        vif_mgmt_add_key(param, key_idx_hw);
    } else {
        struct sta_info_tag *sta = &sta_info_tab[sta_idx];
        ASSERT_ERR(sta_idx < STA_MAX);

        key_idx_hw = MM_STA_TO_KEY(sta_idx);
        sta_mgmt_add_key(param, key_idx_hw);
        MAC_CORE->ENCR_MAC_ADDR_LOW.value = sta->mac_addr.array[0] | (((uint32_t)sta->mac_addr.array[1]) << 16);
        MAC_CORE->ENCR_MAC_ADDR_HIGH.value = sta->mac_addr.array[2];
    }

    uint8_t clen = 1;
    uint8_t ctype = MM_SEC_CTYPE_NULL;
    struct mac_sec_key const *key = &param->key;
    ASSERT_ERR(param->cipher_suite <= 3);
    if (param->cipher_suite == 0) {
        clen = 0;
    } else if (param->cipher_suite <= 2) {
        uint8_t types[] = {MM_SEC_CTYPE_NULL, MM_SEC_CTYPE_TKIP, MM_SEC_CTYPE_CCMP, MM_SEC_CTYPE_WEP};
        ctype = types[param->cipher_suite];
    }

    MAC_CORE->ENCR_KEY_0.value = key->array[0];
    MAC_CORE->ENCR_KEY_1.value = key->array[1];
    MAC_CORE->ENCR_KEY_2.value = key->array[2];
    MAC_CORE->ENCR_KEY_3.value = key->array[3];
    
    PACK0(MAC_CORE->ENCR_CNTRL, encr_cntrl) {
        encr_cntrl.newRead = 0;
        encr_cntrl.newWrite = 1;
        encr_cntrl.keyIndexRAM = key_idx_hw;
        encr_cntrl.cTypeRAM = ctype;
        encr_cntrl.vlanIDRAM = vlan_idx;
        encr_cntrl.sppRAM = param->spp;
        encr_cntrl.useDefKeyRAM = 0;
        encr_cntrl.cLenRAM = clen;
    }

    for (;MAC_CORE->ENCR_CNTRL.newWrite;);

    return key_idx_hw;
}

void mm_sec_machwkey_del(uint8_t hw_key_idx) {
    if (hw_key_idx < MM_SEC_DEFAULT_KEY_COUNT) {
        MAC_CORE->ENCR_MAC_ADDR_LOW.value = 0xffffffff;
        MAC_CORE->ENCR_MAC_ADDR_HIGH.value = 0xffffffff;

        vif_mgmt_del_key(vif_info_tab + (MM_KEY_TO_VIF(hw_key_idx)), MM_KEY_TO_KEYID(hw_key_idx));
    } else {
        struct sta_info_tag* p_sta_info = sta_info_tab + (MM_KEY_TO_STA(hw_key_idx));
        MAC_CORE->ENCR_MAC_ADDR_LOW.value = *(uint32_t*) (p_sta_info->mac_addr.array);
        MAC_CORE->ENCR_MAC_ADDR_HIGH.value = p_sta_info->mac_addr.array[2];
        sta_mgmt_del_key(p_sta_info);
    }
    MAC_CORE->ENCR_KEY_0.value = 0;
    MAC_CORE->ENCR_KEY_1.value = 0;
    MAC_CORE->ENCR_KEY_2.value = 0;
    MAC_CORE->ENCR_KEY_3.value = 0;
    
    PACK0(MAC_CORE->ENCR_CNTRL, encr_cntrl) {
        encr_cntrl.newRead = 0;
        encr_cntrl.newWrite = 1;
        encr_cntrl.keyIndexRAM = hw_key_idx;
    }
    for (;MAC_CORE->ENCR_CNTRL.newWrite;);
}

void mm_sec_machwaddr_del(uint8_t sta_idx) {
    MAC_CORE->ENCR_MAC_ADDR_LOW.value = 0xffffffff;
    MAC_CORE->ENCR_MAC_ADDR_HIGH.value = 0xffffffff;
    MAC_CORE->ENCR_KEY_0.value = 0;
    MAC_CORE->ENCR_KEY_1.value = 0;
    MAC_CORE->ENCR_KEY_2.value = 0;
    MAC_CORE->ENCR_KEY_3.value = 0;
    PACK0(MAC_CORE->ENCR_CNTRL, encr_cntrl) {
        encr_cntrl.newRead = 0;
        encr_cntrl.newWrite = 1;
        encr_cntrl.keyIndexRAM = MM_STA_TO_KEY(sta_idx);
    }
    for (;MAC_CORE->ENCR_CNTRL.newWrite;);
}

void mm_hw_idle_evt(int dummy) { 
    ke_evt_clear(KE_EVT_HW_IDLE_BIT);
    ke_state_set(TASK_MM, MM_IDLE);
}

void mm_hw_info_set(const struct mac_addr *mac_addr) {
    MAC_CORE->MAC_CNTRL_1.ap = 0;
    MAC_CORE->MAC_CNTRL_1.bssType = 1;
    MAC_CORE->MAC_ADDR_HI_MASK.value = 0x100;
    MAC_PL->TSF_LO.value = 0;
    MAC_PL->TSF_HI.value = 0;
    MAC_CORE->MAC_ADDR_LOW.value = *(uint32_t*) mac_addr->array;
    MAC_CORE->MAC_ADDR_HI.value = mac_addr->array[2];
    PACK(MAC_CORE->MAC_CNTRL_1, cntrl) {
        cntrl.disableACKResp = 0;
        cntrl.disableCTSResp = 0;
        cntrl.disableBAResp = 0;
    }
    mm_env.rx_filter_umac = MM_RX_FILTER_ACTIVE;
    mm_rx_filter_set();
}

void mm_hw_ap_info_set(void) {
    MAC_CORE->MAC_CNTRL_1.ap = 1;
    mm_env.rx_filter_umac = (MM_RX_FILTER_ACTIVE | NXMAC_ACCEPT_PS_POLL_BIT | NXMAC_ACCEPT_ALL_BEACON_BIT); // bl602 has one mroe NXMAC_ACCEPT_ALL_BEACON_BIT
    mm_rx_filter_set();
    PACK0(MAC_PL->GEN_INT_ACK, int_ack) {
        int_ack.impPriDTIM = 1;
        int_ack.impPriTBTT = 1;
    }
    PACK(MAC_PL->GEN_INT_ENABLE, int_en) {
        int_en.impPriTBTT = 1;
        int_en.impPriDTIM = 1;
    }
}

void mm_hw_ap_info_reset(void) {
    MAC_CORE->MAC_CNTRL_1.ap = 0;
    mm_env.rx_filter_umac = (MM_RX_FILTER_ACTIVE);
    mm_rx_filter_set();
    PACK0(MAC_PL->GEN_INT_ACK, int_ack) {
        int_ack.impPriDTIM = 1;
        int_ack.impPriTBTT = 1;
    }
    PACK(MAC_PL->GEN_INT_ENABLE, int_en) {
        int_en.impPriTBTT = 0;
        int_en.impPriDTIM = 0;
    }
}

void mm_back_to_host_idle(void) {
    ASSERT_ERR(ke_state_get(TASK_MM) == MM_HOST_BYPASSED);
    if (mm_env.host_idle == 0) {
        mm_active();
    } else {
        ke_state_set(TASK_MM, MM_IDLE);
    }
}

void mm_force_idle_req(void) {
    __disable_irq();
    hal_machw_reset();
    rxl_reset();
    txl_reset();
    ke_state_set(TASK_MM, MM_HOST_BYPASSED);
    mm_env.prev_mm_state = MM_IDLE;
    mm_env.prev_hw_state = HW_IDLE;
    __enable_irq();
}

static unsigned char ascii_to_hex(char asccode) {
    if (asccode >= '0' && asccode <= '9')
        return asccode - '0';
    if (asccode >= 'a' && asccode <= 'f')
        return asccode - 'a' + 10;
    if (asccode >= 'A' && asccode <= 'F')
        return asccode - 'A' + 10;
    return 0;
}

void ascii_str_to_hex(unsigned char *hex, unsigned char *ascs, int srclen) {
    srclen &= 0xff;
    if (srclen & 1){
        srclen = srclen & 0xfe;
    }
    for (int i = 0; i < srclen; i += 2) {
        hex[i/2] = ascii_to_hex(ascs[i]) * 16 + ascii_to_hex(ascs[i + 1]);
    }
}

uint8_t wep_hw_keyid = 0xff;

uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx) {
    uint8_t status;

    // Register the new station
    status = sta_mgmt_register(param, sta_idx);
    struct vif_info_tag *p_vif_entry;
    if (status == CO_OK) {
        p_vif_entry = vif_info_tab + param->inst_nbr;
        *hw_sta_idx = mm_sec_machwaddr_wr(*sta_idx, param->inst_nbr);
        if (p_vif_entry->type != VIF_STA)
            return status;
    } else return status;
    // bl602 has bunch of supplicant related code here
    // also access the phrase from sm.. ?
    // p_vif_entry->u.sta.ap_id = *sta_idx; is delayed to 
    // the end.. if supplicant goes well
    struct mm_key_add_req key_add_req;
    if (p_vif_entry->bss_info.is_supplicant_enabled != false) {
        sta_conn_info.staId = *sta_idx;
        if ((p_vif_entry->bss_info.wpa_wpa2_wep.wpa == 0) && 
            (p_vif_entry->bss_info.wpa_wpa2_wep.wpa2 == 0) && 
            (p_vif_entry->bss_info.wpa_wpa2_wep.wpa3 == 0) 
        ) {
            if (p_vif_entry->bss_info.wpa_wpa2_wep.wepStatic) {
                /*((*(byte *)&vif_info_tab[uVar1].bss_info.wpa_wpa2_wep & 2) != 0)*/
                int32_t lend = strlen((char *)(sm_env.connect_param)->phrase);
                uint8_t len = lend;
                printf("wep:len:%d,password:%s\n",len, (sm_env.connect_param)->phrase);
                memset(&key_add_req, 0, sizeof(struct mm_key_add_req));
                key_add_req.inst_nbr = param->inst_nbr;
                key_add_req.key_idx = 0;
                key_add_req.sta_idx = 0xff;
                key_add_req.key.length = len;
                if (len == 5) {
                    key_add_req.cipher_suite = MAC_RSNIE_CIPHER_WEP40;
                    memcpy(key_add_req.key.array, (sm_env.connect_param)->phrase, len);
                } else {
                    if (len == 13) {
                        key_add_req.cipher_suite = MAC_RSNIE_CIPHER_WEP104;
                        memcpy(key_add_req.key.array, (sm_env.connect_param)->phrase, len);
                    } else {
                        if (len == 10) {
                            key_add_req.cipher_suite = MAC_RSNIE_CIPHER_WEP40;
                            key_add_req.key.length = 5;
                        } else {
                            if (len != 26) {
                                printf("password length is not correct for wep\n");
                                sta_mgmt_unregister(*sta_idx);
                                return CO_FAIL;
                            }
                            key_add_req.cipher_suite = MAC_RSNIE_CIPHER_WEP104;
                            key_add_req.key.length = 13;
                        }
                        ascii_str_to_hex((unsigned char*)key_add_req.key.array, (unsigned char*)(sm_env.connect_param)->phrase, len);
                    }
                }
                wep_hw_keyid = mm_sec_machwkey_wr(&key_add_req);
            }
        } else {
            char* phrase;
            if ((sm_env.connect_param)->phrase_pmk[0] == 0) {
                phrase = (char*)((sm_env.connect_param)->phrase);
            } else {
                phrase = (char*)((sm_env.connect_param)->phrase_pmk);
            }
            set_psk((char *)p_vif_entry->bss_info.ssid.array,
                p_vif_entry->bss_info.ssid.length, phrase);
        }
    }
    if ((p_vif_entry->bss_info.wpa_wpa2_wep.wpa2 == 0) && 
            (p_vif_entry->bss_info.wpa_wpa2_wep.wpa3 == 0)
    ) {
        if (p_vif_entry->bss_info.wpa_wpa2_wep.wpa) {
            supplicantEnable(&sta_conn_info, 3,
                (void*)(&(p_vif_entry->bss_info.wpa_mcstCipher)),
                (void*)(&(p_vif_entry->bss_info.wpa_ucstCipher)), 
                p_vif_entry->bss_info.is_pmf_required
            );
        }
    } else {
        supplicantEnable(&sta_conn_info, 4,
            (void*)(&(p_vif_entry->bss_info.rsn_mcstCipher)),
            (void*)(&(p_vif_entry->bss_info.rsn_ucstCipher)), 
            p_vif_entry->bss_info.is_pmf_required
        );
    }

    p_vif_entry->u.sta.ap_id = *sta_idx;
    return CO_OK;
}

void mm_sta_del(uint8_t sta_idx) {
    struct sta_info_tag *sta_entry = sta_info_tab + sta_idx;
    struct vif_info_tag *vif_entry = vif_info_tab + sta_entry->inst_nbr;

    if (vif_entry->type == VIF_STA) {
        vif_entry->u.sta.ap_id = 0xff;
        if (vif_entry->bss_info.is_supplicant_enabled) {
            if ((vif_entry->bss_info.wpa_wpa2_wep.wpa == 0) && 
                (vif_entry->bss_info.wpa_wpa2_wep.wpa2 == 0) && 
                (vif_entry->bss_info.wpa_wpa2_wep.wpa3 == 0) 
            ) {
                if (vif_entry->bss_info.wpa_wpa2_wep.wepStatic && (wep_hw_keyid != 0xff)) {
                    mm_sec_machwkey_del(wep_hw_keyid);
                    // I assume we should set wep_hw_keyid to 0xff??
                }
            } else {
                mm_sec_machwkey_del(sta_conn_info.ptkHwKeyId);
                mm_sec_machwkey_del(sta_conn_info.gtkHwKeyId);
                mm_sec_machwkey_del(sta_conn_info.mfpHwKeyId);
                supplicantDisable(&sta_conn_info);
                memset(&(sta_conn_info.suppData)->hashSsId, 0, sizeof(IEEEtypes_SsIdElement_t));
                remove_psk((char *)vif_entry->bss_info.ssid.array, vif_entry->bss_info.ssid.length);
            }   
            vif_entry->bss_info.is_supplicant_enabled = false;
        }
    } else {
        if (sta_entry->ps_state == PS_MODE_ON) {
            vif_entry->u.ap.ps_sta_cnt--;
            if (!vif_entry->u.ap.ps_sta_cnt) {
                mm_ps_change_ind(VIF_TO_BCMC_IDX(vif_entry->index), PS_MODE_OFF);
                apm_tx_int_ps_clear(vif_entry, VIF_TO_BCMC_IDX(vif_entry->index));
            }
        }
    }

    mm_sec_machwaddr_del(sta_idx);
    sta_mgmt_unregister(sta_idx);
}

void mm_cfg_element_keepalive_timestamp_update(void) {
    mm_env.keep_alive_time_last_received = xTaskGetTickCount();
    mm_env.keep_alive_packet_counter++;
}

#if (NX_CONNECTION_MONITOR)
void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry) {
    struct mm_connection_loss_ind *ind = ke_msg_alloc(MM_CONNECTION_LOSS_IND, TASK_IND, TASK_MM, sizeof(struct mm_connection_loss_ind));
    ind->inst_nbr = p_vif_entry->index;
    ke_msg_send(ind);
}
#endif //(NX_CONNECTION_MONITOR)

long long int last_us;
#define RSSI_PERIOD (2000000)
void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi) {
    int8_t rssi_old = vif_entry->u.sta.rssi;
    int8_t rssi_thold = vif_entry->u.sta.rssi_thold;
    int8_t rssi_hyst = vif_entry->u.sta.rssi_hyst;
    bool rssi_status = vif_entry->u.sta.rssi_status;

    vif_entry->u.sta.rssi = rssi;

    /* this chunk is added by bl602 */
    long long int cur_us = 0;
    bl60x_current_time_us(&cur_us);
    
    // if (cur_us - last_id < RSSI_PERIOD+1){;}else
    // if (cur_us <= last_id + RSSI_PERIOD){;}else
    // if (cur_us >= last_id + RSSI_PERIOD){;}
    if ((rssi_old == 0) || (cur_us - last_us >= RSSI_PERIOD)) {
        struct mm_rssi_status_ind *ind =
            ke_msg_alloc(MM_RSSI_STATUS_IND, TASK_API, TASK_MM, sizeof(struct mm_rssi_status_ind));

        ind->vif_index = vif_entry->index;
        ind->rssi_status = rssi_status;
        ind->rssi = rssi;
        last_us = cur_us;
        ke_msg_send(ind);
    }
    
    if (rssi_thold == 0)
        return;

    if ((rssi_status == 0) && (rssi < rssi_old) && (rssi < (rssi_thold - rssi_hyst))) {
        rssi_status = 1;
    } else if ((rssi_status == 1) && (rssi > rssi_old) && (rssi > (rssi_thold + rssi_hyst))) {
        rssi_status = 0;
    }

    if (rssi_status != vif_entry->u.sta.rssi_status) {
        struct mm_rssi_status_ind *ind =
            ke_msg_alloc(MM_RSSI_STATUS_IND, TASK_API, TASK_MM, sizeof(struct mm_rssi_status_ind));

        ind->vif_index = vif_entry->index;
        ind->rssi_status = rssi_status;

        ke_msg_send(ind);
    }

    vif_entry->u.sta.rssi_status = rssi_status;
}

void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable) {
    struct mm_csa_traffic_ind* ind = (struct mm_csa_traffic_ind *)ke_msg_alloc(MM_CSA_TRAFFIC_IND,TASK_API,TASK_MM,sizeof(struct mm_csa_traffic_ind));
    ind->vif_index = vif_index;
    ind->enable = enable;
    ke_msg_send((void*) ind);
}

uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie) {
    struct sta_info_tag *sta_entry = sta_info_tab + sta_id;
    struct vif_info_tag *vif_entry = vif_info_tab + sta_entry->inst_nbr;
    memcpy(wpa_ie, vif_entry->bss_info.rsn_wpa_ie, vif_entry->bss_info.rsn_wpa_ie_len);
    return vif_entry->bss_info.rsn_wpa_ie_len;
}

static int element_notify_status_enabled(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops) {
    return 0;
}

static int element_notify_time_last_received_set(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops) {
    return 0;
}

static int element_notify_keepalive_received(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops) {
    return 0;
}

void mm_rx_filter_set(void) {
    MAC_CORE->RX_CNTRL.value = mm_env.rx_filter_lmac_enable | mm_env.rx_filter_umac;
}

void mm_ps_change_ind(uint8_t sta_idx, uint8_t ps_state) {
    struct mm_ps_change_ind *ind = KE_MSG_ALLOC(MM_PS_CHANGE_IND, TASK_API, TASK_MM, mm_ps_change_ind);
    sta_info_tab[sta_idx].ps_state = ps_state;
    ind->sta_idx = sta_idx;
    ind->ps_state = ps_state;
    ke_msg_send(ind);
}

__attribute__((section(".wifi.cfg.entry"))) const struct cfg_element_entry cfg_entrys_mm[3] = {
    {
        .task = 0,
        .element = 0,
        .type = CFG_ELEMENT_TYPE_BOOLEAN,
        .name = "Keep Alive On/Off Status",
        .val = (void*)&mm_env.keep_alive_status_enabled,
        .set = cfg_api_element_general_set,
        .get = cfg_api_element_general_get,
        .notify = element_notify_status_enabled
    },
    {
        .task = 0,
        .element = 1,
        .type = CFG_ELEMENT_TYPE_UINT32,
        .name = "Keep Alive Frame last received",
        .val = (void*)&mm_env.keep_alive_time_last_received,
        .set = cfg_api_element_general_set,
        .get = cfg_api_element_general_get,
        .notify = element_notify_time_last_received_set
    },
    {
        .task = 0,
        .element = 2,
        .type = CFG_ELEMENT_TYPE_UINT32,
        .name = "Keep Alive Frame Counter",
        .val = (void*)&mm_env.keep_alive_packet_counter,
        .set = cfg_api_element_general_set,
        .get = cfg_api_element_general_get,
        .notify = element_notify_keepalive_received
    },
};

