#ifndef __KE_MSG_H__
#define __KE_MSG_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_list.h>


typedef uint16_t ke_task_id_t;
typedef uint16_t ke_state_t;
typedef uint16_t ke_msg_id_t;

struct ke_msg {
  struct co_list_hdr hdr; // +0
  ke_msg_id_t id; // +4
  ke_task_id_t dest_id; // +6
  ke_task_id_t src_id; // +8
  uint16_t param_len; // +10
  uint32_t param[]; // +12
};

enum ke_msg_status_tag {
  KE_MSG_CONSUMED = 0,
  KE_MSG_NO_FREE = 1,
  KE_MSG_SAVED = 2
};

struct ke_msg *ke_param2msg(const void *param_ptr);
void *ke_msg2param(const struct ke_msg *msg);
void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
void ke_msg_send(const void *param_ptr);
void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ke_msg_free(const struct ke_msg *msg);

#endif // __KE_MSG_H__
