# Peripheral: cci

- Register base address: 0x40008000

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | ----------- |
| 0x0000          | 32            |              |            | cci_cfg            | read-write | cci_cfg.    |
|                 |               | 0x0000       | 1          | cci_en             |            |             |
|                 |               | 0x0001       | 1          | cci_slv_sel_cci2   |            |             |
|                 |               | 0x0002       | 1          | cci_mas_sel_cci2   |            |             |
|                 |               | 0x0003       | 1          | cci_mas_hw_mode    |            |             |
|                 |               | 0x0004       | 1          | reg_m_cci_sclk_en  |            |             |
|                 |               | 0x0005       | 2          | reg_div_m_cci_sclk |            |             |
|                 |               | 0x0007       | 1          | cfg_cci1_pre_read  |            |             |
|                 |               | 0x0008       | 1          | reg_scci_clk_inv   |            |             |
|                 |               | 0x0009       | 1          | reg_mcci_clk_inv   |            |             |
| 0x0004          | 32            |              |            | cci_addr           | read-write | cci_addr.   |
|                 |               | 0x0000       | 32         | apb_cci_addr       |            |             |
| 0x0008          | 32            |              |            | cci_wdata          | read-write | cci_wdata.  |
|                 |               | 0x0000       | 32         | apb_cci_wdata      |            |             |
| 0x000C          | 32            |              |            | cci_rdata          | read-write | cci_rdata.  |
|                 |               | 0x0000       | 32         | apb_cci_rdata      |            |             |
| 0x0010          | 32            |              |            | cci_ctl            | read-write | cci_ctl.    |
|                 |               | 0x0000       | 1          | cci_write_flag     |            |             |
|                 |               | 0x0001       | 1          | cci_read_flag      |            |             |
|                 |               | 0x0002       | 2          | ahb_state          |            |             |
