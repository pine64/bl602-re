
void me_mic_calc(void);
void me_mic_end(void);
void me_mic_init(void);
typedef struct mic_calc mic_calc, *mic_calc;

typedef ulong uint32_t;

typedef uchar uint8_t;

struct mic_calc {
    uint32_t mic_key_least;
    uint32_t mic_key_most;
    uint32_t last_m_i;
    uint8_t last_m_i_len;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file me_mic.h
* Header file for BL602
*/
#ifndef __ME_MIC_H__
#define __ME_MIC_H__

struct mic_calc {
    uint32_t mic_key_least; // +0
    uint32_t mic_key_most; // +4
    uint32_t last_m_i; // +8
    uint8_t last_m_i_len; // +12
};

#endif // __ME_MIC_H__
#endf 0 //TODO EXISTS ALEADY
