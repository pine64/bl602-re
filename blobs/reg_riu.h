/* SPDX-License-Identifier: MIT */
/* Copyright(c) 2019-2021, Celeno Communications Ltd. */

#ifndef CL_REG_RIU_H
#define CL_REG_RIU_H

#include <linux/types.h>
#include "reg/reg_access.h"
#include "hw.h"

#define RIU_RSF_FILE_SIZE 0x60C

/*
 * @brief CCA_CNT_CS register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_CS                0x0
 * </pre>
 */
#define RIU_CCA_CNT_CS_ADDR        (REG_RIU_BASE_ADDR + 0x00000058)
#define RIU_CCA_CNT_CS_OFFSET      0x00000058
#define RIU_CCA_CNT_CS_INDEX       0x00000016
#define RIU_CCA_CNT_CS_RESET       0x00000000

static inline u32 riu_cca_cnt_cs_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_CS_ADDR);
}

/*
 * @brief RSF_CONTROL register definition
 *  resampling filter operation mode register description
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31    rsf_init_en               1
 *    07    rsf_tx_bypass_type        0
 *    06    rsf_tx_bypass_mode        1
 *    05    rsf_rx_bypass_type        0
 *    04    rsf_rx_bypass_mode        1
 *    01    rsf_rx_ctl_from_reg       1
 * </pre>
 */
#define RIU_RSF_CONTROL_ADDR        (REG_RIU_BASE_ADDR + 0x000001A8)
#define RIU_RSF_CONTROL_OFFSET      0x000001A8
#define RIU_RSF_CONTROL_INDEX       0x0000006A
#define RIU_RSF_CONTROL_RESET       0x80000053

static inline void riu_rsf_control_rsf_init_en_setf(struct cl_hw *cl_hw, u8 rsfiniten)
{
       cl_reg_write(cl_hw, RIU_RSF_CONTROL_ADDR,
                    (cl_reg_read(cl_hw, RIU_RSF_CONTROL_ADDR) & ~((u32)0x80000000)) | ((u32)rsfiniten << 31));
}

/*
 * @brief RSF_INIT register definition
 *  resampling filter initialization data register description
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 RSF_INIT_DATA             0x0
 * </pre>
 */
#define RIU_RSF_INIT_ADDR        (REG_RIU_BASE_ADDR + 0x000001AC)
#define RIU_RSF_INIT_OFFSET      0x000001AC
#define RIU_RSF_INIT_INDEX       0x0000006B
#define RIU_RSF_INIT_RESET       0x00000000

static inline void riu_rsf_init_set(struct cl_hw *cl_hw, u32 value)
{
       cl_reg_write(cl_hw, RIU_RSF_INIT_ADDR, value);
}

/*
 * @brief AGCFSM_RAM_INIT_1 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31    AGC_FSM_RAM_INIT_EN       0
 *    29    AGC_FSM_RAM_INIT_AINC2    0
 *    28    AGC_FSM_RAM_INIT_AINC1    0
 *    12    AGC_FSM_RAM_INIT_WPTR_SET 0
 *    10:00 AGC_FSM_RAM_INIT_WPTR     0x0
 * </pre>
 */
#define RIU_AGCFSM_RAM_INIT_1_ADDR        (REG_RIU_BASE_ADDR + 0x000001B0)
#define RIU_AGCFSM_RAM_INIT_1_OFFSET      0x000001B0
#define RIU_AGCFSM_RAM_INIT_1_INDEX       0x0000006C
#define RIU_AGCFSM_RAM_INIT_1_RESET       0x00000000

static inline void riu_agcfsm_ram_init_1_agc_fsm_ram_init_wptr_setf(struct cl_hw *cl_hw,
                                                                   u16 agcfsmraminitwptr)
{
       ASSERT_ERR((((u32)agcfsmraminitwptr << 0) & ~((u32)0x000007FF)) == 0);
       cl_reg_write(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR,
                    (cl_reg_read(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR) & ~((u32)0x000007FF)) | ((u32)agcfsmraminitwptr << 0));
}

