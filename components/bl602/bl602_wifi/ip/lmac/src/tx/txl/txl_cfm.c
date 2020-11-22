
void txl_cfm_dma_int_handler(void);
void txl_cfm_dma_int_handler_backup(void);
void txl_cfm_evt(int access_category);
void txl_cfm_flush(uint8_t access_category, co_list * list, uint32_t status);
void txl_cfm_flush_desc(uint8_t access_category, txdesc * txdesc, uint32_t status);
void txl_cfm_prep(void);
void txl_cfm_push(txdesc * txdesc, uint32_t status, uint8_t access_category);
