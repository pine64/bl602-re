
txl_buffer_tag * txl_buffer_alloc(txdesc * txdesc, uint8_t access_category, uint8_t user_idx);
void txl_buffer_transfer(txdesc * txdesc, txl_buffer_tag * buf, uint16_t head_len);
void txl_buffer_update_thd(txdesc * txdesc);
