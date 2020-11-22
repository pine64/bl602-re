
void ps_check_beacon(uint32_t tim, uint16_t len, vif_info_tag * vif_entry);
void ps_check_frame(uint8_t * frame, uint32_t statinfo, vif_info_tag * vif_entry);
_Bool ps_check_tim(uint32_t a_tim, uint16_t aid);
void ps_check_tx_frame(uint8_t staid, uint8_t tid);
_Bool ps_check_tx_status(vif_info_tag * p_vif_entry, uint32_t status, cfm_func_ptr * cfm);
void ps_disable_cfm(void * env, uint32_t status);
void ps_dpsm_update(_Bool pause);
void ps_enable_cfm(void * env, uint32_t status);
void ps_polling_frame(vif_info_tag * vif_entry);
uint8_t ps_send_pspoll(vif_info_tag * vif_entry);
void ps_set_mode(uint8_t mode, ke_task_id_t taskid);
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status);
void ps_uapsd_set(vif_info_tag * vif_entry, uint8_t hw_queue, _Bool uapsd);
void ps_uapsd_timer_handle(void * env);
