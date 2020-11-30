/**
* @file uart.c
* Source file for BL602
*/
#include "uart.h"


struct uart_txchannel {
    void (*callback)(void *, uint8_t); // +0
    void *dummy; // +4
    uint32_t remain_size; // +8
    const uint8_t *remain_data; // +12
};
struct uart_rxchannel {
    void (*callback)(void *, uint8_t); // +0
    void *dummy; // +4
    uint32_t remain_size; // +8
    uint8_t *remain_data; // +12
};
struct uart_env_tag {
    struct uart_txchannel tx; // +0
    struct uart_rxchannel rx; // +16
};
static struct uart_env_tag uart_env;static uint32_t uart_addr;static uint8_t uart_id;
void uart_flow_on(void);bool uart_flow_off(void);void uart_finish_transfers(void);static void write_data(const uint8_t *bufptr, uint32_t size);static uint8_t read_data(void);static uint8_t read_fifo_data(uint8_t num);void uart_read(uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy);void uart_write(const uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy);void uart_read_blocking(uint8_t *bufptr, uint32_t size);void uart_write_blocking(const uint8_t *bufptr, uint32_t size);void uart_rx_isr(void);void uart_tx_isr(void);void uart_rx_fifo_isr(void);void uart_tx_fifo_isr(void);void uart_isr(void);