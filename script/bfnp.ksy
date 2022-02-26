meta:
  id: bfnp
  file-extension: bin
  endian: le

seq:
  - id: magic_code
    contents: "BFNP"
  - id: revision
    type: u4
  - id: flash_cfg
    type: flash_cfg
  - id: clk_cfg
    type: clk_cfg
  - id: boot_cfg
    type: boot_cfg
  - id: segment_info
    type: u4
  - id: boot_entry
    type: u4
  - id: flash_offset
    type: u4
  - id: hash
    size: 32
  - id: rsv1
    type: u4
  - id: rsv2
    type: u4
  - id: crc32
    type: u4
  - id: segments
    type: segment
    repeat: expr
    repeat-expr: segment_info

    
types:
  flash_cfg:
    seq:
      - id: magic_code
        size: 4
        # contents: "FCFG" # BL706 have this empty :(
      - id: io_mode
        type: u1
      - id: c_read_support
        type: u1
      - id: clk_delay
        type: u1
      - id: clk_invert
        type: u1
      - id: reset_en_cmd
        type: u1
      - id: reset_cmd
        type: u1
      - id: reset_cread_cmd
        type: u1
      - id: reset_cread_cmd_size
        type: u1
      - id: jedec_id_cmd
        type: u1
      - id: jedec_id_cmd_dmy_clk
        type: u1
      - id: qpi_jedec_id_cmd
        type: u1
      - id: qpi_jedec_id_cmd_dmy_clk
        type: u1
      - id: sector_size
        type: u1
      - id: mid
        type: u1
      - id: page_size
        type: u2
      - id: chip_erase_cmd
        type: u1
      - id: sector_erase_cmd
        type: u1
      - id: blk_32_erase_cmd
        type: u1
      - id: blk_64_erase_cmd
        type: u1
      - id: write_enable_cmd
        type: u1
      - id: page_program_cmd
        type: u1
      - id: qpage_program_cmd
        type: u1
      - id: qpp_addr_mode
        type: u1
      - id: fast_read_cmd
        type: u1
      - id: fr_dmy_clk
        type: u1
      - id: qpi_fast_read_cmd
        type: u1
      - id: qpi_fr_dmy_clk
        type: u1
      - id: fast_read_do_cmd
        type: u1
      - id: fr_do_dmy_clk
        type: u1
      - id: fast_read_dio_cmd
        type: u1
      - id: fr_dio_dmy_clk
        type: u1
      - id: fast_read_qo_cmd
        type: u1
      - id: fr_qo_dmy_clk
        type: u1
      - id: fast_read_qio_cmd
        type: u1
      - id: fr_qio_dmy_clk
        type: u1
      - id: qpi_fast_read_qio_cmd
        type: u1
      - id: qpi_fr_qio_dmy_clk
        type: u1
      - id: qpi_page_program_cmd
        type: u1
      - id: write_vreg_enable_cmd
        type: u1
      - id: wr_enable_index
        type: u1
      - id: qe_index
        type: u1
      - id: busy_index
        type: u1
      - id: wr_enable_bit
        type: u1
      - id: qe_bit
        type: u1
      - id: busy_bit
        type: u1
      - id: wr_enable_write_reg_len
        type: u1
      - id: wr_enable_read_reg_len
        type: u1
      - id: qe_write_reg_len
        type: u1
      - id: qe_read_reg_len
        type: u1
      - id: release_power_down
        type: u1
      - id: busy_read_reg_len
        type: u1
      - id: read_reg_cmd
        size: 4
      - id: write_reg_cmd
        size: 4
      - id: enter_qpi
        type: u1
      - id: exit_qpi
        type: u1
      - id: c_read_mode
        type: u1
      - id: c_r_exit
        type: u1
      - id: burst_wrap_cmd
        type: u1
      - id: burst_wrap_cmd_dmy_clk
        type: u1
      - id: burst_wrap_data_mode
        type: u1
      - id: burst_wrap_data
        type: u1
      - id: de_burst_wrap_cmd
        type: u1
      - id: de_burst_wrap_cmd_dmy_clk
        type: u1
      - id: de_burst_wrap_data_mode
        type: u1
      - id: de_burst_wrap_data
        type: u1
      - id: time_esector
        type: u2
      - id: time_e_32_k
        type: u2
      - id: time_e_64_k
        type: u2
      - id: time_page_pgm
        type: u2
      - id: time_ce
        type: u2
      - id: pd_delay
        type: u1
      - id: qe_data
        type: u1
      - id: crc
        type: u4
  clk_cfg:
    seq:
      - id: magic_code
        size: 4
        # contents: "PCFG" # BL602 & BL706 have this empty
      - id: xtal_type
        type: u1
      - id: pll_clk
        type: u1
      - id: hclk_div
        type: u1
      - id: bclk_div
        type: u1
      - id: flash_clk_type
        type: u1
      - id: flash_clk_div
        type: u1
      - id: rsvd
        size: 2
      - id: crc
        type: u4
  boot_cfg:
    meta:
      bit-endian: le
    seq:
      - id: sign               
        type: b2
      - id: encrypt_type       
        type: b2
      - id: key_sel            
        type: b2
      - id: rsvd6_7            
        type: b2
      - id: no_segment         
        type: b1
      - id: cache_enable       
        type: b1
      - id: notload_in_bootrom 
        type: b1
      - id: aes_region_lock    
        type: b1
      - id: cache_way_disable  
        type: b4
      - id: crc_ignore         
        type: b1
      - id: hash_ignore        
        type: b1
      - id: halt_ap            
        type: b1
      - id: rsvd19_31
        type: b13
  segment:
    seq:
      - id: dest_address
        type: u4
      - id: length
        type: u4
      - id: rsv
        type: u4
      - id: crc
        type: u4
      - id: data
        size: length