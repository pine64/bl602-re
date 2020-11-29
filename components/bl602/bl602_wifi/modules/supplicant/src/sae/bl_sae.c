/**
* @file bl_sae.c
* Source file for BL602
*/
#include "bl_sae.h"


void wpabuf_clear_free(struct wpabuf *buf);
void bin_clear_free(void *bin, size_t len);
sint32 sae_set_group(struct sae_data *sae, sint32 group);
void sae_clear_temp_data(struct sae_data *sae);
void sae_clear_data(struct sae_data *sae);
static void buf_shift_right(uint8 *buf, size_t len, size_t bits);
static sint32 sae_derive_pwe_ecc(struct sae_data *sae, const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier);
sint32 sae_prepare_commit(const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier, struct sae_data *sae);
sint32 sae_process_commit(struct sae_data *sae);
sint32 sae_write_commit(struct sae_data *sae, struct wpabuf *buf, const struct wpabuf *token, const char *identifier);
uint16 sae_group_allowed(struct sae_data *sae, sint32 *allowed_groups, uint16 group);
static sint32 sae_is_password_id_elem(const uint8 *pos, const uint8 *end);
uint16 sae_parse_commit(struct sae_data *sae, const uint8 *data, size_t len, const uint8 **token, size_t *token_len, sint32 *allowed_groups);
static sint32 sae_cn_confirm_ecc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_ec_point *element1, const struct crypto_bignum *scalar2, const struct crypto_ec_point *element2, uint8 *confirm);
static sint32 sae_cn_confirm_ffc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_bignum *element1, const struct crypto_bignum *scalar2, const struct crypto_bignum *element2, uint8 *confirm);
sint32 sae_write_confirm(struct sae_data *sae, struct wpabuf *buf);
sint32 sae_check_confirm(struct sae_data *sae, const uint8 *data, size_t len);
const char *sae_state_txt(enum sae_state state);




/** wpabuf_clear_free
 */
void wpabuf_clear_free(struct wpabuf *buf)
{
	ASSER_ERR(FALSE);
	return;
}

/** bin_clear_free
 */
void bin_clear_free(void *bin, size_t len)
{
	ASSER_ERR(FALSE);
	return;
}

/** sae_set_group
 */
sint32 sae_set_group(struct sae_data *sae, sint32 group)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_clear_temp_data
 */
void sae_clear_temp_data(struct sae_data *sae)
{
	ASSER_ERR(FALSE);
	return;
}

/** sae_clear_data
 */
void sae_clear_data(struct sae_data *sae)
{
	ASSER_ERR(FALSE);
	return;
}

/** sae_prepare_commit
 */
sint32 sae_prepare_commit(const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier, struct sae_data *sae)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_process_commit
 */
sint32 sae_process_commit(struct sae_data *sae)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_write_commit
 */
sint32 sae_write_commit(struct sae_data *sae, struct wpabuf *buf, const struct wpabuf *token, const char *identifier)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_group_allowed
 */
uint16 sae_group_allowed(struct sae_data *sae, sint32 *allowed_groups, uint16 group)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** sae_parse_commit
 */
uint16 sae_parse_commit(struct sae_data *sae, const uint8 *data, size_t len, const uint8 **token, size_t *token_len, sint32 *allowed_groups)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** sae_write_confirm
 */
sint32 sae_write_confirm(struct sae_data *sae, struct wpabuf *buf)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_check_confirm
 */
sint32 sae_check_confirm(struct sae_data *sae, const uint8 *data, size_t len)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** *sae_state_txt
 */
const char *sae_state_txt(enum sae_state state)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** buf_shift_right
 */
static void buf_shift_right(uint8 *buf, size_t len, size_t bits)
{
	ASSER_ERR(FALSE);
	return;
}

/** sae_derive_pwe_ecc
 */
static sint32 sae_derive_pwe_ecc(struct sae_data *sae, const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_is_password_id_elem
 */
static sint32 sae_is_password_id_elem(const uint8 *pos, const uint8 *end)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_cn_confirm_ecc
 */
static sint32 sae_cn_confirm_ecc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_ec_point *element1, const struct crypto_bignum *scalar2, const struct crypto_ec_point *element2, uint8 *confirm)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sae_cn_confirm_ffc
 */
static sint32 sae_cn_confirm_ffc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_bignum *element1, const struct crypto_bignum *scalar2, const struct crypto_bignum *element2, uint8 *confirm)
{
	ASSER_ERR(FALSE);
	return -1;
}
