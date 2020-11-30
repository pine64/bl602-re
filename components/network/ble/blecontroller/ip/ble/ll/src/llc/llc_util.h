/**
* @file llc_util.h
* Header file for BL602
*/
#ifndef __LLC_UTIL_H__
#define __LLC_UTIL_H__

enum llc_util_enc_state {
    LLC_ENC_DISABLED = 0,
    LLC_ENC_TX = 1,
    LLC_ENC_RX = 2,
    LLC_ENC_ENABLE = 3,
    LLC_ENC_TX_FLOW_OFF = 4,
    LLC_ENC_RX_FLOW_OFF = 8,
    LLC_ENC_FLOW_OFF = 12,
    LLC_ENC_REFRESH_PENDING = 16,
    LLC_ENC_PAUSE_PENDING = 32,
};

#endif // __LLC_UTIL_H__
