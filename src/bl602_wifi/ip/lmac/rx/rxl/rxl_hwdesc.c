#include <blconfig.h>

#include <lmac/rx/rxl/rxl_hwdesc.h>
#include <lmac/rx/rxl/rxl_cntrl.h>
#include <lmac/rx/rx_swdesc.h>

#include <hal/hal_desc.h>

#include <phy/mac_pl.h>

#include <modules/common/co_utils.h>

#include <FreeRTOS.h>
#include <task.h>

#include <utils.h>
#include <assert.h>

struct rxl_hwdesc_env_tag rx_hwdesc_env;


void rxl_hwdesc_dump(void){  
    puts("---------- rxl_hwdesc_dump -------\r\n");
    printf("rx_dma_hdrdesc: %d\r\n", NX_RXDESC_CNT);
    for (int i = 0; i < NX_RXDESC_CNT; i++) {
        struct rx_dmadesc *desc = rx_dma_hdrdesc + i;
        printf("  [%2d]@%08lx: upatternrx %08lx next %08lx first_pbd_ptr %08lx, swdesc %p\r\n", i,
            (unsigned long)(desc), (unsigned long)((desc->hd).upatternrx), (unsigned long)((desc->hd).next), (unsigned long)((desc->hd).first_pbd_ptr), (desc->hd).swdesc);
        printf("    datastartptr %08lx dataendptr %08lx, headerctrlinfo %08lx frmlen %4u ampdu_stat_info %04x\r\n",
           (unsigned long)((desc->hd).datastartptr), (unsigned long)((desc->hd).dataendptr), (unsigned long)((desc->hd).headerctrlinfo), 
           (uint32_t)(desc->hd).frmlen, (uint32_t)(desc->hd).ampdu_stat_info);
        printf("    tsflo %08lx tsfhi %08lx recvec1b %08lx recvec1c %08lx recvec1d %08lx recvec2a %08lx recvec2b %08lx statinfo %08lx\r\n", 
            (unsigned long)((desc->hd).tsflo), (unsigned long)((desc->hd).tsfhi), (unsigned long)((desc->hd).recvec1b), (unsigned long)((desc->hd).recvec1c), 
           (unsigned long)((desc->hd).recvec1d), (unsigned long)((desc->hd).recvec2a), (unsigned long)((desc->hd).recvec2b), (unsigned long)((desc->hd).statinfo));
    }
    printf("rx_payload_desc: %d\r\n", NX_RX_PAYLOAD_DESC_CNT);
    for (int i = 0; i < NX_RX_PAYLOAD_DESC_CNT; i++) {
        struct rx_payloaddesc* desc = rx_payload_desc + i;
        uint32_t ptr_end = (desc->pbd).dataendptr;
        uint32_t sz = 0;
        if (ptr_end) {
            sz = ptr_end + 1 - (desc->pbd).datastartptr;
        }
        printf("  [%2d]@%08lx %3lu Bytes: upatternrx %08lx next %08lx datastartptr %08lx dataendptr %08lx bufstatinfo %04x reserved %04X\r\n", i, 
        (unsigned long)(desc), (unsigned long)(sz), (unsigned long)((desc->pbd).upattern), (unsigned long)((desc->pbd).next), (unsigned long)((desc->pbd).dataendptr), (unsigned long)((desc->pbd).dataendptr), (unsigned int)((desc->pbd).bufstatinfo), (desc->pbd).reserved);
    }
}