static inline void riu_agcfsm_ram_init_1_agc_fsm_ram_init_wptr_set_setf(struct cl_hw *cl_hw, u8 agcfsmraminitwptrset)
{
       ASSERT_ERR((((u32)agcfsmraminitwptrset << 12) & ~((u32)0x00001000)) == 0);
       cl_reg_write(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR,
                    (cl_reg_read(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR) & ~((u32)0x00001000)) | ((u32)agcfsmraminitwptrset << 12));
}

static inline void riu_agcfsm_ram_init_1_agc_fsm_ram_init_ainc_1_setf(struct cl_hw *cl_hw,
                                                                     u8 agcfsmraminitainc1)
{
       ASSERT_ERR((((u32)agcfsmraminitainc1 << 28) & ~((u32)0x10000000)) == 0);
       cl_reg_write(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR,
                    (cl_reg_read(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR) & ~((u32)0x10000000)) | ((u32)agcfsmraminitainc1 << 28));
}

static inline void riu_agcfsm_ram_init_1_agc_fsm_ram_init_en_setf(struct cl_hw *cl_hw,
                                                                 u8 agcfsmraminiten)
{
       cl_reg_write(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR,
                    (cl_reg_read(cl_hw, RIU_AGCFSM_RAM_INIT_1_ADDR) & ~((u32)0x80000000)) | ((u32)agcfsmraminiten << 31));
}

/*
 * @brief AGCFSM_RAM_INIT_2 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 AGC_FSM_RAM_INIT_WDATA    0x0
 * </pre>
 */
#define RIU_AGCFSM_RAM_INIT_2_ADDR        (REG_RIU_BASE_ADDR + 0x000001B4)
#define RIU_AGCFSM_RAM_INIT_2_OFFSET      0x000001B4
#define RIU_AGCFSM_RAM_INIT_2_INDEX       0x0000006D
#define RIU_AGCFSM_RAM_INIT_2_RESET       0x00000000

static inline void riu_agcfsm_ram_init_2_set(struct cl_hw *cl_hw, u32 value)
{
       cl_reg_write(cl_hw, RIU_AGCFSM_RAM_INIT_2_ADDR, value);
}

/*
 * @brief AGCINBDPOW_20_STAT register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOW20_PDBM3           0x0
 *    23:16 INBDPOW20_PDBM2           0x0
 *    15:08 INBDPOW20_PDBM1           0x0
 *    07:00 INBDPOW20_PDBM0           0x0
 * </pre>
 */
#define RIU_AGCINBDPOW_20_STAT_ADDR        (REG_RIU_BASE_ADDR + 0x0000020C)
#define RIU_AGCINBDPOW_20_STAT_OFFSET      0x0000020C
#define RIU_AGCINBDPOW_20_STAT_INDEX       0x00000083
#define RIU_AGCINBDPOW_20_STAT_RESET       0x00000000

static inline void riu_agcinbdpow_20_stat_unpack(struct cl_hw *cl_hw,
                                                u8 *inbdpow20pdbm3, u8 *inbdpow20pdbm2,
                                                u8 *inbdpow20pdbm1, u8 *inbdpow20pdbm0)
{
       u32 local_val = cl_reg_read(cl_hw, RIU_AGCINBDPOW_20_STAT_ADDR);

       *inbdpow20pdbm3 = (local_val & ((u32)0xFF000000)) >> 24;
       *inbdpow20pdbm2 = (local_val & ((u32)0x00FF0000)) >> 16;
       *inbdpow20pdbm1 = (local_val & ((u32)0x0000FF00)) >> 8;
       *inbdpow20pdbm0 = (local_val & ((u32)0x000000FF)) >> 0;
}

/*
 * @brief AGCINBDPOW_20_PNOISESTAT register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOW20_PNOISEDBM3      0x0
 *    23:16 INBDPOW20_PNOISEDBM2      0x0
 *    15:08 INBDPOW20_PNOISEDBM1      0x0
 *    07:00 INBDPOW20_PNOISEDBM0      0x0
 * </pre>
 */
#define RIU_AGCINBDPOW_20_PNOISESTAT_ADDR        (REG_RIU_BASE_ADDR + 0x00000228)
#define RIU_AGCINBDPOW_20_PNOISESTAT_OFFSET      0x00000228
#define RIU_AGCINBDPOW_20_PNOISESTAT_INDEX       0x0000008A
#define RIU_AGCINBDPOW_20_PNOISESTAT_RESET       0x00000000

