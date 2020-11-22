
void me_mic_calc(mic_calc * mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void me_mic_end(mic_calc * mic_calc_ptr);
void me_mic_init(mic_calc * mic_calc_ptr, uint32_t * mic_key_ptr, mac_addr * da, mac_addr * sa, uint8_t tid);
void michael_block(mic_calc * mic_calc_ptr, uint32_t block);
void michael_calc(mic_calc * mic_calc_ptr, uint32_t start_ptr, uint32_t data_len);
void michael_end(mic_calc * mic_calc_ptr);
void michael_init(mic_calc * mic_calc_ptr, uint32_t * mic_key_ptr, uint32_t * aad);
