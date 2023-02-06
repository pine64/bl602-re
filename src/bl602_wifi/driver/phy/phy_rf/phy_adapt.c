#include <phy_rf/phy_adapt.h>
#include <utils.h>
#include <phy_rf/phy_hal.h>
#include <assert.h>

static pa_state_t pa_env[4]; // :136:19

void pa_adapt(uint8_t id) {
    static uint32_t count = 0;
    count++;
    if (id > 3) {
        return ;
    }
    int next_ptr = pa_env[id].input_buffer_ptr;
    int ptr = (next_ptr - 1 + 8) % 8; // (next_ptr - 1) & 7
    if (pa_env[id].input_buffer[ptr].new) {
        int rssi = pa_env[id].input_buffer[ptr].rssi;
        if (pa_env[id].rss_state == 0) {
            if (pa_env[id].rss_count < 7) {
                pa_env[id].rss_count ++;
            } else {
                pa_env[id].rss_state = 1;
                int sum_rssi = 0;
                int min_rssi = 100;
                int max_rssi = -100;
                for (int i = 1; i < 7; i++) {
                    int _rssi = (int)pa_env[id].input_buffer[(next_ptr - i) % 8].rssi;
                    sum_rssi = _rssi;
                    if (_rssi > max_rssi) {
                        max_rssi = _rssi;
                    }
                    if (_rssi < min_rssi) {
                        min_rssi = _rssi;
                    }
                }
                pa_env[id].rss = (sum_rssi - min_rssi - max_rssi) / 4;
            }
        } else {
            if (pa_env[id].rss_hit_count < 5) {
                if (rssi + 100 < 101) {
                    char rss = pa_env[id].rss;
                    int diff = rssi - rss;
                    if (diff + 10 < 21) {
                        pa_env[id].rss_hit_count = 0;
                        pa_env[id].rss = (char)(diff >> 2) + rss;
                    } else {
                        pa_env[id].rss_hit_count ++;
                    }
                } 
            } else {
                pa_env[id].rss_hit_count = 0;
                pa_env[id].rss_state = 0;
                pa_env[id].rss_count = 0;
            }
        }

        if ((count & 0xf) == 0xf) {
            float ppm;
            if ((rssi - pa_env[id].rss) + 10U < 0x15) {
                ppm = pa_env[id].input_buffer[ptr].ppm;
                if (ABS(ppm) < 2.0) {
                    double d_ppm = (double)ppm;
                    double a = 0;
                    double d_ce = ((double)pa_env[id].ce);
                    if (rssi < -0x55) {
                        d_ppm = d_ce * (double)0.03125;
                        // 0x3fa00000 00000000
                    } else {
                        d_ppm = d_ce * (double)0.125;
                        // 0x3fc00000 00000000
                    }
                    d_ppm += d_ce;
                    ppm = (float) d_ppm;
                    pa_env[id].ce = ppm;
                }
            } 
            ppm = pa_env[id].ce;
            if (ABS(ppm) > 5) {
                if (ppm > 0) {
                    int cap = hal_get_capcode();
                    if (cap != 0) {
                        hal_set_capcode(hal_get_capcode() - 1);
                    }
                }
                if (ppm < 0) {
                    int cap = hal_get_capcode();
                    if (cap < 0x3f) {
                        hal_set_capcode(hal_get_capcode() + 1);
                    }
                }
                pa_env[id].ce = 0.0;
            }
        }
    }
}

void pa_init(void) {
    for (int i = 0; i < 3; i++) {
        pa_env[i].rss_state = 0;
        pa_env[i].rss_count = 0;
        pa_env[i].rss_state = 0;
        pa_env[i].rss_count = 0;
        pa_env[i].last_update = 0;
        pa_env[i].input_buffer_ptr = 0;
        pa_env[i].ce_state = 0;
        pa_env[i].ce = 0.0;
        pa_env[i].ce_num_up_cmds = 0;
        pa_env[i].ce_num_dn_cmds = 0;
        for (int j = 0; j < 8; j++) {
            pa_env[i].input_buffer[j].lna = 0;
            pa_env[i].input_buffer[j].new = 0;
            pa_env[i].input_buffer[j].ppm = 0;
            pa_env[i].input_buffer[j].rssi = 0;
        }
    }
}


float calc_ppm_dsss(uint8_t rxv_freqoff) {
    return ((double)((int8_t)rxv_freqoff)) * 0.7;
}

float calc_ppm_ofdm(uint16_t rxv_freqoff) {
    return (((double)(-(int)rxv_freqoff)) * 20.0) / 2440.0;
}

float calc_ppm(rvec_t * rvec) {
    if ((rvec->format_mod) == 0 && (rvec->leg_rate < 4)) {
        return calc_ppm_dsss(rvec->freqoff_lo);
    } else {
        return calc_ppm_ofdm(rvec->freqoff);
    }
}


void pa_input(uint8_t id, struct rx_hd *rhd) {
    if (id < 4) {
        int ptr = pa_env[id].input_buffer_ptr;
        rvec_t *rvec = (rvec_t *)&(rhd->recvec1a);
        input_t *buffer = &(pa_env[id].input_buffer[ptr]);
        pa_env[id].last_update = rhd->tsflo;
        buffer->new = 1;
        //pa_env[id].input_buffer[id].rssi = *(int8_t *)((int)&rhd->recvec1c + 3);
        buffer->rssi = rvec->rssi1;
        //pa_env[id].input_buffer[id].lna = (char)((int)(rhd->recvec1d << 20) >> 28);
        buffer->lna = rvec->agc_lna;
        buffer->ppm = calc_ppm(rvec);
        ptr = (ptr + 1) & 7;
        pa_env[id].input_buffer_ptr = ptr;
    }
}

int8_t pa_alloc(uint32_t vif_addr) {
    for (int i = 0; i < 4; i++) {
        if (!pa_env[i].used) {
            pa_env[i].used = 1;
            pa_env[i].vif_tag = vif_addr;
            return i;
        }
    }

    return -1;
}

void pa_reset(uint8_t id) {
    return ;
}

void pa_free(uint8_t id) {
    if (id < 4) {
        pa_env[id].used = 0;
        pa_env[id].vif_tag = 0;
    }
}

