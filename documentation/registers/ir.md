# Peripheral: ir

- Register base address: 0x4000A600

## Registers

| Register offset | Register size | Field offset | Field size | Name                   | Direction  | Description             |
| --------------- | ------------- | ------------ | ---------- | ---------------------- | ---------- | ----------------------- |
| 0x0000          | 32            |              |            | irtx_config            | read-write | irtx_config.            |
|                 |               | 0x0000       | 1          | cr_irtx_en             |            |
|                 |               | 0x0001       | 1          | cr_irtx_out_inv        |            |
|                 |               | 0x0002       | 1          | cr_irtx_mod_en         |            |
|                 |               | 0x0003       | 1          | cr_irtx_swm_en         |            |
|                 |               | 0x0004       | 1          | cr_irtx_data_en        |            |
|                 |               | 0x0005       | 1          | cr_irtx_logic0_hl_inv  |            |
|                 |               | 0x0006       | 1          | cr_irtx_logic1_hl_inv  |            |
|                 |               | 0x0008       | 1          | cr_irtx_head_en        |            |
|                 |               | 0x0009       | 1          | cr_irtx_head_hl_inv    |            |
|                 |               | 0x000A       | 1          | cr_irtx_tail_en        |            |
|                 |               | 0x000B       | 1          | cr_irtx_tail_hl_inv    |            |
|                 |               | 0x000C       | 6          | cr_irtx_data_num       |            |
| 0x0004          | 32            |              |            | irtx_int_sts           | read-write | irtx_int_sts.           |
|                 |               | 0x0000       | 1          | irtx_end_int           |            |
|                 |               | 0x0008       | 1          | cr_irtx_end_mask       |            |
|                 |               | 0x0010       | 1          | cr_irtx_end_clr        |            |
|                 |               | 0x0018       | 1          | cr_irtx_end_en         |            |
| 0x0008          | 32            |              |            | irtx_data_word0        | read-write | irtx_data_word0.        |
|                 |               | 0x0000       | 32         | cr_irtx_data_word0     |            |
| 0x000C          | 32            |              |            | irtx_data_word1        | read-write | irtx_data_word1.        |
|                 |               | 0x0000       | 32         | cr_irtx_data_word1     |            |
| 0x0010          | 32            |              |            | irtx_pulse_width       | read-write | irtx_pulse_width.       |
|                 |               | 0x0000       | 12         | cr_irtx_pw_unit        |            |
|                 |               | 0x0010       | 8          | cr_irtx_mod_ph0_w      |            |
|                 |               | 0x0018       | 8          | cr_irtx_mod_ph1_w      |            |
| 0x0014          | 32            |              |            | irtx_pw                | read-write | irtx_pw.                |
|                 |               | 0x0000       | 4          | cr_irtx_logic0_ph0_w   |            |
|                 |               | 0x0004       | 4          | cr_irtx_logic0_ph1_w   |            |
|                 |               | 0x0008       | 4          | cr_irtx_logic1_ph0_w   |            |
|                 |               | 0x000C       | 4          | cr_irtx_logic1_ph1_w   |            |
|                 |               | 0x0010       | 4          | cr_irtx_head_ph0_w     |            |
|                 |               | 0x0014       | 4          | cr_irtx_head_ph1_w     |            |
|                 |               | 0x0018       | 4          | cr_irtx_tail_ph0_w     |            |
|                 |               | 0x001C       | 4          | cr_irtx_tail_ph1_w     |            |
| 0x0040          | 32            |              |            | irtx_swm_pw_0          | read-write | irtx_swm_pw_0.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_0       |            |
| 0x0044          | 32            |              |            | irtx_swm_pw_1          | read-write | irtx_swm_pw_1.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_1       |            |
| 0x0048          | 32            |              |            | irtx_swm_pw_2          | read-write | irtx_swm_pw_2.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_2       |            |
| 0x004C          | 32            |              |            | irtx_swm_pw_3          | read-write | irtx_swm_pw_3.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_3       |            |
| 0x0050          | 32            |              |            | irtx_swm_pw_4          | read-write | irtx_swm_pw_4.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_4       |            |
| 0x0054          | 32            |              |            | irtx_swm_pw_5          | read-write | irtx_swm_pw_5.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_5       |            |
| 0x0058          | 32            |              |            | irtx_swm_pw_6          | read-write | irtx_swm_pw_6.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_6       |            |
| 0x005C          | 32            |              |            | irtx_swm_pw_7          | read-write | irtx_swm_pw_7.          |
|                 |               | 0x0000       | 32         | cr_irtx_swm_pw_7       |            |
| 0x0080          | 32            |              |            | irrx_config            | read-write | irrx_config.            |
|                 |               | 0x0000       | 1          | cr_irrx_en             |            |
|                 |               | 0x0001       | 1          | cr_irrx_in_inv         |            |
|                 |               | 0x0002       | 2          | cr_irrx_mode           |            |
|                 |               | 0x0004       | 1          | cr_irrx_deg_en         |            |
|                 |               | 0x0008       | 4          | cr_irrx_deg_cnt        |            |
| 0x0084          | 32            |              |            | irrx_int_sts           | read-write | irrx_int_sts.           |
|                 |               | 0x0000       | 1          | irrx_end_int           |            |
|                 |               | 0x0008       | 1          | cr_irrx_end_mask       |            |
|                 |               | 0x0010       | 1          | cr_irrx_end_clr        |            |
|                 |               | 0x0018       | 1          | cr_irrx_end_en         |            |
| 0x0088          | 32            |              |            | irrx_pw_config         | read-write | irrx_pw_config.         |
|                 |               | 0x0000       | 16         | cr_irrx_data_th        |            |
|                 |               | 0x0010       | 16         | cr_irrx_end_th         |            |
| 0x0090          | 32            |              |            | irrx_data_count        | read-write | irrx_data_count.        |
|                 |               | 0x0000       | 7          | sts_irrx_data_cnt      |            |
| 0x0094          | 32            |              |            | irrx_data_word0        | read-write | irrx_data_word0.        |
|                 |               | 0x0000       | 32         | sts_irrx_data_word0    |            |
| 0x0098          | 32            |              |            | irrx_data_word1        | read-write | irrx_data_word1.        |
|                 |               | 0x0000       | 32         | sts_irrx_data_word1    |            |
| 0x00C0          | 32            |              |            | irrx_swm_fifo_config_0 | read-write | irrx_swm_fifo_config_0. |
|                 |               | 0x0000       | 1          | rx_fifo_clr            |            |
|                 |               | 0x0002       | 1          | rx_fifo_overflow       |            |
|                 |               | 0x0003       | 1          | rx_fifo_underflow      |            |
|                 |               | 0x0004       | 7          | rx_fifo_cnt            |            |
| 0x00C4          | 32            |              |            | irrx_swm_fifo_rdata    | read-write | irrx_swm_fifo_rdata.    |
|                 |               | 0x0000       | 16         | rx_fifo_rdata          |            |
