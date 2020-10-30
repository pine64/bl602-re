# Peripheral: AON

- Register base address: 0x4000F800

## Registers

| Register offset | Register size | Field offset | Field size | Name                      | Direction  | Description                |
| --------------- | ------------- | ------------ | ---------- | ------------------------- | ---------- | -------------------------- |
| 0x0800          | 32            |              |            | aon                       | read-write | aon.                       |
|                 |               | 0x0000       | 8          | aon_resv                  |            |                            |
|                 |               | 0x000C       | 1          | pu_aon_dc_tbuf            |            |                            |
|                 |               | 0x0014       | 1          | ldo11_rt_pulldown         |            |                            |
|                 |               | 0x0015       | 1          | ldo11_rt_pulldown_sel     |            |                            |
|                 |               | 0x0016       | 1          | sw_pu_ldo11_rt            |            |                            |
| 0x0804          | 32            |              |            | aon_common                | read-write | aon_common.                |
|                 |               | 0x0000       | 3          | tmux_aon                  |            |                            |
|                 |               | 0x0004       | 1          | ten_aon                   |            |                            |
|                 |               | 0x0005       | 1          | dten_xtal32k              |            |                            |
|                 |               | 0x0006       | 1          | ten_xtal32k               |            |                            |
|                 |               | 0x0008       | 1          | ten_vddcore_aon           |            |                            |
|                 |               | 0x0009       | 1          | ten_ldo11soc_aon          |            |                            |
|                 |               | 0x000A       | 1          | ten_dcdc18_0_aon          |            |                            |
|                 |               | 0x000B       | 1          | ten_dcdc18_1_aon          |            |                            |
|                 |               | 0x000C       | 1          | ten_bg_sys_aon            |            |                            |
|                 |               | 0x0010       | 1          | ten_ldo15rf_aon           |            |                            |
|                 |               | 0x0011       | 1          | ten_xtal_aon              |            |                            |
|                 |               | 0x0012       | 1          | dten_xtal_aon             |            |                            |
|                 |               | 0x0013       | 1          | ten_mbg_aon               |            |                            |
|                 |               | 0x0014       | 1          | ten_cip_misc_aon          |            |                            |
| 0x0808          | 32            |              |            | aon_misc                  | read-write | aon_misc.                  |
|                 |               | 0x0000       | 1          | sw_soc_en_aon             |            |                            |
|                 |               | 0x0001       | 1          | sw_wb_en_aon              |            |                            |
| 0x0810          | 32            |              |            | bg_sys_top                | read-write | bg_sys_top.                |
|                 |               | 0x0000       | 8          | pmip_resv                 |            |                            |
|                 |               | 0x0008       | 1          | pu_bg_sys_aon             |            |                            |
|                 |               | 0x000C       | 1          | bg_sys_start_ctrl_aon     |            |                            |
| 0x0814          | 32            |              |            | dcdc18_top_0              | read-write | dcdc18_top_0.              |
|                 |               | 0x0001       | 5          | dcdc18_vout_sel_aon       |            |                            |
|                 |               | 0x0008       | 4          | dcdc18_vpfm_aon           |            |                            |
|                 |               | 0x000C       | 1          | dcdc18_osc_2m_mode_aon    |            |                            |
|                 |               | 0x0010       | 4          | dcdc18_osc_freq_trim_aon  |            |                            |
|                 |               | 0x0014       | 5          | dcdc18_slope_curr_sel_aon |            |                            |
|                 |               | 0x0019       | 1          | dcdc18_stop_osc_aon       |            |                            |
|                 |               | 0x001A       | 1          | dcdc18_slow_osc_aon       |            |                            |
|                 |               | 0x001B       | 1          | dcdc18_osc_inhibit_t2_aon |            |                            |
|                 |               | 0x001C       | 2          | dcdc18_sstart_time_aon    |            |                            |
|                 |               | 0x001F       | 1          | dcdc18_rdy_aon            |            |                            |
| 0x0818          | 32            |              |            | dcdc18_top_1              | read-write | dcdc18_top_1.              |
|                 |               | 0x0000       | 1          | dcdc18_force_cs_zvs_aon   |            |                            |
|                 |               | 0x0001       | 3          | dcdc18_cs_delay_aon       |            |                            |
|                 |               | 0x0004       | 3          | dcdc18_zvs_td_opt_aon     |            |                            |
|                 |               | 0x0008       | 5          | dcdc18_nonoverlap_td_aon  |            |                            |
|                 |               | 0x0010       | 4          | dcdc18_rc_sel_aon         |            |                            |
|                 |               | 0x0014       | 4          | dcdc18_chf_sel_aon        |            |                            |
|                 |               | 0x0018       | 4          | dcdc18_cfb_sel_aon        |            |                            |
|                 |               | 0x001C       | 1          | dcdc18_en_antiring_aon    |            |                            |
|                 |               | 0x001D       | 1          | dcdc18_pulldown_aon       |            |                            |
| 0x081C          | 32            |              |            | ldo11soc_and_dctest       | read-write | ldo11soc_and_dctest.       |
|                 |               | 0x0000       | 1          | pu_ldo11soc_aon           |            |                            |
|                 |               | 0x0004       | 1          | ldo11soc_sstart_sel_aon   |            |                            |
|                 |               | 0x0008       | 2          | ldo11soc_sstart_delay_aon |            |                            |
|                 |               | 0x000A       | 1          | ldo11soc_pulldown_aon     |            |                            |
|                 |               | 0x000B       | 1          | ldo11soc_pulldown_sel_aon |            |                            |
|                 |               | 0x000C       | 2          | ldo11soc_vth_sel_aon      |            |                            |
|                 |               | 0x0018       | 2          | ldo11soc_cc_aon           |            |                            |
|                 |               | 0x001C       | 1          | ldo11soc_rdy_aon          |            |                            |
|                 |               | 0x001D       | 1          | ldo11soc_power_good_aon   |            |                            |
|                 |               | 0x001E       | 1          | pu_vddcore_misc_aon       |            |                            |
|                 |               | 0x001F       | 1          | pmip_dc_tp_out_en_aon     |            |                            |
| 0x0820          | 32            |              |            | psw_irrcv                 | read-write | psw_irrcv.                 |
|                 |               | 0x0000       | 1          | pu_ir_psw_aon             |            |                            |
| 0x0880          | 32            |              |            | rf_top_aon                | read-write | rf_top_aon.                |
|                 |               | 0x0000       | 1          | pu_mbg_aon                |            |                            |
|                 |               | 0x0001       | 1          | pu_ldo15rf_aon            |            |                            |
|                 |               | 0x0002       | 1          | pu_sfreg_aon              |            |                            |
|                 |               | 0x0004       | 1          | pu_xtal_buf_aon           |            |                            |
|                 |               | 0x0005       | 1          | pu_xtal_aon               |            |                            |
|                 |               | 0x0008       | 1          | ldo15rf_sstart_sel_aon    |            |                            |
|                 |               | 0x0009       | 2          | ldo15rf_sstart_delay_aon  |            |                            |
|                 |               | 0x000C       | 1          | ldo15rf_pulldown_aon      |            |                            |
|                 |               | 0x000D       | 1          | ldo15rf_pulldown_sel_aon  |            |                            |
|                 |               | 0x0010       | 3          | ldo15rf_vout_sel_aon      |            |                            |
|                 |               | 0x0018       | 2          | ldo15rf_cc_aon            |            |                            |
|                 |               | 0x001C       | 1          | ldo15rf_bypass_aon        |            |                            |
| 0x0884          | 32            |              |            | xtal_cfg                  | read-write | xtal_cfg.                  |
|                 |               | 0x0000       | 2          | xtal_bk_aon               |            |                            |
|                 |               | 0x0002       | 1          | xtal_capcode_extra_aon    |            |                            |
|                 |               | 0x0003       | 1          | xtal_ext_sel_aon          |            |                            |
|                 |               | 0x0004       | 4          | xtal_buf_en_aon           |            |                            |
|                 |               | 0x0008       | 4          | xtal_buf_hp_aon           |            |                            |
|                 |               | 0x000C       | 1          | xtal_fast_startup_aon     |            |                            |
|                 |               | 0x000D       | 1          | xtal_sleep_aon            |            |                            |
|                 |               | 0x000E       | 2          | xtal_amp_ctrl_aon         |            |                            |
|                 |               | 0x0010       | 6          | xtal_capcode_out_aon      |            |                            |
|                 |               | 0x0016       | 6          | xtal_capcode_in_aon       |            |                            |
|                 |               | 0x001C       | 2          | xtal_gm_boost_aon         |            |                            |
|                 |               | 0x001E       | 2          | xtal_rdy_sel_aon          |            |                            |
| 0x0888          | 32            |              |            | tsen                      | read-write | tsen.                      |
|                 |               | 0x0000       | 12         | tsen_refcode_corner       |            |                            |
|                 |               | 0x0010       | 12         | tsen_refcode_rfcal        |            |                            |
|                 |               | 0x001C       | 1          | xtal_rdy                  |            |                            |
|                 |               | 0x001D       | 1          | xtal_inn_cfg_en_aon       |            |                            |
|                 |               | 0x001E       | 2          | xtal_rdy_int_sel_aon      |            |                            |
| 0x0900          | 32            |              |            | acomp0_ctrl               | read-write | acomp0_ctrl.               |
|                 |               | 0x0000       | 1          | acomp0_en                 |            |                            |
|                 |               | 0x0004       | 3          | acomp0_hyst_seln          |            |                            |
|                 |               | 0x0007       | 3          | acomp0_hyst_selp          |            |                            |
|                 |               | 0x000A       | 2          | acomp0_bias_prog          |            |                            |
|                 |               | 0x000C       | 6          | acomp0_level_sel          |            |                            |
|                 |               | 0x0012       | 4          | acomp0_neg_sel            |            |                            |
|                 |               | 0x0016       | 4          | acomp0_pos_sel            |            |                            |
|                 |               | 0x001A       | 1          | acomp0_muxen              |            |                            |
| 0x0904          | 32            |              |            | acomp1_ctrl               | read-write | acomp1_ctrl.               |
|                 |               | 0x0000       | 1          | acomp1_en                 |            |                            |
|                 |               | 0x0004       | 3          | acomp1_hyst_seln          |            |                            |
|                 |               | 0x0007       | 3          | acomp1_hyst_selp          |            |                            |
|                 |               | 0x000A       | 2          | acomp1_bias_prog          |            |                            |
|                 |               | 0x000C       | 6          | acomp1_level_sel          |            |                            |
|                 |               | 0x0012       | 4          | acomp1_neg_sel            |            |                            |
|                 |               | 0x0016       | 4          | acomp1_pos_sel            |            |                            |
|                 |               | 0x001A       | 1          | acomp1_muxen              |            |                            |
| 0x0908          | 32            |              |            | acomp_ctrl                | read-write | acomp_ctrl.                |
|                 |               | 0x0000       | 1          | acomp1_rstn_ana           |            |                            |
|                 |               | 0x0001       | 1          | acomp0_rstn_ana           |            |                            |
|                 |               | 0x0008       | 1          | acomp1_test_en            |            |                            |
|                 |               | 0x0009       | 1          | acomp0_test_en            |            |                            |
|                 |               | 0x000A       | 2          | acomp1_test_sel           |            |                            |
|                 |               | 0x000C       | 2          | acomp0_test_sel           |            |                            |
|                 |               | 0x0011       | 1          | acomp1_out_raw            |            |                            |
|                 |               | 0x0013       | 1          | acomp0_out_raw            |            |                            |
| 0x090C          | 32            |              |            | gpadc_reg_cmd             | read-write | gpadc_reg_cmd.             |
|                 |               | 0x0000       | 1          | gpadc_global_en           |            |                            |
|                 |               | 0x0001       | 1          | gpadc_conv_start          |            |                            |
|                 |               | 0x0002       | 1          | gpadc_soft_rst            |            |                            |
|                 |               | 0x0003       | 5          | gpadc_neg_sel             |            |                            |
|                 |               | 0x0008       | 5          | gpadc_pos_sel             |            |                            |
|                 |               | 0x000D       | 1          | gpadc_neg_gnd             |            |                            |
|                 |               | 0x000E       | 1          | gpadc_micbias_en          |            |                            |
|                 |               | 0x000F       | 1          | gpadc_micpga_en           |            |                            |
|                 |               | 0x0010       | 1          | gpadc_byp_micboost        |            |                            |
|                 |               | 0x0012       | 1          | gpadc_dwa_en              |            |                            |
|                 |               | 0x0013       | 1          | gpadc_mic2_diff           |            |                            |
|                 |               | 0x0014       | 1          | gpadc_mic1_diff           |            |                            |
|                 |               | 0x0015       | 2          | gpadc_mic_pga2_gain       |            |                            |
|                 |               | 0x0017       | 1          | gpadc_micboost_32db_en    |            |                            |
|                 |               | 0x001B       | 1          | gpadc_chip_sen_pu         |            |                            |
|                 |               | 0x001C       | 2          | gpadc_sen_sel             |            |                            |
|                 |               | 0x001E       | 1          | gpadc_sen_test_en         |            |                            |
| 0x0910          | 32            |              |            | gpadc_reg_config1         | read-write | gpadc_reg_config1.         |
|                 |               | 0x0000       | 1          | gpadc_cal_os_en           |            |                            |
|                 |               | 0x0001       | 1          | gpadc_cont_conv_en        |            |                            |
|                 |               | 0x0002       | 3          | gpadc_res_sel             |            |                            |
|                 |               | 0x0011       | 1          | gpadc_clk_ana_inv         |            |                            |
|                 |               | 0x0012       | 3          | gpadc_clk_div_ratio       |            |                            |
|                 |               | 0x0015       | 4          | gpadc_scan_length         |            |                            |
|                 |               | 0x0019       | 1          | gpadc_scan_en             |            |                            |
|                 |               | 0x001A       | 1          | gpadc_dither_en           |            |                            |
|                 |               | 0x001B       | 2          | gpadc_v11_sel             |            |                            |
|                 |               | 0x001D       | 2          | gpadc_v18_sel             |            |                            |
| 0x0914          | 32            |              |            | gpadc_reg_config2         | read-write | gpadc_reg_config2.         |
|                 |               | 0x0002       | 1          | gpadc_diff_mode           |            |                            |
|                 |               | 0x0003       | 1          | gpadc_vref_sel            |            |                            |
|                 |               | 0x0004       | 1          | gpadc_vbat_en             |            |                            |
|                 |               | 0x0005       | 1          | gpadc_tsext_sel           |            |                            |
|                 |               | 0x0006       | 1          | gpadc_ts_en               |            |                            |
|                 |               | 0x0007       | 2          | gpadc_pga_vcm             |            |                            |
|                 |               | 0x0009       | 4          | gpadc_pga_os_cal          |            |                            |
|                 |               | 0x000D       | 1          | gpadc_pga_en              |            |                            |
|                 |               | 0x000E       | 1          | gpadc_pga_vcmi_en         |            |                            |
|                 |               | 0x000F       | 2          | gpadc_chop_mode           |            |                            |
|                 |               | 0x0011       | 1          | gpadc_bias_sel            |            |                            |
|                 |               | 0x0012       | 1          | gpadc_test_en             |            |                            |
|                 |               | 0x0013       | 3          | gpadc_test_sel            |            |                            |
|                 |               | 0x0016       | 3          | gpadc_pga2_gain           |            |                            |
|                 |               | 0x0019       | 3          | gpadc_pga1_gain           |            |                            |
|                 |               | 0x001C       | 3          | gpadc_dly_sel             |            |                            |
|                 |               | 0x001F       | 1          | gpadc_tsvbe_low           |            |                            |
| 0x0918          | 32            |              |            | gpadc_reg_scn_pos1        | read-write | adc converation sequence 1 |
|                 |               | 0x0000       | 5          | gpadc_scan_pos_0          |            |                            |
|                 |               | 0x0005       | 5          | gpadc_scan_pos_1          |            |                            |
|                 |               | 0x000A       | 5          | gpadc_scan_pos_2          |            |                            |
|                 |               | 0x000F       | 5          | gpadc_scan_pos_3          |            |                            |
|                 |               | 0x0014       | 5          | gpadc_scan_pos_4          |            |                            |
|                 |               | 0x0019       | 5          | gpadc_scan_pos_5          |            |                            |
| 0x091C          | 32            |              |            | gpadc_reg_scn_pos2        | read-write | adc converation sequence 2 |
|                 |               | 0x0000       | 5          | gpadc_scan_pos_6          |            |                            |
|                 |               | 0x0005       | 5          | gpadc_scan_pos_7          |            |                            |
|                 |               | 0x000A       | 5          | gpadc_scan_pos_8          |            |                            |
|                 |               | 0x000F       | 5          | gpadc_scan_pos_9          |            |                            |
|                 |               | 0x0014       | 5          | gpadc_scan_pos_10         |            |                            |
|                 |               | 0x0019       | 5          | gpadc_scan_pos_11         |            |                            |
| 0x0920          | 32            |              |            | gpadc_reg_scn_neg1        | read-write | adc converation sequence 3 |
|                 |               | 0x0000       | 5          | gpadc_scan_neg_0          |            |                            |
|                 |               | 0x0005       | 5          | gpadc_scan_neg_1          |            |                            |
|                 |               | 0x000A       | 5          | gpadc_scan_neg_2          |            |                            |
|                 |               | 0x000F       | 5          | gpadc_scan_neg_3          |            |                            |
|                 |               | 0x0014       | 5          | gpadc_scan_neg_4          |            |                            |
|                 |               | 0x0019       | 5          | gpadc_scan_neg_5          |            |                            |
| 0x0924          | 32            |              |            | gpadc_reg_scn_neg2        | read-write | adc converation sequence 4 |
|                 |               | 0x0000       | 5          | gpadc_scan_neg_6          |            |                            |
|                 |               | 0x0005       | 5          | gpadc_scan_neg_7          |            |                            |
|                 |               | 0x000A       | 5          | gpadc_scan_neg_8          |            |                            |
|                 |               | 0x000F       | 5          | gpadc_scan_neg_9          |            |                            |
|                 |               | 0x0014       | 5          | gpadc_scan_neg_10         |            |                            |
|                 |               | 0x0019       | 5          | gpadc_scan_neg_11         |            |                            |
| 0x0928          | 32            |              |            | gpadc_reg_status          | read-write | gpadc_reg_status.          |
|                 |               | 0x0000       | 1          | gpadc_data_rdy            |            |                            |
| 0x092C          | 32            |              |            | gpadc_reg_isr             | read-write | gpadc_reg_isr.             |
|                 |               | 0x0000       | 1          | gpadc_neg_satur           |            |                            |
|                 |               | 0x0001       | 1          | gpadc_pos_satur           |            |                            |
|                 |               | 0x0004       | 1          | gpadc_neg_satur_clr       |            |                            |
|                 |               | 0x0005       | 1          | gpadc_pos_satur_clr       |            |                            |
|                 |               | 0x0008       | 1          | gpadc_neg_satur_mask      |            |                            |
|                 |               | 0x0009       | 1          | gpadc_pos_satur_mask      |            |                            |
| 0x0930          | 32            |              |            | gpadc_reg_result          | read-write | gpadc_reg_result.          |
|                 |               | 0x0000       | 26         | gpadc_data_out            |            |                            |
| 0x0934          | 32            |              |            | gpadc_reg_raw_result      | read-write | gpadc_reg_raw_result.      |
|                 |               | 0x0000       | 12         | gpadc_raw_data            |            |                            |
| 0x0938          | 32            |              |            | gpadc_reg_define          | read-write | gpadc_reg_define.          |
|                 |               | 0x0000       | 16         | gpadc_os_cal_data         |            |                            |
| 0x093C          | 32            |              |            | hbncore_resv0             | read-write | hbncore_resv0.             |
|                 |               | 0x0000       | 32         | hbncore_resv0_data        |            |                            |
| 0x0940          | 32            |              |            | hbncore_resv1             | read-write | hbncore_resv1.             |
|                 |               | 0x0000       | 32         | hbncore_resv1_data        |            |                            |
