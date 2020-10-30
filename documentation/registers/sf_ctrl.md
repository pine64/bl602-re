# Peripheral: sf_ctrl

- Register base address: 0x4000B000

## Registers

| Register offset | Register size | Field offset | Field size | Name                       | Direction  | Description         |
| --------------- | ------------- | ------------ | ---------- | -------------------------- | ---------- | ------------------- |
| 0x0000          | 32            |              |            | sf_ctrl_0                  | read-write | sf_ctrl_0.          |
|                 |               | 0x0002       | 1          | sf_clk_sf_rx_inv_sel       |            |
|                 |               | 0x0003       | 1          | sf_clk_out_gate_en         |            |
|                 |               | 0x0004       | 1          | sf_clk_out_inv_sel         |            |
|                 |               | 0x0005       | 1          | sf_clk_sahb_sram_sel       |            |
|                 |               | 0x0008       | 3          | sf_if_read_dly_n           |            |
|                 |               | 0x000B       | 1          | sf_if_read_dly_en          |            |
|                 |               | 0x0010       | 1          | sf_if_int                  |            |
|                 |               | 0x0011       | 1          | sf_if_int_clr              |            |
|                 |               | 0x0012       | 1          | sf_if_int_set              |            |
|                 |               | 0x0013       | 1          | sf_aes_dly_mode            |            |
|                 |               | 0x0014       | 1          | sf_aes_dout_endian         |            |
|                 |               | 0x0015       | 1          | sf_aes_ctr_plus_en         |            |
|                 |               | 0x0016       | 1          | sf_aes_key_endian          |            |
|                 |               | 0x0017       | 1          | sf_aes_iv_endian           |            |
|                 |               | 0x0018       | 8          | sf_id                      |            |
| 0x0004          | 32            |              |            | sf_ctrl_1                  | read-write | sf_ctrl_1.          |
|                 |               | 0x0000       | 8          | sf_if_sr_pat_mask          |            |
|                 |               | 0x0008       | 8          | sf_if_sr_pat               |            |
|                 |               | 0x0010       | 1          | sf_if_sr_int               |            |
|                 |               | 0x0011       | 1          | sf_if_sr_int_en            |            |
|                 |               | 0x0012       | 1          | sf_if_sr_int_set           |            |
|                 |               | 0x0014       | 3          | sf_if_0_ack_lat            |            |
|                 |               | 0x0018       | 1          | sf_if_reg_hold             |            |
|                 |               | 0x0019       | 1          | sf_if_reg_wp               |            |
|                 |               | 0x001A       | 1          | sf_ahb2sif_stopped         |            |
|                 |               | 0x001B       | 1          | sf_ahb2sif_stop            |            |
|                 |               | 0x001C       | 1          | sf_if_fn_sel               |            |
|                 |               | 0x001D       | 1          | sf_if_en                   |            |
|                 |               | 0x001E       | 1          | sf_ahb2sif_en              |            |
|                 |               | 0x001F       | 1          | sf_ahb2sram_en             |            |
| 0x0008          | 32            |              |            | sf_if_sahb_0               | read-write | sf_if_sahb_0.       |
|                 |               | 0x0000       | 1          | sf_if_busy                 |            |
|                 |               | 0x0001       | 1          | sf_if_0_trig               |            |
|                 |               | 0x0002       | 10         | sf_if_0_dat_byte           |            |
|                 |               | 0x000C       | 5          | sf_if_0_dmy_byte           |            |
|                 |               | 0x0011       | 3          | sf_if_0_adr_byte           |            |
|                 |               | 0x0014       | 3          | sf_if_0_cmd_byte           |            |
|                 |               | 0x0017       | 1          | sf_if_0_dat_rw             |            |
|                 |               | 0x0018       | 1          | sf_if_0_dat_en             |            |
|                 |               | 0x0019       | 1          | sf_if_0_dmy_en             |            |
|                 |               | 0x001A       | 1          | sf_if_0_adr_en             |            |
|                 |               | 0x001B       | 1          | sf_if_0_cmd_en             |            |
|                 |               | 0x001C       | 3          | sf_if_0_spi_mode           |            |
|                 |               | 0x001F       | 1          | sf_if_0_qpi_mode_en        |            |
| 0x000C          | 32            |              |            | sf_if_sahb_1               | read-write | sf_if_sahb_1.       |
|                 |               | 0x0000       | 32         | sf_if_0_cmd_buf_0          |            |
| 0x0010          | 32            |              |            | sf_if_sahb_2               | read-write | sf_if_sahb_2.       |
|                 |               | 0x0000       | 32         | sf_if_0_cmd_buf_1          |            |
| 0x0014          | 32            |              |            | sf_if_iahb_0               | read-write | sf_if_iahb_0.       |
|                 |               | 0x000C       | 5          | sf_if_1_dmy_byte           |            |
|                 |               | 0x0011       | 3          | sf_if_1_adr_byte           |            |
|                 |               | 0x0014       | 3          | sf_if_1_cmd_byte           |            |
|                 |               | 0x0017       | 1          | sf_if_1_dat_rw             |            |
|                 |               | 0x0018       | 1          | sf_if_1_dat_en             |            |
|                 |               | 0x0019       | 1          | sf_if_1_dmy_en             |            |
|                 |               | 0x001A       | 1          | sf_if_1_adr_en             |            |
|                 |               | 0x001B       | 1          | sf_if_1_cmd_en             |            |
|                 |               | 0x001C       | 3          | sf_if_1_spi_mode           |            |
|                 |               | 0x001F       | 1          | sf_if_1_qpi_mode_en        |            |
| 0x0018          | 32            |              |            | sf_if_iahb_1               | read-write | sf_if_iahb_1.       |
|                 |               | 0x0000       | 32         | sf_if_1_cmd_buf_0          |            |
| 0x001C          | 32            |              |            | sf_if_iahb_2               | read-write | sf_if_iahb_2.       |
|                 |               | 0x0000       | 32         | sf_if_1_cmd_buf_1          |            |
| 0x0020          | 32            |              |            | sf_if_status_0             | read-write | sf_if_status_0.     |
|                 |               | 0x0000       | 32         | sf_if_status_0             |            |
| 0x0024          | 32            |              |            | sf_if_status_1             | read-write | sf_if_status_1.     |
|                 |               | 0x0000       | 32         | sf_if_status_1             |            |
| 0x0028          | 32            |              |            | sf_aes                     | read-write | sf_aes.             |
|                 |               | 0x0000       | 1          | sf_aes_en                  |            |
|                 |               | 0x0001       | 2          | sf_aes_mode                |            |
|                 |               | 0x0003       | 1          | sf_aes_pref_trig           |            |
|                 |               | 0x0004       | 1          | sf_aes_pref_busy           |            |
|                 |               | 0x0005       | 27         | sf_aes_status              |            |
| 0x002C          | 32            |              |            | sf_ahb2sif_status          | read-write | sf_ahb2sif_status.  |
|                 |               | 0x0000       | 32         | sf_ahb2sif_status          |            |
| 0x0030          | 32            |              |            | sf_if_io_dly_0             | read-write | sf_if_io_dly_0.     |
|                 |               | 0x0000       | 2          | sf_cs_dly_sel              |            |
|                 |               | 0x0008       | 2          | sf_clk_out_dly_sel         |            |
|                 |               | 0x001A       | 2          | sf_dqs_oe_dly_sel          |            |
|                 |               | 0x001C       | 2          | sf_dqs_di_dly_sel          |            |
|                 |               | 0x001E       | 2          | sf_dqs_do_dly_sel          |            |
| 0x0034          | 32            |              |            | sf_if_io_dly_1             | read-write | sf_if_io_dly_1.     |
|                 |               | 0x0000       | 2          | sf_io_0_oe_dly_sel         |            |
|                 |               | 0x0008       | 2          | sf_io_0_di_dly_sel         |            |
|                 |               | 0x0010       | 2          | sf_io_0_do_dly_sel         |            |
| 0x0038          | 32            |              |            | sf_if_io_dly_2             | read-write | sf_if_io_dly_2.     |
|                 |               | 0x0000       | 2          | sf_io_1_oe_dly_sel         |            |
|                 |               | 0x0008       | 2          | sf_io_1_di_dly_sel         |            |
|                 |               | 0x0010       | 2          | sf_io_1_do_dly_sel         |            |
| 0x003C          | 32            |              |            | sf_if_io_dly_3             | read-write | sf_if_io_dly_3.     |
|                 |               | 0x0000       | 2          | sf_io_2_oe_dly_sel         |            |
|                 |               | 0x0008       | 2          | sf_io_2_di_dly_sel         |            |
|                 |               | 0x0010       | 2          | sf_io_2_do_dly_sel         |            |
| 0x0040          | 32            |              |            | sf_if_io_dly_4             | read-write | sf_if_io_dly_4.     |
|                 |               | 0x0000       | 2          | sf_io_3_oe_dly_sel         |            |
|                 |               | 0x0008       | 2          | sf_io_3_di_dly_sel         |            |
|                 |               | 0x0010       | 2          | sf_io_3_do_dly_sel         |            |
| 0x0044          | 32            |              |            | sf_reserved                | read-write | sf_reserved.        |
| 0x0048          | 32            |              |            | sf2_if_io_dly_0            | read-write | sf2_if_io_dly_0.    |
|                 |               | 0x0000       | 2          | sf2_cs_dly_sel             |            |
|                 |               | 0x0008       | 2          | sf2_clk_out_dly_sel        |            |
|                 |               | 0x001A       | 2          | sf2_dqs_oe_dly_sel         |            |
|                 |               | 0x001C       | 2          | sf2_dqs_di_dly_sel         |            |
|                 |               | 0x001E       | 2          | sf2_dqs_do_dly_sel         |            |
| 0x004C          | 32            |              |            | sf2_if_io_dly_1            | read-write | sf2_if_io_dly_1.    |
|                 |               | 0x0000       | 2          | sf2_io_0_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf2_io_0_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf2_io_0_do_dly_sel        |            |
| 0x0050          | 32            |              |            | sf2_if_io_dly_2            | read-write | sf2_if_io_dly_2.    |
|                 |               | 0x0000       | 2          | sf2_io_1_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf2_io_1_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf2_io_1_do_dly_sel        |            |
| 0x0054          | 32            |              |            | sf2_if_io_dly_3            | read-write | sf2_if_io_dly_3.    |
|                 |               | 0x0000       | 2          | sf2_io_2_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf2_io_2_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf2_io_2_do_dly_sel        |            |
| 0x0058          | 32            |              |            | sf2_if_io_dly_4            | read-write | sf2_if_io_dly_4.    |
|                 |               | 0x0000       | 2          | sf2_io_3_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf2_io_3_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf2_io_3_do_dly_sel        |            |
| 0x005C          | 32            |              |            | sf3_if_io_dly_0            | read-write | sf3_if_io_dly_0.    |
|                 |               | 0x0000       | 2          | sf3_cs_dly_sel             |            |
|                 |               | 0x0008       | 2          | sf3_clk_out_dly_sel        |            |
|                 |               | 0x001A       | 2          | sf3_dqs_oe_dly_sel         |            |
|                 |               | 0x001C       | 2          | sf3_dqs_di_dly_sel         |            |
|                 |               | 0x001E       | 2          | sf3_dqs_do_dly_sel         |            |
| 0x0060          | 32            |              |            | sf3_if_io_dly_1            | read-write | sf3_if_io_dly_1.    |
|                 |               | 0x0000       | 2          | sf3_io_0_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf3_io_0_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf3_io_0_do_dly_sel        |            |
| 0x0064          | 32            |              |            | sf3_if_io_dly_2            | read-write | sf3_if_io_dly_2.    |
|                 |               | 0x0000       | 2          | sf3_io_1_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf3_io_1_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf3_io_1_do_dly_sel        |            |
| 0x0068          | 32            |              |            | sf3_if_io_dly_3            | read-write | sf3_if_io_dly_3.    |
|                 |               | 0x0000       | 2          | sf3_io_2_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf3_io_2_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf3_io_2_do_dly_sel        |            |
| 0x006C          | 32            |              |            | sf3_if_io_dly_4            | read-write | sf3_if_io_dly_4.    |
|                 |               | 0x0000       | 2          | sf3_io_3_oe_dly_sel        |            |
|                 |               | 0x0008       | 2          | sf3_io_3_di_dly_sel        |            |
|                 |               | 0x0010       | 2          | sf3_io_3_do_dly_sel        |            |
| 0x0070          | 32            |              |            | sf_ctrl_2                  | read-write | sf_ctrl_2.          |
|                 |               | 0x0000       | 2          | sf_if_pad_sel              |            |
|                 |               | 0x0003       | 1          | sf_if_pad_sel_lock         |            |
|                 |               | 0x0004       | 1          | sf_if_dtr_en               |            |
|                 |               | 0x0005       | 1          | sf_if_dqs_en               |            |
| 0x0074          | 32            |              |            | sf_ctrl_3                  | read-write | sf_ctrl_3.          |
|                 |               | 0x0000       | 4          | sf_cmds_wrap_len           |            |
|                 |               | 0x0004       | 1          | sf_cmds_en                 |            |
|                 |               | 0x0005       | 3          | sf_cmds_bt_dly             |            |
|                 |               | 0x0008       | 1          | sf_cmds_bt_en              |            |
|                 |               | 0x0009       | 1          | sf_cmds_wrap_q_ini         |            |
|                 |               | 0x000A       | 1          | sf_cmds_wrap_mode          |            |
|                 |               | 0x001D       | 3          | sf_if_1_ack_lat            |            |
| 0x0078          | 32            |              |            | sf_if_iahb_3               | read-write | sf_if_iahb_3.       |
|                 |               | 0x000C       | 5          | sf_if_2_dmy_byte           |            |
|                 |               | 0x0011       | 3          | sf_if_2_adr_byte           |            |
|                 |               | 0x0014       | 3          | sf_if_2_cmd_byte           |            |
|                 |               | 0x0017       | 1          | sf_if_2_dat_rw             |            |
|                 |               | 0x0018       | 1          | sf_if_2_dat_en             |            |
|                 |               | 0x0019       | 1          | sf_if_2_dmy_en             |            |
|                 |               | 0x001A       | 1          | sf_if_2_adr_en             |            |
|                 |               | 0x001B       | 1          | sf_if_2_cmd_en             |            |
|                 |               | 0x001C       | 3          | sf_if_2_spi_mode           |            |
|                 |               | 0x001F       | 1          | sf_if_2_qpi_mode_en        |            |
| 0x007C          | 32            |              |            | sf_if_iahb_4               | read-write | sf_if_iahb_4.       |
|                 |               | 0x0000       | 32         | sf_if_2_cmd_buf_0          |            |
| 0x0080          | 32            |              |            | sf_if_iahb_5               | read-write | sf_if_iahb_5.       |
|                 |               | 0x0000       | 32         | sf_if_2_cmd_buf_1          |            |
| 0x0084          | 32            |              |            | sf_if_iahb_6               | read-write | sf_if_iahb_6.       |
|                 |               | 0x0014       | 3          | sf_if_3_cmd_byte           |            |
|                 |               | 0x001C       | 3          | sf_if_3_spi_mode           |            |
|                 |               | 0x001F       | 1          | sf_if_3_qpi_mode_en        |            |
| 0x0088          | 32            |              |            | sf_if_iahb_7               | read-write | sf_if_iahb_7.       |
|                 |               | 0x0000       | 32         | sf_if_3_cmd_buf_0          |            |
| 0x0100          | 32            |              |            | sf_ctrl_prot_en_rd         | read-write | sf_ctrl_prot_en_rd. |
|                 |               | 0x0000       | 1          | sf_ctrl_prot_en_rd         |            |
|                 |               | 0x0001       | 1          | sf_ctrl_id0_en_rd          |            |
|                 |               | 0x0002       | 1          | sf_ctrl_id1_en_rd          |            |
|                 |               | 0x001E       | 1          | sf_if_0_trig_wr_lock       |            |
|                 |               | 0x001F       | 1          | sf_dbg_dis                 |            |
| 0x0104          | 32            |              |            | sf_ctrl_prot_en            | read-write | sf_ctrl_prot_en.    |
|                 |               | 0x0000       | 1          | sf_ctrl_prot_en            |            |
|                 |               | 0x0001       | 1          | sf_ctrl_id0_en             |            |
|                 |               | 0x0002       | 1          | sf_ctrl_id1_en             |            |
| 0x0200          | 32            |              |            | sf_aes_key_r0_0            | read-write | sf_aes_key_r0_0.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_0            |            |
| 0x0204          | 32            |              |            | sf_aes_key_r0_1            | read-write | sf_aes_key_r0_1.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_1            |            |
| 0x0208          | 32            |              |            | sf_aes_key_r0_2            | read-write | sf_aes_key_r0_2.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_2            |            |
| 0x020C          | 32            |              |            | sf_aes_key_r0_3            | read-write | sf_aes_key_r0_3.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_3            |            |
| 0x0210          | 32            |              |            | sf_aes_key_r0_4            | read-write | sf_aes_key_r0_4.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_4            |            |
| 0x0214          | 32            |              |            | sf_aes_key_r0_5            | read-write | sf_aes_key_r0_5.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_5            |            |
| 0x0218          | 32            |              |            | sf_aes_key_r0_6            | read-write | sf_aes_key_r0_6.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_6            |            |
| 0x021C          | 32            |              |            | sf_aes_key_r0_7            | read-write | sf_aes_key_r0_7.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r0_7            |            |
| 0x0220          | 32            |              |            | sf_aes_iv_r0_w0            | read-write | sf_aes_iv_r0_w0.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r0_w0            |            |
| 0x0224          | 32            |              |            | sf_aes_iv_r0_w1            | read-write | sf_aes_iv_r0_w1.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r0_w1            |            |
| 0x0228          | 32            |              |            | sf_aes_iv_r0_w2            | read-write | sf_aes_iv_r0_w2.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r0_w2            |            |
| 0x022C          | 32            |              |            | sf_aes_iv_r0_w3            | read-write | sf_aes_iv_r0_w3.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r0_w3            |            |
| 0x0230          | 32            |              |            | sf_aes_cfg_r0              | read-write | sf_aes_cfg_r0.      |
|                 |               | 0x0000       | 14         | sf_aes_region_r0_end       |            |
|                 |               | 0x000E       | 14         | sf_aes_region_r0_start     |            |
|                 |               | 0x001D       | 1          | sf_aes_region_r0_hw_key_en |            |
|                 |               | 0x001E       | 1          | sf_aes_region_r0_en        |            |
|                 |               | 0x001F       | 1          | sf_aes_region_r0_lock      |            |
| 0x0300          | 32            |              |            | sf_aes_key_r1_0            | read-write | sf_aes_key_r1_0.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_0            |            |
| 0x0304          | 32            |              |            | sf_aes_key_r1_1            | read-write | sf_aes_key_r1_1.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_1            |            |
| 0x0308          | 32            |              |            | sf_aes_key_r1_2            | read-write | sf_aes_key_r1_2.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_2            |            |
| 0x030C          | 32            |              |            | sf_aes_key_r1_3            | read-write | sf_aes_key_r1_3.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_3            |            |
| 0x0310          | 32            |              |            | sf_aes_key_r1_4            | read-write | sf_aes_key_r1_4.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_4            |            |
| 0x0314          | 32            |              |            | sf_aes_key_r1_5            | read-write | sf_aes_key_r1_5.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_5            |            |
| 0x0318          | 32            |              |            | sf_aes_key_r1_6            | read-write | sf_aes_key_r1_6.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_6            |            |
| 0x031C          | 32            |              |            | sf_aes_key_r1_7            | read-write | sf_aes_key_r1_7.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r1_7            |            |
| 0x0320          | 32            |              |            | sf_aes_iv_r1_w0            | read-write | sf_aes_iv_r1_w0.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r1_w0            |            |
| 0x0324          | 32            |              |            | sf_aes_iv_r1_w1            | read-write | sf_aes_iv_r1_w1.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r1_w1            |            |
| 0x0328          | 32            |              |            | sf_aes_iv_r1_w2            | read-write | sf_aes_iv_r1_w2.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r1_w2            |            |
| 0x032C          | 32            |              |            | sf_aes_iv_r1_w3            | read-write | sf_aes_iv_r1_w3.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r1_w3            |            |
| 0x0330          | 32            |              |            | sf_aes_r1                  | read-write | sf_aes_r1.          |
|                 |               | 0x0000       | 14         | sf_aes_r1_end              |            |
|                 |               | 0x000E       | 14         | sf_aes_r1_start            |            |
|                 |               | 0x001D       | 1          | sf_aes_r1_hw_key_en        |            |
|                 |               | 0x001E       | 1          | sf_aes_r1_en               |            |
|                 |               | 0x001F       | 1          | sf_aes_r1_lock             |            |
| 0x0400          | 32            |              |            | sf_aes_key_r2_0            | read-write | sf_aes_key_r2_0.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_0            |            |
| 0x0404          | 32            |              |            | sf_aes_key_r2_1            | read-write | sf_aes_key_r2_1.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_1            |            |
| 0x0408          | 32            |              |            | sf_aes_key_r2_2            | read-write | sf_aes_key_r2_2.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_2            |            |
| 0x040C          | 32            |              |            | sf_aes_key_r2_3            | read-write | sf_aes_key_r2_3.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_3            |            |
| 0x0410          | 32            |              |            | sf_aes_key_r2_4            | read-write | sf_aes_key_r2_4.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_4            |            |
| 0x0414          | 32            |              |            | sf_aes_key_r2_5            | read-write | sf_aes_key_r2_5.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_5            |            |
| 0x0418          | 32            |              |            | sf_aes_key_r2_6            | read-write | sf_aes_key_r2_6.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_6            |            |
| 0x041C          | 32            |              |            | sf_aes_key_r2_7            | read-write | sf_aes_key_r2_7.    |
|                 |               | 0x0000       | 32         | sf_aes_key_r2_7            |            |
| 0x0420          | 32            |              |            | sf_aes_iv_r2_w0            | read-write | sf_aes_iv_r2_w0.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r2_w0            |            |
| 0x0424          | 32            |              |            | sf_aes_iv_r2_w1            | read-write | sf_aes_iv_r2_w1.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r2_w1            |            |
| 0x0428          | 32            |              |            | sf_aes_iv_r2_w2            | read-write | sf_aes_iv_r2_w2.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r2_w2            |            |
| 0x042C          | 32            |              |            | sf_aes_iv_r2_w3            | read-write | sf_aes_iv_r2_w3.    |
|                 |               | 0x0000       | 32         | sf_aes_iv_r2_w3            |            |
| 0x0430          | 32            |              |            | sf_aes_r2                  | read-write | sf_aes_r2.          |
|                 |               | 0x0000       | 14         | sf_aes_r2_end              |            |
|                 |               | 0x000E       | 14         | sf_aes_r2_start            |            |
|                 |               | 0x001D       | 1          | sf_aes_r2_hw_key_en        |            |
|                 |               | 0x001E       | 1          | sf_aes_r2_en               |            |
|                 |               | 0x001F       | 1          | sf_aes_r2_lock             |            |
| 0x0434          | 32            |              |            | sf_id0_offset              | read-write | sf_id0_offset.      |
|                 |               | 0x0000       | 24         | sf_id0_offset              |            |
| 0x0438          | 32            |              |            | sf_id1_offset              | read-write | sf_id1_offset.      |
|                 |               | 0x0000       | 24         | sf_id1_offset              |            |