static inline u32 riu_agcinbdpow_20_pnoisestat_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_AGCINBDPOW_20_PNOISESTAT_ADDR);
}

/*
 * @brief AGCINBDPOWSECNOISESTAT register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    23:16 INBDPOW80_SNOISEDBM       0x0
 *    15:08 INBDPOW40_SNOISEDBM       0x0
 *    07:00 INBDPOW20_SNOISEDBM       0x0
 * </pre>
 */
#define RIU_AGCINBDPOWSECNOISESTAT_ADDR        (REG_RIU_BASE_ADDR + 0x00000230)
#define RIU_AGCINBDPOWSECNOISESTAT_OFFSET      0x00000230
#define RIU_AGCINBDPOWSECNOISESTAT_INDEX       0x0000008C
#define RIU_AGCINBDPOWSECNOISESTAT_RESET       0x00000000

static inline u32 riu_agcinbdpowsecnoisestat_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_AGCINBDPOWSECNOISESTAT_ADDR);
}

/*
 * @brief CCA_CNT_MODEM_STATE_P register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_MODEM_STATE_P     0x0
 * </pre>
 */
#define RIU_CCA_CNT_MODEM_STATE_P_ADDR        (REG_RIU_BASE_ADDR + 0x000002DC)
#define RIU_CCA_CNT_MODEM_STATE_P_OFFSET      0x000002DC
#define RIU_CCA_CNT_MODEM_STATE_P_INDEX       0x000000B7
#define RIU_CCA_CNT_MODEM_STATE_P_RESET       0x00000000

static inline u32 riu_cca_cnt_modem_state_p_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_MODEM_STATE_P_ADDR);
}

/*
 * @brief CCA_CNT_MODEM_STATE_20_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_MODEM_STATE_20_S  0x0
 * </pre>
 */
#define RIU_CCA_CNT_MODEM_STATE_20_S_ADDR        (REG_RIU_BASE_ADDR + 0x000002E0)
#define RIU_CCA_CNT_MODEM_STATE_20_S_OFFSET      0x000002E0
#define RIU_CCA_CNT_MODEM_STATE_20_S_INDEX       0x000000B8
#define RIU_CCA_CNT_MODEM_STATE_20_S_RESET       0x00000000

static inline u32 riu_cca_cnt_modem_state_20_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_MODEM_STATE_20_S_ADDR);
}

/*
 * @brief CCA_CNT_MODEM_STATE_40_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_MODEM_STATE_40_S  0x0
 * </pre>
 */
#define RIU_CCA_CNT_MODEM_STATE_40_S_ADDR        (REG_RIU_BASE_ADDR + 0x000002E4)
#define RIU_CCA_CNT_MODEM_STATE_40_S_OFFSET      0x000002E4
#define RIU_CCA_CNT_MODEM_STATE_40_S_INDEX       0x000000B9
#define RIU_CCA_CNT_MODEM_STATE_40_S_RESET       0x00000000

static inline u32 riu_cca_cnt_modem_state_40_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_MODEM_STATE_40_S_ADDR);
}

/*
 * @brief CCA_CNT_MODEM_STATE_80_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_MODEM_STATE_80_S  0x0
 * </pre>
 */
#define RIU_CCA_CNT_MODEM_STATE_80_S_ADDR        (REG_RIU_BASE_ADDR + 0x000002E8)
#define RIU_CCA_CNT_MODEM_STATE_80_S_OFFSET      0x000002E8
#define RIU_CCA_CNT_MODEM_STATE_80_S_INDEX       0x000000BA
#define RIU_CCA_CNT_MODEM_STATE_80_S_RESET       0x00000000

static inline u32 riu_cca_cnt_modem_state_80_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_MODEM_STATE_80_S_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_P register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_P      0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_P_ADDR        (REG_RIU_BASE_ADDR + 0x000002F4)
#define RIU_CCA_CNT_ENERGY_THR_P_OFFSET      0x000002F4
#define RIU_CCA_CNT_ENERGY_THR_P_INDEX       0x000000BD
#define RIU_CCA_CNT_ENERGY_THR_P_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_p_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_P_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_S   0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_S_ADDR        (REG_RIU_BASE_ADDR + 0x000002F8)
#define RIU_CCA_CNT_ENERGY_THR_20_S_OFFSET      0x000002F8
#define RIU_CCA_CNT_ENERGY_THR_20_S_INDEX       0x000000BE
#define RIU_CCA_CNT_ENERGY_THR_20_S_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_S_ADDR);
}

