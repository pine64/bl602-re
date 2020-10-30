# Peripheral: HBN

- Register base address: 0x4000F000

## Registers

| Register offset | Register size | Field offset | Field size | Name                     | Direction  | Description       |
| --------------- | ------------- | ------------ | ---------- | ------------------------ | ---------- | ----------------- |
| 0x0000          | 32            |              |            | HBN_CTL                  | read-write | HBN_CTL.          |
|                 |               | 0x0000       | 7          | rtc_ctl                  |            |
|                 |               | 0x0007       | 1          | hbn_mode                 |            |
|                 |               | 0x0008       | 1          | trap_mode                |            |
|                 |               | 0x0009       | 1          | pwrdn_hbn_core           |            |
|                 |               | 0x000B       | 1          | pwrdn_hbn_rtc            |            |
|                 |               | 0x000C       | 1          | sw_rst                   |            |
|                 |               | 0x000D       | 1          | hbn_dis_pwr_off_ldo11    |            |
|                 |               | 0x000E       | 1          | hbn_dis_pwr_off_ldo11_rt |            |
|                 |               | 0x000F       | 4          | hbn_ldo11_rt_vout_sel    |            |
|                 |               | 0x0013       | 4          | hbn_ldo11_aon_vout_sel   |            |
|                 |               | 0x0017       | 1          | pu_dcdc18_aon            |            |
|                 |               | 0x0018       | 1          | rtc_dly_option           |            |
|                 |               | 0x0019       | 1          | pwr_on_option            |            |
|                 |               | 0x001A       | 1          | sram_slp_option          |            |
|                 |               | 0x001B       | 1          | sram_slp                 |            |
|                 |               | 0x001C       | 4          | hbn_state                |            |
| 0x0004          | 32            |              |            | HBN_TIME_L               | read-write | HBN_TIME_L.       |
|                 |               | 0x0000       | 32         | hbn_time_l               |            |
| 0x0008          | 32            |              |            | HBN_TIME_H               | read-write | HBN_TIME_H.       |
|                 |               | 0x0000       | 8          | hbn_time_h               |            |
| 0x000C          | 32            |              |            | RTC_TIME_L               | read-write | RTC_TIME_L.       |
|                 |               | 0x0000       | 32         | rtc_time_latch_l         |            |
| 0x0010          | 32            |              |            | RTC_TIME_H               | read-write | RTC_TIME_H.       |
|                 |               | 0x0000       | 8          | rtc_time_latch_h         |            |
|                 |               | 0x001F       | 1          | rtc_time_latch           |            |
| 0x0014          | 32            |              |            | HBN_IRQ_MODE             | read-write | HBN_IRQ_MODE.     |
|                 |               | 0x0000       | 3          | hbn_pin_wakeup_mode      |            |
|                 |               | 0x0003       | 2          | hbn_pin_wakeup_mask      |            |
|                 |               | 0x0008       | 1          | reg_aon_pad_ie_smt       |            |
|                 |               | 0x0010       | 1          | reg_en_hw_pu_pd          |            |
|                 |               | 0x0012       | 1          | irq_bor_en               |            |
|                 |               | 0x0014       | 2          | irq_acomp0_en            |            |
|                 |               | 0x0016       | 2          | irq_acomp1_en            |            |
|                 |               | 0x0018       | 3          | pin_wakeup_sel           |            |
|                 |               | 0x001B       | 1          | pin_wakeup_en            |            |
| 0x0018          | 32            |              |            | HBN_IRQ_STAT             | read-write | HBN_IRQ_STAT.     |
|                 |               | 0x0000       | 32         | irq_stat                 |            |
| 0x001C          | 32            |              |            | HBN_IRQ_CLR              | read-write | HBN_IRQ_CLR.      |
|                 |               | 0x0000       | 32         | irq_clr                  |            |
| 0x0020          | 32            |              |            | HBN_PIR_CFG              | read-write | HBN_PIR_CFG.      |
|                 |               | 0x0000       | 2          | pir_hpf_sel              |            |
|                 |               | 0x0002       | 1          | pir_lpf_sel              |            |
|                 |               | 0x0004       | 2          | pir_dis                  |            |
|                 |               | 0x0007       | 1          | pir_en                   |            |
|                 |               | 0x0008       | 1          | gpadc_cgen               |            |
|                 |               | 0x0009       | 1          | gpadc_nosync             |            |
| 0x0024          | 32            |              |            | HBN_PIR_VTH              | read-write | HBN_PIR_VTH.      |
|                 |               | 0x0000       | 14         | pir_vth                  |            |
| 0x0028          | 32            |              |            | HBN_PIR_INTERVAL         | read-write | HBN_PIR_INTERVAL. |
|                 |               | 0x0000       | 12         | pir_interval             |            |
| 0x002C          | 32            |              |            | HBN_BOR_CFG              | read-write | HBN_BOR_CFG.      |
|                 |               | 0x0000       | 1          | bor_sel                  |            |
|                 |               | 0x0001       | 1          | bor_vth                  |            |
|                 |               | 0x0002       | 1          | pu_bor                   |            |
|                 |               | 0x0003       | 1          | r_bor_out                |            |
| 0x0030          | 32            |              |            | HBN_GLB                  | read-write | HBN_GLB.          |
|                 |               | 0x0000       | 2          | hbn_root_clk_sel         |            |
|                 |               | 0x0002       | 1          | hbn_uart_clk_sel         |            |
|                 |               | 0x0003       | 2          | hbn_f32k_sel             |            |
|                 |               | 0x0005       | 1          | hbn_pu_rc32k             |            |
|                 |               | 0x0010       | 4          | sw_ldo11soc_vout_sel_aon |            |
|                 |               | 0x0018       | 4          | sw_ldo11_rt_vout_sel     |            |
|                 |               | 0x001C       | 4          | sw_ldo11_aon_vout_sel    |            |
| 0x0034          | 32            |              |            | HBN_SRAM                 | read-write | HBN_SRAM.         |
|                 |               | 0x0006       | 1          | retram_ret               |            |
|                 |               | 0x0007       | 1          | retram_slp               |            |
| 0x0100          | 32            |              |            | HBN_RSV0                 | read-write | HBN_RSV0.         |
|                 |               | 0x0000       | 32         | HBN_RSV0                 |            |
| 0x0104          | 32            |              |            | HBN_RSV1                 | read-write | HBN_RSV1.         |
|                 |               | 0x0000       | 32         | HBN_RSV1                 |            |
| 0x0108          | 32            |              |            | HBN_RSV2                 | read-write | HBN_RSV2.         |
|                 |               | 0x0000       | 32         | HBN_RSV2                 |            |
| 0x010C          | 32            |              |            | HBN_RSV3                 | read-write | HBN_RSV3.         |
|                 |               | 0x0000       | 32         | HBN_RSV3                 |            |
| 0x0200          | 32            |              |            | rc32k_ctrl0              | read-write | rc32k_ctrl0.      |
|                 |               | 0x0000       | 1          | rc32k_cal_done           |            |
|                 |               | 0x0001       | 1          | rc32k_rdy                |            |
|                 |               | 0x0002       | 1          | rc32k_cal_inprogress     |            |
|                 |               | 0x0003       | 2          | rc32k_cal_div            |            |
|                 |               | 0x0005       | 1          | rc32k_cal_precharge      |            |
|                 |               | 0x0006       | 10         | rc32k_dig_code_fr_cal    |            |
|                 |               | 0x0010       | 2          | rc32k_vref_dly           |            |
|                 |               | 0x0012       | 1          | rc32k_allow_cal          |            |
|                 |               | 0x0013       | 1          | rc32k_ext_code_en        |            |
|                 |               | 0x0014       | 1          | rc32k_cal_en             |            |
|                 |               | 0x0016       | 10         | rc32k_code_fr_ext        |            |
| 0x0204          | 32            |              |            | xtal32k                  | read-write | xtal32k.          |
|                 |               | 0x0002       | 1          | xtal32k_ext_sel          |            |
|                 |               | 0x0003       | 2          | xtal32k_amp_ctrl         |            |
|                 |               | 0x0005       | 2          | xtal32k_reg              |            |
|                 |               | 0x0007       | 1          | xtal32k_outbuf_stre      |            |
|                 |               | 0x0008       | 1          | xtal32k_otf_short        |            |
|                 |               | 0x0009       | 2          | xtal32k_inv_stre         |            |
|                 |               | 0x000B       | 6          | xtal32k_capbank          |            |
|                 |               | 0x0011       | 1          | xtal32k_ac_cap_short     |            |
|                 |               | 0x0012       | 1          | pu_xtal32k_buf           |            |
|                 |               | 0x0013       | 1          | pu_xtal32k               |            |
