
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