/*
 * @brief CCA_CNT_GI_20_P register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_GI_20_P           0x0
 * </pre>
 */
#define RIU_CCA_CNT_GI_20_P_ADDR        (REG_RIU_BASE_ADDR + 0x000002FC)
#define RIU_CCA_CNT_GI_20_P_OFFSET      0x000002FC
#define RIU_CCA_CNT_GI_20_P_INDEX       0x000000BF
#define RIU_CCA_CNT_GI_20_P_RESET       0x00000000

static inline u32 riu_cca_cnt_gi_20_p_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_GI_20_P_ADDR);
}

/*
 * @brief RWNXAGCRAMP register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    26:24 RAMPDNNDLINDEX            0x5
 *    23:16 RAMPDNGAPQDB              0x20
 *    10:08 RAMPUPNDLINDEX            0x7
 *    07:00 RAMPUPGAPQDB              0x10
 * </pre>
 */
#define RIU_RWNXAGCRAMP_ADDR        (REG_RIU_BASE_ADDR + 0x0000036C)
#define RIU_RWNXAGCRAMP_OFFSET      0x0000036C
#define RIU_RWNXAGCRAMP_INDEX       0x000000DB
#define RIU_RWNXAGCRAMP_RESET       0x05200710

static inline u8 riu_rwnxagcramp_rampupgapqdb_getf(struct cl_hw *cl_hw)
{
       u32 local_val = cl_reg_read(cl_hw, RIU_RWNXAGCRAMP_ADDR);

       return ((local_val & ((u32)0x000000FF)) >> 0);
}

static inline void riu_rwnxagcramp_rampupgapqdb_setf(struct cl_hw *cl_hw, u8 rampupgapqdb)
{
       cl_reg_write(cl_hw, RIU_RWNXAGCRAMP_ADDR,
                    (cl_reg_read(cl_hw, RIU_RWNXAGCRAMP_ADDR) & ~((u32)0x000000FF)) | ((u32)rampupgapqdb << 0));
}

/*
 * @brief RWNXAGCCNTL register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:26 COMBPATHSEL               0x3F
 *    25:20 GAINKEEP                  0x0
 *    16    HTSTFGAINEN               1
 *    15    NOISE_CAPTURE_DELAY_MODE  0
 *    14    EST_PATH_SEL_2            0
 *    13    CCA_MDM_ST_CLEAR          0
 *    12    AGCFSMRESET               0
 *    11    RADARDETEN                0
 *    10    RIFSDETEN                 1
 *    09    DSSSONLY                  0
 *    08    OFDMONLY                  0
 *    07:04 GPSTATUS                  0x0
 *    03    EST_PATH_SEL              0
 *    01    ADC_SEL_RADAR_DETECTOR    0
 *    00    ADC_SEL_COMP_MODULE       0
 * </pre>
 */
#define RIU_RWNXAGCCNTL_ADDR        (REG_RIU_BASE_ADDR + 0x00000390)
#define RIU_RWNXAGCCNTL_OFFSET      0x00000390
#define RIU_RWNXAGCCNTL_INDEX       0x000000E4
#define RIU_RWNXAGCCNTL_RESET       0xFC010400

static inline void riu_rwnxagccntl_agcfsmreset_setf(struct cl_hw *cl_hw, u8 agcfsmreset)
{
       ASSERT_ERR((((u32)agcfsmreset << 12) & ~((u32)0x00001000)) == 0);
       cl_reg_write(cl_hw, RIU_RWNXAGCCNTL_ADDR,
                    (cl_reg_read(cl_hw, RIU_RWNXAGCCNTL_ADDR) & ~((u32)0x00001000)) | ((u32)agcfsmreset << 12));
}

/*
 * @brief RWNXAGCCCA_1 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31    CCA_CNT_CLEAR             0
 *    30:29 CCA_CNT_RATE              0x0
 *    28:20 INBDCCAPOWMINDBM          0x1B5
 *    19:12 CCAFALLTHRDBM             0xBF
 *    10    CCAEnergy_Reset_Type      0
 *    09    DISCCAEN                  1
 *    08    SATCCAEN                  1
 *    07:00 CCARISETHRDBM             0xC2
 * </pre>
 */
