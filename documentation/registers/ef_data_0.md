# Peripheral: ef_data_0

- Register base address: 0x40007000

## Registers

| Register offset | Register size | Field offset | Field size | Name                 | Direction  | Description       |
| --------------- | ------------- | ------------ | ---------- | -------------------- | ---------- | ----------------- |
| 0x0000          | 32            |              |            | ef_cfg_0             | read-write | ef_cfg_0.         |
|                 |               | 0x0000       | 2          | ef_sf_aes_mode       |            |                   |
|                 |               | 0x0002       | 2          | ef_sboot_sign_mode   |            |                   |
|                 |               | 0x0004       | 2          | ef_sboot_en          |            |                   |
|                 |               | 0x0006       | 1          | ef_cpu1_enc_en       |            |                   |
|                 |               | 0x0007       | 1          | ef_cpu0_enc_en       |            |                   |
|                 |               | 0x0008       | 4          | ef_boot_sel          |            |                   |
|                 |               | 0x000C       | 2          | ef_sw_usage_1        |            |                   |
|                 |               | 0x000E       | 1          | ef_sdu_dis           |            |                   |
|                 |               | 0x000F       | 1          | ef_ble_dis           |            |                   |
|                 |               | 0x0010       | 1          | ef_wifi_dis          |            |                   |
|                 |               | 0x0011       | 1          | ef_0_key_enc_en      |            |                   |
|                 |               | 0x0012       | 1          | ef_cam_dis           |            |                   |
|                 |               | 0x0013       | 1          | ef_sf_dis            |            |                   |
|                 |               | 0x0014       | 1          | ef_cpu1_dis          |            |                   |
|                 |               | 0x0015       | 1          | ef_cpu_rst_dbg_dis   |            |                   |
|                 |               | 0x0016       | 1          | ef_se_dbg_dis        |            |                   |
|                 |               | 0x0017       | 1          | ef_efuse_dbg_dis     |            |                   |
|                 |               | 0x0018       | 2          | ef_dbg_jtag_1_dis    |            |                   |
|                 |               | 0x001A       | 2          | ef_dbg_jtag_0_dis    |            |                   |
|                 |               | 0x001C       | 4          | ef_dbg_mode          |            |                   |
| 0x0004          | 32            |              |            | ef_dbg_pwd_low       | read-write | ef_dbg_pwd_low.   |
|                 |               | 0x0000       | 32         | ef_dbg_pwd_low       |            |                   |
| 0x0008          | 32            |              |            | ef_dbg_pwd_high      | read-write | ef_dbg_pwd_high.  |
|                 |               | 0x0000       | 32         | ef_dbg_pwd_high      |            |                   |
| 0x000C          | 32            |              |            | ef_ana_trim_0        | read-write | ef_ana_trim_0.    |
|                 |               | 0x0000       | 32         | ef_ana_trim_0        |            |                   |
| 0x0010          | 32            |              |            | ef_sw_usage_0        | read-write | ef_sw_usage_0.    |
|                 |               | 0x0000       | 32         | ef_sw_usage_0        |            |                   |
| 0x0014          | 32            |              |            | ef_wifi_mac_low      | read-write | ef_wifi_mac_low.  |
|                 |               | 0x0000       | 32         | ef_wifi_mac_low      |            |                   |
| 0x0018          | 32            |              |            | ef_wifi_mac_high     | read-write | ef_wifi_mac_high. |
|                 |               | 0x0000       | 32         | ef_wifi_mac_high     |            |                   |
| 0x001C          | 32            |              |            | ef_key_slot_0_w0     | read-write | ef_key_slot_0_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_0_w0     |            |                   |
| 0x0020          | 32            |              |            | ef_key_slot_0_w1     | read-write | ef_key_slot_0_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_0_w1     |            |                   |
| 0x0024          | 32            |              |            | ef_key_slot_0_w2     | read-write | ef_key_slot_0_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_0_w2     |            |                   |
| 0x0028          | 32            |              |            | ef_key_slot_0_w3     | read-write | ef_key_slot_0_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_0_w3     |            |                   |
| 0x002C          | 32            |              |            | ef_key_slot_1_w0     | read-write | ef_key_slot_1_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_1_w0     |            |                   |
| 0x0030          | 32            |              |            | ef_key_slot_1_w1     | read-write | ef_key_slot_1_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_1_w1     |            |                   |
| 0x0034          | 32            |              |            | ef_key_slot_1_w2     | read-write | ef_key_slot_1_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_1_w2     |            |                   |
| 0x0038          | 32            |              |            | ef_key_slot_1_w3     | read-write | ef_key_slot_1_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_1_w3     |            |                   |
| 0x003C          | 32            |              |            | ef_key_slot_2_w0     | read-write | ef_key_slot_2_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_2_w0     |            |                   |
| 0x0040          | 32            |              |            | ef_key_slot_2_w1     | read-write | ef_key_slot_2_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_2_w1     |            |                   |
| 0x0044          | 32            |              |            | ef_key_slot_2_w2     | read-write | ef_key_slot_2_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_2_w2     |            |                   |
| 0x0048          | 32            |              |            | ef_key_slot_2_w3     | read-write | ef_key_slot_2_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_2_w3     |            |                   |
| 0x004C          | 32            |              |            | ef_key_slot_3_w0     | read-write | ef_key_slot_3_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_3_w0     |            |                   |
| 0x0050          | 32            |              |            | ef_key_slot_3_w1     | read-write | ef_key_slot_3_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_3_w1     |            |                   |
| 0x0054          | 32            |              |            | ef_key_slot_3_w2     | read-write | ef_key_slot_3_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_3_w2     |            |                   |
| 0x0058          | 32            |              |            | ef_key_slot_3_w3     | read-write | ef_key_slot_3_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_3_w3     |            |                   |
| 0x005C          | 32            |              |            | ef_key_slot_4_w0     | read-write | ef_key_slot_4_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_4_w0     |            |                   |
| 0x0060          | 32            |              |            | ef_key_slot_4_w1     | read-write | ef_key_slot_4_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_4_w1     |            |                   |
| 0x0064          | 32            |              |            | ef_key_slot_4_w2     | read-write | ef_key_slot_4_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_4_w2     |            |                   |
| 0x0068          | 32            |              |            | ef_key_slot_4_w3     | read-write | ef_key_slot_4_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_4_w3     |            |                   |
| 0x006C          | 32            |              |            | ef_key_slot_5_w0     | read-write | ef_key_slot_5_w0. |
|                 |               | 0x0000       | 32         | ef_key_slot_5_w0     |            |                   |
| 0x0070          | 32            |              |            | ef_key_slot_5_w1     | read-write | ef_key_slot_5_w1. |
|                 |               | 0x0000       | 32         | ef_key_slot_5_w1     |            |                   |
| 0x0074          | 32            |              |            | ef_key_slot_5_w2     | read-write | ef_key_slot_5_w2. |
|                 |               | 0x0000       | 32         | ef_key_slot_5_w2     |            |                   |
| 0x0078          | 32            |              |            | ef_key_slot_5_w3     | read-write | ef_key_slot_5_w3. |
|                 |               | 0x0000       | 32         | ef_key_slot_5_w3     |            |                   |
| 0x007C          | 32            |              |            | ef_data_0_lock       | read-write | ef_data_0_lock.   |
|                 |               | 0x0000       | 13         | ef_ana_trim_1        |            |                   |
|                 |               | 0x000D       | 1          | wr_lock_key_slot_4_l |            |                   |
|                 |               | 0x000E       | 1          | wr_lock_key_slot_5_l |            |                   |
|                 |               | 0x000F       | 1          | wr_lock_boot_mode    |            |                   |
|                 |               | 0x0010       | 1          | wr_lock_dbg_pwd      |            |                   |
|                 |               | 0x0011       | 1          | wr_lock_sw_usage_0   |            |                   |
|                 |               | 0x0012       | 1          | wr_lock_wifi_mac     |            |                   |
|                 |               | 0x0013       | 1          | wr_lock_key_slot_0   |            |                   |
|                 |               | 0x0014       | 1          | wr_lock_key_slot_1   |            |                   |
|                 |               | 0x0015       | 1          | wr_lock_key_slot_2   |            |                   |
|                 |               | 0x0016       | 1          | wr_lock_key_slot_3   |            |                   |
|                 |               | 0x0017       | 1          | wr_lock_key_slot_4_h |            |                   |
|                 |               | 0x0018       | 1          | wr_lock_key_slot_5_h |            |                   |
|                 |               | 0x0019       | 1          | rd_lock_dbg_pwd      |            |                   |
|                 |               | 0x001A       | 1          | rd_lock_key_slot_0   |            |                   |
|                 |               | 0x001B       | 1          | rd_lock_key_slot_1   |            |                   |
|                 |               | 0x001C       | 1          | rd_lock_key_slot_2   |            |                   |
|                 |               | 0x001D       | 1          | rd_lock_key_slot_3   |            |                   |
|                 |               | 0x001E       | 1          | rd_lock_key_slot_4   |            |                   |
|                 |               | 0x001F       | 1          | rd_lock_key_slot_5   |            |                   |
