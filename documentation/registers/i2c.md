# Peripheral: i2c

- Register base address: 0x4000A300

## Registers

| Register offset | Register size | Field offset | Field size | Name                | Direction  | Description        |
| --------------- | ------------- | ------------ | ---------- | ------------------- | ---------- | ------------------ |
| 0x0000          | 32            |              |            | i2c_config          | read-write | i2c_config.        |
|                 |               | 0x0000       | 1          | cr_i2c_m_en         |            |
|                 |               | 0x0001       | 1          | cr_i2c_pkt_dir      |            |
|                 |               | 0x0002       | 1          | cr_i2c_deg_en       |            |
|                 |               | 0x0003       | 1          | cr_i2c_scl_sync_en  |            |
|                 |               | 0x0004       | 1          | cr_i2c_sub_addr_en  |            |
|                 |               | 0x0005       | 2          | cr_i2c_sub_addr_bc  |            |
|                 |               | 0x0008       | 7          | cr_i2c_slv_addr     |            |
|                 |               | 0x0010       | 8          | cr_i2c_pkt_len      |            |
|                 |               | 0x001C       | 4          | cr_i2c_deg_cnt      |            |
| 0x0004          | 32            |              |            | i2c_int_sts         | read-write | i2c_int_sts.       |
|                 |               | 0x0000       | 1          | i2c_end_int         |            |
|                 |               | 0x0001       | 1          | i2c_txf_int         |            |
|                 |               | 0x0002       | 1          | i2c_rxf_int         |            |
|                 |               | 0x0003       | 1          | i2c_nak_int         |            |
|                 |               | 0x0004       | 1          | i2c_arb_int         |            |
|                 |               | 0x0005       | 1          | i2c_fer_int         |            |
|                 |               | 0x0008       | 1          | cr_i2c_end_mask     |            |
|                 |               | 0x0009       | 1          | cr_i2c_txf_mask     |            |
|                 |               | 0x000A       | 1          | cr_i2c_rxf_mask     |            |
|                 |               | 0x000B       | 1          | cr_i2c_nak_mask     |            |
|                 |               | 0x000C       | 1          | cr_i2c_arb_mask     |            |
|                 |               | 0x000D       | 1          | cr_i2c_fer_mask     |            |
|                 |               | 0x0010       | 1          | cr_i2c_end_clr      |            |
|                 |               | 0x0011       | 1          | rsvd_17             |            |
|                 |               | 0x0012       | 1          | rsvd_18             |            |
|                 |               | 0x0013       | 1          | cr_i2c_nak_clr      |            |
|                 |               | 0x0014       | 1          | cr_i2c_arb_clr      |            |
|                 |               | 0x0015       | 1          | rsvd_21             |            |
|                 |               | 0x0018       | 1          | cr_i2c_end_en       |            |
|                 |               | 0x0019       | 1          | cr_i2c_txf_en       |            |
|                 |               | 0x001A       | 1          | cr_i2c_rxf_en       |            |
|                 |               | 0x001B       | 1          | cr_i2c_nak_en       |            |
|                 |               | 0x001C       | 1          | cr_i2c_arb_en       |            |
|                 |               | 0x001D       | 1          | cr_i2c_fer_en       |            |
| 0x0008          | 32            |              |            | i2c_sub_addr        | read-write | i2c_sub_addr.      |
|                 |               | 0x0000       | 8          | cr_i2c_sub_addr_b0  |            |
|                 |               | 0x0008       | 8          | cr_i2c_sub_addr_b1  |            |
|                 |               | 0x0010       | 8          | cr_i2c_sub_addr_b2  |            |
|                 |               | 0x0018       | 8          | cr_i2c_sub_addr_b3  |            |
| 0x000C          | 32            |              |            | i2c_bus_busy        | read-write | i2c_bus_busy.      |
|                 |               | 0x0000       | 1          | sts_i2c_bus_busy    |            |
|                 |               | 0x0001       | 1          | cr_i2c_bus_busy_clr |            |
| 0x0010          | 32            |              |            | i2c_prd_start       | read-write | i2c_prd_start.     |
|                 |               | 0x0000       | 8          | cr_i2c_prd_s_ph_0   |            |
|                 |               | 0x0008       | 8          | cr_i2c_prd_s_ph_1   |            |
|                 |               | 0x0010       | 8          | cr_i2c_prd_s_ph_2   |            |
|                 |               | 0x0018       | 8          | cr_i2c_prd_s_ph_3   |            |
| 0x0014          | 32            |              |            | i2c_prd_stop        | read-write | i2c_prd_stop.      |
|                 |               | 0x0000       | 8          | cr_i2c_prd_p_ph_0   |            |
|                 |               | 0x0008       | 8          | cr_i2c_prd_p_ph_1   |            |
|                 |               | 0x0010       | 8          | cr_i2c_prd_p_ph_2   |            |
|                 |               | 0x0018       | 8          | cr_i2c_prd_p_ph_3   |            |
| 0x0018          | 32            |              |            | i2c_prd_data        | read-write | i2c_prd_data.      |
|                 |               | 0x0000       | 8          | cr_i2c_prd_d_ph_0   |            |
|                 |               | 0x0008       | 8          | cr_i2c_prd_d_ph_1   |            |
|                 |               | 0x0010       | 8          | cr_i2c_prd_d_ph_2   |            |
|                 |               | 0x0018       | 8          | cr_i2c_prd_d_ph_3   |            |
| 0x0080          | 32            |              |            | i2c_fifo_config_0   | read-write | i2c_fifo_config_0. |
|                 |               | 0x0000       | 1          | i2c_dma_tx_en       |            |
|                 |               | 0x0001       | 1          | i2c_dma_rx_en       |            |
|                 |               | 0x0002       | 1          | tx_fifo_clr         |            |
|                 |               | 0x0003       | 1          | rx_fifo_clr         |            |
|                 |               | 0x0004       | 1          | tx_fifo_overflow    |            |
|                 |               | 0x0005       | 1          | tx_fifo_underflow   |            |
|                 |               | 0x0006       | 1          | rx_fifo_overflow    |            |
|                 |               | 0x0007       | 1          | rx_fifo_underflow   |            |
| 0x0084          | 32            |              |            | i2c_fifo_config_1   | read-write | i2c_fifo_config_1. |
|                 |               | 0x0000       | 2          | tx_fifo_cnt         |            |
|                 |               | 0x0008       | 2          | rx_fifo_cnt         |            |
|                 |               | 0x0010       | 1          | tx_fifo_th          |            |
|                 |               | 0x0018       | 1          | rx_fifo_th          |            |
| 0x0088          | 32            |              |            | i2c_fifo_wdata      | read-write | i2c_fifo_wdata.    |
|                 |               | 0x0000       | 32         | i2c_fifo_wdata      |            |
| 0x008C          | 32            |              |            | i2c_fifo_rdata      | read-write | i2c_fifo_rdata.    |
|                 |               | 0x0000       | 32         | i2c_fifo_rdata      |            |
