# Peripheral: l1c

- Register base address: 0x40009000

## Registers

| Register offset | Register size | Field offset | Field size | Name                    | Direction  | Description           |
| --------------- | ------------- | ------------ | ---------- | ----------------------- | ---------- | --------------------- |
| 0x0000          | 32            |              |            | l1c_config              | read-write | l1c_config.           |
|                 |               | 0x0000       | 1          | l1c_cacheable           |            |
|                 |               | 0x0001       | 1          | l1c_cnt_en              |            |
|                 |               | 0x0002       | 1          | l1c_invalid_en          |            |
|                 |               | 0x0003       | 1          | l1c_invalid_done        |            |
|                 |               | 0x0008       | 4          | l1c_way_dis             |            |
|                 |               | 0x000C       | 1          | irom_2t_access          |            |
|                 |               | 0x000E       | 1          | l1c_bypass              |            |
|                 |               | 0x000F       | 1          | l1c_bmx_err_en          |            |
|                 |               | 0x0010       | 2          | l1c_bmx_arb_mode        |            |
|                 |               | 0x0014       | 4          | l1c_bmx_timeout_en      |            |
|                 |               | 0x0018       | 1          | l1c_bmx_busy_option_dis |            |
|                 |               | 0x0019       | 1          | early_resp_dis          |            |
|                 |               | 0x001A       | 1          | wrap_dis                |            |
| 0x0004          | 32            |              |            | hit_cnt_lsb             | read-write | hit_cnt_lsb.          |
|                 |               | 0x0000       | 32         | hit_cnt_lsb             |            |
| 0x0008          | 32            |              |            | hit_cnt_msb             | read-write | hit_cnt_msb.          |
|                 |               | 0x0000       | 32         | hit_cnt_msb             |            |
| 0x000C          | 32            |              |            | miss_cnt                | read-write | miss_cnt.             |
|                 |               | 0x0000       | 32         | miss_cnt                |            |
| 0x0010          | 32            |              |            | l1c_range               | read-write | l1c_range.            |
| 0x0200          | 32            |              |            | l1c_bmx_err_addr_en     | read-write | l1c_bmx_err_addr_en.  |
|                 |               | 0x0000       | 1          | l1c_bmx_err_addr_dis    |            |
|                 |               | 0x0004       | 1          | l1c_bmx_err_dec         |            |
|                 |               | 0x0005       | 1          | l1c_bmx_err_tz          |            |
|                 |               | 0x0010       | 4          | l1c_hsel_option         |            |
| 0x0204          | 32            |              |            | l1c_bmx_err_addr        | read-write | l1c_bmx_err_addr.     |
|                 |               | 0x0000       | 32         | l1c_bmx_err_addr        |            |
| 0x0208          | 32            |              |            | irom1_misr_dataout_0    | read-write | irom1_misr_dataout_0. |
|                 |               | 0x0000       | 32         | irom1_misr_dataout_0    |            |
| 0x020C          | 32            |              |            | irom1_misr_dataout_1    | read-write | irom1_misr_dataout_1. |
| 0x0210          | 32            |              |            | cpu_clk_gate            | read-write | cpu_clk_gate.         |
|                 |               | 0x0000       | 1          | force_e21_clock_on_0    |            |
|                 |               | 0x0001       | 1          | force_e21_clock_on_1    |            |
|                 |               | 0x0002       | 1          | force_e21_clock_on_2    |            |
