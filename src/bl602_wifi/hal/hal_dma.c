#include <hal/hal_dma.h>
#include <dma/dma.h>
#include <modules/common/co_list.h>
#include <phy/dma.h>
#include <utils.h>
#include <FreeRTOS.h>
#include <task.h>
#include <modules/ke/ke_event.h>
#include <stdbool.h>

struct hal_dma_env_tag hal_dma_env;

const uint8_t dma2chan[2] = {0x2, 0x0};
const uint8_t dma2lli[2] = {0x9, 0xb};

void hal_dma_init(void) {
    co_list_init(hal_dma_env.prog + 0);
    hal_dma_env.lli_cnt[0] = DMA->LinkListItem0.counter;
    co_list_init(hal_dma_env.prog + 1);
    hal_dma_env.lli_cnt[1] = DMA->LinkListItem1.counter;
}

void hal_dma_push(struct hal_dma_desc_tag *desc, int type) {
    struct dma_desc *dma_desc = desc->dma_desc;
    if (desc->cb == 0) {
        dma_desc->ctrl = 0;
    } else {
        dma_desc->ctrl = ((uint32_t)dma2lli[type] << 8) | 0x1000 | ((uint32_t)dma2lli[type]) | 0x10;
        co_list_push_back(hal_dma_env.prog + type, &desc->hdr);
    }
    memcpy((void *)dma_desc->dest, (void *)dma_desc->src, (uint32_t)dma_desc->length);
    evt_field_t event;
    if (type == 0) {
        event = 0x40;
    } else {
        if (type != 1) {
            do {
                vTaskDelay(1000);
                puts("[FW] Dead loop when using dma push\r\n");
            } while (true);
        }
        event = 0x10000000;
    }
    ke_evt_set(event);
}

void hal_dma_evt(int dma_queue) {
    evt_field_t event;
    if (dma_queue == 0) {
        event = 0x40;
    } else {
        event = 0x10000000;
    }
    ke_evt_clear(event);
    struct hal_dma_desc_tag *l;
    while (l = (struct hal_dma_desc_tag*)co_list_pop_front(hal_dma_env.prog + dma_queue)) {
        if (l->cb != 0) {
            l->cb(l->env, dma_queue);
        }
    }
}
