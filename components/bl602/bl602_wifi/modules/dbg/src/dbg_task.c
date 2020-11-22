
int dbg_get_sys_stat_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_mem_read_req_handler(ke_msg_id_t msgid, dbg_mem_read_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_mem_write_req_handler(ke_msg_id_t msgid, dbg_mem_write_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_set_mod_filter_req_handler(ke_msg_id_t msgid, dbg_set_mod_filter_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_set_sev_filter_req_handler(ke_msg_id_t msgid, dbg_set_sev_filter_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
