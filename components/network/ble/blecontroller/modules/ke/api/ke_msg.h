/**
* @file ke_msg.h
* Header file for BL602
*/
#ifndef __KE_MSG_H__
#define __KE_MSG_H__

typedef uint16_t ke_task_id_t;typedef uint8_t ke_state_t;typedef uint16_t ke_msg_id_t;
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

#endif // __KE_MSG_H__