#define RIU_RWNXAGCCCA_1_ADDR        (REG_RIU_BASE_ADDR + 0x000003AC)
#define RIU_RWNXAGCCCA_1_OFFSET      0x000003AC
#define RIU_RWNXAGCCCA_1_INDEX       0x000000EB
#define RIU_RWNXAGCCCA_1_RESET       0x1B5BF3C2

static inline void riu_rwnxagccca_1_cca_cnt_clear_setf(struct cl_hw *cl_hw, u8 ccacntclear)
{
       cl_reg_write(cl_hw, RIU_RWNXAGCCCA_1_ADDR,
                    (cl_reg_read(cl_hw, RIU_RWNXAGCCCA_1_ADDR) & ~((u32)0x80000000)) | ((u32)ccacntclear << 31));
}

/*
 * @brief RWNXAGCCCACTRL register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:28 CCAFLAG3_CTRL             0xA
 *    27:24 CCAFLAG2_CTRL             0x2
 *    23:20 CCAFLAG1_CTRL             0x8
 *    19:16 CCAFLAG0_CTRL             0x0
 *    14:12 CCA_SECOND_ANT_SEL        0x1
 *    10:08 CCA_MAIN_ANT_SEL          0x0
 *    07:04 CCADEMOD                  0xF
 *    00    CCACSEN                   1
 * </pre>
 */
#define RIU_RWNXAGCCCACTRL_ADDR        (REG_RIU_BASE_ADDR + 0x000003B0)
#define RIU_RWNXAGCCCACTRL_OFFSET      0x000003B0
#define RIU_RWNXAGCCCACTRL_INDEX       0x000000EC
#define RIU_RWNXAGCCCACTRL_RESET       0xA28010F1

static inline void riu_rwnxagcccactrl_cca_main_ant_sel_setf(struct cl_hw *cl_hw, u8 ccamainantsel)
{
       ASSERT_ERR((((u32)ccamainantsel << 8) & ~((u32)0x00000700)) == 0);
       cl_reg_write(cl_hw, RIU_RWNXAGCCCACTRL_ADDR,
                    (cl_reg_read(cl_hw, RIU_RWNXAGCCCACTRL_ADDR) & ~((u32)0x00000700)) | ((u32)ccamainantsel << 8));
}

/*
 * @brief RWNXAGCCCASTATE_0 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    28    CCAMDMSTFORCEEN           0
 *    27:24 CCAMDMSTFORCE             0x0
 *    23:12 RXSTATECCA20_SSEL         0x380
 *    11:00 RXSTATECCA20_PSEL         0x3F8
 * </pre>
 */
#define RIU_RWNXAGCCCASTATE_0_ADDR        (REG_RIU_BASE_ADDR + 0x000003B4)
#define RIU_RWNXAGCCCASTATE_0_OFFSET      0x000003B4
#define RIU_RWNXAGCCCASTATE_0_INDEX       0x000000ED
#define RIU_RWNXAGCCCASTATE_0_RESET       0x003803F8

static inline void riu_rwnxagcccastate_0_rxstatecca_20_psel_setf(struct cl_hw *cl_hw,
                                                                u16 rxstatecca20psel)
{
       ASSERT_ERR((((u32)rxstatecca20psel << 0) & ~((u32)0x00000FFF)) == 0);
       cl_reg_write(cl_hw, RIU_RWNXAGCCCASTATE_0_ADDR,
                    (cl_reg_read(cl_hw, RIU_RWNXAGCCCASTATE_0_ADDR) & ~((u32)0x00000FFF)) | ((u32)rxstatecca20psel << 0));
}

/*
 * @brief AGCINBDPOWNOISEPER_20_STAT_0 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOWNOISEDBMPER20_3    0x0
 *    23:16 INBDPOWNOISEDBMPER20_2    0x0
 *    15:08 INBDPOWNOISEDBMPER20_1    0x0
 *    07:00 INBDPOWNOISEDBMPER20_0    0x0
 * </pre>
 */
