# Peripheral: glb

- Register base address: 0x40000000

## Registers

| Register offset | Register size | Field offset | Field size | Name                         | Direction  | Description         |
| --------------- | ------------- | ------------ | ---------- | ---------------------------- | ---------- | ------------------- |
| 0x0000          | 32            |              |            | clk_cfg0                     | read-write | clk_cfg0.           |
|                 |               | 0x0000       | 1          | reg_pll_en                   |            |
|                 |               | 0x0001       | 1          | reg_fclk_en                  |            |
|                 |               | 0x0002       | 1          | reg_hclk_en                  |            |
|                 |               | 0x0003       | 1          | reg_bclk_en                  |            |
|                 |               | 0x0004       | 2          | reg_pll_sel                  |            |
|                 |               | 0x0006       | 2          | hbn_root_clk_sel             |            |
|                 |               | 0x0008       | 8          | reg_hclk_div                 |            |
|                 |               | 0x0010       | 8          | reg_bclk_div                 |            |
|                 |               | 0x0018       | 3          | fclk_sw_state                |            |
|                 |               | 0x001B       | 1          | chip_rdy                     |            |
|                 |               | 0x001C       | 4          | glb_id                       |            |
| 0x0004          | 32            |              |            | clk_cfg1                     | read-write | clk_cfg1.           |
|                 |               | 0x0000       | 4          | wifi_mac_core_div            |            |
|                 |               | 0x0004       | 4          | wifi_mac_wt_div              |            |
|                 |               | 0x0010       | 6          | ble_clk_sel                  |            |
|                 |               | 0x0018       | 1          | ble_en                       |            |
| 0x0008          | 32            |              |            | clk_cfg2                     | read-write | clk_cfg2.           |
|                 |               | 0x0000       | 3          | uart_clk_div                 |            |
|                 |               | 0x0004       | 1          | uart_clk_en                  |            |
|                 |               | 0x0007       | 1          | hbn_uart_clk_sel             |            |
|                 |               | 0x0008       | 3          | sf_clk_div                   |            |
|                 |               | 0x000B       | 1          | sf_clk_en                    |            |
|                 |               | 0x000C       | 2          | sf_clk_sel                   |            |
|                 |               | 0x000E       | 2          | sf_clk_sel2                  |            |
|                 |               | 0x0010       | 6          | ir_clk_div                   |            |
|                 |               | 0x0017       | 1          | ir_clk_en                    |            |
|                 |               | 0x0018       | 8          | dma_clk_en                   |            |
| 0x000C          | 32            |              |            | clk_cfg3                     | read-write | clk_cfg3.           |
|                 |               | 0x0000       | 5          | spi_clk_div                  |            |
|                 |               | 0x0008       | 1          | spi_clk_en                   |            |
|                 |               | 0x0010       | 8          | i2c_clk_div                  |            |
|                 |               | 0x0018       | 1          | i2c_clk_en                   |            |
| 0x0010          | 32            |              |            | swrst_cfg0                   | read-write | swrst_cfg0.         |
|                 |               | 0x0000       | 1          | swrst_s00                    |            |
|                 |               | 0x0001       | 1          | swrst_s01                    |            |
|                 |               | 0x0004       | 1          | swrst_s20                    |            |
|                 |               | 0x0008       | 1          | swrst_s30                    |            |
| 0x0014          | 32            |              |            | swrst_cfg1                   | read-write | swrst_cfg1.         |
|                 |               | 0x0000       | 1          | swrst_s10                    |            |
|                 |               | 0x0001       | 1          | swrst_s11                    |            |
|                 |               | 0x0002       | 1          | swrst_s12                    |            |
|                 |               | 0x0003       | 1          | swrst_s13                    |            |
|                 |               | 0x0004       | 1          | swrst_s14                    |            |
|                 |               | 0x0005       | 1          | swrst_s15                    |            |
|                 |               | 0x0006       | 1          | swrst_s16                    |            |
|                 |               | 0x0007       | 1          | swrst_s17                    |            |
|                 |               | 0x0008       | 1          | swrst_s18                    |            |
|                 |               | 0x0009       | 1          | swrst_s19                    |            |
|                 |               | 0x000A       | 1          | swrst_s1a                    |            |
|                 |               | 0x000B       | 1          | swrst_s1b                    |            |
|                 |               | 0x000C       | 1          | swrst_s1c                    |            |
|                 |               | 0x000D       | 1          | swrst_s1d                    |            |
|                 |               | 0x000E       | 1          | swrst_s1e                    |            |
|                 |               | 0x000F       | 1          | swrst_s1f                    |            |
|                 |               | 0x0010       | 1          | swrst_s1a0                   |            |
|                 |               | 0x0011       | 1          | swrst_s1a1                   |            |
|                 |               | 0x0012       | 1          | swrst_s1a2                   |            |
|                 |               | 0x0013       | 1          | swrst_s1a3                   |            |
|                 |               | 0x0014       | 1          | swrst_s1a4                   |            |
|                 |               | 0x0015       | 1          | swrst_s1a5                   |            |
|                 |               | 0x0016       | 1          | swrst_s1a6                   |            |
|                 |               | 0x0017       | 1          | swrst_s1a7                   |            |
| 0x0018          | 32            |              |            | swrst_cfg2                   | read-write | swrst_cfg2.         |
|                 |               | 0x0000       | 1          | reg_ctrl_pwron_rst           |            |
|                 |               | 0x0001       | 1          | reg_ctrl_cpu_reset           |            |
|                 |               | 0x0002       | 1          | reg_ctrl_sys_reset           |            |
|                 |               | 0x0004       | 4          | reg_ctrl_reset_dummy         |            |
|                 |               | 0x0018       | 1          | pka_clk_sel                  |            |
| 0x001C          | 32            |              |            | swrst_cfg3                   | read-write | swrst_cfg3.         |
| 0x0020          | 32            |              |            | cgen_cfg0                    | read-write | cgen_cfg0.          |
|                 |               | 0x0000       | 8          | cgen_m                       |            |
| 0x0024          | 32            |              |            | cgen_cfg1                    | read-write | cgen_cfg1.          |
|                 |               | 0x0000       | 16         | cgen_s1                      |            |
|                 |               | 0x0010       | 8          | cgen_s1a                     |            |
| 0x0028          | 32            |              |            | cgen_cfg2                    | read-write | cgen_cfg2.          |
|                 |               | 0x0000       | 1          | cgen_s2                      |            |
|                 |               | 0x0004       | 1          | cgen_s3                      |            |
| 0x002C          | 32            |              |            | cgen_cfg3                    | read-write | cgen_cfg3.          |
| 0x0030          | 32            |              |            | MBIST_CTL                    | read-write | MBIST_CTL.          |
|                 |               | 0x0000       | 1          | irom_mbist_mode              |            |
|                 |               | 0x0001       | 1          | hsram_mbist_mode             |            |
|                 |               | 0x0002       | 1          | tag_mbist_mode               |            |
|                 |               | 0x0003       | 1          | ocram_mbist_mode             |            |
|                 |               | 0x0004       | 1          | wifi_mbist_mode              |            |
|                 |               | 0x001F       | 1          | reg_mbist_rst_n              |            |
| 0x0034          | 32            |              |            | MBIST_STAT                   | read-write | MBIST_STAT.         |
|                 |               | 0x0000       | 1          | irom_mbist_done              |            |
|                 |               | 0x0001       | 1          | hsram_mbist_done             |            |
|                 |               | 0x0002       | 1          | tag_mbist_done               |            |
|                 |               | 0x0003       | 1          | ocram_mbist_done             |            |
|                 |               | 0x0004       | 1          | wifi_mbist_done              |            |
|                 |               | 0x0010       | 1          | irom_mbist_fail              |            |
|                 |               | 0x0011       | 1          | hsram_mbist_fail             |            |
|                 |               | 0x0012       | 1          | tag_mbist_fail               |            |
|                 |               | 0x0013       | 1          | ocram_mbist_fail             |            |
|                 |               | 0x0014       | 1          | wifi_mbist_fail              |            |
| 0x0050          | 32            |              |            | bmx_cfg1                     | read-write | bmx_cfg1.           |
|                 |               | 0x0000       | 4          | bmx_timeout_en               |            |
|                 |               | 0x0004       | 2          | bmx_arb_mode                 |            |
|                 |               | 0x0008       | 1          | bmx_err_en                   |            |
|                 |               | 0x0009       | 1          | bmx_busy_option_dis          |            |
|                 |               | 0x000A       | 1          | bmx_gating_dis               |            |
|                 |               | 0x000C       | 4          | hsel_option                  |            |
|                 |               | 0x0010       | 8          | pds_apb_cfg                  |            |
|                 |               | 0x0018       | 8          | hbn_apb_cfg                  |            |
| 0x0054          | 32            |              |            | bmx_cfg2                     | read-write | bmx_cfg2.           |
|                 |               | 0x0000       | 1          | bmx_err_addr_dis             |            |
|                 |               | 0x0004       | 1          | bmx_err_dec                  |            |
|                 |               | 0x0005       | 1          | bmx_err_tz                   |            |
|                 |               | 0x001C       | 4          | bmx_dbg_sel                  |            |
| 0x0058          | 32            |              |            | bmx_err_addr                 | read-write | bmx_err_addr.       |
|                 |               | 0x0000       | 32         | bmx_err_addr                 |            |
| 0x005C          | 32            |              |            | bmx_dbg_out                  | read-write | bmx_dbg_out.        |
|                 |               | 0x0000       | 32         | bmx_dbg_out                  |            |
| 0x0060          | 32            |              |            | rsv0                         | read-write | rsv0.               |
|                 |               | 0x0000       | 32         | rsvd_31_0                    |            |
| 0x0064          | 32            |              |            | rsv1                         | read-write | rsv1.               |
|                 |               | 0x0000       | 32         | rsvd_31_0                    |            |
| 0x0068          | 32            |              |            | rsv2                         | read-write | rsv2.               |
|                 |               | 0x0000       | 32         | rsvd_31_0                    |            |
| 0x006C          | 32            |              |            | rsv3                         | read-write | rsv3.               |
|                 |               | 0x0000       | 32         | rsvd_31_0                    |            |
| 0x0070          | 32            |              |            | sram_ret                     | read-write | sram_ret.           |
|                 |               | 0x0000       | 32         | reg_sram_ret                 |            |
| 0x0074          | 32            |              |            | sram_slp                     | read-write | sram_slp.           |
|                 |               | 0x0000       | 32         | reg_sram_slp                 |            |
| 0x0078          | 32            |              |            | sram_parm                    | read-write | sram_parm.          |
|                 |               | 0x0000       | 32         | reg_sram_parm                |            |
| 0x007C          | 32            |              |            | seam_misc                    | read-write | seam_misc.          |
|                 |               | 0x0000       | 4          | em_sel                       |            |
| 0x0080          | 32            |              |            | glb_parm                     | read-write | glb_parm.           |
|                 |               | 0x0000       | 1          | reg_bd_en                    |            |
|                 |               | 0x0001       | 1          | reg_ext_rst_smt              |            |
|                 |               | 0x0002       | 6          | jtag_swap_set                |            |
|                 |               | 0x0008       | 1          | swap_sflash_io_3_io_0        |            |
|                 |               | 0x0009       | 1          | sel_embedded_sflash          |            |
|                 |               | 0x000C       | 1          | reg_spi_0_master_mode        |            |
|                 |               | 0x000D       | 1          | reg_spi_0_swap               |            |
|                 |               | 0x000F       | 1          | reg_cci_use_jtag_pin         |            |
|                 |               | 0x0010       | 1          | reg_cci_use_sdio_pin         |            |
|                 |               | 0x0011       | 1          | p1_adc_test_with_cci         |            |
|                 |               | 0x0012       | 1          | p2_dac_test_with_cci         |            |
|                 |               | 0x0013       | 1          | p3_cci_use_io_2_5            |            |
|                 |               | 0x0014       | 1          | p4_adc_test_with_jtag        |            |
|                 |               | 0x0015       | 1          | p5_dac_test_with_jtag        |            |
|                 |               | 0x0016       | 1          | p6_sdio_use_io_0_5           |            |
|                 |               | 0x0017       | 1          | p7_jtag_use_io_2_5           |            |
|                 |               | 0x0018       | 3          | uart_swap_set                |            |
| 0x0090          | 32            |              |            | CPU_CLK_CFG                  | read-write | CPU_CLK_CFG.        |
|                 |               | 0x0000       | 17         | cpu_rtc_div                  |            |
|                 |               | 0x0012       | 1          | cpu_rtc_en                   |            |
|                 |               | 0x0013       | 1          | cpu_rtc_sel                  |            |
|                 |               | 0x0014       | 1          | debug_ndreset_gate           |            |
| 0x00A4          | 32            |              |            | GPADC_32M_SRC_CTRL           | read-write | GPADC_32M_SRC_CTRL. |
|                 |               | 0x0000       | 6          | gpadc_32m_clk_div            |            |
|                 |               | 0x0007       | 1          | gpadc_32m_clk_sel            |            |
|                 |               | 0x0008       | 1          | gpadc_32m_div_en             |            |
| 0x00A8          | 32            |              |            | DIG32K_WAKEUP_CTRL           | read-write | DIG32K_WAKEUP_CTRL. |
|                 |               | 0x0000       | 11         | dig_32k_div                  |            |
|                 |               | 0x000C       | 1          | dig_32k_en                   |            |
|                 |               | 0x000D       | 1          | dig_32k_comp                 |            |
|                 |               | 0x0010       | 7          | dig_512k_div                 |            |
|                 |               | 0x0018       | 1          | dig_512k_en                  |            |
|                 |               | 0x0019       | 1          | dig_512k_comp                |            |
|                 |               | 0x001C       | 1          | dig_clk_src_sel              |            |
|                 |               | 0x001F       | 1          | reg_en_platform_wakeup       |            |
| 0x00AC          | 32            |              |            | WIFI_BT_COEX_CTRL            | read-write | WIFI_BT_COEX_CTRL.  |
|                 |               | 0x0000       | 7          | coex_bt_channel              |            |
|                 |               | 0x0007       | 4          | coex_bt_pti                  |            |
|                 |               | 0x000B       | 1          | coex_bt_bw                   |            |
|                 |               | 0x000C       | 1          | en_gpio_bt_coex              |            |
| 0x00C0          | 32            |              |            | UART_SIG_SEL_0               | read-write | UART_SIG_SEL_0.     |
|                 |               | 0x0000       | 4          | uart_sig_0_sel               |            |
|                 |               | 0x0004       | 4          | uart_sig_1_sel               |            |
|                 |               | 0x0008       | 4          | uart_sig_2_sel               |            |
|                 |               | 0x000C       | 4          | uart_sig_3_sel               |            |
|                 |               | 0x0010       | 4          | uart_sig_4_sel               |            |
|                 |               | 0x0014       | 4          | uart_sig_5_sel               |            |
|                 |               | 0x0018       | 4          | uart_sig_6_sel               |            |
|                 |               | 0x001C       | 4          | uart_sig_7_sel               |            |
| 0x00D0          | 32            |              |            | DBG_SEL_LL                   | read-write | DBG_SEL_LL.         |
|                 |               | 0x0000       | 32         | reg_dbg_ll_ctrl              |            |
| 0x00D4          | 32            |              |            | DBG_SEL_LH                   | read-write | DBG_SEL_LH.         |
|                 |               | 0x0000       | 32         | reg_dbg_lh_ctrl              |            |
| 0x00D8          | 32            |              |            | DBG_SEL_HL                   | read-write | DBG_SEL_HL.         |
|                 |               | 0x0000       | 32         | reg_dbg_hl_ctrl              |            |
| 0x00DC          | 32            |              |            | DBG_SEL_HH                   | read-write | DBG_SEL_HH.         |
|                 |               | 0x0000       | 32         | reg_dbg_hh_ctrl              |            |
| 0x00E0          | 32            |              |            | debug                        | read-write | debug.              |
|                 |               | 0x0000       | 1          | debug_oe                     |            |
|                 |               | 0x0001       | 31         | debug_i                      |            |
| 0x0100          | 32            |              |            | GPIO_CFGCTL0                 | read-write | GPIO_CFGCTL0.       |
|                 |               | 0x0000       | 1          | reg_gpio_0_ie                |            |
|                 |               | 0x0001       | 1          | reg_gpio_0_smt               |            |
|                 |               | 0x0002       | 2          | reg_gpio_0_drv               |            |
|                 |               | 0x0004       | 1          | reg_gpio_0_pu                |            |
|                 |               | 0x0005       | 1          | reg_gpio_0_pd                |            |
|                 |               | 0x0008       | 4          | reg_gpio_0_func_sel          |            |
|                 |               | 0x000C       | 4          | real_gpio_0_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_1_ie                |            |
|                 |               | 0x0011       | 1          | reg_gpio_1_smt               |            |
|                 |               | 0x0012       | 2          | reg_gpio_1_drv               |            |
|                 |               | 0x0014       | 1          | reg_gpio_1_pu                |            |
|                 |               | 0x0015       | 1          | reg_gpio_1_pd                |            |
|                 |               | 0x0018       | 4          | reg_gpio_1_func_sel          |            |
|                 |               | 0x001C       | 4          | real_gpio_1_func_sel         |            |
| 0x0104          | 32            |              |            | GPIO_CFGCTL1                 | read-write | GPIO_CFGCTL1.       |
|                 |               | 0x0000       | 1          | reg_gpio_2_ie                |            |
|                 |               | 0x0001       | 1          | reg_gpio_2_smt               |            |
|                 |               | 0x0002       | 2          | reg_gpio_2_drv               |            |
|                 |               | 0x0004       | 1          | reg_gpio_2_pu                |            |
|                 |               | 0x0005       | 1          | reg_gpio_2_pd                |            |
|                 |               | 0x0008       | 4          | reg_gpio_2_func_sel          |            |
|                 |               | 0x000C       | 4          | real_gpio_2_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_3_ie                |            |
|                 |               | 0x0011       | 1          | reg_gpio_3_smt               |            |
|                 |               | 0x0012       | 2          | reg_gpio_3_drv               |            |
|                 |               | 0x0014       | 1          | reg_gpio_3_pu                |            |
|                 |               | 0x0015       | 1          | reg_gpio_3_pd                |            |
|                 |               | 0x0018       | 4          | reg_gpio_3_func_sel          |            |
|                 |               | 0x001C       | 4          | real_gpio_3_func_sel         |            |
| 0x0108          | 32            |              |            | GPIO_CFGCTL2                 | read-write | GPIO_CFGCTL2.       |
|                 |               | 0x0000       | 1          | reg_gpio_4_ie                |            |
|                 |               | 0x0001       | 1          | reg_gpio_4_smt               |            |
|                 |               | 0x0002       | 2          | reg_gpio_4_drv               |            |
|                 |               | 0x0004       | 1          | reg_gpio_4_pu                |            |
|                 |               | 0x0005       | 1          | reg_gpio_4_pd                |            |
|                 |               | 0x0008       | 4          | reg_gpio_4_func_sel          |            |
|                 |               | 0x000C       | 4          | real_gpio_4_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_5_ie                |            |
|                 |               | 0x0011       | 1          | reg_gpio_5_smt               |            |
|                 |               | 0x0012       | 2          | reg_gpio_5_drv               |            |
|                 |               | 0x0014       | 1          | reg_gpio_5_pu                |            |
|                 |               | 0x0015       | 1          | reg_gpio_5_pd                |            |
|                 |               | 0x0018       | 4          | reg_gpio_5_func_sel          |            |
|                 |               | 0x001C       | 4          | real_gpio_5_func_sel         |            |
| 0x010C          | 32            |              |            | GPIO_CFGCTL3                 | read-write | GPIO_CFGCTL3.       |
|                 |               | 0x0000       | 1          | reg_gpio_6_ie                |            |
|                 |               | 0x0001       | 1          | reg_gpio_6_smt               |            |
|                 |               | 0x0002       | 2          | reg_gpio_6_drv               |            |
|                 |               | 0x0004       | 1          | reg_gpio_6_pu                |            |
|                 |               | 0x0005       | 1          | reg_gpio_6_pd                |            |
|                 |               | 0x0008       | 4          | reg_gpio_6_func_sel          |            |
|                 |               | 0x0010       | 1          | reg_gpio_7_ie                |            |
|                 |               | 0x0011       | 1          | reg_gpio_7_smt               |            |
|                 |               | 0x0012       | 2          | reg_gpio_7_drv               |            |
|                 |               | 0x0014       | 1          | reg_gpio_7_pu                |            |
|                 |               | 0x0015       | 1          | reg_gpio_7_pd                |            |
|                 |               | 0x0018       | 4          | reg_gpio_7_func_sel          |            |
| 0x0110          | 32            |              |            | GPIO_CFGCTL4                 | read-write | GPIO_CFGCTL4.       |
|                 |               | 0x0000       | 1          | reg_gpio_8_ie                |            |
|                 |               | 0x0001       | 1          | reg_gpio_8_smt               |            |
|                 |               | 0x0002       | 2          | reg_gpio_8_drv               |            |
|                 |               | 0x0004       | 1          | reg_gpio_8_pu                |            |
|                 |               | 0x0005       | 1          | reg_gpio_8_pd                |            |
|                 |               | 0x0008       | 4          | reg_gpio_8_func_sel          |            |
|                 |               | 0x0010       | 1          | reg_gpio_9_ie                |            |
|                 |               | 0x0011       | 1          | reg_gpio_9_smt               |            |
|                 |               | 0x0012       | 2          | reg_gpio_9_drv               |            |
|                 |               | 0x0014       | 1          | reg_gpio_9_pu                |            |
|                 |               | 0x0015       | 1          | reg_gpio_9_pd                |            |
|                 |               | 0x0018       | 4          | reg_gpio_9_func_sel          |            |
| 0x0114          | 32            |              |            | GPIO_CFGCTL5                 | read-write | GPIO_CFGCTL5.       |
|                 |               | 0x0000       | 1          | reg_gpio_10_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_10_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_10_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_10_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_10_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_10_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_11_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_11_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_11_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_11_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_11_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_11_func_sel         |            |
| 0x0118          | 32            |              |            | GPIO_CFGCTL6                 | read-write | GPIO_CFGCTL6.       |
|                 |               | 0x0000       | 1          | reg_gpio_12_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_12_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_12_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_12_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_12_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_12_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_13_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_13_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_13_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_13_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_13_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_13_func_sel         |            |
| 0x011C          | 32            |              |            | GPIO_CFGCTL7                 | read-write | GPIO_CFGCTL7.       |
|                 |               | 0x0000       | 1          | reg_gpio_14_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_14_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_14_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_14_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_14_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_14_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_15_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_15_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_15_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_15_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_15_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_15_func_sel         |            |
| 0x0120          | 32            |              |            | GPIO_CFGCTL8                 | read-write | GPIO_CFGCTL8.       |
|                 |               | 0x0000       | 1          | reg_gpio_16_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_16_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_16_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_16_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_16_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_16_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_17_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_17_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_17_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_17_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_17_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_17_func_sel         |            |
| 0x0124          | 32            |              |            | GPIO_CFGCTL9                 | read-write | GPIO_CFGCTL9.       |
|                 |               | 0x0000       | 1          | reg_gpio_18_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_18_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_18_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_18_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_18_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_18_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_19_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_19_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_19_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_19_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_19_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_19_func_sel         |            |
| 0x0128          | 32            |              |            | GPIO_CFGCTL10                | read-write | GPIO_CFGCTL10.      |
|                 |               | 0x0000       | 1          | reg_gpio_20_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_20_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_20_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_20_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_20_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_20_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_21_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_21_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_21_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_21_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_21_pd               |            |
|                 |               | 0x0018       | 4          | reg_gpio_21_func_sel         |            |
| 0x012C          | 32            |              |            | GPIO_CFGCTL11                | read-write | GPIO_CFGCTL11.      |
|                 |               | 0x0000       | 1          | reg_gpio_22_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_22_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_22_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_22_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_22_pd               |            |
|                 |               | 0x0008       | 4          | reg_gpio_22_func_sel         |            |
|                 |               | 0x0010       | 1          | reg_gpio_23_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_23_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_23_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_23_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_23_pd               |            |
| 0x0130          | 32            |              |            | GPIO_CFGCTL12                | read-write | GPIO_CFGCTL12.      |
|                 |               | 0x0000       | 1          | reg_gpio_24_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_24_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_24_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_24_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_24_pd               |            |
|                 |               | 0x0010       | 1          | reg_gpio_25_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_25_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_25_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_25_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_25_pd               |            |
| 0x0134          | 32            |              |            | GPIO_CFGCTL13                | read-write | GPIO_CFGCTL13.      |
|                 |               | 0x0000       | 1          | reg_gpio_26_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_26_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_26_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_26_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_26_pd               |            |
|                 |               | 0x0010       | 1          | reg_gpio_27_ie               |            |
|                 |               | 0x0011       | 1          | reg_gpio_27_smt              |            |
|                 |               | 0x0012       | 2          | reg_gpio_27_drv              |            |
|                 |               | 0x0014       | 1          | reg_gpio_27_pu               |            |
|                 |               | 0x0015       | 1          | reg_gpio_27_pd               |            |
| 0x0138          | 32            |              |            | GPIO_CFGCTL14                | read-write | GPIO_CFGCTL14.      |
|                 |               | 0x0000       | 1          | reg_gpio_28_ie               |            |
|                 |               | 0x0001       | 1          | reg_gpio_28_smt              |            |
|                 |               | 0x0002       | 2          | reg_gpio_28_drv              |            |
|                 |               | 0x0004       | 1          | reg_gpio_28_pu               |            |
|                 |               | 0x0005       | 1          | reg_gpio_28_pd               |            |
| 0x0180          | 32            |              |            | GPIO_CFGCTL30                | read-write | GPIO_CFGCTL30.      |
|                 |               | 0x0000       | 1          | reg_gpio_0_i                 |            |
|                 |               | 0x0001       | 1          | reg_gpio_1_i                 |            |
|                 |               | 0x0002       | 1          | reg_gpio_2_i                 |            |
|                 |               | 0x0003       | 1          | reg_gpio_3_i                 |            |
|                 |               | 0x0004       | 1          | reg_gpio_4_i                 |            |
|                 |               | 0x0005       | 1          | reg_gpio_5_i                 |            |
|                 |               | 0x0006       | 1          | reg_gpio_6_i                 |            |
|                 |               | 0x0007       | 1          | reg_gpio_7_i                 |            |
|                 |               | 0x0008       | 1          | reg_gpio_8_i                 |            |
|                 |               | 0x0009       | 1          | reg_gpio_9_i                 |            |
|                 |               | 0x000A       | 1          | reg_gpio_10_i                |            |
|                 |               | 0x000B       | 1          | reg_gpio_11_i                |            |
|                 |               | 0x000C       | 1          | reg_gpio_12_i                |            |
|                 |               | 0x000D       | 1          | reg_gpio_13_i                |            |
|                 |               | 0x000E       | 1          | reg_gpio_14_i                |            |
|                 |               | 0x000F       | 1          | reg_gpio_15_i                |            |
|                 |               | 0x0010       | 1          | reg_gpio_16_i                |            |
|                 |               | 0x0011       | 1          | reg_gpio_17_i                |            |
|                 |               | 0x0012       | 1          | reg_gpio_18_i                |            |
|                 |               | 0x0013       | 1          | reg_gpio_19_i                |            |
|                 |               | 0x0014       | 1          | reg_gpio_20_i                |            |
|                 |               | 0x0015       | 1          | reg_gpio_21_i                |            |
|                 |               | 0x0016       | 1          | reg_gpio_22_i                |            |
| 0x0184          | 32            |              |            | GPIO_CFGCTL31                | read-write | GPIO_CFGCTL31.      |
| 0x0188          | 32            |              |            | GPIO_CFGCTL32                | read-write | GPIO_CFGCTL32.      |
|                 |               | 0x0000       | 1          | reg_gpio_0_o                 |            |
|                 |               | 0x0001       | 1          | reg_gpio_1_o                 |            |
|                 |               | 0x0002       | 1          | reg_gpio_2_o                 |            |
|                 |               | 0x0003       | 1          | reg_gpio_3_o                 |            |
|                 |               | 0x0004       | 1          | reg_gpio_4_o                 |            |
|                 |               | 0x0005       | 1          | reg_gpio_5_o                 |            |
|                 |               | 0x0006       | 1          | reg_gpio_6_o                 |            |
|                 |               | 0x0007       | 1          | reg_gpio_7_o                 |            |
|                 |               | 0x0008       | 1          | reg_gpio_8_o                 |            |
|                 |               | 0x0009       | 1          | reg_gpio_9_o                 |            |
|                 |               | 0x000A       | 1          | reg_gpio_10_o                |            |
|                 |               | 0x000B       | 1          | reg_gpio_11_o                |            |
|                 |               | 0x000C       | 1          | reg_gpio_12_o                |            |
|                 |               | 0x000D       | 1          | reg_gpio_13_o                |            |
|                 |               | 0x000E       | 1          | reg_gpio_14_o                |            |
|                 |               | 0x000F       | 1          | reg_gpio_15_o                |            |
|                 |               | 0x0010       | 1          | reg_gpio_16_o                |            |
|                 |               | 0x0011       | 1          | reg_gpio_17_o                |            |
|                 |               | 0x0012       | 1          | reg_gpio_18_o                |            |
|                 |               | 0x0013       | 1          | reg_gpio_19_o                |            |
|                 |               | 0x0014       | 1          | reg_gpio_20_o                |            |
|                 |               | 0x0015       | 1          | reg_gpio_21_o                |            |
|                 |               | 0x0016       | 1          | reg_gpio_22_o                |            |
| 0x018C          | 32            |              |            | GPIO_CFGCTL33                | read-write | GPIO_CFGCTL33.      |
| 0x0190          | 32            |              |            | GPIO_CFGCTL34                | read-write | GPIO_CFGCTL34.      |
|                 |               | 0x0000       | 1          | reg_gpio_0_oe                |            |
|                 |               | 0x0001       | 1          | reg_gpio_1_oe                |            |
|                 |               | 0x0002       | 1          | reg_gpio_2_oe                |            |
|                 |               | 0x0003       | 1          | reg_gpio_3_oe                |            |
|                 |               | 0x0004       | 1          | reg_gpio_4_oe                |            |
|                 |               | 0x0005       | 1          | reg_gpio_5_oe                |            |
|                 |               | 0x0006       | 1          | reg_gpio_6_oe                |            |
|                 |               | 0x0007       | 1          | reg_gpio_7_oe                |            |
|                 |               | 0x0008       | 1          | reg_gpio_8_oe                |            |
|                 |               | 0x0009       | 1          | reg_gpio_9_oe                |            |
|                 |               | 0x000A       | 1          | reg_gpio_10_oe               |            |
|                 |               | 0x000B       | 1          | reg_gpio_11_oe               |            |
|                 |               | 0x000C       | 1          | reg_gpio_12_oe               |            |
|                 |               | 0x000D       | 1          | reg_gpio_13_oe               |            |
|                 |               | 0x000E       | 1          | reg_gpio_14_oe               |            |
|                 |               | 0x000F       | 1          | reg_gpio_15_oe               |            |
|                 |               | 0x0010       | 1          | reg_gpio_16_oe               |            |
|                 |               | 0x0011       | 1          | reg_gpio_17_oe               |            |
|                 |               | 0x0012       | 1          | reg_gpio_18_oe               |            |
|                 |               | 0x0013       | 1          | reg_gpio_19_oe               |            |
|                 |               | 0x0014       | 1          | reg_gpio_20_oe               |            |
|                 |               | 0x0015       | 1          | reg_gpio_21_oe               |            |
|                 |               | 0x0016       | 1          | reg_gpio_22_oe               |            |
| 0x0194          | 32            |              |            | GPIO_CFGCTL35                | read-write | GPIO_CFGCTL35.      |
| 0x01A0          | 32            |              |            | GPIO_INT_MASK1               | read-write | GPIO_INT_MASK1.     |
|                 |               | 0x0000       | 32         | reg_gpio_int_mask1           |            |
| 0x01A8          | 32            |              |            | GPIO_INT_STAT1               | read-write | GPIO_INT_STAT1.     |
|                 |               | 0x0000       | 32         | gpio_int_stat1               |            |
| 0x01B0          | 32            |              |            | GPIO_INT_CLR1                | read-write | GPIO_INT_CLR1.      |
|                 |               | 0x0000       | 32         | reg_gpio_int_clr1            |            |
| 0x01C0          | 32            |              |            | GPIO_INT_MODE_SET1           | read-write | GPIO_INT_MODE_SET1. |
|                 |               | 0x0000       | 32         | reg_gpio_int_mode_set1       |            |
| 0x01C4          | 32            |              |            | GPIO_INT_MODE_SET2           | read-write | GPIO_INT_MODE_SET2. |
|                 |               | 0x0000       | 32         | reg_gpio_int_mode_set2       |            |
| 0x01C8          | 32            |              |            | GPIO_INT_MODE_SET3           | read-write | GPIO_INT_MODE_SET3. |
|                 |               | 0x0000       | 32         | reg_gpio_int_mode_set3       |            |
| 0x0224          | 32            |              |            | led_driver                   | read-write | led_driver.         |
|                 |               | 0x0000       | 1          | led_din_reg                  |            |
|                 |               | 0x0001       | 1          | led_din_sel                  |            |
|                 |               | 0x0002       | 1          | led_din_polarity_sel         |            |
|                 |               | 0x0004       | 4          | leddrv_ibias                 |            |
|                 |               | 0x0008       | 2          | ir_rx_gpio_sel               |            |
|                 |               | 0x001F       | 1          | pu_leddrv                    |            |
| 0x0308          | 32            |              |            | gpdac_ctrl                   | read-write | gpdac_ctrl.         |
|                 |               | 0x0000       | 1          | gpdaca_rstn_ana              |            |
|                 |               | 0x0001       | 1          | gpdacb_rstn_ana              |            |
|                 |               | 0x0007       | 1          | gpdac_test_en                |            |
|                 |               | 0x0008       | 1          | gpdac_ref_sel                |            |
|                 |               | 0x0009       | 3          | gpdac_test_sel               |            |
| 0x030C          | 32            |              |            | gpdac_actrl                  | read-write | gpdac_actrl.        |
|                 |               | 0x0000       | 1          | gpdac_a_en                   |            |
|                 |               | 0x0001       | 1          | gpdac_ioa_en                 |            |
|                 |               | 0x0012       | 2          | gpdac_a_rng                  |            |
|                 |               | 0x0014       | 3          | gpdac_a_outmux               |            |
| 0x0310          | 32            |              |            | gpdac_bctrl                  | read-write | gpdac_bctrl.        |
|                 |               | 0x0000       | 1          | gpdac_b_en                   |            |
|                 |               | 0x0001       | 1          | gpdac_iob_en                 |            |
|                 |               | 0x0012       | 2          | gpdac_b_rng                  |            |
|                 |               | 0x0014       | 3          | gpdac_b_outmux               |            |
| 0x0314          | 32            |              |            | gpdac_data                   | read-write | gpdac_data.         |
|                 |               | 0x0000       | 10         | gpdac_b_data                 |            |
|                 |               | 0x0010       | 10         | gpdac_a_data                 |            |
| 0x0F00          | 32            |              |            | tzc_glb_ctrl_0               | read-write | tzc_glb_ctrl_0.     |
|                 |               | 0x0000       | 1          | tzc_glb_swrst_s00_lock       |            |
|                 |               | 0x0001       | 1          | tzc_glb_swrst_s01_lock       |            |
|                 |               | 0x0008       | 1          | tzc_glb_swrst_s30_lock       |            |
|                 |               | 0x000C       | 1          | tzc_glb_ctrl_pwron_rst_lock  |            |
|                 |               | 0x000D       | 1          | tzc_glb_ctrl_cpu_reset_lock  |            |
|                 |               | 0x000E       | 1          | tzc_glb_ctrl_sys_reset_lock  |            |
|                 |               | 0x000F       | 1          | tzc_glb_ctrl_ungated_ap_lock |            |
|                 |               | 0x0019       | 1          | tzc_glb_misc_lock            |            |
|                 |               | 0x001A       | 1          | tzc_glb_sram_lock            |            |
|                 |               | 0x001B       | 1          | tzc_glb_l2c_lock             |            |
|                 |               | 0x001C       | 1          | tzc_glb_bmx_lock             |            |
|                 |               | 0x001D       | 1          | tzc_glb_dbg_lock             |            |
|                 |               | 0x001E       | 1          | tzc_glb_mbist_lock           |            |
|                 |               | 0x001F       | 1          | tzc_glb_clk_lock             |            |
| 0x0F04          | 32            |              |            | tzc_glb_ctrl_1               | read-write | tzc_glb_ctrl_1.     |
|                 |               | 0x0000       | 1          | tzc_glb_swrst_s20_lock       |            |
|                 |               | 0x0001       | 1          | tzc_glb_swrst_s21_lock       |            |
|                 |               | 0x0002       | 1          | tzc_glb_swrst_s22_lock       |            |
|                 |               | 0x0003       | 1          | tzc_glb_swrst_s23_lock       |            |
|                 |               | 0x0004       | 1          | tzc_glb_swrst_s24_lock       |            |
|                 |               | 0x0005       | 1          | tzc_glb_swrst_s25_lock       |            |
|                 |               | 0x0006       | 1          | tzc_glb_swrst_s26_lock       |            |
|                 |               | 0x0007       | 1          | tzc_glb_swrst_s27_lock       |            |
|                 |               | 0x0008       | 1          | tzc_glb_swrst_s28_lock       |            |
|                 |               | 0x0009       | 1          | tzc_glb_swrst_s29_lock       |            |
|                 |               | 0x000A       | 1          | tzc_glb_swrst_s2a_lock       |            |
|                 |               | 0x000B       | 1          | tzc_glb_swrst_s2b_lock       |            |
|                 |               | 0x000C       | 1          | tzc_glb_swrst_s2c_lock       |            |
|                 |               | 0x000D       | 1          | tzc_glb_swrst_s2d_lock       |            |
|                 |               | 0x000E       | 1          | tzc_glb_swrst_s2e_lock       |            |
|                 |               | 0x000F       | 1          | tzc_glb_swrst_s2f_lock       |            |
|                 |               | 0x0010       | 1          | tzc_glb_swrst_s10_lock       |            |
|                 |               | 0x0011       | 1          | tzc_glb_swrst_s11_lock       |            |
|                 |               | 0x0012       | 1          | tzc_glb_swrst_s12_lock       |            |
|                 |               | 0x0013       | 1          | tzc_glb_swrst_s13_lock       |            |
|                 |               | 0x0014       | 1          | tzc_glb_swrst_s14_lock       |            |
|                 |               | 0x0015       | 1          | tzc_glb_swrst_s15_lock       |            |
|                 |               | 0x0016       | 1          | tzc_glb_swrst_s16_lock       |            |
|                 |               | 0x0017       | 1          | tzc_glb_swrst_s17_lock       |            |
|                 |               | 0x0018       | 1          | tzc_glb_swrst_s18_lock       |            |
|                 |               | 0x0019       | 1          | tzc_glb_swrst_s19_lock       |            |
|                 |               | 0x001A       | 1          | tzc_glb_swrst_s1a_lock       |            |
|                 |               | 0x001B       | 1          | tzc_glb_swrst_s1b_lock       |            |
|                 |               | 0x001C       | 1          | tzc_glb_swrst_s1c_lock       |            |
|                 |               | 0x001D       | 1          | tzc_glb_swrst_s1d_lock       |            |
|                 |               | 0x001E       | 1          | tzc_glb_swrst_s1e_lock       |            |
|                 |               | 0x001F       | 1          | tzc_glb_swrst_s1f_lock       |            |
| 0x0F08          | 32            |              |            | tzc_glb_ctrl_2               | read-write | tzc_glb_ctrl_2.     |
|                 |               | 0x0000       | 1          | tzc_glb_gpio_0_lock          |            |
|                 |               | 0x0001       | 1          | tzc_glb_gpio_1_lock          |            |
|                 |               | 0x0002       | 1          | tzc_glb_gpio_2_lock          |            |
|                 |               | 0x0003       | 1          | tzc_glb_gpio_3_lock          |            |
|                 |               | 0x0004       | 1          | tzc_glb_gpio_4_lock          |            |
|                 |               | 0x0005       | 1          | tzc_glb_gpio_5_lock          |            |
|                 |               | 0x0006       | 1          | tzc_glb_gpio_6_lock          |            |
|                 |               | 0x0007       | 1          | tzc_glb_gpio_7_lock          |            |
|                 |               | 0x0008       | 1          | tzc_glb_gpio_8_lock          |            |
|                 |               | 0x0009       | 1          | tzc_glb_gpio_9_lock          |            |
|                 |               | 0x000A       | 1          | tzc_glb_gpio_10_lock         |            |
|                 |               | 0x000B       | 1          | tzc_glb_gpio_11_lock         |            |
|                 |               | 0x000C       | 1          | tzc_glb_gpio_12_lock         |            |
|                 |               | 0x000D       | 1          | tzc_glb_gpio_13_lock         |            |
|                 |               | 0x000E       | 1          | tzc_glb_gpio_14_lock         |            |
|                 |               | 0x000F       | 1          | tzc_glb_gpio_15_lock         |            |
|                 |               | 0x0010       | 1          | tzc_glb_gpio_16_lock         |            |
|                 |               | 0x0011       | 1          | tzc_glb_gpio_17_lock         |            |
|                 |               | 0x0012       | 1          | tzc_glb_gpio_18_lock         |            |
|                 |               | 0x0013       | 1          | tzc_glb_gpio_19_lock         |            |
|                 |               | 0x0014       | 1          | tzc_glb_gpio_20_lock         |            |
|                 |               | 0x0015       | 1          | tzc_glb_gpio_21_lock         |            |
|                 |               | 0x0016       | 1          | tzc_glb_gpio_22_lock         |            |
|                 |               | 0x0017       | 1          | tzc_glb_gpio_23_lock         |            |
|                 |               | 0x0018       | 1          | tzc_glb_gpio_24_lock         |            |
|                 |               | 0x0019       | 1          | tzc_glb_gpio_25_lock         |            |
|                 |               | 0x001A       | 1          | tzc_glb_gpio_26_lock         |            |
|                 |               | 0x001B       | 1          | tzc_glb_gpio_27_lock         |            |
|                 |               | 0x001C       | 1          | tzc_glb_gpio_28_lock         |            |
| 0x0F0C          | 32            |              |            | tzc_glb_ctrl_3               | read-write | tzc_glb_ctrl_3.     |
