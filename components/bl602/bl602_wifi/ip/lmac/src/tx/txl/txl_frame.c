#include "txl_frame.h"


static struct txl_frame_desc_tag txl_frame_desc[4];
struct txl_frame_env_tag txl_frame_env;


void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl)
{
	__builtin_trap();
}

void txl_frame_init(bool reset)
{
	__builtin_trap();
}



static uint32_t tx_count;
static uint32_t rx_count;
extern uint8_t mac_hw_reset;


struct txl_frame_desc_tag *txl_frame_get(int type, int len)
{
	__builtin_trap();
}

bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac)
{
	__builtin_trap();
}

bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac)
{
	__builtin_trap();
}

void txl_frame_cfm(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txl_frame_release(struct txdesc *txdesc, bool postponed)
{
	__builtin_trap();
}

void txl_frame_evt(int dummy)
{
	__builtin_trap();
}

uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env)
{
	__builtin_trap();
}

uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env)
{
	__builtin_trap();
}

uint8_t txl_frame_sechdr_len_compute(struct txdesc *txdesc)
{
	__builtin_trap();
}

uint8_t txl_frame_sec_hdr_append(struct txdesc *txdesc, uint32_t buf)
{
	__builtin_trap();
}

void txl_frame_tkip_mic_append(struct txdesc *txdesc, uint8_t *buf, uint32_t len)
{
	__builtin_trap();
}

uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len)
{
	__builtin_trap();
}

void txl_frame_dump(void)
{
	__builtin_trap();
}

