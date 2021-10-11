#ifndef BLECONTROLLER_MODULES_KE_KE_ENV_H
#define BLECONTROLLER_MODULES_KE_KE_ENV_H

#include <stdint.h>

#include <co_list.h>

struct ble_ke_env_tag {
    struct co_list queue_sent; // +0
    struct co_list queue_saved; // +8
    struct co_list queue_timer; // +16
    struct mblock_free *heap[2]; // +24
    uint16_t heap_size[2]; // +32
};

extern struct ble_ke_env_tag ble_ke_env;

#endif /* BLECONTROLLER_MODULES_KE_KE_ENV_H */