void rxl_hwdesc_init(int init) {
    vTaskEnterCritical();
    struct rx_dmadesc *free_dma = NULL, *first_dma = NULL, *cur_dma = NULL;
    {
        struct rx_dmadesc* prev = NULL;
        struct rx_dmadesc* cur = NULL;
        int cnt_avail = 0;
        for (int i = 0; i < NX_RXDESC_CNT; i++) {
            cur = rx_dma_hdrdesc + i;
            if (!init && (rx_dma_hdrdesc[i].use_in_tcpip == 1)) {
                cur = prev;
                if (prev) {
                    prev->hd.next = 0;
                }
            } else {
                if (prev) {
                    prev->hd.next = CPU2HW(cur);
                }
                (cur->hd).datastartptr = 0;
                (cur->hd).dataendptr = 0;
                (cur->hd).upatternrx = RX_HEADER_DESC_PATTERN;
                (cur->hd).statinfo = 0;
                (cur->hd).headerctrlinfo = 0;
                (cur->hd).next = (uint32_t)(rx_dma_hdrdesc + i + 1);
                (cur->hd).first_pbd_ptr = 0;
                (cur->hd).swdesc = rx_swdesc_tab + i;
                (cur->hd).frmlen = 0;
                if (cnt_avail == 0) {
                    free_dma = cur;
                } // else free_dma = free_dma;
                if (cnt_avail == 1) 
                    first_dma = cur;

                cnt_avail++;
            }
            prev = cur;
        }

        if (cnt_avail < 4) {
            printf("No enough DESC %d(%d)\r\n", NX_RXDESC_CNT, cnt_avail);
        }

        if (cur) {
            cur->hd.next = 0;
        }

        // write the buffer descriptor into the receive header head pointer register
        MAC_PL->RX_HEADER_HEAD_PTR.value = CPU2HW(first_dma);
        // set new head bit in DMA control register
        MAC_PL->DMA_CNTRL_SET.value = 0x4000000; // rxHeaderNewHead
        cur_dma = cur;
    }
    
    struct rx_payloaddesc *free_pl = NULL, *first_pl = NULL, *cur_pl = NULL;
    {
        struct rx_payloaddesc *cur = NULL, *prev = NULL;
        int cnt_avail = 0;
        for (int i = 0 ; i < NX_RX_PAYLOAD_DESC_CNT ; i++) {
            cur = (struct rx_payloaddesc *)(rx_payload_desc + i);
            if (!init && (cur->pd_status == 1)) {
                cur = prev;
                if (prev) {
                    prev->pbd.next = 0;
                }
            } else {
                if (prev) {
                    prev->pbd.next = CPU2HW(cur);
                }
                (cur->pbd).next = (uint32_t)(rx_payload_desc + i + 1);
                (cur->pbd).upattern = RX_PAYLOAD_DESC_PATTERN;
                (cur->pbd).bufstatinfo = 0;
                (cur->pbd).datastartptr = CPU2HW(&rx_payload_desc_buffer[i][0]);
                (cur->pbd).dataendptr = cur->pbd.datastartptr + NX_RX_PAYLOAD_LEN - 1;
                cur->buffer_rx = (uint32_t*) &rx_payload_desc_buffer[i][0];
                if (cnt_avail == 0) {
                    free_pl = cur;
                }
                if (cnt_avail == 1) {
                    first_pl = cur;
                }
                cnt_avail++;
            }
        }
        if (cnt_avail < 4) {
            printf("No enough PBD DESC, %d(%d)\r\n", NX_RX_PAYLOAD_DESC_CNT, cnt_avail);
        }
        // Reset the next pointer on the last one
        if (cur) cur->pbd.next = 0;
        // program new buffer desc header in list for the MAC HW
        MAC_PL->RX_PAYLOAD_HEAD_PTR.value = CPU2HW(first_pl);
        // set the new head bit in the DMA control register
        MAC_PL->DMA_CNTRL_SET.value = 0x8000000; // rxPayloadNewHead
        cur_pl = cur;
    }
    if ((((free_dma == NULL) || (first_dma == NULL)) || (cur_dma == NULL)) || ((free_pl == NULL || (first_pl == NULL)))) {
        printf("%p:%p%p vs %p:%p:%p\r\n", free_dma, first_dma, cur_dma, free_pl, first_pl, cur_pl);
    }
    rxl_cntrl_env.first = first_dma;
    rxl_cntrl_env.last = cur_dma;
    rxl_cntrl_env.free = free_dma;
    rx_hwdesc_env.last = &cur_pl->pbd;
    rx_hwdesc_env.free = &free_pl->pbd;
    vTaskExitCritical();
}

// alios disable int, bl602 not

void rxl_hd_append(struct rx_dmadesc *desc) {
    ASSERT_ERR(desc != NULL);
    struct rx_dmadesc *mac_ptr = HW2CPU(MAC_PL->DEBUG_RX_HDR_C_PTR.value);
    struct rx_dmadesc *free_desc = desc;
    if (rxl_cntrl_env.free != mac_ptr) {
        free_desc = rxl_cntrl_env.free;
        rxl_cntrl_env.free = desc;
    }
    (free_desc->hd).next = 0;
    (free_desc->hd).first_pbd_ptr = 0;
    (free_desc->hd).statinfo = 0;
    (free_desc->hd).frmlen = 0;
    ((rxl_cntrl_env.last)->hd).next = CPU2HW(&(free_desc->hd));
    MAC_PL->DMA_CNTRL_SET.value = 0x01000000; // rxHeaderNewTail
    if (rxl_cntrl_env.first == NULL) {
        rxl_cntrl_env.first = free_desc;
    }
    rxl_cntrl_env.last = free_desc;
}

/// Input: chained list: first ... last ->next-> spare (guess?)
/// it tried free rx_hwdesc_env.free and put spare there,
/// if failed, it free entire free...last...spare and left
/// rx_hwdesc_env.free unchanged
void rxl_pd_append(struct rx_pbd *first, struct rx_pbd *last, struct rx_pbd *spare) {
    ASSERT_ERR(spare != NULL);
    struct rx_pbd *mac_ptr = HW2CPU(MAC_PL->DEBUG_RX_PAY_C_PTR.value);
    if (mac_ptr == rx_hwdesc_env.free) {
        // The HW is still pointing to the spare descriptor, therefore we cannot release
        // it now. Instead we release the current descriptor.
        // Add the free element at the end of the list
        if (last == NULL) {
            // No element in the list
            first = spare;
        }
        last = spare;
        // Reset the stat info
        spare->bufstatinfo = 0;
    } else {
        // Otherwise we free the spare descriptor
        struct rx_pbd *free = rx_hwdesc_env.free;
        // Save the new free descriptor
        rx_hwdesc_env.free = spare;
        // Add the free element at the end of the list
        if (last == NULL) {
            // No element in the list
            first = last = free;
        } else {
            free->next = CPU2HW(first);
            first = free;
        }
        // Reset the stat info
        first->bufstatinfo = 0;
    }
    last->next = 0;
    (rx_hwdesc_env.last)->next = CPU2HW(first);
    MAC_PL->DMA_CNTRL_SET.value = 0x2000000; // rxPayloadNewTail
    rx_hwdesc_env.last = last;
}
