#include "bl_sae.h"

#include <stddef.h>


void supplicantGenerateRand(UINT8 *dataOut, UINT32 length)
{
	__builtin_trap();
}

int sha256_prf_bits(const uint8 *key, size_t key_len, const char *label, const uint8 *data, size_t data_len, uint8 *buf, size_t buf_len_bits)
{
	__builtin_trap();
}

int sha256_prf(const uint8 *key, size_t key_len, const char *label, const uint8 *data, size_t data_len, uint8 *buf, size_t buf_len)
{
	__builtin_trap();
}

void hmac_sha256(const uint8 *key, size_t key_len, const uint8 *data, size_t data_len, uint8 *mac)
{
	__builtin_trap();
}

void wpabuf_clear_free(struct wpabuf *buf)
{
	__builtin_trap();
}

void bin_clear_free(void *bin, size_t len)
{
	__builtin_trap();
}

sint32 sae_set_group(struct sae_data *sae, sint32 group)
{
	__builtin_trap();
}

void sae_clear_temp_data(struct sae_data *sae)
{
	__builtin_trap();
}

void sae_clear_data(struct sae_data *sae)
{
	__builtin_trap();
}

static void buf_shift_right(uint8 *buf, size_t len, size_t bits)
{
	__builtin_trap();
}

struct crypto_bignum *sae_get_rand(struct sae_data *sae)
{
	__builtin_trap();
}

struct crypto_bignum *sae_get_rand_and_mask(struct sae_data *sae)
{
	__builtin_trap();
}

void sae_pwd_seed_key(const uint8 *addr1, const uint8 *addr2, uint8 *key)
{
	__builtin_trap();
}

struct crypto_bignum *get_rand_1_to_p_1(const uint8 *prime, size_t prime_len, size_t prime_bits, sint32 *r_odd)
{
	__builtin_trap();
}

sint32 is_quadratic_residue_blind(struct sae_data *sae, const uint8 *prime, size_t bits, const struct crypto_bignum *qr, const struct crypto_bignum *qnr, const struct crypto_bignum *y_sqr)
{
	__builtin_trap();
}

sint32 sae_test_pwd_seed_ecc(struct sae_data *sae, const uint8 *pwd_seed, const uint8 *prime, const struct crypto_bignum *qr, const struct crypto_bignum *qnr, struct crypto_bignum **ret_x_cand)
{
	__builtin_trap();
}

sint32 get_random_qr_qnr(const uint8 *prime, size_t prime_len, const struct crypto_bignum *prime_bn, size_t prime_bits, struct crypto_bignum **qr, struct crypto_bignum **qnr)
{
	__builtin_trap();
}

static sint32 sae_derive_pwe_ecc(struct sae_data *sae, const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier)
{
	__builtin_trap();
}

sint32 sae_derive_commit_element_ecc(struct sae_data *sae, struct crypto_bignum *mask)
{
	__builtin_trap();
}

sint32 sae_derive_commit(struct sae_data *sae)
{
	__builtin_trap();
}

sint32 sae_prepare_commit(const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier, struct sae_data *sae)
{
	__builtin_trap();
}

sint32 sae_derive_k_ecc(struct sae_data *sae, uint8 *k)
{
	__builtin_trap();
}

sint32 sae_derive_keys(struct sae_data *sae, const uint8 *k)
{
	__builtin_trap();
}

sint32 sae_process_commit(struct sae_data *sae)
{
	__builtin_trap();
}

sint32 sae_write_commit(struct sae_data *sae, struct wpabuf *buf, const struct wpabuf *token, const char *identifier)
{
	__builtin_trap();
}

uint16 sae_group_allowed(struct sae_data *sae, sint32 *allowed_groups, uint16 group)
{
	__builtin_trap();
}

static sint32 sae_is_password_id_elem(const uint8 *pos, const uint8 *end)
{
	__builtin_trap();
}

void sae_parse_commit_token(struct sae_data *sae, const uint8 **pos, const uint8 *end, const uint8 **token, size_t *token_len)
{
	__builtin_trap();
}

uint16 sae_parse_commit_scalar(struct sae_data *sae, const uint8 **pos, const uint8 *end)
{
	__builtin_trap();
}

uint16 sae_parse_commit_element_ecc(struct sae_data *sae, const uint8 **pos, const uint8 *end)
{
	__builtin_trap();
}

uint16 sae_parse_commit_element_ffc(struct sae_data *sae, const uint8 **pos, const uint8 *end)
{
	__builtin_trap();
}

uint16 sae_parse_commit_element(struct sae_data *sae, const uint8 **pos, const uint8 *end)
{
	__builtin_trap();
}

sint32 sae_parse_password_identifier(struct sae_data *sae, const uint8 *pos, const uint8 *end)
{
	__builtin_trap();
}

uint16 sae_parse_commit(struct sae_data *sae, const uint8 *data, size_t len, const uint8 **token, size_t *token_len, sint32 *allowed_groups)
{
	__builtin_trap();
}

void sae_cn_confirm(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const uint8 *element1, size_t element1_len, const struct crypto_bignum *scalar2, const uint8 *element2, size_t element2_len, uint8 *confirm)
{
	__builtin_trap();
}

static sint32 sae_cn_confirm_ecc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_ec_point *element1, const struct crypto_bignum *scalar2, const struct crypto_ec_point *element2, uint8 *confirm)
{
	__builtin_trap();
}

static sint32 sae_cn_confirm_ffc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_bignum *element1, const struct crypto_bignum *scalar2, const struct crypto_bignum *element2, uint8 *confirm)
{
	__builtin_trap();
}

sint32 sae_write_confirm(struct sae_data *sae, struct wpabuf *buf)
{
	__builtin_trap();
}

sint32 sae_check_confirm(struct sae_data *sae, const uint8 *data, size_t len)
{
	__builtin_trap();
}

const char *sae_state_txt(enum sae_state state)
{
	__builtin_trap();
}

