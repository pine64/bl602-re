#include <ecc_p256.h>

typedef uint8_t u_int8;
typedef uint32_t u_int32;

struct bigHex256 {
    u_int32 num[8];
 // +0
    u_int32 len;
 // +32
    u_int32 sign;
 // +36
};

typedef struct bigHex256 bigHex256;

struct ECC_Point256 {
    bigHex256 x;
 // +0
    bigHex256 y;
 // +40
};

typedef struct ECC_Point256 ECC_Point256;

struct ECC_Jacobian_Point256 {
    bigHex256 x;
 // +0
    bigHex256 y;
 // +40
    bigHex256 z;
 // +80
};

typedef struct ECC_Jacobian_Point256 ECC_Jacobian_Point256;

struct ecc_elt_tag {
    struct co_list_hdr hdr;
 // +0
    u_int32 Point_Mul_Word256;
 // +4
    ECC_Jacobian_Point256 Jacobian_PointQ256;
 // +8
    ECC_Jacobian_Point256 Jacobian_PointR256;
 // +128
    bigHex256 Pk256;
 // +248
    ke_msg_id_t msg_id;
 // +288
    ke_task_id_t client_id;
 // +290
    uint32_t current_val;
 // +292
    uint32_t bit_cursor;
 // +296
    uint8_t key_type;
 // +300
    ECC_Jacobian_Point256 *win_4_table;
 // +304
};

struct ecc_env_tag {
    struct co_list ongoing_mul;
 // +0
};

const u_int8 BasePoint_x_256[32];
const u_int8 BasePoint_y_256[32];
const u_int8 maxSecretKey_256[32];
const u_int8 DebugE256PublicKey_x[32];
const u_int8 DebugE256PublicKey_y[32];
const u_int8 DebugE256SecretKey[32];
const bigHex256 bigHexP256;
const uint32_t Inv_r[8];
const uint32_t Nprime[8];
const uint32_t Bar_1[8];
const uint32_t Bar_2[8];
const uint32_t Bar_3[8];
const uint32_t Bar_4[8];
const uint32_t Bar_8[8];
const uint32_t Bar_1p1[8];
const uint32_t Bar_1m1[8];
const ECC_Jacobian_Point256 ECC_4Win_Look_up_table[15];
struct ecc_env_tag ecc_env;

static void Mont2GF(uint8_t reg_idx);
static void getFinalPoint(uint8_t reg_idx);
int notEqual256(const bigHex256 *bigHexA, const bigHex256 *bigHexB);
void GF_Point_Jacobian_To_Affine256(ECC_Jacobian_Point256 *pJacPoint, bigHex256 *pX_co_ord_affine, bigHex256 *pY_co_ord_affine);
void bigHexInversion256(bigHex256 *bigHexA, bigHex256 *pResult);
static void ecc_multiplication_event_handler(void);
bool ecc_is_valid_point(bigHex256 *X_coord, bigHex256 *Y_coord);



/** notEqual256
 */
int notEqual256(const bigHex256 *bigHexA, const bigHex256 *bigHexB)
{
	__builtin_trap();
}

/** GF_Point_Jacobian_To_Affine256
 */
void GF_Point_Jacobian_To_Affine256(ECC_Jacobian_Point256 *pJacPoint, bigHex256 *pX_co_ord_affine, bigHex256 *pY_co_ord_affine)
{
	__builtin_trap();
}

/** bigHexInversion256
 */
void bigHexInversion256(bigHex256 *bigHexA, bigHex256 *pResult)
{
	__builtin_trap();
}

/** ecc_init
 */
void ecc_init(bool reset)
{
	__builtin_trap();
}

/** ecc_is_valid_point
 */
bool ecc_is_valid_point(bigHex256 *X_coord, bigHex256 *Y_coord)
{
	__builtin_trap();
}

/** ecc_generate_key256
 */
uint8_t ecc_generate_key256(u_int8 key_type, const u_int8 *secret_key, const u_int8 *public_key_x, const u_int8 *public_key_y, ke_msg_id_t msg_id, ke_task_id_t task_id)
{
	__builtin_trap();
}

/** ecc_abort_key256_generation
 */
void ecc_abort_key256_generation(ke_task_id_t task_id)
{
	__builtin_trap();
}

/** ecc_gen_new_public_key
 */
void ecc_gen_new_public_key(u_int8 *secret_key, ke_msg_id_t msg_id, ke_task_id_t task_id)
{
	__builtin_trap();
}

/** ecc_gen_new_secret_key
 */
void ecc_gen_new_secret_key(uint8_t *secret_key256, bool forced)
{
	__builtin_trap();
}

/** ecc_get_debug_Keys
 */
void ecc_get_debug_Keys(uint8_t *secret_key, uint8_t *pub_key_x, uint8_t *pub_key_y)
{
	__builtin_trap();
}

/** Mont2GF
 */
static void Mont2GF(uint8_t reg_idx)
{
	__builtin_trap();
}

/** getFinalPoint
 */
static void getFinalPoint(uint8_t reg_idx)
{
	__builtin_trap();
}

/** ecc_multiplication_event_handler
 */
static void ecc_multiplication_event_handler(void)
{
	__builtin_trap();
}
