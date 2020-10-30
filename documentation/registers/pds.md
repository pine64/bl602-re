# Peripheral: pds

- Register base address: 0x4000E000

## Registers

| Register offset | Register size | Field offset | Field size | Name                       | Direction  | Description       |
| --------------- | ------------- | ------------ | ---------- | -------------------------- | ---------- | ----------------- |
| 0x0000          | 32            |              |            | PDS_CTL                    | read-write | PDS_CTL.          |
|                 |               | 0x0000       | 1          | pds_start_ps               |            |
|                 |               | 0x0001       | 1          | cr_sleep_forever           |            |
|                 |               | 0x0002       | 1          | cr_xtal_force_off          |            |
|                 |               | 0x0003       | 1          | cr_wifi_pds_save_state     |            |
|                 |               | 0x0004       | 1          | cr_pds_pd_dcdc18           |            |
|                 |               | 0x0005       | 1          | cr_pds_pd_bg_sys           |            |
|                 |               | 0x0008       | 1          | cr_pds_gate_clk            |            |
|                 |               | 0x0009       | 1          | cr_pds_mem_stby            |            |
|                 |               | 0x000B       | 1          | cr_pds_iso_en              |            |
|                 |               | 0x000C       | 1          | cr_pds_wait_xtal_rdy       |            |
|                 |               | 0x000D       | 1          | cr_pds_pwr_off             |            |
|                 |               | 0x000E       | 1          | cr_pds_pd_xtal             |            |
|                 |               | 0x000F       | 1          | cr_pds_soc_enb_force_on    |            |
|                 |               | 0x0010       | 1          | cr_pds_rst_soc_en          |            |
|                 |               | 0x0011       | 1          | cr_pds_rc32m_off_dis       |            |
|                 |               | 0x0012       | 1          | cr_pds_ldo_vsel_en         |            |
|                 |               | 0x0015       | 1          | cr_np_wfi_mask             |            |
|                 |               | 0x0016       | 1          | cr_pds_pd_ldo11            |            |
|                 |               | 0x0018       | 4          | cr_pds_ldo_vol             |            |
|                 |               | 0x001C       | 2          | cr_pds_ctrl_rf             |            |
|                 |               | 0x001E       | 2          | cr_pds_ctrl_pll            |            |
| 0x0004          | 32            |              |            | PDS_TIME1                  | read-write | PDS_TIME1.        |
|                 |               | 0x0000       | 32         | cr_sleep_duration          |            |
| 0x000C          | 32            |              |            | PDS_INT                    | read-write | PDS_INT.          |
|                 |               | 0x0000       | 1          | ro_pds_wake_int            |            |
|                 |               | 0x0001       | 1          | ro_pds_irq_in              |            |
|                 |               | 0x0002       | 1          | ro_pds_rf_done_int         |            |
|                 |               | 0x0003       | 1          | ro_pds_pll_done_int        |            |
|                 |               | 0x0008       | 1          | cr_pds_wake_int_mask       |            |
|                 |               | 0x0009       | 1          | cr_pds_irq_in_dis          |            |
|                 |               | 0x000A       | 1          | cr_pds_rf_done_int_mask    |            |
|                 |               | 0x000B       | 1          | cr_pds_pll_done_int_mask   |            |
|                 |               | 0x0010       | 1          | cr_pds_int_clr             |            |
| 0x0010          | 32            |              |            | PDS_CTL2                   | read-write | PDS_CTL2.         |
|                 |               | 0x0000       | 1          | cr_pds_force_np_pwr_off    |            |
|                 |               | 0x0002       | 1          | cr_pds_force_wb_pwr_off    |            |
|                 |               | 0x0004       | 1          | cr_pds_force_np_iso_en     |            |
|                 |               | 0x0006       | 1          | cr_pds_force_wb_iso_en     |            |
|                 |               | 0x0008       | 1          | cr_pds_force_np_pds_rst    |            |
|                 |               | 0x000A       | 1          | cr_pds_force_wb_pds_rst    |            |
|                 |               | 0x000C       | 1          | cr_pds_force_np_mem_stby   |            |
|                 |               | 0x000E       | 1          | cr_pds_force_wb_mem_stby   |            |
|                 |               | 0x0010       | 1          | cr_pds_force_np_gate_clk   |            |
|                 |               | 0x0012       | 1          | cr_pds_force_wb_gate_clk   |            |
| 0x0014          | 32            |              |            | PDS_CTL3                   | read-write | PDS_CTL3.         |
|                 |               | 0x0001       | 1          | cr_pds_force_misc_pwr_off  |            |
|                 |               | 0x0004       | 1          | cr_pds_force_misc_iso_en   |            |
|                 |               | 0x0007       | 1          | cr_pds_force_misc_pds_rst  |            |
|                 |               | 0x000A       | 1          | cr_pds_force_misc_mem_stby |            |
|                 |               | 0x000D       | 1          | cr_pds_force_misc_gate_clk |            |
|                 |               | 0x0018       | 1          | cr_pds_np_iso_en           |            |
|                 |               | 0x001B       | 1          | cr_pds_wb_iso_en           |            |
|                 |               | 0x001E       | 1          | cr_pds_misc_iso_en         |            |
| 0x0018          | 32            |              |            | PDS_CTL4                   | read-write | PDS_CTL4.         |
|                 |               | 0x0000       | 1          | cr_pds_np_pwr_off          |            |
|                 |               | 0x0001       | 1          | cr_pds_np_reset            |            |
|                 |               | 0x0002       | 1          | cr_pds_np_mem_stby         |            |
|                 |               | 0x0003       | 1          | cr_pds_np_gate_clk         |            |
|                 |               | 0x000C       | 1          | cr_pds_wb_pwr_off          |            |
|                 |               | 0x000D       | 1          | cr_pds_wb_reset            |            |
|                 |               | 0x000E       | 1          | cr_pds_wb_mem_stby         |            |
|                 |               | 0x000F       | 1          | cr_pds_wb_gate_clk         |            |
|                 |               | 0x0018       | 1          | cr_pds_misc_pwr_off        |            |
|                 |               | 0x0019       | 1          | cr_pds_misc_reset          |            |
|                 |               | 0x001A       | 1          | cr_pds_misc_mem_stby       |            |
|                 |               | 0x001B       | 1          | cr_pds_misc_gate_clk       |            |
| 0x001C          | 32            |              |            | pds_stat                   | read-write | pds_stat.         |
|                 |               | 0x0000       | 4          | ro_pds_state               |            |
|                 |               | 0x0008       | 4          | ro_pds_rf_state            |            |
|                 |               | 0x0010       | 2          | ro_pds_pll_state           |            |
| 0x0020          | 32            |              |            | pds_ram1                   | read-write | pds_ram1.         |
|                 |               | 0x0000       | 8          | cr_np_sram_pwr             |            |
| 0x0300          | 32            |              |            | rc32m_ctrl0                | read-write | rc32m_ctrl0.      |
|                 |               | 0x0000       | 1          | rc32m_cal_done             |            |
|                 |               | 0x0001       | 1          | rc32m_rdy                  |            |
|                 |               | 0x0002       | 1          | rc32m_cal_inprogress       |            |
|                 |               | 0x0003       | 2          | rc32m_cal_div              |            |
|                 |               | 0x0005       | 1          | rc32m_cal_precharge        |            |
|                 |               | 0x0006       | 8          | rc32m_dig_code_fr_cal      |            |
|                 |               | 0x0011       | 1          | rc32m_allow_cal            |            |
|                 |               | 0x0012       | 1          | rc32m_refclk_half          |            |
|                 |               | 0x0013       | 1          | rc32m_ext_code_en          |            |
|                 |               | 0x0014       | 1          | rc32m_cal_en               |            |
|                 |               | 0x0015       | 1          | rc32m_pd                   |            |
|                 |               | 0x0016       | 8          | rc32m_code_fr_ext          |            |
| 0x0304          | 32            |              |            | rc32m_ctrl1                | read-write | rc32m_ctrl1.      |
|                 |               | 0x0000       | 1          | rc32m_test_en              |            |
|                 |               | 0x0001       | 1          | rc32m_soft_rst             |            |
|                 |               | 0x0002       | 1          | rc32m_clk_soft_rst         |            |
|                 |               | 0x0003       | 1          | rc32m_clk_inv              |            |
|                 |               | 0x0004       | 1          | rc32m_clk_force_on         |            |
| 0x0400          | 32            |              |            | pu_rst_clkpll              | read-write | pu_rst_clkpll.    |
|                 |               | 0x0000       | 1          | clkpll_sdm_reset           |            |
|                 |               | 0x0001       | 1          | clkpll_reset_postdiv       |            |
|                 |               | 0x0002       | 1          | clkpll_reset_fbdv          |            |
|                 |               | 0x0003       | 1          | clkpll_reset_refdiv        |            |
|                 |               | 0x0004       | 1          | clkpll_pu_postdiv          |            |
|                 |               | 0x0005       | 1          | clkpll_pu_fbdv             |            |
|                 |               | 0x0006       | 1          | clkpll_pu_clamp_op         |            |
|                 |               | 0x0007       | 1          | clkpll_pu_pfd              |            |
|                 |               | 0x0008       | 1          | clkpll_pu_cp               |            |
|                 |               | 0x0009       | 1          | pu_clkpll_sfreg            |            |
|                 |               | 0x000A       | 1          | pu_clkpll                  |            |
| 0x0404          | 32            |              |            | clkpll_top_ctrl            | read-write | clkpll_top_ctrl.  |
|                 |               | 0x0000       | 7          | clkpll_postdiv             |            |
|                 |               | 0x0008       | 4          | clkpll_refdiv_ratio        |            |
|                 |               | 0x000C       | 1          | clkpll_xtal_rc32m_sel      |            |
|                 |               | 0x0010       | 1          | clkpll_refclk_sel          |            |
|                 |               | 0x0014       | 2          | clkpll_vg11_sel            |            |
|                 |               | 0x0018       | 2          | clkpll_vg13_sel            |            |
| 0x0408          | 32            |              |            | clkpll_cp                  | read-write | clkpll_cp.        |
|                 |               | 0x0000       | 1          | clkpll_sel_cp_bias         |            |
|                 |               | 0x0004       | 2          | clkpll_icp_5u              |            |
|                 |               | 0x0006       | 2          | clkpll_icp_1u              |            |
|                 |               | 0x0008       | 1          | clkpll_int_frac_sw         |            |
|                 |               | 0x0009       | 1          | clkpll_cp_startup_en       |            |
|                 |               | 0x000A       | 1          | clkpll_cp_opamp_en         |            |
| 0x040C          | 32            |              |            | clkpll_rz                  | read-write | clkpll_rz.        |
|                 |               | 0x0000       | 1          | clkpll_c4_en               |            |
|                 |               | 0x0004       | 2          | clkpll_r4                  |            |
|                 |               | 0x0008       | 1          | clkpll_r4_short            |            |
|                 |               | 0x000C       | 2          | clkpll_c3                  |            |
|                 |               | 0x000E       | 2          | clkpll_cz                  |            |
|                 |               | 0x0010       | 3          | clkpll_rz                  |            |
| 0x0410          | 32            |              |            | clkpll_fbdv                | read-write | clkpll_fbdv.      |
|                 |               | 0x0000       | 2          | clkpll_sel_sample_clk      |            |
|                 |               | 0x0002       | 2          | clkpll_sel_fb_clk          |            |
| 0x0414          | 32            |              |            | clkpll_vco                 | read-write | clkpll_vco.       |
|                 |               | 0x0000       | 3          | clkpll_vco_speed           |            |
|                 |               | 0x0003       | 1          | clkpll_shrtr               |            |
| 0x0418          | 32            |              |            | clkpll_sdm                 | read-write | clkpll_sdm.       |
|                 |               | 0x0000       | 24         | clkpll_sdmin               |            |
|                 |               | 0x0018       | 2          | clkpll_dither_sel          |            |
|                 |               | 0x001C       | 1          | clkpll_sdm_flag            |            |
|                 |               | 0x001D       | 1          | clkpll_sdm_bypass          |            |
| 0x041C          | 32            |              |            | clkpll_output_en           | read-write | clkpll_output_en. |
|                 |               | 0x0000       | 1          | clkpll_en_480m             |            |
|                 |               | 0x0001       | 1          | clkpll_en_240m             |            |
|                 |               | 0x0002       | 1          | clkpll_en_192m             |            |
|                 |               | 0x0003       | 1          | clkpll_en_160m             |            |
|                 |               | 0x0004       | 1          | clkpll_en_120m             |            |
|                 |               | 0x0005       | 1          | clkpll_en_96m              |            |
|                 |               | 0x0006       | 1          | clkpll_en_80m              |            |
|                 |               | 0x0007       | 1          | clkpll_en_48m              |            |
|                 |               | 0x0008       | 1          | clkpll_en_32m              |            |
|                 |               | 0x0009       | 1          | clkpll_en_div2_480m        |            |
