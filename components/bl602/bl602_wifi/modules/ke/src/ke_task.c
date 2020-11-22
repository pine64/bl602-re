
_Bool cmp_dest_id(co_list_hdr * msg, uint32_t dest_id);
ke_msg_func_t * ke_handler_search(ke_msg_id_t msg_id, ke_state_handler * state_handler);
int ke_msg_discard(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int ke_msg_save(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
ke_state_t ke_state_get(ke_task_id_t id);
void ke_state_set(ke_task_id_t id, ke_state_t state_id);
ke_msg_func_t * ke_task_handler_get(ke_msg_id_t msg_id, ke_task_id_t task_id);
void ke_task_saved_update(ke_task_id_t ke_task_id);
void ke_task_schedule(int dummy);
