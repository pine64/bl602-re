
int apm_conf_max_sta_req_handler(ke_msg_id_t msgid, apm_conf_max_sta_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_add_cfm_handler(ke_msg_id_t msgid, me_sta_add_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_connect_timeout_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_del_req_handler(ke_msg_id_t msgid, apm_sta_del_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_start_cac_req_handler(ke_msg_id_t msgid, apm_start_cac_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_start_req_handler(ke_msg_id_t msgid, apm_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_stop_cac_req_handler(ke_msg_id_t msgid, apm_stop_cac_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_stop_req_handler(ke_msg_id_t msgid, apm_stop_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_bcn_change_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
