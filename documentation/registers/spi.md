# Peripheral: spi

- Register base address: 0x4000A200

## Registers

| Register offset | Register size | Field offset | Field size | Name               | Direction  | Description        |
| --------------- | ------------- | ------------ | ---------- | ------------------ | ---------- | ------------------ |
| 0x0000          | 32            |              |            | spi_config         | read-write | spi_config.        |
|                 |               | 0x0000       | 1          | cr_spi_m_en        |            |
|                 |               | 0x0001       | 1          | cr_spi_s_en        |            |
|                 |               | 0x0002       | 2          | cr_spi_frame_size  |            |
|                 |               | 0x0004       | 1          | cr_spi_sclk_pol    |            |
|                 |               | 0x0005       | 1          | cr_spi_sclk_ph     |            |
|                 |               | 0x0006       | 1          | cr_spi_bit_inv     |            |
|                 |               | 0x0007       | 1          | cr_spi_byte_inv    |            |
|                 |               | 0x0008       | 1          | cr_spi_rxd_ignr_en |            |
|                 |               | 0x0009       | 1          | cr_spi_m_cont_en   |            |
|                 |               | 0x000B       | 1          | cr_spi_deg_en      |            |
|                 |               | 0x000C       | 4          | cr_spi_deg_cnt     |            |
| 0x0004          | 32            |              |            | spi_int_sts        | read-write | spi_int_sts.       |
|                 |               | 0x0000       | 1          | spi_end_int        |            |
|                 |               | 0x0001       | 1          | spi_txf_int        |            |
|                 |               | 0x0002       | 1          | spi_rxf_int        |            |
|                 |               | 0x0003       | 1          | spi_sto_int        |            |
|                 |               | 0x0004       | 1          | spi_txu_int        |            |
|                 |               | 0x0005       | 1          | spi_fer_int        |            |
|                 |               | 0x0008       | 1          | cr_spi_end_mask    |            |
|                 |               | 0x0009       | 1          | cr_spi_txf_mask    |            |
|                 |               | 0x000A       | 1          | cr_spi_rxf_mask    |            |
|                 |               | 0x000B       | 1          | cr_spi_sto_mask    |            |
|                 |               | 0x000C       | 1          | cr_spi_txu_mask    |            |
|                 |               | 0x000D       | 1          | cr_spi_fer_mask    |            |
|                 |               | 0x0010       | 1          | cr_spi_end_clr     |            |
|                 |               | 0x0011       | 1          | rsvd_17            |            |
|                 |               | 0x0012       | 1          | rsvd_18            |            |
|                 |               | 0x0013       | 1          | cr_spi_sto_clr     |            |
|                 |               | 0x0014       | 1          | cr_spi_txu_clr     |            |
|                 |               | 0x0015       | 1          | rsvd_21            |            |
|                 |               | 0x0018       | 1          | cr_spi_end_en      |            |
|                 |               | 0x0019       | 1          | cr_spi_txf_en      |            |
|                 |               | 0x001A       | 1          | cr_spi_rxf_en      |            |
|                 |               | 0x001B       | 1          | cr_spi_sto_en      |            |
|                 |               | 0x001C       | 1          | cr_spi_txu_en      |            |
|                 |               | 0x001D       | 1          | cr_spi_fer_en      |            |
| 0x0008          | 32            |              |            | spi_bus_busy       | read-write | spi_bus_busy.      |
|                 |               | 0x0000       | 1          | sts_spi_bus_busy   |            |
| 0x0010          | 32            |              |            | spi_prd_0          | read-write | spi_prd_0.         |
|                 |               | 0x0000       | 8          | cr_spi_prd_s       |            |
|                 |               | 0x0008       | 8          | cr_spi_prd_p       |            |
|                 |               | 0x0010       | 8          | cr_spi_prd_d_ph_0  |            |
|                 |               | 0x0018       | 8          | cr_spi_prd_d_ph_1  |            |
| 0x0014          | 32            |              |            | spi_prd_1          | read-write | spi_prd_1.         |
|                 |               | 0x0000       | 8          | cr_spi_prd_i       |            |
| 0x0018          | 32            |              |            | spi_rxd_ignr       | read-write | spi_rxd_ignr.      |
|                 |               | 0x0000       | 5          | cr_spi_rxd_ignr_p  |            |
|                 |               | 0x0010       | 5          | cr_spi_rxd_ignr_s  |            |
| 0x001C          | 32            |              |            | spi_sto_value      | read-write | spi_sto_value.     |
|                 |               | 0x0000       | 12         | cr_spi_sto_value   |            |
| 0x0080          | 32            |              |            | spi_fifo_config_0  | read-write | spi_fifo_config_0. |
|                 |               | 0x0000       | 1          | spi_dma_tx_en      |            |
|                 |               | 0x0001       | 1          | spi_dma_rx_en      |            |
|                 |               | 0x0002       | 1          | tx_fifo_clr        |            |
|                 |               | 0x0003       | 1          | rx_fifo_clr        |            |
|                 |               | 0x0004       | 1          | tx_fifo_overflow   |            |
|                 |               | 0x0005       | 1          | tx_fifo_underflow  |            |
|                 |               | 0x0006       | 1          | rx_fifo_overflow   |            |
|                 |               | 0x0007       | 1          | rx_fifo_underflow  |            |
| 0x0084          | 32            |              |            | spi_fifo_config_1  | read-write | spi_fifo_config_1. |
|                 |               | 0x0000       | 3          | tx_fifo_cnt        |            |
|                 |               | 0x0008       | 3          | rx_fifo_cnt        |            |
|                 |               | 0x0010       | 2          | tx_fifo_th         |            |
|                 |               | 0x0018       | 2          | rx_fifo_th         |            |
| 0x0088          | 32            |              |            | spi_fifo_wdata     | read-write | spi_fifo_wdata.    |
|                 |               | 0x0000       | 32         | spi_fifo_wdata     |            |
| 0x008C          | 32            |              |            | spi_fifo_rdata     | read-write | spi_fifo_rdata.    |
|                 |               | 0x0000       | 32         | spi_fifo_rdata     |            |
