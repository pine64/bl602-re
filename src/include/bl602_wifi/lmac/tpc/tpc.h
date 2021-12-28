#ifndef _TPC_H_
#define _TPC_H_

#include <stdint.h>

#include <lmac/vif/vif_mgmt.h>

/**
 ******************************************************************************
 * @defgroup TPC TPC
 * @ingroup TX
 * @brief LMAC Transmit Power Control module.
 * @{
 ******************************************************************************
 */

/**
 * @brief Set power level to be used for HW generated frame.
 *
 * Configure NXMAC_MAX_POWER_LEVEL register with the specified Tx power by
 * converting it to a radio idx first.
 *
 * @param[in] pwr TX power (in dBm)
 */
void tpc_update_tx_power(int8_t pwr);

/**
 * @brief Get TX power for a VIF
 *
 * Return the TX power to use on the vif, taking into account all constraint
 *
 * @param[in] vif Pointer on vif structure to update
 *
 * @return The idx to use in policy table to configure TX power for this vif.
 */
uint8_t tpc_get_vif_tx_power(struct vif_info_tag *vif);
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config);

/**
 * @brief Configure TX power for a specific vif
 *
 * Configure a TX power for a vif, and returned the actual power set (if request
 * is not possible) and the corresponding radio index (to be set in policy table)
 *
 * @param[in/out] vif Pointer on vif structure to update
 * @param[in/out] pwr Tx power to set for the vif (updated with the actual TX
 *                    power set)
 * @param[out] idx Radio idx corresponding to the TX power set
 */
void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx);


//#if NX_TX_FRAME
/**
 * @brief Set power level to be used for FW generated frame.
 *
 * Update tx power in policy table used by the frame.
 *
 * @param[in] vif Pointer on vif that send the frame
 * @param[in] frame Pointer on frame to be sent
 */
void tpc_update_frame_tx_power(struct vif_info_tag *vif,
                               struct txl_frame_desc_tag *frame);
//#endif /* NX_TX_FRAME */

/**
 * @}
 */
#endif // _TPC_H_
