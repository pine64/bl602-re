
int me_set_active_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_set_ps_disable_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_bss_param_setting_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_connection_loss_ind_handler(ke_msg_id_t msgid, mm_connection_loss_ind * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_vif_state_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_sta_add_cfm_handler(ke_msg_id_t msgid, mm_sta_add_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_join_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_start_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_connect_req_handler(ke_msg_id_t msgid, sm_connect_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_disconnect_req_handler(ke_msg_id_t msgid, sm_disconnect_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_rsp_timeout_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
