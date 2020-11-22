
void cfm_raw_send(void * env, uint32_t status);
int packet_send_test(uint8_t * frm, size_t data_len);
int scan_done_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_start_cfm_handler(ke_msg_id_t msgid, scan_start_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_join_req_handler(ke_msg_id_t msgid, scanu_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_raw_send_req_handler(ke_msg_id_t msgid, scanu_raw_send_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_start_req_handler(ke_msg_id_t msgid, scanu_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
