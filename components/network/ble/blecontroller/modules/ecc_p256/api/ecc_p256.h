#ifndef __ECC_P256_H__
#define __ECC_P256_H__

#include <stdbool.h>
#include <stdint.h>

#include <ke_msg.h>
#include <ke_task.h>

struct ecc_result_ind {
    uint8_t key_res_x[32]; // +0
    uint8_t key_res_y[32]; // +32
};

void ecc_init(bool reset);
uint8_t ecc_generate_key256(uint8_t key_type, const uint8_t *secret_key, const uint8_t *public_key_x, const uint8_t *public_key_y, ke_msg_id_t msg_id, ke_task_id_t task_id);
void ecc_abort_key256_generation(ke_task_id_t task_id);
void ecc_gen_new_public_key(uint8_t *secret_key, ke_msg_id_t msg_id, ke_task_id_t task_id);
void ecc_gen_new_secret_key(uint8_t *secret_key256, bool forced);
void ecc_get_debug_Keys(uint8_t *secret_key, uint8_t *pub_key_x, uint8_t *pub_key_y);

#endif // __ECC_P256_H__
