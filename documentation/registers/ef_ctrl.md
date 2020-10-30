# Peripheral: ef_ctrl

- Register base address: 0x40007000

## Registers

| Register offset | Register size | Field offset | Field size | Name                     | Direction  | Description       |
| --------------- | ------------- | ------------ | ---------- | ------------------------ | ---------- | ----------------- |
| 0x0800          | 32            |              |            | ef_if_ctrl_0             | read-write | ef_if_ctrl_0.     |
|                 |               | 0x0000       | 1          | ef_if_0_autoload_p1_done |            |                   |
|                 |               | 0x0001       | 1          | ef_if_0_autoload_done    |            |                   |
|                 |               | 0x0002       | 1          | ef_if_0_busy             |            |                   |
|                 |               | 0x0003       | 1          | ef_if_0_rw               |            |                   |
|                 |               | 0x0004       | 1          | ef_if_0_trig             |            |                   |
|                 |               | 0x0005       | 1          | ef_if_0_manual_en        |            |                   |
|                 |               | 0x0006       | 1          | ef_if_0_cyc_modify       |            |                   |
|                 |               | 0x0007       | 1          | ef_clk_sahb_data_sel     |            |                   |
|                 |               | 0x0008       | 8          | ef_if_prot_code_ctrl     |            |                   |
|                 |               | 0x0010       | 1          | ef_if_por_dig            |            |                   |
|                 |               | 0x0011       | 1          | ef_clk_sahb_data_gate    |            |                   |
|                 |               | 0x0012       | 1          | ef_if_auto_rd_en         |            |                   |
|                 |               | 0x0013       | 1          | ef_if_cyc_modify_lock    |            |                   |
|                 |               | 0x0014       | 1          | ef_if_0_int              |            |                   |
|                 |               | 0x0015       | 1          | ef_if_0_int_clr          |            |                   |
|                 |               | 0x0016       | 1          | ef_if_0_int_set          |            |                   |
|                 |               | 0x0018       | 8          | ef_if_prot_code_cyc      |            |                   |
| 0x0804          | 32            |              |            | ef_if_cyc_0              | read-write | ef_if_cyc_0.      |
|                 |               | 0x0000       | 6          | ef_if_cyc_rd_dmy         |            |                   |
|                 |               | 0x0006       | 6          | ef_if_cyc_rd_dat         |            |                   |
|                 |               | 0x000C       | 6          | ef_if_cyc_rd_adr         |            |                   |
|                 |               | 0x0012       | 6          | ef_if_cyc_cs             |            |                   |
|                 |               | 0x0018       | 8          | ef_if_cyc_pd_cs_s        |            |                   |
| 0x0808          | 32            |              |            | ef_if_cyc_1              | read-write | ef_if_cyc_1.      |
|                 |               | 0x0000       | 6          | ef_if_cyc_pi             |            |                   |
|                 |               | 0x0006       | 8          | ef_if_cyc_pp             |            |                   |
|                 |               | 0x000E       | 6          | ef_if_cyc_wr_adr         |            |                   |
|                 |               | 0x0014       | 6          | ef_if_cyc_ps_cs          |            |                   |
|                 |               | 0x001A       | 6          | ef_if_cyc_pd_cs_h        |            |                   |
| 0x080C          | 32            |              |            | ef_if_0_manual           | read-write | ef_if_0_manual.   |
|                 |               | 0x0000       | 10         | ef_if_a                  |            |                   |
|                 |               | 0x000A       | 1          | ef_if_pd                 |            |                   |
|                 |               | 0x000B       | 1          | ef_if_ps                 |            |                   |
|                 |               | 0x000C       | 1          | ef_if_strobe             |            |                   |
|                 |               | 0x000D       | 1          | ef_if_pgenb              |            |                   |
|                 |               | 0x000E       | 1          | ef_if_load               |            |                   |
|                 |               | 0x000F       | 1          | ef_if_csb                |            |                   |
|                 |               | 0x0010       | 8          | ef_if_0_q                |            |                   |
|                 |               | 0x0018       | 8          | ef_if_prot_code_manual   |            |                   |
| 0x0810          | 32            |              |            | ef_if_0_status           | read-write | ef_if_0_status.   |
|                 |               | 0x0000       | 32         | ef_if_0_status           |            |                   |
| 0x0814          | 32            |              |            | ef_if_cfg_0              | read-write | ef_if_cfg_0.      |
|                 |               | 0x0000       | 2          | ef_if_sf_aes_mode        |            |                   |
|                 |               | 0x0002       | 2          | ef_if_sboot_sign_mode    |            |                   |
|                 |               | 0x0004       | 2          | ef_if_sboot_en           |            |                   |
|                 |               | 0x0006       | 1          | ef_if_cpu1_enc_en        |            |                   |
|                 |               | 0x0007       | 1          | ef_if_cpu0_enc_en        |            |                   |
|                 |               | 0x0008       | 4          | ef_if_boot_sel           |            |                   |
|                 |               | 0x000C       | 2          | ef_if_sw_usage_1         |            |                   |
|                 |               | 0x000E       | 1          | ef_if_sdu_dis            |            |                   |
|                 |               | 0x000F       | 1          | ef_if_ble_dis            |            |                   |
|                 |               | 0x0010       | 1          | ef_if_wifi_dis           |            |                   |
|                 |               | 0x0011       | 1          | ef_if_0_key_enc_en       |            |                   |
|                 |               | 0x0012       | 1          | ef_if_cam_dis            |            |                   |
|                 |               | 0x0013       | 1          | ef_if_sf_dis             |            |                   |
|                 |               | 0x0014       | 1          | ef_if_cpu1_dis           |            |                   |
|                 |               | 0x0015       | 1          | ef_if_cpu_rst_dbg_dis    |            |                   |
|                 |               | 0x0016       | 1          | ef_if_se_dbg_dis         |            |                   |
|                 |               | 0x0017       | 1          | ef_if_efuse_dbg_dis      |            |                   |
|                 |               | 0x0018       | 2          | ef_if_dbg_jtag_1_dis     |            |                   |
|                 |               | 0x001A       | 2          | ef_if_dbg_jtag_0_dis     |            |                   |
|                 |               | 0x001C       | 4          | ef_if_dbg_mode           |            |                   |
| 0x0818          | 32            |              |            | ef_sw_cfg_0              | read-write | ef_sw_cfg_0.      |
|                 |               | 0x0000       | 2          | ef_sw_sf_aes_mode        |            |                   |
|                 |               | 0x0002       | 2          | ef_sw_sboot_sign_mode    |            |                   |
|                 |               | 0x0004       | 2          | ef_sw_sboot_en           |            |                   |
|                 |               | 0x0006       | 1          | ef_sw_cpu1_enc_en        |            |                   |
|                 |               | 0x0007       | 1          | ef_sw_cpu0_enc_en        |            |                   |
|                 |               | 0x000C       | 2          | ef_sw_sw_usage_1         |            |                   |
|                 |               | 0x000E       | 1          | ef_sw_sdu_dis            |            |                   |
|                 |               | 0x000F       | 1          | ef_sw_ble_dis            |            |                   |
|                 |               | 0x0010       | 1          | ef_sw_wifi_dis           |            |                   |
|                 |               | 0x0011       | 1          | ef_sw_0_key_enc_en       |            |                   |
|                 |               | 0x0012       | 1          | ef_sw_cam_dis            |            |                   |
|                 |               | 0x0013       | 1          | ef_sw_sf_dis             |            |                   |
|                 |               | 0x0014       | 1          | ef_sw_cpu1_dis           |            |                   |
|                 |               | 0x0015       | 1          | ef_sw_cpu_rst_dbg_dis    |            |                   |
|                 |               | 0x0016       | 1          | ef_sw_se_dbg_dis         |            |                   |
|                 |               | 0x0017       | 1          | ef_sw_efuse_dbg_dis      |            |                   |
|                 |               | 0x0018       | 2          | ef_sw_dbg_jtag_1_dis     |            |                   |
|                 |               | 0x001A       | 2          | ef_sw_dbg_jtag_0_dis     |            |                   |
|                 |               | 0x001C       | 4          | ef_sw_dbg_mode           |            |                   |
| 0x081C          | 32            |              |            | ef_reserved              | read-write | ef_reserved.      |
| 0x0820          | 32            |              |            | ef_if_ana_trim_0         | read-write | ef_if_ana_trim_0. |
|                 |               | 0x0000       | 32         | ef_if_ana_trim_0         |            |                   |
| 0x0824          | 32            |              |            | ef_if_sw_usage_0         | read-write | ef_if_sw_usage_0. |
|                 |               | 0x0000       | 32         | ef_if_sw_usage_0         |            |                   |
| 0x0A00          | 32            |              |            | ef_crc_ctrl_0            | read-write | ef_crc_ctrl_0.    |
|                 |               | 0x0000       | 1          | ef_crc_busy              |            |                   |
|                 |               | 0x0001       | 1          | ef_crc_trig              |            |                   |
|                 |               | 0x0002       | 1          | ef_crc_en                |            |                   |
|                 |               | 0x0003       | 1          | ef_crc_mode              |            |                   |
|                 |               | 0x0004       | 1          | ef_crc_error             |            |                   |
|                 |               | 0x0005       | 1          | ef_crc_dout_inv_en       |            |                   |
|                 |               | 0x0006       | 1          | ef_crc_dout_endian       |            |                   |
|                 |               | 0x0007       | 1          | ef_crc_din_endian        |            |                   |
|                 |               | 0x0008       | 1          | ef_crc_int               |            |                   |
|                 |               | 0x0009       | 1          | ef_crc_int_clr           |            |                   |
|                 |               | 0x000A       | 1          | ef_crc_int_set           |            |                   |
|                 |               | 0x000B       | 1          | ef_crc_lock              |            |                   |
|                 |               | 0x0010       | 16         | ef_crc_slp_n             |            |                   |
| 0x0A04          | 32            |              |            | ef_crc_ctrl_1            | read-write | ef_crc_ctrl_1.    |
|                 |               | 0x0000       | 32         | ef_crc_data_0_en         |            |                   |
| 0x0A08          | 32            |              |            | ef_crc_ctrl_2            | read-write | ef_crc_ctrl_2.    |
|                 |               | 0x0000       | 32         | ef_crc_data_1_en         |            |                   |
| 0x0A0C          | 32            |              |            | ef_crc_ctrl_3            | read-write | ef_crc_ctrl_3.    |
|                 |               | 0x0000       | 32         | ef_crc_iv                |            |                   |
| 0x0A10          | 32            |              |            | ef_crc_ctrl_4            | read-write | ef_crc_ctrl_4.    |
|                 |               | 0x0000       | 32         | ef_crc_golden            |            |                   |
| 0x0A14          | 32            |              |            | ef_crc_ctrl_5            | read-write | ef_crc_ctrl_5.    |
|                 |               | 0x0000       | 32         | ef_crc_dout              |            |                   |
