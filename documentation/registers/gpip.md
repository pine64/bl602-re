# Peripheral: gpip

- Register base address: 0x40002000

## Registers

| Register offset | Register size | Field offset | Field size | Name                     | Direction  | Description           |
| --------------- | ------------- | ------------ | ---------- | ------------------------ | ---------- | --------------------- |
| 0x0000          | 32            |              |            | gpadc_config             | read-write | gpadc_config.         |
|                 |               | 0x0000       | 1          | gpadc_dma_en             |            |
|                 |               | 0x0001       | 1          | gpadc_fifo_clr           |            |
|                 |               | 0x0002       | 1          | gpadc_fifo_ne            |            |
|                 |               | 0x0003       | 1          | gpadc_fifo_full          |            |
|                 |               | 0x0004       | 1          | gpadc_rdy                |            |
|                 |               | 0x0005       | 1          | gpadc_fifo_overrun       |            |
|                 |               | 0x0006       | 1          | gpadc_fifo_underrun      |            |
|                 |               | 0x0008       | 1          | gpadc_rdy_clr            |            |
|                 |               | 0x0009       | 1          | gpadc_fifo_overrun_clr   |            |
|                 |               | 0x000A       | 1          | gpadc_fifo_underrun_clr  |            |
|                 |               | 0x000C       | 1          | gpadc_rdy_mask           |            |
|                 |               | 0x000D       | 1          | gpadc_fifo_overrun_mask  |            |
|                 |               | 0x000E       | 1          | gpadc_fifo_underrun_mask |            |
|                 |               | 0x0010       | 6          | gpadc_fifo_data_count    |            |
|                 |               | 0x0016       | 2          | gpadc_fifo_thl           |            |
|                 |               | 0x0018       | 8          | rsvd_31_24               |            |
| 0x0004          | 32            |              |            | gpadc_dma_rdata          | read-write | gpadc_dma_rdata.      |
|                 |               | 0x0000       | 26         | gpadc_dma_rdata          |            |
|                 |               | 0x001A       | 6          | rsvd_31_26               |            |
| 0x0040          | 32            |              |            | gpdac_config             | read-write | gpdac_config.         |
|                 |               | 0x0000       | 1          | gpdac_en                 |            |
|                 |               | 0x0001       | 1          | gpdac_en2                |            |
|                 |               | 0x0004       | 2          | dsm_mode                 |            |
|                 |               | 0x0008       | 3          | gpdac_mode               |            |
|                 |               | 0x0010       | 4          | gpdac_ch_a_sel           |            |
|                 |               | 0x0014       | 4          | gpdac_ch_b_sel           |            |
|                 |               | 0x0018       | 8          | rsvd_31_24               |            |
| 0x0044          | 32            |              |            | gpdac_dma_config         | read-write | gpdac_dma_config.     |
|                 |               | 0x0000       | 1          | gpdac_dma_tx_en          |            |
|                 |               | 0x0004       | 2          | gpdac_dma_format         |            |
| 0x0048          | 32            |              |            | gpdac_dma_wdata          | read-write | gpdac_dma_wdata.      |
|                 |               | 0x0000       | 32         | gpdac_dma_wdata          |            |
| 0x004C          | 32            |              |            | gpdac_tx_fifo_status     | read-write | gpdac_tx_fifo_status. |
|                 |               | 0x0000       | 1          | tx_fifo_empty            |            |
|                 |               | 0x0001       | 1          | tx_fifo_full             |            |
|                 |               | 0x0002       | 2          | tx_cs                    |            |
|                 |               | 0x0004       | 3          | TxFifoRdPtr              |            |
|                 |               | 0x0008       | 2          | TxFifoWrPtr              |            |
