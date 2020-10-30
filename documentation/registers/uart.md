# Peripheral: UART

The BL602 has two UART peripherals

- UART 0 base address: 0x4000A000
- UART 1 base address: 0x4000A100

## Registers

| Register offset | Register size | Field offset | Field size | Name                  | Direction  | Description                                                     |
| --------------- | ------------- | ------------ | ---------- | --------------------- | ---------- | --------------------------------------------------------------- |
| 0x0000          | 32            |              |            | utx_config            | read-write | Transmitter configuration                                       |
|                 |               | 0x0000       | 1          | cr_utx_en             |            | Enable the transmitter                                          |
|                 |               | 0x0001       | 1          | cr_utx_cts_en         |            | Enable CTS flow control                                         |
|                 |               | 0x0002       | 1          | cr_utx_frm_en         |            | Enable freerunning mode                                         |
|                 |               | 0x0004       | 1          | cr_utx_prt_en         |            | Enable parity                                                   |
|                 |               | 0x0005       | 1          | cr_utx_prt_sel        |            | 0 = even parity, 1 = odd parity                                 |
|                 |               | 0x0006       | 1          | cr_utx_ir_en          |            | Enable infrared mode                                            |
|                 |               | 0x0007       | 1          | cr_utx_ir_inv         |            | Invert output in infrared mode                                  |
|                 |               | 0x0008       | 3          | cr_utx_bit_cnt_d      |            | Width of data in bits                                           |
|                 |               | 0x000C       | 2          | cr_utx_bit_cnt_p      |            | Amount of stop bits                                             |
|                 |               | 0x0010       | 16         | cr_utx_len            |            | Amount of words to transmit (value of 0 equals 1 word)          |
| 0x0004          | 32            |              |            | urx_config            | read-write | Receiver configuration                                          |
|                 |               | 0x0000       | 1          | cr_urx_en             |            | Enable the receiver                                             |
|                 |               | 0x0001       | 1          | cr_urx_rts_sw_mode    |            | Software control mode for RTS output                            |
|                 |               | 0x0002       | 1          | cr_urx_rts_sw_val     |            | Value of the software controlled RTS output                     |
|                 |               | 0x0003       | 1          | cr_urx_abr_en         |            | Enable automatic baudrate detection                             |
|                 |               | 0x0004       | 1          | cr_urx_prt_en         |            | Enable parity                                                   |
|                 |               | 0x0005       | 1          | cr_urx_prt_sel        |            | 0 = even parity, 1 = odd parity                                 |
|                 |               | 0x0006       | 1          | cr_urx_ir_en          |            | Enable infrared mode                                            |
|                 |               | 0x0007       | 1          | cr_urx_ir_inv         |            | Invert input in infrared mode                                   |
|                 |               | 0x0008       | 3          | cr_urx_bit_cnt_d      |            | Width of data in bits                                           |
|                 |               | 0x000B       | 1          | cr_urx_deg_en         |            | Amount of stop bits                                             |
|                 |               | 0x000C       | 4          | cr_urx_deg_cnt        |            | Deglitch cycle count                                            |
|                 |               | 0x0010       | 16         | cr_urx_len            |            | Amount of words to receive (value of 0 equals 1 word)           |
| 0x0008          | 32            |              |            | uart_bit_prd          | read-write | Baud rate divisor                                               |
|                 |               | 0x0000       | 16         | cr_utx_bit_prd        |            |                                                                 |
|                 |               | 0x0010       | 16         | cr_urx_bit_prd        |            |                                                                 |
| 0x000C          | 32            |              |            | data_config           | read-write |                                                                 |
|                 |               | 0x0000       | 1          | cr_uart_bit_inv       |            | ? = LSB-first, ? = MSB-first                                    |
| 0x0010          | 32            |              |            | utx_ir_position       | read-write |                                                                 |
|                 |               | 0x0000       | 16         | cr_utx_ir_pos_s       |            | Transmitter Infrared pulse start position                       |
|                 |               | 0x0010       | 16         | cr_utx_ir_pos_p       |            | Transmitter Infrared pulse stop position                        |
| 0x0014          | 32            |              |            | urx_ir_position       | read-write |                                                                 |
|                 |               | 0x0000       | 16         | cr_urx_ir_pos_s       |            | Receiver infrared pulse start position                          |
| 0x0018          | 32            |              |            | urx_rto_timer         | read-write |                                                                 |
|                 |               | 0x0000       | 8          | cr_urx_rto_value      |            | Receiver timeout timer value                                    |
| 0x0020          | 32            |              |            | uart_int_sts          | read-write | UART interrupt status                                           |
|                 |               | 0x0000       | 1          | utx_end_int           |            | Transmit complete interrupt                                     |
|                 |               | 0x0001       | 1          | urx_end_int           |            | Receive complete interrupt                                      |
|                 |               | 0x0002       | 1          | utx_fifo_int          |            | Transmit fifo ready interrupt, auto-cleared when data is pushed |
|                 |               | 0x0003       | 1          | urx_fifo_int          |            | Receive fifo ready interrupt, auto-cleared when data is popped  |
|                 |               | 0x0004       | 1          | urx_rto_int           |            | Receive time-out interrupt                                      |
|                 |               | 0x0005       | 1          | urx_pce_int           |            | Receive parity check error interrupt                            |
|                 |               | 0x0006       | 1          | utx_fer_int           |            | Transmit fifo overflow/underflow error interrupt                |
|                 |               | 0x0007       | 1          | urx_fer_int           |            | Receive fifo overflow/underflow error interrupt                 |
| 0x0024          | 32            |              |            | uart_int_mask         | read-write | UART interrupt mask                                             |
|                 |               | 0x0000       | 1          | cr_utx_end_mask       |            | Mask for transmit complete interrupt                            |
|                 |               | 0x0001       | 1          | cr_urx_end_mask       |            | Mask for receive complete interrupt                             |
|                 |               | 0x0002       | 1          | cr_utx_fifo_mask      |            | Mask for transmit fifo ready interrupt                          |
|                 |               | 0x0003       | 1          | cr_urx_fifo_mask      |            | Mask for receive fifo ready interrupt                           |
|                 |               | 0x0004       | 1          | cr_urx_rto_mask       |            | Mask for receive time-out interrupt                             |
|                 |               | 0x0005       | 1          | cr_urx_pce_mask       |            | Mask for parity check error interrupt                           |
|                 |               | 0x0006       | 1          | cr_utx_fer_mask       |            | Mask for transmit fifo overflow/underflow error interrupt       |
|                 |               | 0x0007       | 1          | cr_urx_fer_mask       |            | Mask for receive fifo overflow/underflow error interrupt        |
| 0x0028          | 32            |              |            | uart_int_clear        | read-write | UART interrupt clear                                            |
|                 |               | 0x0000       | 1          | cr_utx_end_clr        |            | Clear the transmit complete interrupt                           |
|                 |               | 0x0001       | 1          | cr_urx_end_clr        |            | Clear the receive complete interrupt                            |
|                 |               | 0x0002       | 1          | rsvd_2                |            |                                                                 |
|                 |               | 0x0003       | 1          | rsvd_3                |            |                                                                 |
|                 |               | 0x0004       | 1          | cr_urx_rto_clr        |            | Clear the receive time-out interrupt                            |
|                 |               | 0x0005       | 1          | cr_urx_pce_clr        |            | Clear the parity check error interrupt                          |
|                 |               | 0x0006       | 1          | rsvd_6                |            |                                                                 |
|                 |               | 0x0007       | 1          | rsvd_7                |            |                                                                 |
| 0x002C          | 32            |              |            | uart_int_en           | read-write | UART interrupt enable                                           |
|                 |               | 0x0000       | 1          | cr_utx_end_en         |            | Enable the transmit complete interrupt                          |
|                 |               | 0x0001       | 1          | cr_urx_end_en         |            | Enable the receive complete interrupt                           |
|                 |               | 0x0002       | 1          | cr_utx_fifo_en        |            | Enable the transmit fifo ready interrupt                        |
|                 |               | 0x0003       | 1          | cr_urx_fifo_en        |            | Enable the receive fifo ready interrupt                         |
|                 |               | 0x0004       | 1          | cr_urx_rto_en         |            | Enable the receive time-out interrupt                           |
|                 |               | 0x0005       | 1          | cr_urx_pce_en         |            | Enable the parity check error interrupt                         |
|                 |               | 0x0006       | 1          | cr_utx_fer_en         |            | Enable the transmit fifo overflow/underflow error interrupt     |
|                 |               | 0x0007       | 1          | cr_urx_fer_en         |            | Enable the receive fifo overflow/underflow error interrupt      |
| 0x0030          | 32            |              |            | uart_status           | read-write | UART status                                                     |
|                 |               | 0x0000       | 1          | sts_utx_bus_busy      |            |  - Transmitter busy                                             |
|                 |               | 0x0001       | 1          | sts_urx_bus_busy      |            |  - Receiver busy                                                |
| 0x0034          | 32            |              |            | sts_urx_abr_prd       | read-write | Automatic baud rate detection result                            |
|                 |               | 0x0000       | 16         | sts_urx_abr_prd_start |            |  - Based on start bit                                           |
|                 |               | 0x0010       | 16         | sts_urx_abr_prd_0x55  |            |  - Based on 0x55 value                                          |
| 0x0080          | 32            |              |            | uart_fifo_config_0    | read-write |                                                                 |
|                 |               | 0x0000       | 1          | uart_dma_tx_en        |            | Enable DMA for transmit fifo                                    |
|                 |               | 0x0001       | 1          | uart_dma_rx_en        |            | Enable DMA for receive fifo                                     |
|                 |               | 0x0002       | 1          | tx_fifo_clr           |            | Clear the transmit fifo                                         |
|                 |               | 0x0003       | 1          | rx_fifo_clr           |            | Clear the receive fifo                                          |
|                 |               | 0x0004       | 1          | tx_fifo_overflow      | read       | Transmit fifo overflow status indicator                         |
|                 |               | 0x0005       | 1          | tx_fifo_underflow     | read       | Transmit fifo underflow status indicator                        |
|                 |               | 0x0006       | 1          | rx_fifo_overflow      | read       | Receive fifo overflow status indicator                          |
|                 |               | 0x0007       | 1          | rx_fifo_underflow     | read       | Receive fifo underflow status indicator                         |
| 0x0084          | 32            |              |            | uart_fifo_config_1    | read-write |                                                                 |
|                 |               | 0x0000       | 6          | tx_fifo_cnt           | read       | Amount of free space in the transmit fifo                       |
|                 |               | 0x0008       | 6          | rx_fifo_cnt           | read       | Amount of used space in the receive fifo                        |
|                 |               | 0x0010       | 5          | tx_fifo_th            |            | DMA start threshold of free space in the transmit fifo          |
|                 |               | 0x0018       | 5          | rx_fifo_th            |            | DMA start threshold of used space in the receive fifo           |                                                                |
| 0x0088          | 32            |              |            | uart_fifo_wdata       | write      |                                                                 |
|                 |               | 0x0000       | 8          | uart_fifo_wdata       |            | Write a byte to this register to push it to the transmit fifo   |
| 0x008C          | 32            |              |            | uart_fifo_rdata       | read       |                                                                 |
|                 |               | 0x0000       | 8          | uart_fifo_rdata       |            | Read a byte from this register to pop it from the receive fifo  |

# Baudrate divisor

```
divisor = clockFrequency / baudrate
fraction = clockFrequency * 10 / baudrate % 10
```

If the fraction is equal or higher to 5 the divisor must be incremented by 1.

The baud rate divisor register (Offset 0x08) is set to the following value:

```
(baudRateDivisor - 1) << 0x10) | ((baudRateDivisor - 1) & 0xFFFF)
```
