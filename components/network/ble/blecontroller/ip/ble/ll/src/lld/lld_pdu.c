#include "lld_pdu.h"

#include <co_list.h>
#include <co_string.h>
#include <em/em_buf.h>
#include <ke_mem.h>
#include <llc/llc.h>
#include <lld/lld_evt.h>

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
	__builtin_trap();
}

/** lld_pdu_tx_loop
 */
void lld_pdu_tx_loop(struct lld_evt_tag *evt)
{
	__builtin_trap();
}

/** lld_pdu_data_tx_push
 */
void lld_pdu_data_tx_push(struct lld_evt_tag *evt, struct em_desc_node *txnode, bool can_be_freed, bool encrypted)
{
	__builtin_trap();
}

/** lld_pdu_data_send
 */
bool lld_pdu_data_send(void *param)
{
	const struct hci_acl_data_tx *frame = param;
	uint32_t mstatus, dummy;
	struct lld_pdu_data_tx_tag *pdu = ble_ke_malloc(sizeof(struct lld_pdu_data_tx_tag), 0);
	if (pdu == NULL) {
		return false;
	}
	struct ea_elt_tag *elt = llc_env[frame->conhdl]->elt;
	// TODO: offset 0x30 is further than sizeof(ea_elt_tag), so it's another struct, but which one?
	struct co_list *list = (struct co_list*) (((uint8_t*)elt) + 0x30);
	pdu->buf = frame->buf;
	pdu->conhdl = frame->conhdl;
	pdu->length = frame->length;
	pdu->pb_bc_flag = frame->pb_bc_flag;
	pdu->idx = 0x1a;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	ble_co_list_push_back(list, &pdu->hdr);
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	return true;
}

/** lld_pdu_tx_push
 */
void lld_pdu_tx_push(struct ea_elt_tag *elt, struct em_desc_node *txnode)
{
	__builtin_trap();
}

/** lld_pdu_tx_prog
 */
void lld_pdu_tx_prog(struct lld_evt_tag *evt)
{
	__builtin_trap();
}

/** lld_pdu_tx_flush
 */
void lld_pdu_tx_flush(struct lld_evt_tag *evt)
{
	__builtin_trap();
}

/** lld_pdu_adv_pack
 */
uint8_t lld_pdu_adv_pack(uint8_t code, uint8_t *buf, uint8_t *p_len)
{
	__builtin_trap();
}

/** lld_pdu_rx_handler
 */
void lld_pdu_rx_handler(struct lld_evt_tag *evt, uint8_t nb_rx_desc)
{
	__builtin_trap();
}

/** lld_pdu_cntl_aligned_unpk
 */
static void lld_pdu_cntl_aligned_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	__builtin_trap();
}

/** lld_pdu_llcp_con_param_req_unpk
 */
static void lld_pdu_llcp_con_param_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	__builtin_trap();
}

/** lld_pdu_llcp_con_param_rsp_unpk
 */
static void lld_pdu_llcp_con_param_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	__builtin_trap();
}

/** lld_pdu_llcp_length_req_unpk
 */
static void lld_pdu_llcp_length_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	const uint32_t base = 0x28008000;
	struct llcp_length_req *req = (struct llcp_length_req*) param;
	uint16_t value;
	(*ble_memcpy_ptr)(&value, (void *)(pdu_ptr + base), sizeof(value));
	req->max_rx_octets = value;
	(*ble_memcpy_ptr)(&value, (void *)((pdu_ptr + 2U & 0xffff) + base), sizeof(value));
	req->max_rx_time = value;
	(*ble_memcpy_ptr)(&value, (void *)((pdu_ptr + 4U & 0xffff) + base), sizeof(value));
	req->max_tx_octets = value;
	(*ble_memcpy_ptr)(&value, (void *)((pdu_ptr + 6U & 0xffff) + base), sizeof(value));
	req->max_tx_time = value;
}

/** lld_pdu_llcp_length_rsp_unpk
 */
static void lld_pdu_llcp_length_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param)
{
	__builtin_trap();
}

/** lld_pdu_pack
 */
static uint8_t lld_pdu_pack(uint8_t *p_data, uint8_t *p_length, const char *format)
{
	__builtin_trap();
}

/** lld_pdu_tx_flush_list
 */
static uint8_t lld_pdu_tx_flush_list(struct co_list *list)
{
	__builtin_trap();
}
