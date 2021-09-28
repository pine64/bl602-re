#include "uart.h"

#include <stddef.h>

#include <bl_irq.h>
#include <bl602.h>
#include <bl602_glb.h>
#include <bl602_uart.h>
#include <uart_reg.h>

static struct uart_env_tag uart_env;
static uint32_t uart_addr;
static uint8_t uart_id;

void uart_flow_on(void)
{
	return;
}

bool uart_flow_off(void)
{
	return true;
}

void uart_finish_transfers(void)
{
	uart_hw_rx_flow_ctl_en(false);
}

static void write_data(const uint8_t *bufptr, uint32_t size)
{
	const uint8_t *end;
	if (bufptr != NULL && size != 0)
	{
		end = bufptr + size;
		do {
			BL_WR_REG(uart_addr, UART_FIFO_WDATA, *bufptr);
		} while (++bufptr != end);
	}
}

static uint8_t read_data(void)
{
	uint32_t bufsize = uart_env.rx.remain_size;
	uint8_t *buf = uart_env.rx.remain_data;
	uint32_t received = 0;
	if (uart_env.rx.remain_data != NULL)
	{
		for (; (BL_GET_REG_BITS_VAL(BL_RD_REG(uart_addr, UART_FIFO_CONFIG_1), UART_RX_FIFO_CNT) != 0) && (received < bufsize); ++received)
		{
			buf[received] = BL_RD_REG(uart_addr, UART_FIFO_RDATA);
		}
	}
	return received;
}

static uint8_t read_fifo_data(uint8_t num)
{
	__builtin_trap();
}

void uart_read(uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy)
{
#if 0
	uint *puVar1;
	uint32_t uVar2;
	uint uVar3;
	uint uVar4;

	if (bufptr != NULL && size != 0 && callback != NULL)
	{
		uart_env.rx.callback = (void (*)(void *, uint8_t)) callback;
		uart_env.rx.dummy = dummy;
		uart_env.rx.remain_size = size;
		uart_env.rx.remain_data = bufptr;
		*(uint32_t *)(uart_addr + 4) = (size - 1) << 16 | *(uint32_t *)(uart_addr + 4) & 0xffff;
		uVar2 = uart_addr;
		if (size < 0x81)
		{
			uVar3 = size - 1 & 0xff;
		}
		else
		{
			uVar3 = 0x10;
		}
		puVar1 = (uint *)(uart_addr + 0x24);
		uVar4 = *(uint *)(uart_addr + 0x2c);
		*(uint *)(uart_addr + 0x84) = (uVar3 & 0x7f) << 0x18 | *(uint *)(uart_addr + 0x84) & 0xe0ffffff;
		*(uint *)(uVar2 + 0x24) = *puVar1 & 0xfffffff7;
		*(uint *)(uVar2 + 0x2c) = uVar4 | 8;
		return;
	}
	return;
#endif
}

void uart_write(const uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy)
{
	__builtin_trap();
}

void uart_read_blocking(uint8_t *bufptr, uint32_t size)
{
	__builtin_trap();
}

void uart_write_blocking(const uint8_t *bufptr, uint32_t size)
{
	__builtin_trap();
}

void uart_rx_isr(void)
{
	__builtin_trap();
}

void uart_tx_isr(void)
{
	__builtin_trap();
}

void uart_rx_fifo_isr(void)
{
	__builtin_trap();
}

void uart_tx_fifo_isr(void)
{
	__builtin_trap();
}

void uart_isr(void)
{
	__builtin_trap();
}

static const UART_CFG_Type DEFAULT_UART_CFG = {
	.uartClk = 160000000,
	.baudRate = 115200,
	.dataBits = UART_DATABITS_8,
	.stopBits = UART_STOPBITS_1,
	.parity = UART_PARITY_NONE,
	.ctsFlowControl = DISABLE,
	.rxDeglitch = DISABLE,
	.rtsSoftwareControl = DISABLE,
	.byteBitInverse = UART_LSB_FIRST
};

void uart_init(uint8_t uartid)
{
	int irqnum;
	UART_ID_Type id = uartid;
	void *uart_base;
	UART_CFG_Type uartCfg;
	memcpy(&uartCfg, &DEFAULT_UART_CFG, sizeof(UART_CFG_Type));
	if (id == 0)
	{
		uart_base = (void *) UART0_BASE;
		irqnum = UART0_IRQn;
	}
	else if (id == 1)
	{
		uart_base = (void *) UART1_BASE;
		irqnum = UART1_IRQn;
	}
	else
	{
		while (true);
	}
	uart_id = id;
	uart_addr = uart_base;
	GLB_Set_UART_CLK(ENABLE, HBN_UART_CLK_160M, 3);
	bl_irq_register(irqnum, uart_isr);
	bl_irq_enable(irqnum);
	UART_IntMask(id, UART_INT_ALL, MASK);
	BL_WR_REG(uart_base, UART_INT_MASK, 0);
	UART_Disable(id, UART_TXRX);
	uartCfg.uartClk = 40000000;
	UART_Init(id, &uartCfg);
	UART_TxFreeRun(id, DISABLE);
	uart_deg_en('\b');
	UART_Enable(id, UART_TXRX);
	uart_tx_isr_en(true);
}
