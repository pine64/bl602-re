# Peripheral: sec_dbg

- Register base address: 0x40003000

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description       |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | ----------------- |
| 0x0000          | 32            |              |            | sd_chip_id_low     | read-write | sd_chip_id_low.   |
|                 |               | 0x0000       | 32         | sd_chip_id_low     |            |
| 0x0004          | 32            |              |            | sd_chip_id_high    | read-write | sd_chip_id_high.  |
|                 |               | 0x0000       | 32         | sd_chip_id_high    |            |
| 0x0008          | 32            |              |            | sd_wifi_mac_low    | read-write | sd_wifi_mac_low.  |
|                 |               | 0x0000       | 32         | sd_wifi_mac_low    |            |
| 0x000C          | 32            |              |            | sd_wifi_mac_high   | read-write | sd_wifi_mac_high. |
|                 |               | 0x0000       | 32         | sd_wifi_mac_high   |            |
| 0x0010          | 32            |              |            | sd_dbg_pwd_low     | read-write | sd_dbg_pwd_low.   |
|                 |               | 0x0000       | 32         | sd_dbg_pwd_low     |            |
| 0x0014          | 32            |              |            | sd_dbg_pwd_high    | read-write | sd_dbg_pwd_high.  |
|                 |               | 0x0000       | 32         | sd_dbg_pwd_high    |            |
| 0x0018          | 32            |              |            | sd_status          | read-write | sd_status.        |
|                 |               | 0x0000       | 1          | sd_dbg_pwd_busy    |            |
|                 |               | 0x0001       | 1          | sd_dbg_pwd_trig    |            |
|                 |               | 0x0002       | 1          | sd_dbg_cci_read_en |            |
|                 |               | 0x0003       | 1          | sd_dbg_cci_clk_sel |            |
|                 |               | 0x0004       | 20         | sd_dbg_pwd_cnt     |            |
|                 |               | 0x0018       | 4          | sd_dbg_mode        |            |
|                 |               | 0x001C       | 4          | sd_dbg_ena         |            |
| 0x001C          | 32            |              |            | sd_dbg_reserved    | read-write | sd_dbg_reserved.  |
