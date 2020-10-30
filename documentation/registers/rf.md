# Peripheral: rf

- Register base address: 0x40001000

## Registers

| Register offset | Register size | Field offset | Field size | Name                        | Direction  | Description                                 |
| --------------- | ------------- | ------------ | ---------- | --------------------------- | ---------- | ------------------------------------------- |
| 0x0000          | 32            |              |            | rf_rev                      | read-write | Silicon revision                            |
|                 |               | 0x0000       | 8          | rf_id                       |            |
|                 |               | 0x0008       | 8          | fw_rev                      |            |
|                 |               | 0x0010       | 8          | hw_rev                      |            |
| 0x0004          | 32            |              |            | rf_fsm_ctrl_hw              | read-write | Digital Control                             |
|                 |               | 0x0001       | 1          | rf_fsm_ctrl_en              |            |
|                 |               | 0x0002       | 2          | rf_fsm_t2r_cal_mode         |            |
|                 |               | 0x0004       | 3          | rf_fsm_state                |            |
|                 |               | 0x0008       | 3          | rf_rc_state_dbg             |            |
|                 |               | 0x000B       | 1          | rf_rc_state_dbg_en          |            |
|                 |               | 0x000C       | 3          | rf_fsm_st_int_sel           |            |
|                 |               | 0x0010       | 1          | rf_fsm_st_int               |            |
|                 |               | 0x0014       | 1          | rf_fsm_st_int_clr           |            |
|                 |               | 0x0018       | 1          | rf_fsm_st_int_set           |            |
|                 |               | 0x001C       | 3          | rf_rc_state_value           |            |
| 0x0008          | 32            |              |            | rf_fsm_ctrl_sw              | read-write | rfsm status reg                             |
|                 |               | 0x0000       | 5          | rf_fsm_sw_st                |            |
|                 |               | 0x0008       | 1          | rf_fsm_sw_st_vld            |            |
|                 |               | 0x000C       | 1          | full_cal_en                 |            |
|                 |               | 0x0010       | 1          | inc_cal_timeout             |            |
|                 |               | 0x0014       | 1          | lo_unlocked                 |            |
| 0x000C          | 32            |              |            | rfctrl_hw_en                | read-write | Control logic switch                        |
|                 |               | 0x0000       | 1          | pu_ctrl_hw                  |            |
|                 |               | 0x0001       | 1          | rx_gain_ctrl_hw             |            |
|                 |               | 0x0002       | 1          | tx_gain_ctrl_hw             |            |
|                 |               | 0x0003       | 1          | lna_ctrl_hw                 |            |
|                 |               | 0x0004       | 1          | rbb_bw_ctrl_hw              |            |
|                 |               | 0x0005       | 1          | trxcal_ctrl_hw              |            |
|                 |               | 0x0006       | 1          | lo_ctrl_hw                  |            |
|                 |               | 0x0007       | 1          | inc_acal_ctrl_en_hw         |            |
|                 |               | 0x0008       | 1          | inc_fcal_ctrl_en_hw         |            |
|                 |               | 0x0009       | 1          | sdm_ctrl_hw                 |            |
|                 |               | 0x000A       | 1          | rbb_pkdet_en_ctrl_hw        |            |
|                 |               | 0x000B       | 1          | rbb_pkdet_out_rstn_ctrl_hw  |            |
|                 |               | 0x000C       | 1          | adda_ctrl_hw                |            |
| 0x0010          | 32            |              |            | temp_comp                   | read-write | temp_comp.                                  |
|                 |               | 0x0000       | 8          | const_acal                  |            |
|                 |               | 0x0008       | 8          | const_fcal                  |            |
|                 |               | 0x0010       | 1          | temp_comp_en                |            |
| 0x0014          | 32            |              |            | rfcal_status                | read-write | rfcal_status.                               |
|                 |               | 0x0000       | 2          | rcal_status                 |            |
|                 |               | 0x0002       | 2          | adc_oscal_status            |            |
|                 |               | 0x0004       | 2          | fcal_status                 |            |
|                 |               | 0x0006       | 2          | acal_status                 |            |
|                 |               | 0x0008       | 2          | inc_fcal_status             |            |
|                 |               | 0x000A       | 2          | inc_acal_status             |            |
|                 |               | 0x000C       | 2          | clkpll_cal_status           |            |
|                 |               | 0x000E       | 2          | ros_status                  |            |
|                 |               | 0x0010       | 2          | tos_status                  |            |
|                 |               | 0x0012       | 2          | rccal_status                |            |
|                 |               | 0x0014       | 2          | lo_leakcal_status           |            |
|                 |               | 0x0016       | 2          | tiqcal_status_resv          |            |
|                 |               | 0x0018       | 2          | riqcal_status_resv          |            |
|                 |               | 0x001A       | 2          | pwdet_cal_status            |            |
|                 |               | 0x001C       | 2          | tenscal_status              |            |
|                 |               | 0x001E       | 2          | dpd_status                  |            |
| 0x0018          | 32            |              |            | rfcal_status2               | read-write | rfcal_status2.                              |
|                 |               | 0x0000       | 2          | dl_rfcal_table_status       |            |
| 0x001C          | 32            |              |            | rfcal_ctrlen                | read-write | Calibration mode register                   |
|                 |               | 0x0000       | 1          | rcal_en_resv                |            |
|                 |               | 0x0001       | 1          | adc_oscal_en                |            |
|                 |               | 0x0002       | 1          | dl_rfcal_table_en           |            |
|                 |               | 0x0003       | 1          | fcal_en                     |            |
|                 |               | 0x0004       | 1          | acal_en                     |            |
|                 |               | 0x0005       | 1          | fcal_inc_en                 |            |
|                 |               | 0x0006       | 1          | acal_inc_en                 |            |
|                 |               | 0x0007       | 1          | roscal_inc_en               |            |
|                 |               | 0x0008       | 1          | clkpll_cal_en               |            |
|                 |               | 0x0009       | 1          | roscal_en                   |            |
|                 |               | 0x000A       | 1          | toscal_en                   |            |
|                 |               | 0x000B       | 1          | rccal_en                    |            |
|                 |               | 0x000C       | 1          | lo_leakcal_en               |            |
|                 |               | 0x000D       | 1          | tiqcal_en                   |            |
|                 |               | 0x000E       | 1          | riqcal_en                   |            |
|                 |               | 0x000F       | 1          | pwdet_cal_en                |            |
|                 |               | 0x0010       | 1          | tsencal_en                  |            |
|                 |               | 0x0011       | 1          | dpd_en                      |            |
| 0x0020          | 32            |              |            | rfcal_stateen               | read-write | rf calibration state enabl in full cal list |
|                 |               | 0x0000       | 1          | rcal_sten_resv              |            |
|                 |               | 0x0001       | 1          | adc_oscal_sten              |            |
|                 |               | 0x0002       | 1          | dl_rfcal_table_sten         |            |
|                 |               | 0x0003       | 1          | fcal_sten                   |            |
|                 |               | 0x0004       | 1          | acal_sten                   |            |
|                 |               | 0x0005       | 1          | inc_fcal_sten               |            |
|                 |               | 0x0006       | 1          | inc_acal_sten               |            |
|                 |               | 0x0007       | 1          | clkpll_cal_sten             |            |
|                 |               | 0x0008       | 1          | roscal_sten                 |            |
|                 |               | 0x0009       | 1          | toscal_sten_resv            |            |
|                 |               | 0x000A       | 1          | rccal_sten                  |            |
|                 |               | 0x000B       | 1          | lo_leakcal_sten             |            |
|                 |               | 0x000C       | 1          | tiqcal_sten                 |            |
|                 |               | 0x000D       | 1          | riqcal_sten                 |            |
|                 |               | 0x000E       | 1          | pwdet_cal_sten              |            |
|                 |               | 0x000F       | 1          | tsencal_sten                |            |
|                 |               | 0x0010       | 1          | dpd_sten                    |            |
|                 |               | 0x001E       | 2          | rfcal_level                 |            |
| 0x0024          | 32            |              |            | saradc_resv                 | read-write | SARADC Control Registers                    |
| 0x0028          | 32            |              |            | rf_base_ctrl1               | read-write | ZRF Control register 0                      |
|                 |               | 0x0000       | 2          | aupll_sdm_rst_dly           |            |
|                 |               | 0x0002       | 2          | lo_sdm_rst_dly              |            |
|                 |               | 0x0008       | 2          | ppu_lead                    |            |
|                 |               | 0x000A       | 2          | pud_vco_dly                 |            |
|                 |               | 0x000C       | 2          | pud_iref_dly                |            |
|                 |               | 0x000E       | 2          | pud_pa_dly                  |            |
|                 |               | 0x001B       | 2          | mbg_trim                    |            |
| 0x002C          | 32            |              |            | rf_base_ctrl2               | read-write | ZRF Control register 0                      |
| 0x0030          | 32            |              |            | pucr1                       | read-write | pucr1.                                      |
|                 |               | 0x0000       | 1          | pu_sfreg                    |            |
|                 |               | 0x0008       | 1          | pu_lna                      |            |
|                 |               | 0x0009       | 1          | pu_rmxgm                    |            |
|                 |               | 0x000A       | 1          | pu_rmx                      |            |
|                 |               | 0x000B       | 1          | pu_rbb                      |            |
|                 |               | 0x000C       | 1          | pu_adda_ldo                 |            |
|                 |               | 0x000D       | 1          | adc_clk_en                  |            |
|                 |               | 0x000E       | 1          | pu_adc                      |            |
|                 |               | 0x000F       | 1          | pu_op_atest                 |            |
|                 |               | 0x0010       | 1          | pu_pa                       |            |
|                 |               | 0x0011       | 1          | pu_tmx                      |            |
|                 |               | 0x0012       | 1          | pu_tbb                      |            |
|                 |               | 0x0013       | 1          | pu_dac                      |            |
|                 |               | 0x0014       | 1          | pu_vco                      |            |
|                 |               | 0x0015       | 1          | pu_fbdv                     |            |
|                 |               | 0x0016       | 1          | pu_pfd                      |            |
|                 |               | 0x0017       | 1          | pu_osmx                     |            |
|                 |               | 0x0018       | 1          | pu_rxbuf                    |            |
|                 |               | 0x0019       | 1          | pu_txbuf                    |            |
|                 |               | 0x001A       | 1          | trsw_en                     |            |
|                 |               | 0x001C       | 1          | pu_pkdet                    |            |
|                 |               | 0x001D       | 1          | pu_rosdac                   |            |
|                 |               | 0x001E       | 1          | pu_pwrmx                    |            |
|                 |               | 0x001F       | 1          | pu_tosdac                   |            |
| 0x0034          | 32            |              |            | pucr1_hw                    | read-write | read only from hardware logic               |
|                 |               | 0x0000       | 1          | pu_sfreg_hw                 |            |
|                 |               | 0x0008       | 1          | pu_lna_hw                   |            |
|                 |               | 0x0009       | 1          | pu_rmxgm_hw                 |            |
|                 |               | 0x000A       | 1          | pu_rmx_hw                   |            |
|                 |               | 0x000B       | 1          | pu_rbb_hw                   |            |
|                 |               | 0x000C       | 1          | pu_adda_ldo_hw              |            |
|                 |               | 0x000D       | 1          | adc_clk_en_hw               |            |
|                 |               | 0x000E       | 1          | pu_adc_hw                   |            |
|                 |               | 0x0010       | 1          | pu_pa_hw                    |            |
|                 |               | 0x0011       | 1          | pu_tmx_hw                   |            |
|                 |               | 0x0012       | 1          | pu_tbb_hw                   |            |
|                 |               | 0x0013       | 1          | pu_dac_hw                   |            |
|                 |               | 0x0014       | 1          | pu_vco_hw                   |            |
|                 |               | 0x0015       | 1          | pu_fbdv_hw                  |            |
|                 |               | 0x0016       | 1          | pu_pfd_hw                   |            |
|                 |               | 0x0017       | 1          | pu_osmx_hw                  |            |
|                 |               | 0x0018       | 1          | pu_rxbuf_hw                 |            |
|                 |               | 0x0019       | 1          | pu_txbuf_hw                 |            |
|                 |               | 0x001A       | 1          | trsw_en_hw                  |            |
|                 |               | 0x001C       | 1          | pu_pkdet_hw                 |            |
|                 |               | 0x001D       | 1          | pu_rosdac_hw                |            |
|                 |               | 0x001F       | 1          | pu_tosdac_hw                |            |
| 0x0038          | 32            |              |            | pucr2                       | read-write | pucr2.                                      |
| 0x003C          | 32            |              |            | pucr2_hw                    | read-write | pucr2_hw.                                   |
| 0x0040          | 32            |              |            | ppu_ctrl_hw                 | read-write | ppu_ctrl_hw.                                |
|                 |               | 0x0008       | 1          | ppu_lna_hw                  |            |
|                 |               | 0x0009       | 1          | ppu_rmxgm_hw                |            |
|                 |               | 0x000B       | 1          | ppu_rbb_hw                  |            |
|                 |               | 0x0014       | 1          | ppu_vco_hw                  |            |
|                 |               | 0x0015       | 1          | ppu_fbdv_hw                 |            |
|                 |               | 0x0016       | 1          | ppu_pfd_hw                  |            |
|                 |               | 0x0017       | 1          | ppu_osmx_hw                 |            |
|                 |               | 0x0018       | 1          | ppu_rxbuf_hw                |            |
|                 |               | 0x0019       | 1          | ppu_txbuf_hw                |            |
| 0x0044          | 32            |              |            | pud_ctrl_hw                 | read-write | pud_ctrl_hw.                                |
|                 |               | 0x0014       | 1          | pud_vco_hw                  |            |
| 0x0048          | 32            |              |            | trx_gain1                   | read-write | gain control1                               |
|                 |               | 0x0000       | 3          | gc_lna                      |            |
|                 |               | 0x0004       | 2          | gc_rmxgm                    |            |
|                 |               | 0x0008       | 2          | gc_rbb1                     |            |
|                 |               | 0x000C       | 3          | gc_rbb2                     |            |
|                 |               | 0x0010       | 3          | gc_tmx                      |            |
|                 |               | 0x0014       | 5          | gc_tbb                      |            |
|                 |               | 0x001C       | 2          | gc_tbb_boost                |            |
| 0x004C          | 32            |              |            | trx_gain_hw                 | read-write | trx gain hardware readback                  |
|                 |               | 0x0000       | 3          | gc_lna_hw                   |            |
|                 |               | 0x0004       | 2          | gc_rmxgm_hw                 |            |
|                 |               | 0x0008       | 2          | gc_rbb1_hw                  |            |
|                 |               | 0x000C       | 3          | gc_rbb2_hw                  |            |
|                 |               | 0x0010       | 3          | gc_tmx_hw                   |            |
|                 |               | 0x0014       | 5          | gc_tbb_hw                   |            |
|                 |               | 0x001C       | 2          | gc_tbb_boost_hw             |            |
| 0x0050          | 32            |              |            | ten_dc                      | read-write | dc test register                            |
|                 |               | 0x0000       | 3          | tmux                        |            |
|                 |               | 0x0003       | 1          | dc_tp_en                    |            |
|                 |               | 0x0004       | 1          | dc_tp_clkpll_en             |            |
|                 |               | 0x0008       | 1          | ten_clkpll                  |            |
|                 |               | 0x0009       | 1          | ten_clkpll_sfreg            |            |
|                 |               | 0x000C       | 1          | ten_rrf_0                   |            |
|                 |               | 0x000D       | 1          | ten_rrf_1                   |            |
|                 |               | 0x000E       | 1          | ten_pa                      |            |
|                 |               | 0x000F       | 1          | ten_tmx                     |            |
|                 |               | 0x0010       | 1          | ten_tia                     |            |
|                 |               | 0x0011       | 1          | ten_bq                      |            |
|                 |               | 0x0012       | 1          | ten_atest                   |            |
|                 |               | 0x0013       | 1          | ten_tbb                     |            |
|                 |               | 0x0014       | 1          | ten_adc                     |            |
|                 |               | 0x0015       | 1          | ten_dac_i                   |            |
|                 |               | 0x0016       | 1          | ten_dac_q                   |            |
|                 |               | 0x0018       | 1          | ten_vco                     |            |
|                 |               | 0x0019       | 1          | ten_pfdcp                   |            |
|                 |               | 0x001A       | 1          | ten_lf                      |            |
|                 |               | 0x001B       | 1          | ten_lodist                  |            |
| 0x0054          | 32            |              |            | ten_dig                     | read-write | digital test register                       |
|                 |               | 0x0000       | 1          | dten_clkpll_postdiv_clk     |            |
|                 |               | 0x0001       | 1          | dten_clkpll_clk96m          |            |
|                 |               | 0x0002       | 1          | dten_clkpll_clk32m          |            |
|                 |               | 0x0003       | 1          | dten_clkpll_fsdm            |            |
|                 |               | 0x0004       | 1          | dten_clkpll_fref            |            |
|                 |               | 0x0005       | 1          | dten_clkpll_fin             |            |
|                 |               | 0x0006       | 1          | dten_lo_fsdm                |            |
|                 |               | 0x0008       | 1          | dten_lo_fref                |            |
|                 |               | 0x0009       | 1          | dtest_pull_down             |            |
|                 |               | 0x0017       | 1          | rf_dtest_en                 |            |
| 0x0058          | 32            |              |            | ten_ac                      | read-write | ac test register                            |
|                 |               | 0x0000       | 4          | atest_op_cc                 |            |
|                 |               | 0x0004       | 1          | atest_dac_en                |            |
|                 |               | 0x0005       | 1          | atest_in_trx_sw             |            |
|                 |               | 0x0006       | 1          | atest_in_en                 |            |
|                 |               | 0x0008       | 2          | atest_gain_r9               |            |
|                 |               | 0x000A       | 2          | atest_gain_r8               |            |
|                 |               | 0x000C       | 2          | atest_gain_r7               |            |
|                 |               | 0x000E       | 2          | atest_gain_r6               |            |
|                 |               | 0x0010       | 3          | atest_gain_r5               |            |
|                 |               | 0x0014       | 1          | atest_out_en_q              |            |
|                 |               | 0x0015       | 1          | atest_out_en_i              |            |
|                 |               | 0x0016       | 1          | atest_in_en_q               |            |
|                 |               | 0x0017       | 1          | atest_in_en_i               |            |
| 0x005C          | 32            |              |            | pmip_mv2aon                 | read-write | pmip_mv2aon.                                |
| 0x0060          | 32            |              |            | cip                         | read-write | RX normal bias mode registers               |
|                 |               | 0x0000       | 2          | vg11_sel                    |            |
|                 |               | 0x0002       | 2          | vg13_sel                    |            |
| 0x0064          | 32            |              |            | pa1                         | read-write | pa1.                                        |
|                 |               | 0x0000       | 3          | pa_iaq                      |            |
|                 |               | 0x0003       | 1          | pa_etb_en                   |            |
|                 |               | 0x0004       | 4          | pa_iet                      |            |
|                 |               | 0x0008       | 4          | pa_vbcore                   |            |
|                 |               | 0x000C       | 3          | pa_vbcas                    |            |
|                 |               | 0x000F       | 1          | pa_half_on                  |            |
|                 |               | 0x0010       | 1          | pa_ib_fix                   |            |
|                 |               | 0x0011       | 1          | pa_lz_bias_en               |            |
|                 |               | 0x0012       | 4          | pa_pwrmx_osdac              |            |
|                 |               | 0x0016       | 1          | pa_pwrmx_dac_pn_switch      |            |
|                 |               | 0x0018       | 3          | pa_pwrmx_bm                 |            |
|                 |               | 0x001C       | 4          | pa_att_gc                   |            |
| 0x0068          | 32            |              |            | pa2                         | read-write | RX normal bias mode registers               |
|                 |               | 0x0003       | 1          | pa_etb_en_hw                |            |
|                 |               | 0x0004       | 4          | pa_iet_hw                   |            |
|                 |               | 0x0008       | 4          | pa_vbcore_hw                |            |
|                 |               | 0x000C       | 3          | pa_vbcas_hw                 |            |
|                 |               | 0x0010       | 1          | pa_half_on_hw               |            |
|                 |               | 0x0011       | 1          | pa_ib_fix_hw                |            |
| 0x006C          | 32            |              |            | tmx                         | read-write | tmx.                                        |
|                 |               | 0x0000       | 3          | tmx_cs                      |            |
|                 |               | 0x0004       | 3          | tmx_bm_sw                   |            |
|                 |               | 0x0008       | 3          | tmx_bm_cas                  |            |
|                 |               | 0x000C       | 3          | tmx_bm_cas_bulk             |            |
|                 |               | 0x0010       | 1          | tx_tsense_en                |            |
| 0x0070          | 32            |              |            | tbb                         | read-write | tbb.                                        |
|                 |               | 0x0000       | 2          | tbb_bm_sf                   |            |
|                 |               | 0x0004       | 2          | tbb_bm_cg                   |            |
|                 |               | 0x0008       | 2          | tbb_vcm                     |            |
|                 |               | 0x000C       | 2          | tbb_cflt                    |            |
|                 |               | 0x000E       | 1          | tbb_iq_bias_short           |            |
|                 |               | 0x000F       | 1          | tbb_atest_out_en            |            |
|                 |               | 0x0010       | 6          | tbb_tosdac_q                |            |
|                 |               | 0x0018       | 6          | tbb_tosdac_i                |            |
| 0x0074          | 32            |              |            | lna                         | read-write | lna.                                        |
|                 |               | 0x0000       | 4          | lna_bm                      |            |
|                 |               | 0x0004       | 4          | lna_bm_hw                   |            |
|                 |               | 0x0008       | 4          | lna_load_csw                |            |
|                 |               | 0x000C       | 4          | lna_load_csw_hw             |            |
|                 |               | 0x0010       | 3          | lna_rfb_match               |            |
|                 |               | 0x0014       | 2          | lna_cap_lg                  |            |
|                 |               | 0x0018       | 3          | lna_lg_gsel                 |            |
| 0x0078          | 32            |              |            | rmxgm                       | read-write | rmxgm.                                      |
|                 |               | 0x0000       | 3          | rmx_bm                      |            |
|                 |               | 0x0004       | 3          | rmxgm_bm                    |            |
|                 |               | 0x0008       | 1          | rmxgm_10m_mode_en           |            |
| 0x007C          | 32            |              |            | rbb1                        | read-write | rbb1.                                       |
|                 |               | 0x0000       | 6          | rosdac_q                    |            |
|                 |               | 0x0008       | 6          | rosdac_i                    |            |
|                 |               | 0x0010       | 6          | rosdac_q_hw                 |            |
|                 |               | 0x0018       | 6          | rosdac_i_hw                 |            |
|                 |               | 0x001F       | 1          | rosdac_range                |            |
| 0x0080          | 32            |              |            | rbb2                        | read-write | rbb2.                                       |
|                 |               | 0x0000       | 6          | rbb_cap2_fc_q               |            |
|                 |               | 0x0008       | 6          | rbb_cap2_fc_i               |            |
|                 |               | 0x0010       | 6          | rbb_cap1_fc_q               |            |
|                 |               | 0x0018       | 6          | rbb_cap1_fc_i               |            |
| 0x0084          | 32            |              |            | rbb3                        | read-write | rbb3.                                       |
|                 |               | 0x0000       | 1          | rbb_bt_mode_hw              |            |
|                 |               | 0x0004       | 1          | rbb_bt_mode                 |            |
|                 |               | 0x0005       | 2          | rbb_bt_fif_tune             |            |
|                 |               | 0x0008       | 2          | rbb_deq                     |            |
|                 |               | 0x000C       | 3          | rbb_bm_op                   |            |
|                 |               | 0x0010       | 2          | rbb_vcm                     |            |
|                 |               | 0x0014       | 1          | rbb_bq_iqbias_short         |            |
|                 |               | 0x0015       | 1          | rbb_tia_iqbias_short        |            |
|                 |               | 0x0018       | 2          | rbb_bw                      |            |
|                 |               | 0x001C       | 1          | rxiqcal_en                  |            |
|                 |               | 0x001F       | 1          | pwr_det_en                  |            |
| 0x0088          | 32            |              |            | rbb4                        | read-write | rbb4.                                       |
|                 |               | 0x0000       | 4          | rbb_pkdet_vth               |            |
|                 |               | 0x0004       | 1          | rbb_pkdet_out_rstn          |            |
|                 |               | 0x0008       | 1          | rbb_pkdet_en                |            |
|                 |               | 0x000C       | 1          | rbb_pkdet_out_rstn_hw       |            |
|                 |               | 0x0010       | 1          | rbb_pkdet_en_hw             |            |
|                 |               | 0x0014       | 1          | pkdet_out_raw               |            |
|                 |               | 0x0018       | 1          | pkdet_out_latch             |            |
| 0x008C          | 32            |              |            | adda1                       | read-write | adda1.                                      |
|                 |               | 0x0000       | 2          | dac_dvdd_sel                |            |
|                 |               | 0x0004       | 2          | dac_bias_sel                |            |
|                 |               | 0x0008       | 2          | dac_clk_sel                 |            |
|                 |               | 0x000C       | 1          | dac_rccalsel                |            |
|                 |               | 0x000D       | 1          | dac_clk_sync_inv            |            |
|                 |               | 0x0010       | 1          | adda_ldo_byps               |            |
|                 |               | 0x0014       | 3          | adda_ldo_dvdd_sel           |            |
|                 |               | 0x0018       | 3          | adda_ldo_dvdd_sel_hw        |            |
| 0x0090          | 32            |              |            | adda2                       | read-write | adda2.                                      |
|                 |               | 0x0000       | 2          | adc_vref_sel                |            |
|                 |               | 0x0004       | 2          | adc_dly_ctl                 |            |
|                 |               | 0x0008       | 2          | adc_dvdd_sel                |            |
|                 |               | 0x000C       | 1          | adc_sar_ascal_en            |            |
|                 |               | 0x0010       | 1          | adc_gt_rm                   |            |
|                 |               | 0x0014       | 1          | adc_clk_sync_inv            |            |
|                 |               | 0x0018       | 1          | adc_clk_inv                 |            |
|                 |               | 0x001C       | 1          | adc_clk_div_sel             |            |
| 0x00A0          | 32            |              |            | vco1                        | read-write | vco1.                                       |
|                 |               | 0x0000       | 8          | lo_vco_freq_cw              |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_hw           |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw              |            |
|                 |               | 0x0018       | 5          | lo_vco_idac_cw_hw           |            |
| 0x00A4          | 32            |              |            | vco2                        | read-write | vco2.                                       |
|                 |               | 0x0000       | 2          | lo_vco_vbias_cw             |            |
|                 |               | 0x0004       | 1          | lo_vco_idac_boot            |            |
|                 |               | 0x0005       | 1          | lo_vco_short_vbias_filter   |            |
|                 |               | 0x0006       | 1          | lo_vco_short_idac_filter    |            |
|                 |               | 0x0008       | 3          | acal_vref_cw                |            |
|                 |               | 0x000C       | 1          | acal_vco_ud                 |            |
|                 |               | 0x0010       | 1          | acal_inc_en_hw              |            |
| 0x00A8          | 32            |              |            | vco3                        | read-write | vco3.                                       |
|                 |               | 0x0000       | 16         | fcal_div                    |            |
|                 |               | 0x0010       | 16         | fcal_cnt_op                 |            |
| 0x00AC          | 32            |              |            | vco4                        | read-write | vco4.                                       |
|                 |               | 0x0004       | 1          | fcal_cnt_start              |            |
|                 |               | 0x0008       | 1          | fcal_inc_en_hw              |            |
|                 |               | 0x0010       | 1          | fcal_inc_large_range        |            |
|                 |               | 0x0014       | 1          | fcal_cnt_rdy                |            |
|                 |               | 0x0018       | 2          | fcal_inc_vctrl_ud           |            |
| 0x00B0          | 32            |              |            | pfdcp                       | read-write | pfdcp.                                      |
|                 |               | 0x0000       | 1          | lo_cp_sel                   |            |
|                 |               | 0x0004       | 1          | lo_cp_sel_hw                |            |
|                 |               | 0x0008       | 1          | lo_cp_startup_en            |            |
|                 |               | 0x000C       | 1          | lo_cp_ota_en                |            |
|                 |               | 0x0010       | 1          | lo_cp_opamp_en              |            |
|                 |               | 0x0014       | 1          | lo_cp_hiz                   |            |
|                 |               | 0x0018       | 1          | lo_pfd_rvdd_boost           |            |
|                 |               | 0x001C       | 1          | lo_pfd_rst_csd              |            |
|                 |               | 0x001D       | 1          | lo_pfd_rst_csd_hw           |            |
| 0x00B4          | 32            |              |            | lo                          | read-write | lo.                                         |
|                 |               | 0x0000       | 2          | lo_lf_rz_hw                 |            |
|                 |               | 0x0004       | 2          | lo_lf_r4_hw                 |            |
|                 |               | 0x0008       | 2          | lo_lf_cz_hw                 |            |
|                 |               | 0x000C       | 2          | lo_lf_rz                    |            |
|                 |               | 0x000E       | 2          | lo_lf_cz                    |            |
|                 |               | 0x0010       | 2          | lo_lf_r4                    |            |
|                 |               | 0x0012       | 1          | lo_lf_r4_short              |            |
|                 |               | 0x0014       | 1          | lo_slipped_dn               |            |
|                 |               | 0x0018       | 1          | lo_slipped_up               |            |
| 0x00B8          | 32            |              |            | fbdv                        | read-write | fbdv.                                       |
|                 |               | 0x0000       | 1          | lo_fbdv_halfstep_en_hw      |            |
|                 |               | 0x0004       | 1          | lo_fbdv_halfstep_en         |            |
|                 |               | 0x0008       | 2          | lo_fbdv_sel_sample_clk      |            |
|                 |               | 0x000C       | 2          | lo_fbdv_sel_fb_clk          |            |
|                 |               | 0x0010       | 1          | lo_fbdv_rst                 |            |
|                 |               | 0x0014       | 1          | lo_fbdv_rst_hw              |            |
| 0x00BC          | 32            |              |            | lodist                      | read-write | lodist.                                     |
|                 |               | 0x0000       | 1          | lo_osmx_xgm_boost           |            |
|                 |               | 0x0004       | 1          | lo_osmx_en_xgm              |            |
|                 |               | 0x0008       | 1          | lo_osmx_fix_cap             |            |
|                 |               | 0x000C       | 1          | lo_osmx_vbuf_stre           |            |
|                 |               | 0x0010       | 2          | lo_osmx_capbank_bias        |            |
|                 |               | 0x0014       | 4          | lo_osmx_cap                 |            |
|                 |               | 0x0018       | 1          | lo_lodist_txbuf_stre        |            |
|                 |               | 0x001C       | 1          | lo_lodist_rxbuf_stre        |            |
| 0x00C0          | 32            |              |            | sdm1                        | read-write | sdm1.                                       |
|                 |               | 0x0000       | 2          | lo_sdm_dither_sel_hw        |            |
|                 |               | 0x0004       | 1          | lo_sdm_bypass_hw            |            |
|                 |               | 0x0008       | 2          | lo_sdm_dither_sel           |            |
|                 |               | 0x000C       | 1          | lo_sdm_bypass               |            |
|                 |               | 0x0010       | 1          | lo_sdm_rstb                 |            |
|                 |               | 0x0011       | 1          | lo_sdm_rstb_hw              |            |
|                 |               | 0x0014       | 1          | lo_sdm_flag                 |            |
| 0x00C4          | 32            |              |            | sdm2                        | read-write | sdm2.                                       |
|                 |               | 0x0000       | 30         | lo_sdmin                    |            |
| 0x00C8          | 32            |              |            | sdm3                        | read-write | sdm3.                                       |
|                 |               | 0x0000       | 30         | lo_sdmin_hw                 |            |
| 0x00EC          | 32            |              |            | rf_resv_reg_0               | read-write | rf_resv_reg_0.                              |
| 0x00F0          | 32            |              |            | rf_resv_reg_1               | read-write | rf_resv_reg_1.                              |
| 0x00F4          | 32            |              |            | rf_resv_reg_2               | read-write | rf_resv_reg_2.                              |
| 0x00F8          | 32            |              |            | rrf_gain_index1             | read-write | rrf_gain_index1.                            |
|                 |               | 0x0000       | 2          | gain_ctrl0_gc_rmxgm         |            |
|                 |               | 0x0002       | 3          | gain_ctrl0_gc_lna           |            |
|                 |               | 0x0005       | 2          | gain_ctrl1_gc_rmxgm         |            |
|                 |               | 0x0007       | 3          | gain_ctrl1_gc_lna           |            |
|                 |               | 0x000A       | 2          | gain_ctrl2_gc_rmxgm         |            |
|                 |               | 0x000C       | 3          | gain_ctrl2_gc_lna           |            |
|                 |               | 0x000F       | 2          | gain_ctrl3_gc_rmxgm         |            |
|                 |               | 0x0011       | 3          | gain_ctrl3_gc_lna           |            |
|                 |               | 0x0014       | 2          | gain_ctrl4_gc_rmxgm         |            |
|                 |               | 0x0016       | 3          | gain_ctrl4_gc_lna           |            |
|                 |               | 0x0019       | 2          | gain_ctrl5_gc_rmxgm         |            |
|                 |               | 0x001B       | 3          | gain_ctrl5_gc_lna           |            |
| 0x00FC          | 32            |              |            | rrf_gain_index2             | read-write | rrf_gain_index2.                            |
|                 |               | 0x0000       | 2          | gain_ctrl8_gc_rmxgm         |            |
|                 |               | 0x0002       | 3          | gain_ctrl8_gc_lna           |            |
|                 |               | 0x0005       | 2          | gain_ctrl7_gc_rmxgm         |            |
|                 |               | 0x0007       | 3          | gain_ctrl7_gc_lna           |            |
|                 |               | 0x000A       | 2          | gain_ctrl6_gc_rmxgm         |            |
|                 |               | 0x000C       | 3          | gain_ctrl6_gc_lna           |            |
| 0x0100          | 32            |              |            | lna_ctrl_hw_mux             | read-write | lna_ctrl_hw_mux.                            |
|                 |               | 0x0000       | 4          | lna_bm_hg                   |            |
|                 |               | 0x0004       | 4          | lna_bm_lg                   |            |
|                 |               | 0x0008       | 4          | lna_load_csw_hg             |            |
|                 |               | 0x000C       | 4          | lna_load_csw_lg             |            |
| 0x0104          | 32            |              |            | rbb_gain_index1             | read-write | rbb_gain_index1.                            |
|                 |               | 0x0000       | 2          | gain_ctrl0_gc_rbb1          |            |
|                 |               | 0x0004       | 3          | gain_ctrl0_gc_rbb2          |            |
|                 |               | 0x0008       | 2          | gain_ctrl1_gc_rbb1          |            |
|                 |               | 0x000C       | 3          | gain_ctrl1_gc_rbb2          |            |
|                 |               | 0x0010       | 2          | gain_ctrl2_gc_rbb1          |            |
|                 |               | 0x0014       | 3          | gain_ctrl2_gc_rbb2          |            |
|                 |               | 0x0018       | 2          | gain_ctrl3_gc_rbb1          |            |
|                 |               | 0x001C       | 3          | gain_ctrl3_gc_rbb2          |            |
| 0x0108          | 32            |              |            | rbb_gain_index2             | read-write | rbb_gain_index2.                            |
|                 |               | 0x0000       | 2          | gain_ctrl4_gc_rbb1          |            |
|                 |               | 0x0004       | 3          | gain_ctrl4_gc_rbb2          |            |
|                 |               | 0x0008       | 2          | gain_ctrl5_gc_rbb1          |            |
|                 |               | 0x000C       | 3          | gain_ctrl5_gc_rbb2          |            |
|                 |               | 0x0010       | 2          | gain_ctrl6_gc_rbb1          |            |
|                 |               | 0x0014       | 3          | gain_ctrl6_gc_rbb2          |            |
|                 |               | 0x0018       | 2          | gain_ctrl7_gc_rbb1          |            |
|                 |               | 0x001C       | 3          | gain_ctrl7_gc_rbb2          |            |
| 0x010C          | 32            |              |            | rbb_gain_index3             | read-write | rbb_gain_index3.                            |
|                 |               | 0x0000       | 2          | gain_ctrl8_gc_rbb1          |            |
|                 |               | 0x0004       | 3          | gain_ctrl8_gc_rbb2          |            |
|                 |               | 0x0008       | 2          | gain_ctrl9_gc_rbb1          |            |
|                 |               | 0x000C       | 3          | gain_ctrl9_gc_rbb2          |            |
|                 |               | 0x0010       | 2          | gain_ctrl10_gc_rbb1         |            |
|                 |               | 0x0014       | 3          | gain_ctrl10_gc_rbb2         |            |
|                 |               | 0x0018       | 2          | gain_ctrl11_gc_rbb1         |            |
|                 |               | 0x001C       | 3          | gain_ctrl11_gc_rbb2         |            |
| 0x0110          | 32            |              |            | rbb_gain_index4             | read-write | rbb_gain_index4.                            |
|                 |               | 0x0000       | 2          | gain_ctrl12_gc_rbb1         |            |
|                 |               | 0x0004       | 3          | gain_ctrl12_gc_rbb2         |            |
|                 |               | 0x0008       | 2          | gain_ctrl13_gc_rbb1         |            |
|                 |               | 0x000C       | 3          | gain_ctrl13_gc_rbb2         |            |
|                 |               | 0x0010       | 2          | gain_ctrl14_gc_rbb1         |            |
|                 |               | 0x0014       | 3          | gain_ctrl14_gc_rbb2         |            |
|                 |               | 0x0018       | 2          | gain_ctrl15_gc_rbb1         |            |
|                 |               | 0x001C       | 3          | gain_ctrl15_gc_rbb2         |            |
| 0x0114          | 32            |              |            | rbb_gain_index5             | read-write | rbb_gain_index5.                            |
|                 |               | 0x0000       | 2          | gain_ctrl16_gc_rbb1         |            |
|                 |               | 0x0004       | 3          | gain_ctrl16_gc_rbb2         |            |
| 0x0118          | 32            |              |            | tbb_gain_index1             | read-write | tbb_gain_index1.                            |
|                 |               | 0x0000       | 5          | gain_ctrl0_gc_tbb           |            |
|                 |               | 0x0008       | 3          | gain_ctrl0_gc_tmx           |            |
|                 |               | 0x000C       | 2          | gain_ctrl0_dac_bias_sel     |            |
|                 |               | 0x000E       | 2          | gain_ctrl0_gc_tbb_boost     |            |
|                 |               | 0x0010       | 5          | gain_ctrl1_gc_tbb           |            |
|                 |               | 0x0018       | 3          | gain_ctrl1_gc_tmx           |            |
|                 |               | 0x001C       | 2          | gain_ctrl1_dac_bias_sel     |            |
|                 |               | 0x001E       | 2          | gain_ctrl1_gc_tbb_boost     |            |
| 0x011C          | 32            |              |            | tbb_gain_index2             | read-write | tbb_gain_index2.                            |
|                 |               | 0x0000       | 5          | gain_ctrl2_gc_tbb           |            |
|                 |               | 0x0008       | 3          | gain_ctrl2_gc_tmx           |            |
|                 |               | 0x000C       | 2          | gain_ctrl2_dac_bias_sel     |            |
|                 |               | 0x000E       | 2          | gain_ctrl2_gc_tbb_boost     |            |
|                 |               | 0x0010       | 5          | gain_ctrl3_gc_tbb           |            |
|                 |               | 0x0018       | 3          | gain_ctrl3_gc_tmx           |            |
|                 |               | 0x001C       | 2          | gain_ctrl3_dac_bias_sel     |            |
|                 |               | 0x001E       | 2          | gain_ctrl3_gc_tbb_boost     |            |
| 0x0120          | 32            |              |            | tbb_gain_index3             | read-write | tbb_gain_index3.                            |
|                 |               | 0x0000       | 5          | gain_ctrl4_gc_tbb           |            |
|                 |               | 0x0008       | 3          | gain_ctrl4_gc_tmx           |            |
|                 |               | 0x000C       | 2          | gain_ctrl4_dac_bias_sel     |            |
|                 |               | 0x000E       | 2          | gain_ctrl4_gc_tbb_boost     |            |
|                 |               | 0x0010       | 5          | gain_ctrl5_gc_tbb           |            |
|                 |               | 0x0018       | 3          | gain_ctrl5_gc_tmx           |            |
|                 |               | 0x001C       | 2          | gain_ctrl5_dac_bias_sel     |            |
|                 |               | 0x001E       | 2          | gain_ctrl5_gc_tbb_boost     |            |
| 0x0124          | 32            |              |            | tbb_gain_index4             | read-write | tbb_gain_index4.                            |
|                 |               | 0x0000       | 5          | gain_ctrl6_gc_tbb           |            |
|                 |               | 0x0008       | 3          | gain_ctrl6_gc_tmx           |            |
|                 |               | 0x000C       | 2          | gain_ctrl6_dac_bias_sel     |            |
|                 |               | 0x000E       | 2          | gain_ctrl6_gc_tbb_boost     |            |
|                 |               | 0x0010       | 5          | gain_ctrl7_gc_tbb           |            |
|                 |               | 0x0018       | 3          | gain_ctrl7_gc_tmx           |            |
|                 |               | 0x001C       | 2          | gain_ctrl7_dac_bias_sel     |            |
|                 |               | 0x001E       | 2          | gain_ctrl7_gc_tbb_boost     |            |
| 0x0128          | 32            |              |            | pa_reg_ctrl_hw1             | read-write | pa_reg_ctrl_hw1.                            |
|                 |               | 0x000C       | 4          | pa_iet_11n                  |            |
|                 |               | 0x0010       | 4          | pa_vbcore_11n               |            |
|                 |               | 0x0014       | 3          | pa_vbcas_11n                |            |
| 0x012C          | 32            |              |            | pa_reg_ctrl_hw2             | read-write | pa_reg_ctrl_hw2.                            |
|                 |               | 0x0000       | 4          | pa_iet_11g                  |            |
|                 |               | 0x0004       | 4          | pa_vbcore_11g               |            |
|                 |               | 0x0008       | 3          | pa_vbcas_11g                |            |
|                 |               | 0x000C       | 4          | pa_iet_11b                  |            |
|                 |               | 0x0010       | 4          | pa_vbcore_11b               |            |
|                 |               | 0x0014       | 3          | pa_vbcas_11b                |            |
| 0x0130          | 32            |              |            | pa_reg_wifi_ctrl_hw         | read-write | pa_reg_wifi_ctrl_hw.                        |
|                 |               | 0x0000       | 1          | pa_half_on_wifi             |            |
|                 |               | 0x0008       | 1          | pa_etb_en_wifi              |            |
|                 |               | 0x0010       | 1          | pa_ib_fix_wifi              |            |
| 0x0134          | 32            |              |            | adda_reg_ctrl_hw            | read-write | adda_reg_ctrl_hw.                           |
|                 |               | 0x0000       | 3          | adda_ldo_dvdd_sel_rx        |            |
|                 |               | 0x0004       | 3          | adda_ldo_dvdd_sel_tx        |            |
| 0x0138          | 32            |              |            | lo_reg_ctrl_hw1             | read-write | lo_reg_ctrl_hw1.                            |
|                 |               | 0x0000       | 1          | lo_fbdv_halfstep_en_rx      |            |
|                 |               | 0x0001       | 1          | lo_fbdv_halfstep_en_tx      |            |
|                 |               | 0x0002       | 1          | lo_cp_sel_rx                |            |
|                 |               | 0x0003       | 1          | lo_cp_sel_tx                |            |
|                 |               | 0x0004       | 2          | lo_lf_cz_rx                 |            |
|                 |               | 0x0008       | 2          | lo_lf_cz_tx                 |            |
|                 |               | 0x000C       | 2          | lo_lf_rz_rx                 |            |
|                 |               | 0x0010       | 2          | lo_lf_rz_tx                 |            |
|                 |               | 0x0014       | 2          | lo_lf_r4_rx                 |            |
|                 |               | 0x0018       | 2          | lo_lf_r4_tx                 |            |
| 0x013C          | 32            |              |            | lo_cal_ctrl_hw1             | read-write | lo_cal_ctrl_hw1.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2404         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2404         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2408         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2408         |            |
| 0x0140          | 32            |              |            | lo_cal_ctrl_hw2             | read-write | lo_cal_ctrl_hw2.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2412         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2412         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2416         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2416         |            |
| 0x0144          | 32            |              |            | lo_cal_ctrl_hw3             | read-write | lo_cal_ctrl_hw3.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2420         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2420         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2424         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2424         |            |
| 0x0148          | 32            |              |            | lo_cal_ctrl_hw4             | read-write | lo_cal_ctrl_hw4.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2428         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2428         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2432         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2432         |            |
| 0x014C          | 32            |              |            | lo_cal_ctrl_hw5             | read-write | lo_cal_ctrl_hw5.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2436         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2436         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2440         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2440         |            |
| 0x0150          | 32            |              |            | lo_cal_ctrl_hw6             | read-write | lo_cal_ctrl_hw6.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2444         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2444         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2448         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2448         |            |
| 0x0154          | 32            |              |            | lo_cal_ctrl_hw7             | read-write | lo_cal_ctrl_hw7.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2452         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2452         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2456         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2456         |            |
| 0x0158          | 32            |              |            | lo_cal_ctrl_hw8             | read-write | lo_cal_ctrl_hw8.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2460         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2460         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2464         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2464         |            |
| 0x015C          | 32            |              |            | lo_cal_ctrl_hw9             | read-write | lo_cal_ctrl_hw9.                            |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2468         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2468         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2472         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2472         |            |
| 0x0160          | 32            |              |            | lo_cal_ctrl_hw10            | read-write | lo_cal_ctrl_hw10.                           |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2476         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2476         |            |
|                 |               | 0x0010       | 5          | lo_vco_idac_cw_2480         |            |
|                 |               | 0x0018       | 8          | lo_vco_freq_cw_2480         |            |
| 0x0164          | 32            |              |            | lo_cal_ctrl_hw11            | read-write | lo_cal_ctrl_hw11.                           |
|                 |               | 0x0000       | 5          | lo_vco_idac_cw_2484         |            |
|                 |               | 0x0008       | 8          | lo_vco_freq_cw_2484         |            |
| 0x0168          | 32            |              |            | rosdac_ctrl_hw1             | read-write | rosdac_ctrl_hw1.                            |
|                 |               | 0x0000       | 6          | rosdac_i_gc0                |            |
|                 |               | 0x0008       | 6          | rosdac_q_gc0                |            |
|                 |               | 0x0010       | 6          | rosdac_i_gc1                |            |
|                 |               | 0x0018       | 6          | rosdac_q_gc1                |            |
| 0x016C          | 32            |              |            | rosdac_ctrl_hw2             | read-write | rosdac_ctrl_hw2.                            |
|                 |               | 0x0000       | 6          | rosdac_i_gc2                |            |
|                 |               | 0x0008       | 6          | rosdac_q_gc2                |            |
|                 |               | 0x0010       | 6          | rosdac_i_gc3                |            |
|                 |               | 0x0018       | 6          | rosdac_q_gc3                |            |
| 0x0170          | 32            |              |            | rxiq_ctrl_hw1               | read-write | rxiq_ctrl_hw1.                              |
|                 |               | 0x0000       | 10         | rx_iq_phase_comp_gc0        |            |
|                 |               | 0x0010       | 11         | rx_iq_gain_comp_gc0         |            |
| 0x0174          | 32            |              |            | rxiq_ctrl_hw2               | read-write | rxiq_ctrl_hw2.                              |
|                 |               | 0x0000       | 10         | rx_iq_phase_comp_gc1        |            |
|                 |               | 0x0010       | 11         | rx_iq_gain_comp_gc1         |            |
| 0x0178          | 32            |              |            | rxiq_ctrl_hw3               | read-write | rxiq_ctrl_hw3.                              |
|                 |               | 0x0000       | 10         | rx_iq_phase_comp_gc2        |            |
|                 |               | 0x0010       | 11         | rx_iq_gain_comp_gc2         |            |
| 0x017C          | 32            |              |            | rxiq_ctrl_hw4               | read-write | rxiq_ctrl_hw4.                              |
|                 |               | 0x0000       | 10         | rx_iq_phase_comp_gc3        |            |
|                 |               | 0x0010       | 11         | rx_iq_gain_comp_gc3         |            |
| 0x0180          | 32            |              |            | tosdac_ctrl_hw1             | read-write | tosdac_ctrl_hw1.                            |
|                 |               | 0x0000       | 6          | tbb_tosdac_i_gc0            |            |
|                 |               | 0x0008       | 6          | tbb_tosdac_q_gc0            |            |
|                 |               | 0x0010       | 6          | tbb_tosdac_i_gc1            |            |
|                 |               | 0x0018       | 6          | tbb_tosdac_q_gc1            |            |
| 0x0184          | 32            |              |            | tosdac_ctrl_hw2             | read-write | tosdac_ctrl_hw2.                            |
|                 |               | 0x0000       | 6          | tbb_tosdac_i_gc2            |            |
|                 |               | 0x0008       | 6          | tbb_tosdac_q_gc2            |            |
|                 |               | 0x0010       | 6          | tbb_tosdac_i_gc3            |            |
|                 |               | 0x0018       | 6          | tbb_tosdac_q_gc3            |            |
| 0x0188          | 32            |              |            | tosdac_ctrl_hw3             | read-write | tosdac_ctrl_hw3.                            |
|                 |               | 0x0000       | 6          | tbb_tosdac_i_gc4            |            |
|                 |               | 0x0008       | 6          | tbb_tosdac_q_gc4            |            |
|                 |               | 0x0010       | 6          | tbb_tosdac_i_gc5            |            |
|                 |               | 0x0018       | 6          | tbb_tosdac_q_gc5            |            |
| 0x018C          | 32            |              |            | tosdac_ctrl_hw4             | read-write | tosdac_ctrl_hw4.                            |
|                 |               | 0x0000       | 6          | tbb_tosdac_i_gc6            |            |
|                 |               | 0x0008       | 6          | tbb_tosdac_q_gc6            |            |
|                 |               | 0x0010       | 6          | tbb_tosdac_i_gc7            |            |
|                 |               | 0x0018       | 6          | tbb_tosdac_q_gc7            |            |
| 0x0190          | 32            |              |            | tx_iq_gain_hw0              | read-write | tx_iq_gain_hw0.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc0        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc0         |            |
| 0x0194          | 32            |              |            | tx_iq_gain_hw1              | read-write | tx_iq_gain_hw1.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc1        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc1         |            |
| 0x0198          | 32            |              |            | tx_iq_gain_hw2              | read-write | tx_iq_gain_hw2.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc2        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc2         |            |
| 0x019C          | 32            |              |            | tx_iq_gain_hw3              | read-write | tx_iq_gain_hw3.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc3        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc3         |            |
| 0x01A0          | 32            |              |            | tx_iq_gain_hw4              | read-write | tx_iq_gain_hw4.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc4        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc4         |            |
| 0x01A4          | 32            |              |            | tx_iq_gain_hw5              | read-write | tx_iq_gain_hw5.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc5        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc5         |            |
| 0x01A8          | 32            |              |            | tx_iq_gain_hw6              | read-write | tx_iq_gain_hw6.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc6        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc6         |            |
| 0x01AC          | 32            |              |            | tx_iq_gain_hw7              | read-write | tx_iq_gain_hw7.                             |
|                 |               | 0x0000       | 10         | tx_iq_phase_comp_gc7        |            |
|                 |               | 0x0010       | 11         | tx_iq_gain_comp_gc7         |            |
| 0x01B0          | 32            |              |            | lo_sdm_ctrl_hw1             | read-write | lo_sdm_ctrl_hw1.                            |
|                 |               | 0x0000       | 2          | lo_sdm_dither_sel_wlan_2412 |            |
|                 |               | 0x0002       | 2          | lo_sdm_dither_sel_wlan_2417 |            |
|                 |               | 0x0004       | 2          | lo_sdm_dither_sel_wlan_2422 |            |
|                 |               | 0x0006       | 2          | lo_sdm_dither_sel_wlan_2427 |            |
|                 |               | 0x0008       | 2          | lo_sdm_dither_sel_wlan_2432 |            |
|                 |               | 0x000A       | 2          | lo_sdm_dither_sel_wlan_2437 |            |
|                 |               | 0x000C       | 2          | lo_sdm_dither_sel_wlan_2442 |            |
|                 |               | 0x000E       | 2          | lo_sdm_dither_sel_wlan_2447 |            |
|                 |               | 0x0010       | 2          | lo_sdm_dither_sel_wlan_2452 |            |
|                 |               | 0x0012       | 2          | lo_sdm_dither_sel_wlan_2457 |            |
|                 |               | 0x0014       | 2          | lo_sdm_dither_sel_wlan_2462 |            |
|                 |               | 0x0016       | 2          | lo_sdm_dither_sel_wlan_2467 |            |
|                 |               | 0x0018       | 2          | lo_sdm_dither_sel_wlan_2472 |            |
|                 |               | 0x001A       | 2          | lo_sdm_dither_sel_wlan_2484 |            |
| 0x01B4          | 32            |              |            | lo_sdm_ctrl_hw2             | read-write | lo_sdm_ctrl_hw2.                            |
|                 |               | 0x0000       | 2          | lo_sdm_dither_sel_ble_2402  |            |
|                 |               | 0x0002       | 2          | lo_sdm_dither_sel_ble_2404  |            |
|                 |               | 0x0004       | 2          | lo_sdm_dither_sel_ble_2406  |            |
|                 |               | 0x0006       | 2          | lo_sdm_dither_sel_ble_2408  |            |
|                 |               | 0x0008       | 2          | lo_sdm_dither_sel_ble_2410  |            |
|                 |               | 0x000A       | 2          | lo_sdm_dither_sel_ble_2412  |            |
|                 |               | 0x000C       | 2          | lo_sdm_dither_sel_ble_2414  |            |
|                 |               | 0x000E       | 2          | lo_sdm_dither_sel_ble_2416  |            |
|                 |               | 0x0010       | 2          | lo_sdm_dither_sel_ble_2418  |            |
|                 |               | 0x0012       | 2          | lo_sdm_dither_sel_ble_2420  |            |
|                 |               | 0x0014       | 2          | lo_sdm_dither_sel_ble_2422  |            |
|                 |               | 0x0016       | 2          | lo_sdm_dither_sel_ble_2424  |            |
|                 |               | 0x0018       | 2          | lo_sdm_dither_sel_ble_2426  |            |
|                 |               | 0x001A       | 2          | lo_sdm_dither_sel_ble_2428  |            |
|                 |               | 0x001C       | 2          | lo_sdm_dither_sel_ble_2430  |            |
|                 |               | 0x001E       | 2          | lo_sdm_dither_sel_ble_2432  |            |
| 0x01B8          | 32            |              |            | lo_sdm_ctrl_hw3             | read-write | lo_sdm_ctrl_hw3.                            |
|                 |               | 0x0000       | 2          | lo_sdm_dither_sel_ble_2434  |            |
|                 |               | 0x0002       | 2          | lo_sdm_dither_sel_ble_2436  |            |
|                 |               | 0x0004       | 2          | lo_sdm_dither_sel_ble_2438  |            |
|                 |               | 0x0006       | 2          | lo_sdm_dither_sel_ble_2440  |            |
|                 |               | 0x0008       | 2          | lo_sdm_dither_sel_ble_2442  |            |
|                 |               | 0x000A       | 2          | lo_sdm_dither_sel_ble_2444  |            |
|                 |               | 0x000C       | 2          | lo_sdm_dither_sel_ble_2446  |            |
|                 |               | 0x000E       | 2          | lo_sdm_dither_sel_ble_2448  |            |
|                 |               | 0x0010       | 2          | lo_sdm_dither_sel_ble_2450  |            |
|                 |               | 0x0012       | 2          | lo_sdm_dither_sel_ble_2452  |            |
|                 |               | 0x0014       | 2          | lo_sdm_dither_sel_ble_2454  |            |
|                 |               | 0x0016       | 2          | lo_sdm_dither_sel_ble_2456  |            |
|                 |               | 0x0018       | 2          | lo_sdm_dither_sel_ble_2458  |            |
|                 |               | 0x001A       | 2          | lo_sdm_dither_sel_ble_2460  |            |
|                 |               | 0x001C       | 2          | lo_sdm_dither_sel_ble_2462  |            |
|                 |               | 0x001E       | 2          | lo_sdm_dither_sel_ble_2464  |            |
| 0x01BC          | 32            |              |            | lo_sdm_ctrl_hw4             | read-write | lo_sdm_ctrl_hw4.                            |
|                 |               | 0x0000       | 2          | lo_sdm_dither_sel_ble_2466  |            |
|                 |               | 0x0002       | 2          | lo_sdm_dither_sel_ble_2468  |            |
|                 |               | 0x0004       | 2          | lo_sdm_dither_sel_ble_2470  |            |
|                 |               | 0x0006       | 2          | lo_sdm_dither_sel_ble_2472  |            |
|                 |               | 0x0008       | 2          | lo_sdm_dither_sel_ble_2474  |            |
|                 |               | 0x000A       | 2          | lo_sdm_dither_sel_ble_2476  |            |
|                 |               | 0x000C       | 2          | lo_sdm_dither_sel_ble_2478  |            |
|                 |               | 0x000E       | 2          | lo_sdm_dither_sel_ble_2480  |            |
|                 |               | 0x0010       | 2          | lo_sdm_dither_sel_ble_tx    |            |
| 0x01C0          | 32            |              |            | lo_sdm_ctrl_hw5             | read-write | lo_sdm_ctrl_hw5.                            |
|                 |               | 0x0000       | 12         | lo_center_freq_mhz          |            |
|                 |               | 0x000C       | 6          | lo_sdm_bypass_mode          |            |
| 0x01C4          | 32            |              |            | lo_sdm_ctrl_hw6             | read-write | lo_sdm_ctrl_hw6.                            |
|                 |               | 0x0000       | 29         | lo_sdmin_center             |            |
| 0x01C8          | 32            |              |            | lo_sdm_ctrl_hw7             | read-write | lo_sdm_ctrl_hw7.                            |
|                 |               | 0x0000       | 20         | lo_sdmin_1m                 |            |
| 0x01CC          | 32            |              |            | lo_sdm_ctrl_hw8             | read-write | lo_sdm_ctrl_hw8.                            |
|                 |               | 0x0000       | 20         | lo_sdmin_if                 |            |
| 0x01D0          | 32            |              |            | rbb_bw_ctrl_hw              | read-write | rbb_bw_ctrl_hw.                             |
|                 |               | 0x0000       | 1          | rbb_bt_mode_ble             |            |
| 0x020C          | 32            |              |            | singen_ctrl0                | read-write | singen_ctrl0.                               |
|                 |               | 0x0000       | 10         | singen_inc_step1            |            |
|                 |               | 0x0010       | 10         | singen_inc_step0            |            |
|                 |               | 0x001C       | 1          | singen_unsign_en            |            |
|                 |               | 0x001D       | 2          | singen_clkdiv_n             |            |
|                 |               | 0x001F       | 1          | singen_en                   |            |
| 0x0210          | 32            |              |            | singen_ctrl1                | read-write | singen_ctrl1.                               |
|                 |               | 0x0000       | 10         | singen_clkdiv_q             |            |
|                 |               | 0x000C       | 4          | singen_mode_q               |            |
|                 |               | 0x0010       | 10         | singen_clkdiv_i             |            |
|                 |               | 0x001C       | 4          | singen_mode_i               |            |
| 0x0214          | 32            |              |            | singen_ctrl2                | read-write | singen_ctrl2.                               |
|                 |               | 0x0000       | 11         | singen_gain_i               |            |
|                 |               | 0x000C       | 10         | singen_start_addr1_i        |            |
|                 |               | 0x0016       | 10         | singen_start_addr0_i        |            |
| 0x0218          | 32            |              |            | singen_ctrl3                | read-write | singen_ctrl3.                               |
|                 |               | 0x0000       | 11         | singen_gain_q               |            |
|                 |               | 0x000C       | 10         | singen_start_addr1_q        |            |
|                 |               | 0x0016       | 10         | singen_start_addr0_q        |            |
| 0x021C          | 32            |              |            | singen_ctrl4                | read-write | singen_ctrl4.                               |
|                 |               | 0x0000       | 12         | singen_fix_q                |            |
|                 |               | 0x000C       | 1          | singen_fix_en_q             |            |
|                 |               | 0x0010       | 12         | singen_fix_i                |            |
|                 |               | 0x001C       | 1          | singen_fix_en_i             |            |
| 0x0220          | 32            |              |            | rfif_dfe_ctrl0              | read-write | rfif_dfe_ctrl0.                             |
|                 |               | 0x0000       | 1          | rfckg_rxclk_4s_on           |            |
|                 |               | 0x0001       | 1          | rfckg_txclk_4s_on           |            |
|                 |               | 0x0002       | 1          | rfckg_adc_afifo_inv         |            |
|                 |               | 0x0003       | 1          | rfckg_adc_clkout_sel        |            |
|                 |               | 0x0004       | 1          | rfckg_dac_afifo_inv         |            |
|                 |               | 0x0005       | 1          | rx_dfe_en_4s                |            |
|                 |               | 0x0006       | 1          | rx_dfe_en_4s_en             |            |
|                 |               | 0x0007       | 1          | tx_dfe_en_4s                |            |
|                 |               | 0x0008       | 1          | tx_dfe_en_4s_en             |            |
|                 |               | 0x0009       | 2          | rx_test_sel                 |            |
|                 |               | 0x000B       | 2          | tx_test_sel                 |            |
|                 |               | 0x000D       | 1          | pad_adc_clkout_inv_en       |            |
|                 |               | 0x000E       | 1          | pad_dac_clkout_inv_en       |            |
|                 |               | 0x000F       | 7          | rf_ch_ind_ble_4s            |            |
|                 |               | 0x0016       | 1          | rf_ch_ind_ble_4s_en         |            |
|                 |               | 0x0017       | 2          | wifimode_4s                 |            |
|                 |               | 0x0019       | 1          | wifimode_4s_en              |            |
|                 |               | 0x001A       | 1          | bbmode_4s                   |            |
|                 |               | 0x001B       | 1          | bbmode_4s_en                |            |
|                 |               | 0x001C       | 4          | test_sel                    |            |
| 0x0224          | 32            |              |            | rfif_test_read              | read-write | rfif_test_read.                             |
|                 |               | 0x0000       | 32         | test_read                   |            |
| 0x0228          | 32            |              |            | rfif_dig_ctrl               | read-write | rfif_dig_ctrl.                              |
|                 |               | 0x0000       | 1          | test_from_pad_en            |            |
|                 |               | 0x0001       | 1          | test_gc_from_pad_en         |            |
|                 |               | 0x0002       | 1          | rfckg_rxclk_div2_mode       |            |
|                 |               | 0x0003       | 1          | rfif_int_lo_unlocked_mask   |            |
|                 |               | 0x0010       | 9          | rfif_ppud_cnt2              |            |
|                 |               | 0x0019       | 5          | rfif_ppud_cnt1              |            |
|                 |               | 0x001E       | 1          | rfif_ppud_manaual_en        |            |
| 0x022C          | 32            |              |            | rf_data_temp_0              | read-write | rf_data_temp_0.                             |
|                 |               | 0x0000       | 32         | rf_data_temp_0              |            |
| 0x0230          | 32            |              |            | rf_data_temp_1              | read-write | rf_data_temp_1.                             |
|                 |               | 0x0000       | 32         | rf_data_temp_1              |            |
| 0x0234          | 32            |              |            | rf_data_temp_2              | read-write | rf_data_temp_2.                             |
|                 |               | 0x0000       | 32         | rf_data_temp_2              |            |
| 0x0238          | 32            |              |            | rf_data_temp_3              | read-write | rf_data_temp_3.                             |
|                 |               | 0x0000       | 32         | rf_data_temp_3              |            |
| 0x023C          | 32            |              |            | rf_sram_ctrl0               | read-write | rf_sram_ctrl0.                              |
|                 |               | 0x0000       | 16         | rf_sram_link_dly            |            |
|                 |               | 0x0010       | 2          | rf_sram_link_mode           |            |
|                 |               | 0x0012       | 1          | rf_sram_swap                |            |
|                 |               | 0x0013       | 1          | rf_sram_ext_clr             |            |
| 0x0240          | 32            |              |            | rf_sram_ctrl1               | read-write | rf_sram_ctrl1.                              |
|                 |               | 0x0000       | 1          | rf_sram_adc_done            |            |
|                 |               | 0x0001       | 1          | rf_sram_adc_en              |            |
|                 |               | 0x0002       | 1          | rf_sram_adc_loop_en         |            |
|                 |               | 0x0003       | 1          | rf_sram_adc_sts_clr         |            |
|                 |               | 0x0010       | 16         | rf_sram_adc_done_cnt        |            |
| 0x0244          | 32            |              |            | rf_sram_ctrl2               | read-write | rf_sram_ctrl2.                              |
|                 |               | 0x0000       | 16         | rf_sram_adc_addr_end        |            |
|                 |               | 0x0010       | 16         | rf_sram_adc_addr_start      |            |
| 0x0248          | 32            |              |            | rf_sram_ctrl3               | read-write | rf_sram_ctrl3.                              |
|                 |               | 0x0000       | 32         | rf_sram_adc_sts             |            |
| 0x024C          | 32            |              |            | rf_sram_ctrl4               | read-write | rf_sram_ctrl4.                              |
|                 |               | 0x0000       | 1          | rf_sram_dac_done            |            |
|                 |               | 0x0001       | 1          | rf_sram_dac_en              |            |
|                 |               | 0x0002       | 1          | rf_sram_dac_loop_en         |            |
|                 |               | 0x0003       | 1          | rf_sram_dac_sts_clr         |            |
|                 |               | 0x0010       | 16         | rf_sram_dac_done_cnt        |            |
| 0x0250          | 32            |              |            | rf_sram_ctrl5               | read-write | rf_sram_ctrl5.                              |
|                 |               | 0x0000       | 16         | rf_sram_dac_addr_end        |            |
|                 |               | 0x0010       | 16         | rf_sram_dac_addr_start      |            |
| 0x0254          | 32            |              |            | rf_sram_ctrl6               | read-write | rf_sram_ctrl6.                              |
|                 |               | 0x0000       | 32         | rf_sram_dac_sts             |            |
| 0x0258          | 32            |              |            | rf_ical_ctrl0               | read-write | rf_ical_ctrl0.                              |
|                 |               | 0x0000       | 10         | rf_ical_r_cnt_n             |            |
|                 |               | 0x000A       | 10         | rf_ical_a_cnt_n             |            |
|                 |               | 0x0014       | 10         | rf_ical_f_cnt_n             |            |
|                 |               | 0x001E       | 1          | rf_ical_a_ud_inv_en         |            |
|                 |               | 0x001F       | 1          | rf_ical_f_ud_inv_en         |            |
| 0x025C          | 32            |              |            | rf_ical_ctrl1               | read-write | rf_ical_ctrl1.                              |
|                 |               | 0x0000       | 5          | rf_ical_r_avg_n             |            |
|                 |               | 0x000A       | 10         | rf_ical_r_os_q              |            |
|                 |               | 0x0014       | 10         | rf_ical_r_os_i              |            |
| 0x0260          | 32            |              |            | rf_ical_ctrl2               | read-write | rf_ical_ctrl2.                              |
|                 |               | 0x0000       | 16         | rf_ical_period_n            |            |
| 0x0264          | 32            |              |            | rf_fsm_ctrl0                | read-write | rf_fsm_ctrl0.                               |
|                 |               | 0x0000       | 12         | rf_ch_ind_wifi              |            |
| 0x0268          | 32            |              |            | rf_fsm_ctrl1                | read-write | rf_fsm_ctrl1.                               |
|                 |               | 0x0000       | 16         | rf_fsm_lo_time              |            |
|                 |               | 0x0010       | 1          | rf_fsm_lo_rdy               |            |
|                 |               | 0x0011       | 1          | rf_fsm_lo_rdy_rst           |            |
|                 |               | 0x0012       | 1          | rf_fsm_lo_rdy_4s_1          |            |
|                 |               | 0x0013       | 1          | rf_fsm_lo_rdy_sbclr         |            |
|                 |               | 0x0014       | 10         | rf_fsm_pu_pa_dly_n          |            |
| 0x026C          | 32            |              |            | rf_fsm_ctrl2                | read-write | rf_fsm_ctrl2.                               |
|                 |               | 0x0000       | 3          | rf_fsm_st_dbg               |            |
|                 |               | 0x0003       | 1          | rf_fsm_st_dbg_en            |            |
|                 |               | 0x0004       | 1          | rf_trx_en_ble_4s            |            |
|                 |               | 0x0005       | 1          | rf_trx_sw_ble_4s            |            |
|                 |               | 0x0006       | 1          | rf_trx_ble_4s_en            |            |
|                 |               | 0x000A       | 10         | rf_fsm_dfe_tx_dly_n         |            |
|                 |               | 0x0014       | 10         | rf_fsm_dfe_rx_dly_n         |            |
| 0x0270          | 32            |              |            | rf_pkdet_ctrl0              | read-write | rf_pkdet_ctrl0.                             |
|                 |               | 0x0000       | 4          | pkdet_out_cnt_sts           |            |
|                 |               | 0x0004       | 1          | pkdet_out_cnt_en            |            |
|                 |               | 0x0005       | 1          | pkdet_out_mode              |            |
| 0x0600          | 32            |              |            | dfe_ctrl_0                  | read-write | dfe_ctrl_0.                                 |
|                 |               | 0x0000       | 10         | tx_iqc_phase                |            |
|                 |               | 0x000A       | 1          | tx_iqc_phase_en             |            |
|                 |               | 0x000C       | 11         | tx_iqc_gain                 |            |
|                 |               | 0x0017       | 1          | tx_iqc_gain_en              |            |
|                 |               | 0x0018       | 7          | tx_dvga_gain_qdb            |            |
|                 |               | 0x001F       | 1          | tx_dvga_gain_ctrl_hw        |            |
| 0x0604          | 32            |              |            | dfe_ctrl_1                  | read-write | dfe_ctrl_1.                                 |
|                 |               | 0x0000       | 12         | tx_dac_os_i                 |            |
|                 |               | 0x0010       | 12         | tx_dac_os_q                 |            |
|                 |               | 0x001E       | 1          | tx_dac_dat_format           |            |
|                 |               | 0x001F       | 1          | tx_dac_iq_swap              |            |
| 0x0608          | 32            |              |            | dfe_ctrl_2                  | read-write | dfe_ctrl_2.                                 |
|                 |               | 0x0000       | 10         | rx_adc_os_i                 |            |
|                 |               | 0x0010       | 10         | rx_adc_os_q                 |            |
|                 |               | 0x001C       | 1          | rx_adc_dce_flt_en           |            |
|                 |               | 0x001D       | 1          | rx_adc_low_pow_en           |            |
|                 |               | 0x001E       | 1          | rx_adc_dat_format           |            |
|                 |               | 0x001F       | 1          | rx_adc_iq_swap              |            |
| 0x060C          | 32            |              |            | dfe_ctrl_3                  | read-write | dfe_ctrl_3.                                 |
|                 |               | 0x0000       | 10         | rx_adc_4s_i_val             |            |
|                 |               | 0x000A       | 1          | rx_adc_4s_i_en              |            |
|                 |               | 0x0010       | 10         | rx_adc_4s_q_val             |            |
|                 |               | 0x001A       | 1          | rx_adc_4s_q_en              |            |
| 0x0610          | 32            |              |            | dfe_ctrl_4                  | read-write | dfe_ctrl_4.                                 |
|                 |               | 0x0000       | 10         | rx_pf_th2                   |            |
|                 |               | 0x0010       | 10         | rx_pf_th1                   |            |
|                 |               | 0x001E       | 1          | rx_pf_q_en                  |            |
|                 |               | 0x001F       | 1          | rx_pf_i_en                  |            |
| 0x0614          | 32            |              |            | dfe_ctrl_5                  | read-write | dfe_ctrl_5.                                 |
|                 |               | 0x0000       | 10         | rx_iqc_phase                |            |
|                 |               | 0x000A       | 1          | rx_iqc_phase_en             |            |
|                 |               | 0x000C       | 11         | rx_iqc_gain                 |            |
|                 |               | 0x0017       | 1          | rx_iqc_gain_en              |            |
| 0x0618          | 32            |              |            | dfe_ctrl_6                  | read-write | dfe_ctrl_6.                                 |
|                 |               | 0x0000       | 20         | rx_pm_freqshift_cw          |            |
|                 |               | 0x0014       | 1          | rx_pm_freqshift_en          |            |
|                 |               | 0x001C       | 1          | rx_pm_done                  |            |
|                 |               | 0x001D       | 1          | rx_pm_en                    |            |
|                 |               | 0x001E       | 2          | rx_pm_in_sel                |            |
| 0x061C          | 32            |              |            | dfe_ctrl_7                  | read-write | dfe_ctrl_7.                                 |
|                 |               | 0x0000       | 16         | rx_pm_start_ofs             |            |
|                 |               | 0x0010       | 16         | rx_pm_acc_len               |            |
| 0x0620          | 32            |              |            | dfe_ctrl_8                  | read-write | dfe_ctrl_8.                                 |
|                 |               | 0x0000       | 25         | rx_pm_iqacc_i               |            |
| 0x0624          | 32            |              |            | dfe_ctrl_9                  | read-write | dfe_ctrl_9.                                 |
|                 |               | 0x0000       | 25         | rx_pm_iqacc_q               |            |
| 0x0628          | 32            |              |            | dfe_ctrl_10                 | read-write | dfe_ctrl_10.                                |
|                 |               | 0x0000       | 11         | dfe_dac_raw_i               |            |
|                 |               | 0x0010       | 11         | dfe_dac_raw_q               |            |
| 0x062C          | 32            |              |            | dfe_ctrl_11                 | read-write | dfe_ctrl_11.                                |
|                 |               | 0x0000       | 10         | dfe_adc_raw_i               |            |
|                 |               | 0x0010       | 10         | dfe_adc_raw_q               |            |
| 0x0630          | 32            |              |            | dfe_ctrl_12                 | read-write | dfe_ctrl_12.                                |
|                 |               | 0x0000       | 7          | tx_dvga_gain_qdb_gc0        |            |
|                 |               | 0x0008       | 7          | tx_dvga_gain_qdb_gc1        |            |
|                 |               | 0x0010       | 7          | tx_dvga_gain_qdb_gc2        |            |
|                 |               | 0x0018       | 7          | tx_dvga_gain_qdb_gc3        |            |
| 0x0634          | 32            |              |            | dfe_ctrl_13                 | read-write | dfe_ctrl_13.                                |
|                 |               | 0x0000       | 7          | tx_dvga_gain_qdb_gc4        |            |
|                 |               | 0x0008       | 7          | tx_dvga_gain_qdb_gc5        |            |
|                 |               | 0x0010       | 7          | tx_dvga_gain_qdb_gc6        |            |
|                 |               | 0x0018       | 7          | tx_dvga_gain_qdb_gc7        |            |
| 0x0638          | 32            |              |            | dfe_ctrl_14                 | read-write | dfe_ctrl_14.                                |
|                 |               | 0x0000       | 7          | tx_dvga_gain_qdb_gc8        |            |
|                 |               | 0x0008       | 7          | tx_dvga_gain_qdb_gc9        |            |
|                 |               | 0x0010       | 7          | tx_dvga_gain_qdb_gc10       |            |
|                 |               | 0x0018       | 7          | tx_dvga_gain_qdb_gc11       |            |
| 0x063C          | 32            |              |            | dfe_ctrl_15                 | read-write | dfe_ctrl_15.                                |
|                 |               | 0x0000       | 7          | tx_dvga_gain_qdb_gc12       |            |
|                 |               | 0x0008       | 7          | tx_dvga_gain_qdb_gc13       |            |
|                 |               | 0x0010       | 7          | tx_dvga_gain_qdb_gc14       |            |
|                 |               | 0x0018       | 7          | tx_dvga_gain_qdb_gc15       |            |
| 0x0640          | 32            |              |            | dfe_ctrl_16                 | read-write | dfe_ctrl_16.                                |
|                 |               | 0x0000       | 3          | rf_tbb_ind_gc0              |            |
|                 |               | 0x0004       | 3          | rf_tbb_ind_gc1              |            |
|                 |               | 0x0008       | 3          | rf_tbb_ind_gc2              |            |
|                 |               | 0x000C       | 3          | rf_tbb_ind_gc3              |            |
|                 |               | 0x0010       | 3          | rf_tbb_ind_gc4              |            |
|                 |               | 0x0014       | 3          | rf_tbb_ind_gc5              |            |
|                 |               | 0x0018       | 3          | rf_tbb_ind_gc6              |            |
|                 |               | 0x001C       | 3          | rf_tbb_ind_gc7              |            |
| 0x0644          | 32            |              |            | dfe_ctrl_17                 | read-write | dfe_ctrl_17.                                |
|                 |               | 0x0000       | 3          | rf_tbb_ind_gc8              |            |
|                 |               | 0x0004       | 3          | rf_tbb_ind_gc9              |            |
|                 |               | 0x0008       | 3          | rf_tbb_ind_gc10             |            |
|                 |               | 0x000C       | 3          | rf_tbb_ind_gc11             |            |
|                 |               | 0x0010       | 3          | rf_tbb_ind_gc12             |            |
|                 |               | 0x0014       | 3          | rf_tbb_ind_gc13             |            |
|                 |               | 0x0018       | 3          | rf_tbb_ind_gc14             |            |
|                 |               | 0x001C       | 3          | rf_tbb_ind_gc15             |            |
| 0x0648          | 32            |              |            | dfe_ctrl_18                 | read-write | dfe_ctrl_18.                                |
|                 |               | 0x0000       | 7          | tx_dvga_gain_qdb_ble_gc0    |            |
|                 |               | 0x0008       | 7          | tx_dvga_gain_qdb_ble_gc1    |            |
|                 |               | 0x0010       | 7          | tx_dvga_gain_qdb_ble_gc2    |            |
