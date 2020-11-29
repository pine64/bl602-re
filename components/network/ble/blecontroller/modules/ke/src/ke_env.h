/**
* @file ke_env.h
* Header file for BL602
*/
#ifndef __KE_ENV_H__
#define __KE_ENV_H__

struct ble_ke_env_tag {
    struct co_list queue_sent; // +0
    struct co_list queue_saved; // +8
    struct co_list queue_timer; // +16
    struct mblock_free *heap[2]; // +24
    uint16_t heap_size[2]; // +32
};
struct ble_ke_env_tag ble_ke_env;

#endif // __KE_ENV_H__
