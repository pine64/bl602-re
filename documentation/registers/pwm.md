# Peripheral: pwm

- Register base address: 0x4000A400

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description     |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | --------------- |
| 0x0000          | 32            |              |            | pwm_int_config     | read-write | pwm_int_config. |
|                 |               | 0x0000       | 6          | pwm_interrupt_sts  |            |
|                 |               | 0x0008       | 6          | pwm_int_clear      |            |
| 0x0020          | 32            |              |            | pwm0_clkdiv        | read-write | pwm0_clkdiv.    |
|                 |               | 0x0000       | 16         | pwm_clk_div        |            |
| 0x0024          | 32            |              |            | pwm0_thre1         | read-write | pwm0_thre1.     |
|                 |               | 0x0000       | 16         | pwm_thre1          |            |
| 0x0028          | 32            |              |            | pwm0_thre2         | read-write | pwm0_thre2.     |
|                 |               | 0x0000       | 16         | pwm_thre2          |            |
| 0x002C          | 32            |              |            | pwm0_period        | read-write | pwm0_period.    |
|                 |               | 0x0000       | 16         | pwm_period         |            |
| 0x0030          | 32            |              |            | pwm0_config        | read-write | pwm0_config.    |
|                 |               | 0x0000       | 2          | reg_clk_sel        |            |
|                 |               | 0x0002       | 1          | pwm_out_inv        |            |
|                 |               | 0x0003       | 1          | pwm_stop_mode      |            |
|                 |               | 0x0004       | 1          | pwm_sw_force_val   |            |
|                 |               | 0x0005       | 1          | pwm_sw_mode        |            |
|                 |               | 0x0006       | 1          | pwm_stop_en        |            |
|                 |               | 0x0007       | 1          | pwm_sts_top        |            |
| 0x0034          | 32            |              |            | pwm0_interrupt     | read-write | pwm0_interrupt. |
|                 |               | 0x0000       | 16         | pwm_int_period_cnt |            |
|                 |               | 0x0010       | 1          | pwm_int_enable     |            |
| 0x0040          | 32            |              |            | pwm1_clkdiv        | read-write | pwm1_clkdiv.    |
|                 |               | 0x0000       | 16         | pwm_clk_div        |            |
| 0x0044          | 32            |              |            | pwm1_thre1         | read-write | pwm1_thre1.     |
|                 |               | 0x0000       | 16         | pwm_thre1          |            |
| 0x0048          | 32            |              |            | pwm1_thre2         | read-write | pwm1_thre2.     |
|                 |               | 0x0000       | 16         | pwm_thre2          |            |
| 0x004C          | 32            |              |            | pwm1_period        | read-write | pwm1_period.    |
|                 |               | 0x0000       | 16         | pwm_period         |            |
| 0x0050          | 32            |              |            | pwm1_config        | read-write | pwm1_config.    |
|                 |               | 0x0000       | 2          | reg_clk_sel        |            |
|                 |               | 0x0002       | 1          | pwm_out_inv        |            |
|                 |               | 0x0003       | 1          | pwm_stop_mode      |            |
|                 |               | 0x0004       | 1          | pwm_sw_force_val   |            |
|                 |               | 0x0005       | 1          | pwm_sw_mode        |            |
|                 |               | 0x0006       | 1          | pwm_stop_en        |            |
|                 |               | 0x0007       | 1          | pwm_sts_top        |            |
| 0x0054          | 32            |              |            | pwm1_interrupt     | read-write | pwm1_interrupt. |
|                 |               | 0x0000       | 16         | pwm_int_period_cnt |            |
|                 |               | 0x0010       | 1          | pwm_int_enable     |            |
| 0x0060          | 32            |              |            | pwm2_clkdiv        | read-write | pwm2_clkdiv.    |
|                 |               | 0x0000       | 16         | pwm_clk_div        |            |
| 0x0064          | 32            |              |            | pwm2_thre1         | read-write | pwm2_thre1.     |
|                 |               | 0x0000       | 16         | pwm_thre1          |            |
| 0x0068          | 32            |              |            | pwm2_thre2         | read-write | pwm2_thre2.     |
|                 |               | 0x0000       | 16         | pwm_thre2          |            |
| 0x006C          | 32            |              |            | pwm2_period        | read-write | pwm2_period.    |
|                 |               | 0x0000       | 16         | pwm_period         |            |
| 0x0070          | 32            |              |            | pwm2_config        | read-write | pwm2_config.    |
|                 |               | 0x0000       | 2          | reg_clk_sel        |            |
|                 |               | 0x0002       | 1          | pwm_out_inv        |            |
|                 |               | 0x0003       | 1          | pwm_stop_mode      |            |
|                 |               | 0x0004       | 1          | pwm_sw_force_val   |            |
|                 |               | 0x0005       | 1          | pwm_sw_mode        |            |
|                 |               | 0x0006       | 1          | pwm_stop_en        |            |
|                 |               | 0x0007       | 1          | pwm_sts_top        |            |
| 0x0074          | 32            |              |            | pwm2_interrupt     | read-write | pwm2_interrupt. |
|                 |               | 0x0000       | 16         | pwm_int_period_cnt |            |
|                 |               | 0x0010       | 1          | pwm_int_enable     |            |
| 0x0080          | 32            |              |            | pwm3_clkdiv        | read-write | pwm3_clkdiv.    |
|                 |               | 0x0000       | 16         | pwm_clk_div        |            |
| 0x0084          | 32            |              |            | pwm3_thre1         | read-write | pwm3_thre1.     |
|                 |               | 0x0000       | 16         | pwm_thre1          |            |
| 0x0088          | 32            |              |            | pwm3_thre2         | read-write | pwm3_thre2.     |
|                 |               | 0x0000       | 16         | pwm_thre2          |            |
| 0x008C          | 32            |              |            | pwm3_period        | read-write | pwm3_period.    |
|                 |               | 0x0000       | 16         | pwm_period         |            |
| 0x0090          | 32            |              |            | pwm3_config        | read-write | pwm3_config.    |
|                 |               | 0x0000       | 2          | reg_clk_sel        |            |
|                 |               | 0x0002       | 1          | pwm_out_inv        |            |
|                 |               | 0x0003       | 1          | pwm_stop_mode      |            |
|                 |               | 0x0004       | 1          | pwm_sw_force_val   |            |
|                 |               | 0x0005       | 1          | pwm_sw_mode        |            |
|                 |               | 0x0006       | 1          | pwm_stop_en        |            |
|                 |               | 0x0007       | 1          | pwm_sts_top        |            |
| 0x0094          | 32            |              |            | pwm3_interrupt     | read-write | pwm3_interrupt. |
|                 |               | 0x0000       | 16         | pwm_int_period_cnt |            |
|                 |               | 0x0010       | 1          | pwm_int_enable     |            |
| 0x00A0          | 32            |              |            | pwm4_clkdiv        | read-write | pwm4_clkdiv.    |
|                 |               | 0x0000       | 16         | pwm_clk_div        |            |
| 0x00A4          | 32            |              |            | pwm4_thre1         | read-write | pwm4_thre1.     |
|                 |               | 0x0000       | 16         | pwm_thre1          |            |
| 0x00A8          | 32            |              |            | pwm4_thre2         | read-write | pwm4_thre2.     |
|                 |               | 0x0000       | 16         | pwm_thre2          |            |
| 0x00AC          | 32            |              |            | pwm4_period        | read-write | pwm4_period.    |
|                 |               | 0x0000       | 16         | pwm_period         |            |
| 0x00B0          | 32            |              |            | pwm4_config        | read-write | pwm4_config.    |
|                 |               | 0x0000       | 2          | reg_clk_sel        |            |
|                 |               | 0x0002       | 1          | pwm_out_inv        |            |
|                 |               | 0x0003       | 1          | pwm_stop_mode      |            |
|                 |               | 0x0004       | 1          | pwm_sw_force_val   |            |
|                 |               | 0x0005       | 1          | pwm_sw_mode        |            |
|                 |               | 0x0006       | 1          | pwm_stop_en        |            |
|                 |               | 0x0007       | 1          | pwm_sts_top        |            |
| 0x00B4          | 32            |              |            | pwm4_interrupt     | read-write | pwm4_interrupt. |
|                 |               | 0x0000       | 16         | pwm_int_period_cnt |            |
|                 |               | 0x0010       | 1          | pwm_int_enable     |            |
