#ifndef __TXU_CNTRL_H__
#define __TXU_CNTRL_H__

#include <stdbool.h>
#include <stdint.h>

#include <lmac/tx/tx_swdesc.h>

/*
 * DEFINES
 ****************************************************************************************
 */

/// status bit verified at umac
#define TX_STATUS_RETRY_REACHED     0x0800

/// Frame transmission done
#define TX_STATUS_DONE                 CO_BIT(0)
/// Frame retry required
#define TX_STATUS_RETRY_REQUIRED       CO_BIT(1)
/// Frame sw retry required
#define TX_STATUS_SW_RETRY_REQUIRED    CO_BIT(2)

#define TXU_CNTRL_RETRY                CO_BIT(0)
#define TXU_CNTRL_UNDER_BA             CO_BIT(1)
#define TXU_CNTRL_MORE_DATA            CO_BIT(2)
/**
 * TX Frame is a management frame:
 *      - WLAN header is already provided, no need to transform an ethernet header
 *      - Frame shall be sent as a singleton
 */
#define TXU_CNTRL_MGMT                 CO_BIT(3)
/**
 * No CCK rate can be used (valid only if TXU_CNTRL_MGMT is set)
 */
#define TXU_CNTRL_MGMT_NO_CCK          CO_BIT(4)
/**
 * Internal flags indicating that the PM monitoring has been started for this frame
 */
#define TXU_CNTRL_MGMT_PM_MON          CO_BIT(5)
#define TXU_CNTRL_AMSDU                CO_BIT(6)
#define TXU_CNTRL_MGMT_ROBUST          CO_BIT(7)
#define TXU_CNTRL_USE_4ADDR            CO_BIT(8)
#define TXU_CNTRL_EOSP                 CO_BIT(9)
#define TXU_CNTRL_MESH_FWD             CO_BIT(10)
#define TXU_CNTRL_TDLS                 CO_BIT(11)

/*
 * ENUMERATION
 ****************************************************************************************
 */

// Information Field Bit Field
enum txu_cntrl_info_bit
{
    TXU_CNTRL_IV_PRESENT    = 0,
    TXU_CNTRL_EIV_PRESENT,
    TXU_CNTRL_LLCSNAP_ADD,
};


bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category);
void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf);
void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac);
void txu_cntrl_cfm(struct txdesc *txdesc);
void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len);

#endif // __TXU_CNTRL_H__
