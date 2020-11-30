/**
* @file arch.h
* Header file for BL602
*/
#ifndef __ARCH_H__
#define __ARCH_H__

void (*ble_post_task_ptr)(void);uint32_t (*_rom_patch_hook)(void *, ...);

#endif // __ARCH_H__
