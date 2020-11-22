
int mm_scan_channel_end_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_scan_channel_start_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_cancel_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_start_req_handler(ke_msg_id_t msgid, scan_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