#define RIU_AGCINBDPOWNOISEPER_20_STAT_0_ADDR        (REG_RIU_BASE_ADDR + 0x00000478)
#define RIU_AGCINBDPOWNOISEPER_20_STAT_0_OFFSET      0x00000478
#define RIU_AGCINBDPOWNOISEPER_20_STAT_0_INDEX       0x0000011E
#define RIU_AGCINBDPOWNOISEPER_20_STAT_0_RESET       0x00000000

static inline u32 riu_agcinbdpownoiseper_20_stat_0_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_AGCINBDPOWNOISEPER_20_STAT_0_ADDR);
}

/*
 * @brief AGCINBDPOWNOISEPER_20_STAT_1 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOWNOISEDBMPER20_7    0x0
 *    23:16 INBDPOWNOISEDBMPER20_6    0x0
 *    15:08 INBDPOWNOISEDBMPER20_5    0x0
 *    07:00 INBDPOWNOISEDBMPER20_4    0x0
 * </pre>
 */
#define RIU_AGCINBDPOWNOISEPER_20_STAT_1_ADDR        (REG_RIU_BASE_ADDR + 0x0000047C)
#define RIU_AGCINBDPOWNOISEPER_20_STAT_1_OFFSET      0x0000047C
#define RIU_AGCINBDPOWNOISEPER_20_STAT_1_INDEX       0x0000011F
#define RIU_AGCINBDPOWNOISEPER_20_STAT_1_RESET       0x00000000

static inline u32 riu_agcinbdpownoiseper_20_stat_1_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_AGCINBDPOWNOISEPER_20_STAT_1_ADDR);
}

/*
 * @brief INBDPOWFORMAC_0 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOW20_PDBMA3_MAC      0x0
 *    23:16 INBDPOW20_PDBMA2_MAC      0x0
 *    15:08 INBDPOW20_PDBMA1_MAC      0x0
 *    07:00 INBDPOW20_PDBMA0_MAC      0x0
 * </pre>
 */
#define RIU_INBDPOWFORMAC_0_ADDR        (REG_RIU_BASE_ADDR + 0x00000480)
#define RIU_INBDPOWFORMAC_0_OFFSET      0x00000480
#define RIU_INBDPOWFORMAC_0_INDEX       0x00000120
#define RIU_INBDPOWFORMAC_0_RESET       0x00000000

static inline u32 riu_inbdpowformac_0_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_INBDPOWFORMAC_0_ADDR);
}

/*
 * @brief INBDPOWFORMAC_1 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    15:08 INBDPOW20_PDBMA5_MAC      0x0
 *    07:00 INBDPOW20_PDBMA4_MAC      0x0
 * </pre>
 */
#define RIU_INBDPOWFORMAC_1_ADDR        (REG_RIU_BASE_ADDR + 0x00000484)
#define RIU_INBDPOWFORMAC_1_OFFSET      0x00000484
#define RIU_INBDPOWFORMAC_1_INDEX       0x00000121
#define RIU_INBDPOWFORMAC_1_RESET       0x00000000

static inline u32 riu_inbdpowformac_1_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_INBDPOWFORMAC_1_ADDR);
}

/*
 * @brief INBDPOWFORMAC_2 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    23:16 INBDPOW80_SDBM_MAC        0x0
 *    15:08 INBDPOW40_SDBM_MAC        0x0
 *    07:00 INBDPOW20_SDBM_MAC        0x0
 * </pre>
 */
#define RIU_INBDPOWFORMAC_2_ADDR        (REG_RIU_BASE_ADDR + 0x00000488)
#define RIU_INBDPOWFORMAC_2_OFFSET      0x00000488
#define RIU_INBDPOWFORMAC_2_INDEX       0x00000122
#define RIU_INBDPOWFORMAC_2_RESET       0x00000000

static inline u32 riu_inbdpowformac_2_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_INBDPOWFORMAC_2_ADDR);
}

/*
 * @brief INBDPOWFORMAC_3 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOWPER20_PDBM_3_MAC   0x0
 *    23:16 INBDPOWPER20_PDBM_2_MAC   0x0
 *    15:08 INBDPOWPER20_PDBM_1_MAC   0x0
 *    07:00 INBDPOWPER20_PDBM_0_MAC   0x0
 * </pre>
 */
