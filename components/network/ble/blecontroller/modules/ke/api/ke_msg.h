#ifndef BLECONTROLLER_MODULES_KE_MSG_H
#define BLECONTROLLER_MODULES_KE_MSG_H

#include <stdbool.h>
#include <stdint.h>

#include <co_list.h>

typedef uint16_t ke_task_id_t;
typedef uint8_t ke_state_t;
typedef uint16_t ke_msg_id_t;

struct ke_msg {
    struct co_list_hdr hdr; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t dest_id; // +6
    ke_task_id_t src_id; // +8
    uint16_t param_len; // +10
    uint32_t param[1]; // +12
};

enum ke_msg_status_tag {
    KE_MSG_CONSUMED = 0,
    KE_MSG_NO_FREE = 1,
    KE_MSG_SAVED = 2,
};

uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
uint32_t _patch_ble_ke_msg_send(void *pRet, const void *param_ptr);
void ble_ke_msg_send(const void *param_ptr);
uint32_t _patch_ble_ke_msg_get_sent_num(void *pRet);
uint16_t ble_ke_msg_get_sent_num(void);
uint32_t _patch_ble_ke_msg_send_basic(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_forward_new_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
uint32_t _patch_ble_ke_msg_free(void *pRet, const struct ke_msg *msg);
void ble_ke_msg_free(const struct ke_msg *msg);
ke_msg_id_t ble_ke_msg_dest_id_get(const void *param_ptr);
ke_msg_id_t ble_ke_msg_src_id_get(const void *param_ptr);
bool ble_ke_msg_in_queue(const void *param_ptr);

#endif /* BLECONTROLLER_MODULES_KE_MSG_H */
