
int me_chan_config_req_handler(ke_msg_id_t msgid, me_chan_config_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_config_req_handler(ke_msg_id_t msgid, me_config_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_rc_set_rate_req_handler(ke_msg_id_t msgid, me_rc_set_rate_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_rc_stats_req_handler(ke_msg_id_t msgid, me_rc_stats_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_set_active_req_handler(ke_msg_id_t msgid, me_set_active_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_set_control_port_req_handler(ke_msg_id_t msgid, me_set_control_port_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_set_ps_disable_req_handler(ke_msg_id_t msgid, me_set_ps_disable_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_sta_add_req_handler(ke_msg_id_t msgid, me_sta_add_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_sta_del_req_handler(ke_msg_id_t msgid, me_sta_del_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_traffic_ind_req_handler(ke_msg_id_t msgid, me_traffic_ind_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_idle_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_ps_mode_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
