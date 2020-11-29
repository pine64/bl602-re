
void me_mic_calc(mic_calc * mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void me_mic_end(mic_calc * mic_calc_ptr);
void me_mic_init(mic_calc * mic_calc_ptr, uint32_t * mic_key_ptr, mac_addr * da, mac_addr * sa, uint8_t tid);
void michael_block(mic_calc * mic_calc_ptr, uint32_t block);
void michael_calc(mic_calc * mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void michael_end(mic_calc * mic_calc_ptr);
void michael_init(mic_calc * mic_calc_ptr, uint32_t * mic_key_ptr, uint32_t * aad);
#if 0 //TODO EXISTS ALEADY
/**
* @file me_mic.c
* Source file for BL602
*/
#include "me_mic.h"


static void michael_block(struct mic_calc *mic_calc_ptr, uint32_t block);
void me_mic_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, struct mac_addr *da, struct mac_addr *sa, uint8_t tid);
void me_mic_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void me_mic_end(struct mic_calc *mic_calc_ptr);




/** me_mic_init
 */
void me_mic_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, struct mac_addr *da, struct mac_addr *sa, uint8_t tid)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_mic_calc
 */
void me_mic_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_mic_end
 */
void me_mic_end(struct mic_calc *mic_calc_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** michael_block
 */
static void michael_block(struct mic_calc *mic_calc_ptr, uint32_t block)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