#define RIU_INBDPOWFORMAC_3_ADDR        (REG_RIU_BASE_ADDR + 0x0000048C)
#define RIU_INBDPOWFORMAC_3_OFFSET      0x0000048C
#define RIU_INBDPOWFORMAC_3_INDEX       0x00000123
#define RIU_INBDPOWFORMAC_3_RESET       0x00000000

static inline u32 riu_inbdpowformac_3_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_INBDPOWFORMAC_3_ADDR);
}

/*
 * @brief INBDPOWFORMAC_4 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOWPER20_PDBM_7_MAC   0x0
 *    23:16 INBDPOWPER20_PDBM_6_MAC   0x0
 *    15:08 INBDPOWPER20_PDBM_5_MAC   0x0
 *    07:00 INBDPOWPER20_PDBM_4_MAC   0x0
 * </pre>
 */
#define RIU_INBDPOWFORMAC_4_ADDR        (REG_RIU_BASE_ADDR + 0x00000490)
#define RIU_INBDPOWFORMAC_4_OFFSET      0x00000490
#define RIU_INBDPOWFORMAC_4_INDEX       0x00000124
#define RIU_INBDPOWFORMAC_4_RESET       0x00000000

static inline u32 riu_inbdpowformac_4_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_INBDPOWFORMAC_4_ADDR);
}

/*
 * @brief CCA_CNT_GI_20_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_GI_20_S           0x0
 * </pre>
 */
#define RIU_CCA_CNT_GI_20_S_ADDR        (REG_RIU_BASE_ADDR + 0x00000494)
#define RIU_CCA_CNT_GI_20_S_OFFSET      0x00000494
#define RIU_CCA_CNT_GI_20_S_INDEX       0x00000125
#define RIU_CCA_CNT_GI_20_S_RESET       0x00000000

static inline u32 riu_cca_cnt_gi_20_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_GI_20_S_ADDR);
}

/*
 * @brief CCA_CNT_GI_40_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_GI_40_S           0x0
 * </pre>
 */
#define RIU_CCA_CNT_GI_40_S_ADDR        (REG_RIU_BASE_ADDR + 0x00000498)
#define RIU_CCA_CNT_GI_40_S_OFFSET      0x00000498
#define RIU_CCA_CNT_GI_40_S_INDEX       0x00000126
#define RIU_CCA_CNT_GI_40_S_RESET       0x00000000

static inline u32 riu_cca_cnt_gi_40_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_GI_40_S_ADDR);
}

/*
 * @brief CCA_CNT_GI_80_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_GI_80_S           0x0
 * </pre>
 */
#define RIU_CCA_CNT_GI_80_S_ADDR        (REG_RIU_BASE_ADDR + 0x0000049C)
#define RIU_CCA_CNT_GI_80_S_OFFSET      0x0000049C
#define RIU_CCA_CNT_GI_80_S_INDEX       0x00000127
#define RIU_CCA_CNT_GI_80_S_RESET       0x00000000

static inline u32 riu_cca_cnt_gi_80_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_GI_80_S_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_40_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_40_S   0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_40_S_ADDR        (REG_RIU_BASE_ADDR + 0x000004A0)
#define RIU_CCA_CNT_ENERGY_THR_40_S_OFFSET      0x000004A0
#define RIU_CCA_CNT_ENERGY_THR_40_S_INDEX       0x00000128
#define RIU_CCA_CNT_ENERGY_THR_40_S_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_40_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_40_S_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_80_S register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_80_S   0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_80_S_ADDR        (REG_RIU_BASE_ADDR + 0x000004A4)
#define RIU_CCA_CNT_ENERGY_THR_80_S_OFFSET      0x000004A4
#define RIU_CCA_CNT_ENERGY_THR_80_S_INDEX       0x00000129
#define RIU_CCA_CNT_ENERGY_THR_80_S_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_80_s_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_80_S_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_0 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_0 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_0_ADDR        (REG_RIU_BASE_ADDR + 0x000004A8)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_0_OFFSET      0x000004A8
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_0_INDEX       0x0000012A
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_0_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_0_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_0_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_1 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_1 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_1_ADDR        (REG_RIU_BASE_ADDR + 0x000004AC)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_1_OFFSET      0x000004AC
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_1_INDEX       0x0000012B
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_1_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_1_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_1_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_2 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_2 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_2_ADDR        (REG_RIU_BASE_ADDR + 0x000004B0)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_2_OFFSET      0x000004B0
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_2_INDEX       0x0000012C
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_2_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_2_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_2_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_3 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_3 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_3_ADDR        (REG_RIU_BASE_ADDR + 0x000004B4)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_3_OFFSET      0x000004B4
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_3_INDEX       0x0000012D
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_3_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_3_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_3_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_4 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_4 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_4_ADDR        (REG_RIU_BASE_ADDR + 0x000004B8)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_4_OFFSET      0x000004B8
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_4_INDEX       0x0000012E
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_4_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_4_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_4_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_5 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_5 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_5_ADDR        (REG_RIU_BASE_ADDR + 0x000004BC)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_5_OFFSET      0x000004BC
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_5_INDEX       0x0000012F
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_5_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_5_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_5_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_6 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_6 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_6_ADDR        (REG_RIU_BASE_ADDR + 0x000004C0)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_6_OFFSET      0x000004C0
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_6_INDEX       0x00000130
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_6_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_6_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_6_ADDR);
}

