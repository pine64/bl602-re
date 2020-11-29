/**
* @file sec_eng.c
* Source file for BL602
*/
#include "sec_eng.h"


struct pka0_pld_cfg {
    union {
        struct {
            uint32_t size:12;
 // +0
            uint32_t d_reg_index:8;
 // +0
            uint32_t d_reg_type:4;
 // +0
            uint32_t op:7;
 // +0
            uint32_t last_op:1;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

struct pka0_common_op_first_cfg {
    union {
        struct {
            uint32_t s0_reg_idx:8;
 // +0
            uint32_t s0_reg_type:4;
 // +0
            uint32_t d_reg_idx:8;
 // +0
            uint32_t d_reg_type:4;
 // +0
            uint32_t op:7;
 // +0
            uint32_t last_op:1;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

struct pka0_common_op_snd_cfg_S1_only {
    union {
        struct {
            uint32_t reserved_0_11:12;
 // +0
            uint32_t s1_reg_idx:8;
 // +0
            uint32_t s1_reg_type:4;
 // +0
            uint32_t reserved_24_31:8;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

struct pka0_common_op_snd_cfg_S2_only {
    union {
        struct {
            uint32_t s2_reg_idx:8;
 // +0
            uint32_t s2_reg_type:4;
 // +0
            uint32_t reserved_12_31:20;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

struct pka0_common_op_snd_cfg_S1_S2 {
    union {
        struct {
            uint32_t s2_reg_idx:8;
 // +0
            uint32_t s2_reg_type:4;
 // +0
            uint32_t s1_reg_idx:8;
 // +0
            uint32_t s1_reg_type:4;
 // +0
            uint32_t reserved_24_31:8;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

struct pka0_bit_shift_op_cfg {
    union {
        struct {
            uint32_t bit_shift:15;
 // +0
            uint32_t reserved_24_31:17;
 // +0
        } BF;

        uint32_t WORD;

    } value;
 // +0
};

void sec_eng_pka0_reset(void);
void sec_eng_pka0_clear_int(void);
void sec_eng_pka0_pld(uint16_t size, const uint32_t *data, uint8_t reg_index, uint8_t reg_type, uint8_t op, bool last_op);
static void pka0_write_common_op_first_cfg(uint8_t s0_reg_index, uint8_t s0_reg_type, uint8_t d_reg_index, uint8_t d_reg_type, uint8_t op, bool last_op);
static void pka0_write_common_op_snd_cfg_S1(uint8_t s1_reg_index, uint8_t s1_reg_type);
static void pka0_write_common_op_snd_cfg_S1_S2(uint8_t s1_reg_index, uint8_t s1_reg_type, uint8_t s2_reg_index, uint8_t s2_reg_type);
void sec_eng_pka0_wait_4_isr(void);
void sec_eng_pka0_read_data(uint8_t reg_ype, uint8_t reg_idx, uint32_t *result, uint8_t ret_size);
void sec_eng_pka0_clir(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t size);
void sec_eng_pka0_movdat(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx);
void sec_eng_pka0_msub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx);
void sec_eng_pka0_mrem(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx);
void sec_eng_pka0_mmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx);
void sec_eng_pka0_mexp(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx);
void sec_eng_pka0_lcmp(uint8_t *cout, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx);
void sec_eng_pka0_ladd(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx);
void sec_eng_pka0_lsub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx);
void sec_eng_pka0_lmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx);
void sec_eng_pka0_lmul2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift);
void sec_eng_pka0_ldiv2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift);




/** sec_eng_pka0_reset
 */
void sec_eng_pka0_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_clear_int
 */
void sec_eng_pka0_clear_int(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_pld
 */
void sec_eng_pka0_pld(uint16_t size, const uint32_t *data, uint8_t reg_index, uint8_t reg_type, uint8_t op, bool last_op)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_wait_4_isr
 */
void sec_eng_pka0_wait_4_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_read_data
 */
void sec_eng_pka0_read_data(uint8_t reg_ype, uint8_t reg_idx, uint32_t *result, uint8_t ret_size)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_clir
 */
void sec_eng_pka0_clir(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t size)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_movdat
 */
void sec_eng_pka0_movdat(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_msub
 */
void sec_eng_pka0_msub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_mrem
 */
void sec_eng_pka0_mrem(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_mmul
 */
void sec_eng_pka0_mmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_mexp
 */
void sec_eng_pka0_mexp(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_lcmp
 */
void sec_eng_pka0_lcmp(uint8_t *cout, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_ladd
 */
void sec_eng_pka0_ladd(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_lsub
 */
void sec_eng_pka0_lsub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_lmul
 */
void sec_eng_pka0_lmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_lmul2n
 */
void sec_eng_pka0_lmul2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift)
{
	ASSER_ERR(FALSE);
	return;
}

/** sec_eng_pka0_ldiv2n
 */
void sec_eng_pka0_ldiv2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift)
{
	ASSER_ERR(FALSE);
	return;
}

/** pka0_write_common_op_first_cfg
 */
static void pka0_write_common_op_first_cfg(uint8_t s0_reg_index, uint8_t s0_reg_type, uint8_t d_reg_index, uint8_t d_reg_type, uint8_t op, bool last_op)
{
	ASSER_ERR(FALSE);
	return;
}

/** pka0_write_common_op_snd_cfg_S1
 */
static void pka0_write_common_op_snd_cfg_S1(uint8_t s1_reg_index, uint8_t s1_reg_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** pka0_write_common_op_snd_cfg_S1_S2
 */
static void pka0_write_common_op_snd_cfg_S1_S2(uint8_t s1_reg_index, uint8_t s1_reg_type, uint8_t s2_reg_index, uint8_t s2_reg_type)
{
	ASSER_ERR(FALSE);
	return;
}
