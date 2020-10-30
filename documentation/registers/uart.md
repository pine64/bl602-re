# Peripheral: uart

- Register base address: 0x4000A000

## Registers

| Register offset | Register size | Field offset | Field size | Name                  | Direction  | Description           |
| --------------- | ------------- | ------------ | ---------- | --------------------- | ---------- | --------------------- |
| 0x0000          | 32            |              |            | utx_config            | read-write | utx_config.           |
|                 |               | 0x0000       | 1          | cr_utx_en             |            |
|                 |               | 0x0001       | 1          | cr_utx_cts_en         |            |
|                 |               | 0x0002       | 1          | cr_utx_frm_en         |            |
|                 |               | 0x0004       | 1          | cr_utx_prt_en         |            |
|                 |               | 0x0005       | 1          | cr_utx_prt_sel        |            |
|                 |               | 0x0006       | 1          | cr_utx_ir_en          |            |
|                 |               | 0x0007       | 1          | cr_utx_ir_inv         |            |
|                 |               | 0x0008       | 3          | cr_utx_bit_cnt_d      |            |
|                 |               | 0x000C       | 2          | cr_utx_bit_cnt_p      |            |
|                 |               | 0x0010       | 16         | cr_utx_len            |            |
| 0x0004          | 32            |              |            | urx_config            | read-write | urx_config.           |
|                 |               | 0x0000       | 1          | cr_urx_en             |            |
|                 |               | 0x0001       | 1          | cr_urx_rts_sw_mode    |            |
|                 |               | 0x0002       | 1          | cr_urx_rts_sw_val     |            |
|                 |               | 0x0003       | 1          | cr_urx_abr_en         |            |
|                 |               | 0x0004       | 1          | cr_urx_prt_en         |            |
|                 |               | 0x0005       | 1          | cr_urx_prt_sel        |            |
|                 |               | 0x0006       | 1          | cr_urx_ir_en          |            |
|                 |               | 0x0007       | 1          | cr_urx_ir_inv         |            |
|                 |               | 0x0008       | 3          | cr_urx_bit_cnt_d      |            |
|                 |               | 0x000B       | 1          | cr_urx_deg_en         |            |
|                 |               | 0x000C       | 4          | cr_urx_deg_cnt        |            |
|                 |               | 0x0010       | 16         | cr_urx_len            |            |
| 0x0008          | 32            |              |            | uart_bit_prd          | read-write | uart_bit_prd.         |
|                 |               | 0x0000       | 16         | cr_utx_bit_prd        |            |
|                 |               | 0x0010       | 16         | cr_urx_bit_prd        |            |
| 0x000C          | 32            |              |            | data_config           | read-write | data_config.          |
|                 |               | 0x0000       | 1          | cr_uart_bit_inv       |            |
| 0x0010          | 32            |              |            | utx_ir_position       | read-write | utx_ir_position.      |
|                 |               | 0x0000       | 16         | cr_utx_ir_pos_s       |            |
|                 |               | 0x0010       | 16         | cr_utx_ir_pos_p       |            |
| 0x0014          | 32            |              |            | urx_ir_position       | read-write | urx_ir_position.      |
|                 |               | 0x0000       | 16         | cr_urx_ir_pos_s       |            |
| 0x0018          | 32            |              |            | urx_rto_timer         | read-write | urx_rto_timer.        |
|                 |               | 0x0000       | 8          | cr_urx_rto_value      |            |
| 0x0020          | 32            |              |            | uart_int_sts          | read-write | UART interrupt status |
|                 |               | 0x0000       | 1          | utx_end_int           |            |
|                 |               | 0x0001       | 1          | urx_end_int           |            |
|                 |               | 0x0002       | 1          | utx_fifo_int          |            |
|                 |               | 0x0003       | 1          | urx_fifo_int          |            |
|                 |               | 0x0004       | 1          | urx_rto_int           |            |
|                 |               | 0x0005       | 1          | urx_pce_int           |            |
|                 |               | 0x0006       | 1          | utx_fer_int           |            |
|                 |               | 0x0007       | 1          | urx_fer_int           |            |
| 0x0024          | 32            |              |            | uart_int_mask         | read-write | UART interrupt mask   |
|                 |               | 0x0000       | 1          | cr_utx_end_mask       |            |
|                 |               | 0x0001       | 1          | cr_urx_end_mask       |            |
|                 |               | 0x0002       | 1          | cr_utx_fifo_mask      |            |
|                 |               | 0x0003       | 1          | cr_urx_fifo_mask      |            |
|                 |               | 0x0004       | 1          | cr_urx_rto_mask       |            |
|                 |               | 0x0005       | 1          | cr_urx_pce_mask       |            |
|                 |               | 0x0006       | 1          | cr_utx_fer_mask       |            |
|                 |               | 0x0007       | 1          | cr_urx_fer_mask       |            |
| 0x0028          | 32            |              |            | uart_int_clear        | read-write | UART interrupt clear  |
|                 |               | 0x0000       | 1          | cr_utx_end_clr        |            |
|                 |               | 0x0001       | 1          | cr_urx_end_clr        |            |
|                 |               | 0x0002       | 1          | rsvd_2                |            |
|                 |               | 0x0003       | 1          | rsvd_3                |            |
|                 |               | 0x0004       | 1          | cr_urx_rto_clr        |            |
|                 |               | 0x0005       | 1          | cr_urx_pce_clr        |            |
|                 |               | 0x0006       | 1          | rsvd_6                |            |
|                 |               | 0x0007       | 1          | rsvd_7                |            |
| 0x002C          | 32            |              |            | uart_int_en           | read-write | UART interrupt enable |
|                 |               | 0x0000       | 1          | cr_utx_end_en         |            |
|                 |               | 0x0001       | 1          | cr_urx_end_en         |            |
|                 |               | 0x0002       | 1          | cr_utx_fifo_en        |            |
|                 |               | 0x0003       | 1          | cr_urx_fifo_en        |            |
|                 |               | 0x0004       | 1          | cr_urx_rto_en         |            |
|                 |               | 0x0005       | 1          | cr_urx_pce_en         |            |
|                 |               | 0x0006       | 1          | cr_utx_fer_en         |            |
|                 |               | 0x0007       | 1          | cr_urx_fer_en         |            |
| 0x0030          | 32            |              |            | uart_status           | read-write | uart_status.          |
|                 |               | 0x0000       | 1          | sts_utx_bus_busy      |            |
|                 |               | 0x0001       | 1          | sts_urx_bus_busy      |            |
| 0x0034          | 32            |              |            | sts_urx_abr_prd       | read-write | sts_urx_abr_prd.      |
|                 |               | 0x0000       | 16         | sts_urx_abr_prd_start |            |
|                 |               | 0x0010       | 16         | sts_urx_abr_prd_0x55  |            |
| 0x0080          | 32            |              |            | uart_fifo_config_0    | read-write | uart_fifo_config_0.   |
|                 |               | 0x0000       | 1          | uart_dma_tx_en        |            |
|                 |               | 0x0001       | 1          | uart_dma_rx_en        |            |
|                 |               | 0x0002       | 1          | tx_fifo_clr           |            |
|                 |               | 0x0003       | 1          | rx_fifo_clr           |            |
|                 |               | 0x0004       | 1          | tx_fifo_overflow      |            |
|                 |               | 0x0005       | 1          | tx_fifo_underflow     |            |
|                 |               | 0x0006       | 1          | rx_fifo_overflow      |            |
|                 |               | 0x0007       | 1          | rx_fifo_underflow     |            |
| 0x0084          | 32            |              |            | uart_fifo_config_1    | read-write | uart_fifo_config_1.   |
|                 |               | 0x0000       | 6          | tx_fifo_cnt           |            |
|                 |               | 0x0008       | 6          | rx_fifo_cnt           |            |
|                 |               | 0x0010       | 5          | tx_fifo_th            |            |
|                 |               | 0x0018       | 5          | rx_fifo_th            |            |
| 0x0088          | 32            |              |            | uart_fifo_wdata       | read-write | uart_fifo_wdata.      |
|                 |               | 0x0000       | 8          | uart_fifo_wdata       |            |
| 0x008C          | 32            |              |            | uart_fifo_rdata       | read-write | uart_fifo_rdata.      |
|                 |               | 0x0000       | 8          | uart_fifo_rdata       |            |