/*
 * @brief CCA_CNT_ENERGY_THR_20_BAND_7 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:00 CCA_CNT_ENERGY_THR_20_BAND_7 0x0
 * </pre>
 */
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_7_ADDR        (REG_RIU_BASE_ADDR + 0x000004C4)
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_7_OFFSET      0x000004C4
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_7_INDEX       0x00000131
#define RIU_CCA_CNT_ENERGY_THR_20_BAND_7_RESET       0x00000000

static inline u32 riu_cca_cnt_energy_thr_20_band_7_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_CCA_CNT_ENERGY_THR_20_BAND_7_ADDR);
}

/*
 * @brief AGCADCPOWSTAT_2 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOW20_PDBM5           0x0
 *    23:16 INBDPOW20_PDBM4           0x0
 *    14:08 ADCPOWDBV5                0x0
 *    06:00 ADCPOWDBV4                0x0
 * </pre>
 */
#define RIU_AGCADCPOWSTAT_2_ADDR        (REG_RIU_BASE_ADDR + 0x00000670)
#define RIU_AGCADCPOWSTAT_2_OFFSET      0x00000670
#define RIU_AGCADCPOWSTAT_2_INDEX       0x0000019C
#define RIU_AGCADCPOWSTAT_2_RESET       0x00000000

static inline void riu_agcadcpowstat_2_unpack(struct cl_hw *cl_hw,
                                             u8 *inbdpow20pdbm5, u8 *inbdpow20pdbm4,
                                             u8 *adcpowdbv5, u8 *adcpowdbv4)
{
       u32 local_val = cl_reg_read(cl_hw, RIU_AGCADCPOWSTAT_2_ADDR);

       *inbdpow20pdbm5 = (local_val & ((u32)0xFF000000)) >> 24;
       *inbdpow20pdbm4 = (local_val & ((u32)0x00FF0000)) >> 16;
       *adcpowdbv5 = (local_val & ((u32)0x00007F00)) >> 8;
       *adcpowdbv4 = (local_val & ((u32)0x0000007F)) >> 0;
}

/*
 * @brief AGCINBDPOW_20_PNOISESTAT_2 register definition
 * <pre>
 *   Bits           Field Name   Reset Value
 *  -----   ------------------   -----------
 *    31:24 INBDPOW20_PNOISEDBM5      0x0
 *    23:16 INBDPOW20_PNOISEDBM4      0x0
 *    15:08 ADCPOWDBM5                0x0
 *    07:00 ADCPOWDBM4                0x0
 * </pre>
 */
#define RIU_AGCINBDPOW_20_PNOISESTAT_2_ADDR        (REG_RIU_BASE_ADDR + 0x0000067C)
#define RIU_AGCINBDPOW_20_PNOISESTAT_2_OFFSET      0x0000067C
#define RIU_AGCINBDPOW_20_PNOISESTAT_2_INDEX       0x0000019F
#define RIU_AGCINBDPOW_20_PNOISESTAT_2_RESET       0x00000000

static inline u32 riu_agcinbdpow_20_pnoisestat_2_get(struct cl_hw *cl_hw)
{
       return cl_reg_read(cl_hw, RIU_AGCINBDPOW_20_PNOISESTAT_2_ADDR);
}

#endif /*_REG_RIU_H_ */