# Peripheral: sec_eng

- Register base address: 0x40004000

## Registers

| Register offset | Register size | Field offset | Field size | Name                     | Direction  | Description           |
| --------------- | ------------- | ------------ | ---------- | ------------------------ | ---------- | --------------------- |
| 0x0000          | 32            |              |            | se_sha_0_ctrl            | read-write | se_sha_0_ctrl.        |
|                 |               | 0x0000       | 1          | se_sha_0_busy            |            |
|                 |               | 0x0001       | 1          | se_sha_0_trig_1t         |            |
|                 |               | 0x0002       | 3          | se_sha_0_mode            |            |
|                 |               | 0x0005       | 1          | se_sha_0_en              |            |
|                 |               | 0x0006       | 1          | se_sha_0_hash_sel        |            |
|                 |               | 0x0008       | 1          | se_sha_0_int             |            |
|                 |               | 0x0009       | 1          | se_sha_0_int_clr_1t      |            |
|                 |               | 0x000A       | 1          | se_sha_0_int_set_1t      |            |
|                 |               | 0x000B       | 1          | se_sha_0_int_mask        |            |
|                 |               | 0x000F       | 1          | se_sha_0_link_mode       |            |
|                 |               | 0x0010       | 16         | se_sha_0_msg_len         |            |
| 0x0004          | 32            |              |            | se_sha_0_msa             | read-write | se_sha_0_msa.         |
|                 |               | 0x0000       | 32         | se_sha_0_msa             |            |
| 0x0008          | 32            |              |            | se_sha_0_status          | read-write | se_sha_0_status.      |
|                 |               | 0x0000       | 32         | se_sha_0_status          |            |
| 0x000C          | 32            |              |            | se_sha_0_endian          | read-write | se_sha_0_endian.      |
|                 |               | 0x0000       | 1          | se_sha_0_dout_endian     |            |
| 0x0010          | 32            |              |            | se_sha_0_hash_l_0        | read-write | se_sha_0_hash_l_0.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_0        |            |
| 0x0014          | 32            |              |            | se_sha_0_hash_l_1        | read-write | se_sha_0_hash_l_1.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_1        |            |
| 0x0018          | 32            |              |            | se_sha_0_hash_l_2        | read-write | se_sha_0_hash_l_2.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_2        |            |
| 0x001C          | 32            |              |            | se_sha_0_hash_l_3        | read-write | se_sha_0_hash_l_3.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_3        |            |
| 0x0020          | 32            |              |            | se_sha_0_hash_l_4        | read-write | se_sha_0_hash_l_4.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_4        |            |
| 0x0024          | 32            |              |            | se_sha_0_hash_l_5        | read-write | se_sha_0_hash_l_5.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_5        |            |
| 0x0028          | 32            |              |            | se_sha_0_hash_l_6        | read-write | se_sha_0_hash_l_6.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_6        |            |
| 0x002C          | 32            |              |            | se_sha_0_hash_l_7        | read-write | se_sha_0_hash_l_7.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_l_7        |            |
| 0x0030          | 32            |              |            | se_sha_0_hash_h_0        | read-write | se_sha_0_hash_h_0.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_0        |            |
| 0x0034          | 32            |              |            | se_sha_0_hash_h_1        | read-write | se_sha_0_hash_h_1.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_1        |            |
| 0x0038          | 32            |              |            | se_sha_0_hash_h_2        | read-write | se_sha_0_hash_h_2.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_2        |            |
| 0x003C          | 32            |              |            | se_sha_0_hash_h_3        | read-write | se_sha_0_hash_h_3.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_3        |            |
| 0x0040          | 32            |              |            | se_sha_0_hash_h_4        | read-write | se_sha_0_hash_h_4.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_4        |            |
| 0x0044          | 32            |              |            | se_sha_0_hash_h_5        | read-write | se_sha_0_hash_h_5.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_5        |            |
| 0x0048          | 32            |              |            | se_sha_0_hash_h_6        | read-write | se_sha_0_hash_h_6.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_6        |            |
| 0x004C          | 32            |              |            | se_sha_0_hash_h_7        | read-write | se_sha_0_hash_h_7.    |
|                 |               | 0x0000       | 32         | se_sha_0_hash_h_7        |            |
| 0x0050          | 32            |              |            | se_sha_0_link            | read-write | se_sha_0_link.        |
|                 |               | 0x0000       | 32         | se_sha_0_lca             |            |
| 0x00FC          | 32            |              |            | se_sha_0_ctrl_prot       | read-write | se_sha_0_ctrl_prot.   |
|                 |               | 0x0000       | 1          | se_sha_prot_en           |            |
|                 |               | 0x0001       | 1          | se_sha_id0_en            |            |
|                 |               | 0x0002       | 1          | se_sha_id1_en            |            |
| 0x0100          | 32            |              |            | se_aes_0_ctrl            | read-write | se_aes_0_ctrl.        |
|                 |               | 0x0000       | 1          | se_aes_0_busy            |            |
|                 |               | 0x0001       | 1          | se_aes_0_trig_1t         |            |
|                 |               | 0x0002       | 1          | se_aes_0_en              |            |
|                 |               | 0x0003       | 2          | se_aes_0_mode            |            |
|                 |               | 0x0005       | 1          | se_aes_0_dec_en          |            |
|                 |               | 0x0006       | 1          | se_aes_0_dec_key_sel     |            |
|                 |               | 0x0007       | 1          | se_aes_0_hw_key_en       |            |
|                 |               | 0x0008       | 1          | se_aes_0_int             |            |
|                 |               | 0x0009       | 1          | se_aes_0_int_clr_1t      |            |
|                 |               | 0x000A       | 1          | se_aes_0_int_set_1t      |            |
|                 |               | 0x000B       | 1          | se_aes_0_int_mask        |            |
|                 |               | 0x000C       | 2          | se_aes_0_block_mode      |            |
|                 |               | 0x000E       | 1          | se_aes_0_iv_sel          |            |
|                 |               | 0x000F       | 1          | se_aes_0_link_mode       |            |
|                 |               | 0x0010       | 16         | se_aes_0_msg_len         |            |
| 0x0104          | 32            |              |            | se_aes_0_msa             | read-write | se_aes_0_msa.         |
|                 |               | 0x0000       | 32         | se_aes_0_msa             |            |
| 0x0108          | 32            |              |            | se_aes_0_mda             | read-write | se_aes_0_mda.         |
|                 |               | 0x0000       | 32         | se_aes_0_mda             |            |
| 0x010C          | 32            |              |            | se_aes_0_status          | read-write | se_aes_0_status.      |
|                 |               | 0x0000       | 32         | se_aes_0_status          |            |
| 0x0110          | 32            |              |            | se_aes_0_iv_0            | read-write | se_aes_0_iv_0.        |
|                 |               | 0x0000       | 32         | se_aes_0_iv_0            |            |
| 0x0114          | 32            |              |            | se_aes_0_iv_1            | read-write | se_aes_0_iv_1.        |
|                 |               | 0x0000       | 32         | se_aes_0_iv_1            |            |
| 0x0118          | 32            |              |            | se_aes_0_iv_2            | read-write | se_aes_0_iv_2.        |
|                 |               | 0x0000       | 32         | se_aes_0_iv_2            |            |
| 0x011C          | 32            |              |            | se_aes_0_iv_3            | read-write | se_aes_0_iv_3.        |
|                 |               | 0x0000       | 32         | se_aes_0_iv_3            |            |
| 0x0120          | 32            |              |            | se_aes_0_key_0           | read-write | se_aes_0_key_0.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_0           |            |
| 0x0124          | 32            |              |            | se_aes_0_key_1           | read-write | se_aes_0_key_1.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_1           |            |
| 0x0128          | 32            |              |            | se_aes_0_key_2           | read-write | se_aes_0_key_2.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_2           |            |
| 0x012C          | 32            |              |            | se_aes_0_key_3           | read-write | se_aes_0_key_3.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_3           |            |
| 0x0130          | 32            |              |            | se_aes_0_key_4           | read-write | se_aes_0_key_4.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_4           |            |
| 0x0134          | 32            |              |            | se_aes_0_key_5           | read-write | se_aes_0_key_5.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_5           |            |
| 0x0138          | 32            |              |            | se_aes_0_key_6           | read-write | se_aes_0_key_6.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_6           |            |
| 0x013C          | 32            |              |            | se_aes_0_key_7           | read-write | se_aes_0_key_7.       |
|                 |               | 0x0000       | 32         | se_aes_0_key_7           |            |
| 0x0140          | 32            |              |            | se_aes_0_key_sel_0       | read-write | se_aes_0_key_sel_0.   |
|                 |               | 0x0000       | 2          | se_aes_0_key_sel_0       |            |
| 0x0144          | 32            |              |            | se_aes_0_key_sel_1       | read-write | se_aes_0_key_sel_1.   |
|                 |               | 0x0000       | 2          | se_aes_0_key_sel_1       |            |
| 0x0148          | 32            |              |            | se_aes_0_endian          | read-write | se_aes_0_endian.      |
|                 |               | 0x0000       | 1          | se_aes_0_dout_endian     |            |
|                 |               | 0x0001       | 1          | se_aes_0_din_endian      |            |
|                 |               | 0x0002       | 1          | se_aes_0_key_endian      |            |
|                 |               | 0x0003       | 1          | se_aes_0_iv_endian       |            |
|                 |               | 0x001E       | 2          | se_aes_0_ctr_len         |            |
| 0x014C          | 32            |              |            | se_aes_0_sboot           | read-write | se_aes_0_sboot.       |
|                 |               | 0x0000       | 1          | se_aes_0_sboot_key_sel   |            |
| 0x0150          | 32            |              |            | se_aes_0_link            | read-write | se_aes_0_link.        |
|                 |               | 0x0000       | 32         | se_aes_0_lca             |            |
| 0x01FC          | 32            |              |            | se_aes_0_ctrl_prot       | read-write | se_aes_0_ctrl_prot.   |
|                 |               | 0x0000       | 1          | se_aes_prot_en           |            |
|                 |               | 0x0001       | 1          | se_aes_id0_en            |            |
|                 |               | 0x0002       | 1          | se_aes_id1_en            |            |
| 0x0200          | 32            |              |            | se_trng_0_ctrl_0         | read-write | se_trng_0_ctrl_0.     |
|                 |               | 0x0000       | 1          | se_trng_0_busy           |            |
|                 |               | 0x0001       | 1          | se_trng_0_trig_1t        |            |
|                 |               | 0x0002       | 1          | se_trng_0_en             |            |
|                 |               | 0x0003       | 1          | se_trng_0_dout_clr_1t    |            |
|                 |               | 0x0004       | 1          | se_trng_0_ht_error       |            |
|                 |               | 0x0008       | 1          | se_trng_0_int            |            |
|                 |               | 0x0009       | 1          | se_trng_0_int_clr_1t     |            |
|                 |               | 0x000A       | 1          | se_trng_0_int_set_1t     |            |
|                 |               | 0x000B       | 1          | se_trng_0_int_mask       |            |
|                 |               | 0x000D       | 1          | se_trng_0_manual_fun_sel |            |
|                 |               | 0x000E       | 1          | se_trng_0_manual_reseed  |            |
|                 |               | 0x000F       | 1          | se_trng_0_manual_en      |            |
| 0x0204          | 32            |              |            | se_trng_0_status         | read-write | se_trng_0_status.     |
|                 |               | 0x0000       | 32         | se_trng_0_status         |            |
| 0x0208          | 32            |              |            | se_trng_0_dout_0         | read-write | se_trng_0_dout_0.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_0         |            |
| 0x020C          | 32            |              |            | se_trng_0_dout_1         | read-write | se_trng_0_dout_1.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_1         |            |
| 0x0210          | 32            |              |            | se_trng_0_dout_2         | read-write | se_trng_0_dout_2.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_2         |            |
| 0x0214          | 32            |              |            | se_trng_0_dout_3         | read-write | se_trng_0_dout_3.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_3         |            |
| 0x0218          | 32            |              |            | se_trng_0_dout_4         | read-write | se_trng_0_dout_4.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_4         |            |
| 0x021C          | 32            |              |            | se_trng_0_dout_5         | read-write | se_trng_0_dout_5.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_5         |            |
| 0x0220          | 32            |              |            | se_trng_0_dout_6         | read-write | se_trng_0_dout_6.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_6         |            |
| 0x0224          | 32            |              |            | se_trng_0_dout_7         | read-write | se_trng_0_dout_7.     |
|                 |               | 0x0000       | 32         | se_trng_0_dout_7         |            |
| 0x0228          | 32            |              |            | se_trng_0_test           | read-write | se_trng_0_test.       |
|                 |               | 0x0000       | 1          | se_trng_0_test_en        |            |
|                 |               | 0x0001       | 1          | se_trng_0_cp_test_en     |            |
|                 |               | 0x0002       | 1          | se_trng_0_cp_bypass      |            |
|                 |               | 0x0003       | 1          | se_trng_0_ht_dis         |            |
|                 |               | 0x0004       | 8          | se_trng_0_ht_alarm_n     |            |
| 0x022C          | 32            |              |            | se_trng_0_ctrl_1         | read-write | se_trng_0_ctrl_1.     |
|                 |               | 0x0000       | 32         | se_trng_0_reseed_n_lsb   |            |
| 0x0230          | 32            |              |            | se_trng_0_ctrl_2         | read-write | se_trng_0_ctrl_2.     |
|                 |               | 0x0000       | 16         | se_trng_0_reseed_n_msb   |            |
| 0x0234          | 32            |              |            | se_trng_0_ctrl_3         | read-write | se_trng_0_ctrl_3.     |
|                 |               | 0x0000       | 8          | se_trng_0_cp_ratio       |            |
|                 |               | 0x0008       | 8          | se_trng_0_ht_rct_c       |            |
|                 |               | 0x0010       | 10         | se_trng_0_ht_apt_c       |            |
|                 |               | 0x001A       | 1          | se_trng_0_ht_od_en       |            |
|                 |               | 0x001F       | 1          | se_trng_0_rosc_en        |            |
| 0x0240          | 32            |              |            | se_trng_0_test_out_0     | read-write | se_trng_0_test_out_0. |
|                 |               | 0x0000       | 32         | se_trng_0_test_out_0     |            |
| 0x0244          | 32            |              |            | se_trng_0_test_out_1     | read-write | se_trng_0_test_out_1. |
|                 |               | 0x0000       | 32         | se_trng_0_test_out_1     |            |
| 0x0248          | 32            |              |            | se_trng_0_test_out_2     | read-write | se_trng_0_test_out_2. |
|                 |               | 0x0000       | 32         | se_trng_0_test_out_2     |            |
| 0x024C          | 32            |              |            | se_trng_0_test_out_3     | read-write | se_trng_0_test_out_3. |
|                 |               | 0x0000       | 32         | se_trng_0_test_out_3     |            |
| 0x02FC          | 32            |              |            | se_trng_0_ctrl_prot      | read-write | se_trng_0_ctrl_prot.  |
|                 |               | 0x0000       | 1          | se_trng_prot_en          |            |
|                 |               | 0x0001       | 1          | se_trng_id0_en           |            |
|                 |               | 0x0002       | 1          | se_trng_id1_en           |            |
| 0x0300          | 32            |              |            | se_pka_0_ctrl_0          | read-write | se_pka_0_ctrl_0.      |
|                 |               | 0x0000       | 1          | se_pka_0_done            |            |
|                 |               | 0x0001       | 1          | se_pka_0_done_clr_1t     |            |
|                 |               | 0x0002       | 1          | se_pka_0_busy            |            |
|                 |               | 0x0003       | 1          | se_pka_0_en              |            |
|                 |               | 0x0004       | 4          | se_pka_0_prot_md         |            |
|                 |               | 0x0008       | 1          | se_pka_0_int             |            |
|                 |               | 0x0009       | 1          | se_pka_0_int_clr_1t      |            |
|                 |               | 0x000A       | 1          | se_pka_0_int_set         |            |
|                 |               | 0x000B       | 1          | se_pka_0_int_mask        |            |
|                 |               | 0x000C       | 1          | se_pka_0_endian          |            |
|                 |               | 0x000D       | 1          | se_pka_0_ram_clr_md      |            |
|                 |               | 0x0010       | 1          | se_pka_0_status_clr_1t   |            |
|                 |               | 0x0011       | 15         | se_pka_0_status          |            |
| 0x030C          | 32            |              |            | se_pka_0_seed            | read-write | se_pka_0_seed.        |
|                 |               | 0x0000       | 32         | se_pka_0_seed            |            |
| 0x0310          | 32            |              |            | se_pka_0_ctrl_1          | read-write | se_pka_0_ctrl_1.      |
|                 |               | 0x0000       | 3          | se_pka_0_hburst          |            |
|                 |               | 0x0003       | 1          | se_pka_0_hbypass         |            |
| 0x0340          | 32            |              |            | se_pka_0_rw              | read-write | se_pka_0_rw.          |
| 0x0360          | 32            |              |            | se_pka_0_rw_burst        | read-write | se_pka_0_rw_burst.    |
| 0x03FC          | 32            |              |            | se_pka_0_ctrl_prot       | read-write | se_pka_0_ctrl_prot.   |
|                 |               | 0x0000       | 1          | se_pka_prot_en           |            |
|                 |               | 0x0001       | 1          | se_pka_id0_en            |            |
|                 |               | 0x0002       | 1          | se_pka_id1_en            |            |
| 0x0400          | 32            |              |            | se_cdet_0_ctrl_0         | read-write | se_cdet_0_ctrl_0.     |
|                 |               | 0x0000       | 1          | se_cdet_0_en             |            |
|                 |               | 0x0001       | 1          | se_cdet_0_error          |            |
|                 |               | 0x0002       | 14         | se_cdet_0_status         |            |
|                 |               | 0x0010       | 8          | se_cdet_0_g_loop_max     |            |
|                 |               | 0x0018       | 8          | se_cdet_0_g_loop_min     |            |
| 0x0404          | 32            |              |            | se_cdet_0_ctrl_1         | read-write | se_cdet_0_ctrl_1.     |
|                 |               | 0x0000       | 8          | se_cdet_0_t_loop_n       |            |
|                 |               | 0x0008       | 8          | se_cdet_0_t_dly_n        |            |
|                 |               | 0x0010       | 8          | se_cdet_0_g_slp_n        |            |
| 0x04FC          | 32            |              |            | se_cdet_0_ctrl_prot      | read-write | se_cdet_0_ctrl_prot.  |
|                 |               | 0x0000       | 1          | se_cdet_prot_en          |            |
|                 |               | 0x0001       | 1          | se_cdet_id0_en           |            |
|                 |               | 0x0002       | 1          | se_cdet_id1_en           |            |
| 0x0500          | 32            |              |            | se_gmac_0_ctrl_0         | read-write | se_gmac_0_ctrl_0.     |
|                 |               | 0x0000       | 1          | se_gmac_0_busy           |            |
|                 |               | 0x0001       | 1          | se_gmac_0_trig_1t        |            |
|                 |               | 0x0002       | 1          | se_gmac_0_en             |            |
|                 |               | 0x0008       | 1          | se_gmac_0_int            |            |
|                 |               | 0x0009       | 1          | se_gmac_0_int_clr_1t     |            |
|                 |               | 0x000A       | 1          | se_gmac_0_int_set_1t     |            |
|                 |               | 0x000B       | 1          | se_gmac_0_int_mask       |            |
|                 |               | 0x000C       | 1          | se_gmac_0_t_endian       |            |
|                 |               | 0x000D       | 1          | se_gmac_0_h_endian       |            |
|                 |               | 0x000E       | 1          | se_gmac_0_x_endian       |            |
| 0x0504          | 32            |              |            | se_gmac_0_lca            | read-write | se_gmac_0_lca.        |
|                 |               | 0x0000       | 32         | se_gmac_0_lca            |            |
| 0x0508          | 32            |              |            | se_gmac_0_status         | read-write | se_gmac_0_status.     |
|                 |               | 0x0000       | 32         | se_gmac_0_status         |            |
| 0x05FC          | 32            |              |            | se_gmac_0_ctrl_prot      | read-write | se_gmac_0_ctrl_prot.  |
|                 |               | 0x0000       | 1          | se_gmac_prot_en          |            |
|                 |               | 0x0001       | 1          | se_gmac_id0_en           |            |
|                 |               | 0x0002       | 1          | se_gmac_id1_en           |            |
| 0x0F00          | 32            |              |            | se_ctrl_prot_rd          | read-write | se_ctrl_prot_rd.      |
|                 |               | 0x0000       | 1          | se_sha_prot_en_rd        |            |
|                 |               | 0x0001       | 1          | se_sha_id0_en_rd         |            |
|                 |               | 0x0002       | 1          | se_sha_id1_en_rd         |            |
|                 |               | 0x0004       | 1          | se_aes_prot_en_rd        |            |
|                 |               | 0x0005       | 1          | se_aes_id0_en_rd         |            |
|                 |               | 0x0006       | 1          | se_aes_id1_en_rd         |            |
|                 |               | 0x0008       | 1          | se_trng_prot_en_rd       |            |
|                 |               | 0x0009       | 1          | se_trng_id0_en_rd        |            |
|                 |               | 0x000A       | 1          | se_trng_id1_en_rd        |            |
|                 |               | 0x000C       | 1          | se_pka_prot_en_rd        |            |
|                 |               | 0x000D       | 1          | se_pka_id0_en_rd         |            |
|                 |               | 0x000E       | 1          | se_pka_id1_en_rd         |            |
|                 |               | 0x0010       | 1          | se_cdet_prot_en_rd       |            |
|                 |               | 0x0011       | 1          | se_cdet_id0_en_rd        |            |
|                 |               | 0x0012       | 1          | se_cdet_id1_en_rd        |            |
|                 |               | 0x0014       | 1          | se_gmac_prot_en_rd       |            |
|                 |               | 0x0015       | 1          | se_gmac_id0_en_rd        |            |
|                 |               | 0x0016       | 1          | se_gmac_id1_en_rd        |            |
|                 |               | 0x001F       | 1          | se_dbg_dis               |            |
| 0x0F04          | 32            |              |            | se_ctrl_reserved_0       | read-write | se_ctrl_reserved_0.   |
| 0x0F08          | 32            |              |            | se_ctrl_reserved_1       | read-write | se_ctrl_reserved_1.   |
| 0x0F0C          | 32            |              |            | se_ctrl_reserved_2       | read-write | se_ctrl_reserved_2.   |
