#include "me_mic.h"


static void michael_block(struct mic_calc *mic_calc_ptr, uint32_t block)
{
	__builtin_trap();
}

void michael_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, uint32_t *aad)
{
	__builtin_trap();
}

void michael_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len)
{
	__builtin_trap();
}

void michael_end(struct mic_calc *mic_calc_ptr)
{
	__builtin_trap();
}

void me_mic_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, struct mac_addr *da, struct mac_addr *sa, uint8_t tid)
{
	__builtin_trap();
}

void me_mic_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len)
{
	__builtin_trap();
}

void me_mic_end(struct mic_calc *mic_calc_ptr)
{
	__builtin_trap();
}
