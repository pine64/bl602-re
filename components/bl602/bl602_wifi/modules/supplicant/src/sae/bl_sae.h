#ifndef __BL_SAE_H__
#define __BL_SAE_H__

#include <wltypes.h>


struct sae_temporary_data {
    uint8 kck[32]; // +0
    struct crypto_bignum *own_commit_scalar; // +32
    struct crypto_bignum *own_commit_element_ffc; // +36
    struct crypto_ec_point *own_commit_element_ecc; // +40
    struct crypto_bignum *peer_commit_element_ffc; // +44
    struct crypto_ec_point *peer_commit_element_ecc; // +48
    struct crypto_ec_point *pwe_ecc; // +52
    struct crypto_bignum *pwe_ffc; // +56
    struct crypto_bignum *sae_rand; // +60
    struct crypto_ec *ec; // +64
    sint32 prime_len; // +68
    const struct dh_group *dh; // +72
    const struct crypto_bignum *prime; // +76
    const struct crypto_bignum *order; // +80
    struct crypto_bignum *prime_buf; // +84
    struct crypto_bignum *order_buf; // +88
    struct wpabuf *anti_clogging_token; // +92
    char *pw_id; // +96
};

enum sae_state {
    SAE_NOTHING = 0,
    SAE_COMMITTED = 1,
    SAE_CONFIRMED = 2,
    SAE_ACCEPTED = 3,
};

struct sae_data {
    enum sae_state state; // +0
    uint16 send_confirm; // +2
    uint8 pmk[32]; // +4
    uint8 pmkid[16]; // +36
    struct crypto_bignum *peer_commit_scalar; // +52
    sint32 group; // +56
    uint32 sync; // +60
    uint16 rc; // +64
    struct sae_temporary_data *tmp; // +68
};

#endif // __BL_SAE_H__
