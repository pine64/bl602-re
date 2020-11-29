
typedef struct bl_env_tag bl_env_tag, *bl_env_tag;

typedef uchar uint8_t;

struct bl_env_tag {
    uint8_t prev_hw_state;
    undefined field_0x1;
    undefined field_0x2;
    undefined field_0x3;
    int hw_in_doze;
};

void bl_init(void);
void bl_nap_calculate(void);
void bl_sleep(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file bl.h
* Header file for BL602
*/
#ifndef __BL_H__
#define __BL_H__

struct bl_env_tag {
    uint8_t prev_hw_state; // +0
    int hw_in_doze; // +4
};
struct bl_env_tag bl_env;

#endif // __BL_H__
#endf 0 //TODO EXISTS ALEADY
