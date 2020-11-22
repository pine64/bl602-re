
void bl_rx_e2a_handler(void * );
void bl_rx_e2a_handler(void);
void * ke_msg_alloc(ke_msg_id_t id, ke_task_id_t dest_id, ke_task_id_t src_id, uint16_t param_len);
void ke_msg_forward(void * param_ptr, ke_task_id_t dest_id, ke_task_id_t src_id);
void ke_msg_forward_and_change_id(void * param_ptr, ke_msg_id_t msg_id, ke_task_id_t dest_id, ke_task_id_t src_id);
void ke_msg_free(ke_msg * msg);
void ke_msg_send(void * param_ptr);
void ke_msg_send_basic(ke_msg_id_t id, ke_task_id_t dest_id, ke_task_id_t src_id);
