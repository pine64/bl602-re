/**
* @file llc_ch_asses.h
* Header file for BL602
*/
#ifndef __LLC_CH_ASSES_H__
#define __LLC_CH_ASSES_H__

enum lld_ch_asses_ponderation {
    LLD_CH_ASSES_SYNC_ERR_HIGH_RSSI = -3,
    LLD_CH_ASSES_CRC_ERR = -3,
    LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_NO_LATENCY = -1,
    LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_LATENCY = 0,
    LLD_CH_ASSES_SYNC_FOUND_NO_CRC_ERR = 3,
};
struct llc_ch_asses_tag {
    int8_t rcvd_quality[37]; // +0
    bool latency_en; // +37
    uint8_t reassess_count; // +38
    uint8_t reassess_cursor; // +39
};

#endif // __LLC_CH_ASSES_H__
