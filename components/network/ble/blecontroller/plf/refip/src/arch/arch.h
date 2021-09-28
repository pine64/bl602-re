#ifndef BLECONTROLLER_PLF_REFIP_ARCH_ARCH_H
#define BLECONTROLLER_PLF_REFIP_ARCH_ARCH_H

#include <stdint.h>

void (*ble_post_task_ptr)(void);
uint32_t (*_rom_patch_hook)(void *, ...);

#endif /* BLECONTROLLER_PLF_REFIP_ARCH_ARCH_H */
