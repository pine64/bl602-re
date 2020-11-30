/**
* @file lld_pdu.c
* Source file for BL602
*/
#include "lld_pdu.h"


enum lld_pdu_pack_status {
    LLC_PDU_PACK_OK = 0,
    LLC_PDU_PACK_WRONG_FORMAT = 1,
    LLC_PDU_PACK_UNKNOWN = 2,
};

typedef void (*llcp_pdu_unpk_func_t)(uint16_t, uint8_t, uint8_t *);

struct lld_pdu_rx_info {
    struct co_list_hdr hdr;
 // +0
    uint8_t rx_hdl;
 // +4
    bool free;
 // +5
    uint16_t conhdl;
 // +6
    uint16_t status;
 // +8
    uint8_t length;
 // +10
    uint8_t channel;
 // +11
    uint8_t rssi;
 // +12
    uint8_t audio;
 // +13
};

struct lld_pdu_pack_desc {
    uint8_t pdu_len;
 // +0
    void *pack_fmt;
 // +4
    llcp_pdu_unpk_func_t unpack_func;
 // +8
};

const struct lld_pdu_pack_desc lld_pdu_adv_pk_desc_tab[7];
const struct lld_pdu_pack_desc lld_pdu_llcp_pk_desc_tab[22];

static void lld_pdu_cntl_aligned_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param);
static void lld_pdu_llcp_con_param_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param);
static void lld_pdu_llcp_con_param_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param);
static void lld_pdu_llcp_length_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param);
static void lld_pdu_llcp_length_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param);
static uint8_t lld_pdu_pack(uint8_t *p_data, uint8_t *p_length, const char *format);
static uint8_t lld_pdu_tx_flush_list(struct co_list *list);
bool lld_pdu_check(struct lld_evt_tag *evt);
void lld_pdu_tx_loop(struct lld_evt_tag *evt);
void lld_pdu_data_tx_push(struct lld_evt_tag *evt, struct em_desc_node *txnode, bool can_be_freed, bool encrypted);
bool lld_pdu_data_send(void *param);
void lld_pdu_tx_push(struct ea_elt_tag *elt, struct em_desc_node *txnode);
void lld_pdu_tx_prog(struct lld_evt_tag *evt);
void lld_pdu_tx_flush(struct lld_evt_tag *evt);
uint8_t lld_pdu_adv_pack(uint8_t code, uint8_t *buf, uint8_t *p_len);
void lld_pdu_rx_handler(struct lld_evt_tag *evt, uint8_t nb_rx_desc);




/** lld_pdu_check
 */
bool lld_pdu_check(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_pdu_tx_loop
 */
void lld_pdu_tx_loop(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_data_tx_push
 */
void lld_pdu_data_tx_push(struct lld_evt_tag *evt, struct em_desc_node *txnode, bool can_be_freed, bool encrypted)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_data_send
 */
bool lld_pdu_data_send(void *param)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_pdu_tx_push
 */
void lld_pdu_tx_push(struct ea_elt_tag *elt, struct em_desc_node *txnode)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_tx_prog
 */
void lld_pdu_tx_prog(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_tx_flush
 */
void lld_pdu_tx_flush(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_adv_pack
 */
uint8_t lld_pdu_adv_pack(uint8_t code, uint8_t *buf, uint8_t *p_len)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** lld_pdu_rx_handler
 */
void lld_pdu_rx_handler(struct lld_evt_tag *evt, uint8_t nb_rx_desc)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_cntl_aligned_unpk
 */
static void lld_pdu_cntl_aligned_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_llcp_con_param_req_unpk
 */
static void lld_pdu_llcp_con_param_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_llcp_con_param_rsp_unpk
 */
static void lld_pdu_llcp_con_param_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_llcp_length_req_unpk
 */
static void lld_pdu_llcp_length_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_llcp_length_rsp_unpk
 */
static void lld_pdu_llcp_length_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_pdu_pack
 */
static uint8_t lld_pdu_pack(uint8_t *p_data, uint8_t *p_length, const char *format)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** lld_pdu_tx_flush_list
 */
static uint8_t lld_pdu_tx_flush_list(struct co_list *list)
{
	ASSER_ERR(FALSE);
	return 0xff;
}
