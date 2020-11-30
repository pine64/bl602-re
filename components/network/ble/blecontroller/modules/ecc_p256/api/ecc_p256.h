/**
* @file ecc_p256.h
* Header file for BL602
*/
#ifndef __ECC_P256_H__
#define __ECC_P256_H__

struct ecc_result_ind {
    uint8_t key_res_x[32]; // +0
    uint8_t key_res_y[32]; // +32
};

#endif // __ECC_P256_H__
