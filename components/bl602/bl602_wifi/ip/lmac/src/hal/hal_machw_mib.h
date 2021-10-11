#ifndef __HAL_MACHW_MIB_H__
#define __HAL_MACHW_MIB_H__

#include <stdint.h>


struct machw_mib_tag {
    uint32_t dot11_wep_excluded_count; // +0
    uint32_t dot11_fcs_error_count; // +4
    uint32_t nx_rx_phy_error_count; // +8
    uint32_t nx_rd_fifo_overflow_count; // +12
    uint32_t nx_tx_underun_count; // +16
    uint32_t reserved_1[7]; // +20
    uint32_t nx_qos_utransmitted_mpdu_count[8]; // +48
    uint32_t nx_qos_gtransmitted_mpdu_count[8]; // +80
    uint32_t dot11_qos_failed_count[8]; // +112
    uint32_t dot11_qos_retry_count[8]; // +144
    uint32_t dot11_qos_rts_success_count[8]; // +176
    uint32_t dot11_qos_rts_failure_count[8]; // +208
    uint32_t nx_qos_ack_failure_count[8]; // +240
    uint32_t nx_qos_ureceived_mpdu_count[8]; // +272
    uint32_t nx_qos_greceived_mpdu_count[8]; // +304
    uint32_t nx_qos_ureceived_other_mpdu[8]; // +336
    uint32_t dot11_qos_retries_received_count[8]; // +368
    uint32_t nx_utransmitted_amsdu_count[8]; // +400
    uint32_t nx_gtransmitted_amsdu_count[8]; // +432
    uint32_t dot11_failed_amsdu_count[8]; // +464
    uint32_t dot11_retry_amsdu_count[8]; // +496
    uint32_t dot11_transmitted_octets_in_amsdu[8]; // +528
    uint32_t dot11_amsdu_ack_failure_count[8]; // +560
    uint32_t nx_ureceived_amsdu_count[8]; // +592
    uint32_t nx_greceived_amsdu_count[8]; // +624
    uint32_t nx_ureceived_other_amsdu[8]; // +656
    uint32_t dot11_received_octets_in_amsdu_count[8]; // +688
    uint32_t reserved_2[24]; // +720
    uint32_t dot11_transmitted_ampdu_count; // +816
    uint32_t dot11_transmitted_mpdus_in_ampdu_count; // +820
    uint32_t dot11_transmitted_octets_in_ampdu_count; // +824
    uint32_t wnlu_ampdu_received_count; // +828
    uint32_t nx_gampdu_received_count; // +832
    uint32_t nx_other_ampdu_received_count; // +836
    uint32_t dot11_mpdu_in_received_ampdu_count; // +840
    uint32_t dot11_received_octets_in_ampdu_count; // +844
    uint32_t dot11_ampdu_delimiter_crc_error_count; // +848
    uint32_t dot11_implicit_bar_failure_count; // +852
    uint32_t dot11_explicit_bar_failure_count; // +856
    uint32_t reserved_3[5]; // +860
    uint32_t dot11_20mhz_frame_transmitted_count; // +880
    uint32_t dot11_40mhz_frame_transmitted_count; // +884
    uint32_t dot11_20mhz_frame_received_count; // +888
    uint32_t dot11_40mhz_frame_received_count; // +892
    uint32_t nx_failed_40mhz_txop; // +896
    uint32_t nx_successful_txops; // +900
    uint32_t reserved_4[4]; // +904
    uint32_t dot11_dualcts_success_count; // +920
    uint32_t dot11_stbc_cts_success_count; // +924
    uint32_t dot11_stbc_cts_failure_count; // +928
    uint32_t dot11_non_stbc_cts_success_count; // +932
    uint32_t dot11_non_stbc_cts_failure_count; // +936
};

#endif // __HAL_MACHW_MIB_H__
