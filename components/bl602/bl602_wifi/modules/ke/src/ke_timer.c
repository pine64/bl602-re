
_Bool cmp_timer_id(co_list_hdr * timer, uint32_t timer_task);
_Bool ke_timer_active(ke_msg_id_t timer_id, ke_task_id_t task_id);
void ke_timer_clear(ke_msg_id_t timer_id, ke_task_id_t task_id);
void ke_timer_hw_set(ke_timer * timer);
void ke_timer_schedule(int dummy);
void ke_timer_set(ke_msg_id_t timer_id, ke_task_id_t task_id, uint32_t delay);
