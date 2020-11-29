/**
* @file txu_cntrl.c
* Source file for BL602
*/
#include "txu_cntrl.h"


void txu_cntrl_init(void);
void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf);
bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category);
void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac);
void txu_cntrl_cfm(struct txdesc *txdesc);
void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len);




/** txu_cntrl_init
 */
void txu_cntrl_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txu_cntrl_frame_build
 */
void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf)
{
	ASSER_ERR(FALSE);
	return;
}

/** txu_cntrl_push
 */
bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category)
{
	ASSER_ERR(FALSE);
	return false;
}

/** txu_cntrl_tkip_mic_append
 */
void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac)
{
	ASSER_ERR(FALSE);
	return;
}

/** txu_cntrl_cfm
 */
void txu_cntrl_cfm(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return;
}

/** txu_cntrl_protect_mgmt_frame
 */
void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len)
{
	ASSER_ERR(FALSE);
	return;
}
