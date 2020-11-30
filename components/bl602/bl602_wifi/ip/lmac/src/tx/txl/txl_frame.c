
void txl_frame_cfm(txdesc * txdesc);
void txl_frame_dump(void);
void txl_frame_evt(int dummy);
txl_frame_desc_tag * txl_frame_get(int type, int len);
void txl_frame_init(_Bool reset);
void txl_frame_init_desc(txl_frame_desc_tag * frame, txl_buffer_tag * buffer, tx_hw_desc * hwdesc, txl_buffer_control * bufctrl);
_Bool txl_frame_push(txl_frame_desc_tag * frame, uint8_t ac);
_Bool txl_frame_push_force(txl_frame_desc_tag * frame, uint8_t ac);
void txl_frame_release(txdesc * txdesc, _Bool postponed);
uint8_t txl_frame_sec_hdr_append(txdesc * txdesc, uint32_t buf);
uint8_t txl_frame_sechdr_len_compute(txdesc * txdesc);
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr * cfm, void * cfm_env, uint8_t * pBuf, uint32_t pBuf_len);
uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr * cfm, void * env);
uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr * cfm, void * env);
void txl_frame_tkip_mic_append(txdesc * txdesc, uint8_t * buf, uint32_t len);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_frame.c
* Source file for BL602
*/
#include "txl_frame.h"


static struct txl_frame_desc_tag txl_frame_desc[4];
struct txl_frame_env_tag txl_frame_env;

void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl);
void txl_frame_init(bool reset);

static uint32_t tx_count;
static uint32_t rx_count;
uint8_t mac_hw_reset;

struct txl_frame_desc_tag *txl_frame_get(int type, int len);
bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac);
bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac);
void txl_frame_cfm(struct txdesc *txdesc);
void txl_frame_release(struct txdesc *txdesc, bool postponed);
void txl_frame_evt(int dummy);
uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env);
uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env);
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len);
void txl_frame_dump(void);




/** txl_frame_init_desc
 */
void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_frame_init
 */
void txl_frame_init(bool reset)
{
	ASSER_ERR(FALSE);
	return;
}

/** *txl_frame_get
 */
struct txl_frame_desc_tag *txl_frame_get(int type, int len)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** txl_frame_push
 */
bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac)
{
	ASSER_ERR(FALSE);
	return false;
}

/** txl_frame_push_force
 */
bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac)
{
	ASSER_ERR(FALSE);
	return false;
}

/** txl_frame_cfm
 */
void txl_frame_cfm(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_frame_release
 */
void txl_frame_release(struct txdesc *txdesc, bool postponed)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_frame_evt
 */
void txl_frame_evt(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_frame_send_null_frame
 */
uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** txl_frame_send_qosnull_frame
 */
uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** txl_frame_send_eapol_frame
 */
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** txl_frame_dump
 */
void txl_frame_dump(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
