
void dma_cb(void * env, int dma_queue);
scan_chan_tag * scan_get_chan(void);
void scan_ie_download(scan_start_req * param);
void scan_probe_req_tx(void);
void scan_search_ds(void);
void scan_send_cancel_cfm(uint8_t status, ke_task_id_t dest_id);
void scan_set_channel_request(void);
