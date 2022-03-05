;;; Segment .text (23000300)

;; xTaskGetTickCountFromISR: 2303030A
;;   Called from:
;;     23000574 (in get_dts_addr.part.2)
;;     23023932 (in bl_send_cfg_task_req)
;;     23029D5A (in tc_blfdtdump)
;;     23029F42 (in tc_blfdtdump)
;;     2302A064 (in tc_blfdtdump)
;;     2302A1A4 (in tc_fdt_wifi_module)
;;     2302A214 (in tc_fdt_wifi_module)
;;     2302A2AA (in tc_fdt_wifi_module)
;;     2302A30C (in tc_fdt_wifi_module)
;;     2302A3A0 (in tc_fdt_wifi_module)
;;     2302A412 (in tc_fdt_wifi_module)
;;     2302A462 (in tc_fdt_wifi_module)
;;     2302A4E8 (in tc_fdt_wifi_module)
;;     2302A554 (in tc_fdt_wifi_module)
;;     2302A5AC (in tc_fdt_wifi_module)
;;     2302A5DC (in tc_fdt_wifi_module)
;;     2302A60E (in tc_fdt_wifi_module)
;;     2302A64A (in tc_fdt_wifi_module)
;;     2302A684 (in tc_fdt_wifi_module)
;;     2302A6B6 (in tc_fdt_wifi_module)
;;     2302A6E8 (in tc_fdt_wifi_module)
;;     2302A718 (in tc_fdt_wifi_module)
;;     2302A734 (in tc_fdt_wifi_module)
;;     2302A76A (in tc_fdt_wifi_module)
;;     2302A7C2 (in tc_fdt_wifi_module)
;;     2302A7FE (in tc_fdt_wifi_module)
;;     2302A856 (in tc_fdt_wifi_module)
;;     2302A892 (in tc_fdt_wifi_module)
;;     2302A8E8 (in tc_fdt_wifi_module)
;;     2302A924 (in tc_fdt_wifi_module)
;;     2302A99C (in tc_fdt_wifi_module)
;;     2302DCE0 (in ef_get_env_blob)
;;     2302DD2E (in ef_get_env_blob)
;;     2302DDEA (in ef_del_env)
;;     2302DE66 (in ef_set_env_blob)
;;     2302DEB2 (in ef_set_env_blob)
;;     2302DEFE (in ef_set_env_blob)
;;     2302E4A6 (in psm_test_cmd)
;;     2302E558 (in psm_test_cmd)
;;     2302E5A6 (in psm_test_cmd)
;;     2302E5D4 (in psm_test_cmd)
;;     230329E8 (in _cb_cmd)
;;     23032A5A (in bl_cks_test)
;;     23032AD8 (in bl_cks_test)
;;     23032B94 (in bl_cks_test)
;;     23032C0A (in bl_cks_test)
;;     23032C5A (in bl_cks_test)
;;     23032CF0 (in bl_cks_test)
;;     23032D94 (in bl_cks_test)
;;     23032E2E (in bl_cks_test)
;;     23032EAE (in bl_cks_test)
;;     23032FC0 (in bl_cks_test)
;;     23033018 (in bl_cks_test)
;;     23033060 (in bl_cks_test)
;;     230330CC (in bl_cks_test)
;;     23033114 (in bl_cks_test)
;;     2303315E (in bl_cks_test)
;;     230331A2 (in bl_cks_test)
;;     230331E6 (in bl_cks_test)
;;     2303324A (in bl_cks_test)
;;     2303329C (in bl_cks_test)
;;     230332FE (in bl_cks_test)
;;     23033352 (in bl_cks_test)
;;     230333A4 (in _cb_cmd)
;;     230334F8 (in bl_dma_IRQHandler)
;;     230335CC (in bl_dma_irq_register)
;;     2303364E (in bl_dma_irq_register)
;;     230336BC (in bl_dma_irq_register)
;;     2303373C (in bl_dma_init)
;;     230337A0 (in bl_dma_init)
;;     23033868 (in bl_dma_test)
;;     23033936 (in _irq_num_check.part.0)
;;     23033A3A (in bl_irq_register_with_ctx)
;;     23033A94 (in bl_irq_register_with_ctx)
;;     23033B86 (in bl_irq_unregister)
;;     23033E1C (in wait_trng4feed)
;;     23033EEE (in sec_trng_IRQHandler)
;;     230345EE (in _pka_test_case2)
;;     23034666 (in _pka_test_case2)
;;     230346CE (in _pka_test_case2)
;;     23034838 (in cmd_gpio_get)
;;     230348BE (in cmd_gpio_get)
;;     2303494A (in cmd_gpio_set)
;;     230349BA (in cmd_gpio_set)
;;     23034A0C (in cmd_gpio_set)
;;     23034AAA (in cmd_gpio_func)
;;     23034B3E (in cmd_gpio_func)
;;     23034B98 (in cmd_gpio_func)
;;     23034D14 (in Aes_Compare_Data)
;;     23034D82 (in Aes_Compare_Data)
;;     23034DE6 (in Aes_Compare_Data)
;;     23034F3E (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23034FB6 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23035028 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350A2 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230351A4 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303521C (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303528E (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035308 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035520 (in bl_sha_mutex_take)
;;     2303559A (in bl_sha_mutex_give)
;;     23035912 (in cmd_wdt_init)
;;     23035952 (in cmd_wdt_init)
;;     23035A02 (in dev_uart_init)
;;     23035A6C (in dev_uart_init)
;;     23035A9A (in dev_uart_init)
;;     23035B20 (in dev_uart_init)
;;     23035B9A (in dev_uart_init)
;;     23035BE6 (in dev_uart_init)
;;     23035E4E (in vfs_uart_init)
;;     23035EB0 (in vfs_uart_init)
;;     23035F76 (in vfs_uart_init)
;;     23035FAC (in vfs_uart_init)
;;     23036014 (in vfs_uart_init)
;;     2303606A (in vfs_uart_init)
;;     230360D0 (in vfs_uart_init)
;;     2303612E (in vfs_uart_init)
;;     23036192 (in vfs_uart_init)
;;     230361E2 (in vfs_uart_init)
;;     2303622A (in vfs_uart_init)
;;     23036296 (in vfs_uart_init)
;;     230362FE (in vfs_uart_init)
;;     2303635C (in vfs_uart_init)
;;     2303642E (in vfs_uart_init)
;;     23036462 (in vfs_uart_init)
;;     230364A2 (in vfs_uart_init)
;;     2303651E (in vfs_uart_init)
;;     23036564 (in vfs_uart_init)
;;     230365A2 (in vfs_uart_init)
;;     23036676 (in hal_gpio_init_from_dts)
;;     23036700 (in hal_gpio_init_from_dts)
;;     230367AE (in hal_gpio_init_from_dts)
;;     23036828 (in hal_gpio_init_from_dts)
;;     2303685C (in hal_gpio_init_from_dts)
;;     23036984 (in hal_gpio_init_from_dts)
;;     230369BE (in hal_gpio_init_from_dts)
;;     23036A1E (in hal_gpio_init_from_dts)
;;     23036A6C (in hal_gpio_init_from_dts)
;;     23036AD4 (in hal_gpio_init_from_dts)
;;     2303703A (in hal_boot2_init)
;;     2303717C (in hal_board_cfg)
;;     230371CE (in hal_board_cfg)
;;     23037232 (in hal_board_cfg)
;;     23037284 (in hal_board_cfg)
;;     230372F2 (in hal_board_cfg)
;;     2303737C (in hal_board_cfg)
;;     230373D6 (in hal_board_cfg)
;;     23037444 (in hal_board_cfg)
;;     230374C6 (in hal_board_cfg)
;;     23037570 (in hal_board_cfg)
;;     23037600 (in hal_board_cfg)
;;     23037698 (in hal_board_cfg)
;;     2303770E (in hal_board_cfg)
;;     23037850 (in hal_board_cfg)
;;     230378B0 (in hal_board_cfg)
;;     230378E6 (in hal_board_cfg)
;;     23037968 (in hal_board_cfg)
;;     2303799C (in hal_board_cfg)
;;     230379EC (in hal_board_cfg)
;;     23037A40 (in hal_board_cfg)
;;     23037A94 (in hal_board_cfg)
;;     23037AE6 (in hal_board_cfg)
;;     23037B34 (in hal_board_cfg)
;;     23037B7E (in hal_board_cfg)
;;     23037C20 (in hal_board_cfg)
;;     23037CD4 (in hal_board_cfg)
;;     23037D70 (in hal_board_cfg)
;;     23037E24 (in hal_board_cfg)
;;     23037EC8 (in hal_board_cfg)
;;     23037F24 (in hal_board_cfg)
;;     23037FAA (in hal_board_cfg)
;;     2303804A (in hal_board_cfg)
;;     2303807E (in hal_board_cfg)
;;     230380B0 (in hal_board_cfg)
;;     23038102 (in hal_board_cfg)
;;     23038196 (in hal_board_cfg)
;;     230381D8 (in hal_board_cfg)
;;     23038206 (in hal_board_cfg)
;;     23038252 (in hal_board_cfg)
;;     230382AE (in hal_board_cfg)
;;     23038302 (in hal_board_cfg)
;;     23038358 (in hal_board_cfg)
;;     230383AE (in hal_board_cfg)
;;     23038462 (in hal_board_cfg)
;;     230384D0 (in hal_board_cfg)
;;     23038512 (in hal_board_cfg)
;;     2303857C (in hal_board_cfg)
;;     230385C0 (in hal_board_cfg)
;;     23038638 (in hal_board_cfg)
;;     23038680 (in hal_board_cfg)
;;     230386F0 (in hal_board_cfg)
;;     2303872E (in hal_board_cfg)
;;     23038778 (in hal_board_cfg)
;;     230387B6 (in hal_board_cfg)
;;     23038802 (in hal_board_cfg)
;;     230388E2 (in hal_board_cfg)
;;     230389AE (in hal_board_cfg)
;;     23038A2E (in hal_board_cfg)
;;     23038AA6 (in hal_board_cfg)
;;     23038B44 (in hal_board_cfg)
;;     23038BCC (in hal_board_cfg)
;;     23038C42 (in hal_board_cfg)
;;     23038CAE (in hal_board_cfg)
;;     23038D36 (in hal_board_cfg)
;;     23038E24 (in bl_tsen_adc_get)
;;     23038E90 (in bl_tsen_adc_get)
;;     23039264 (in bl_flash_config_update)
;;     230392B8 (in bl_flash_config_update)
;;     230392F4 (in bl_flash_config_update)
;;     23039330 (in bl_flash_config_update)
;;     2303936A (in bl_flash_config_update)
;;     230393A4 (in bl_flash_config_update)
;;     230393DE (in bl_flash_config_update)
;;     23039DAA (in _cb_led_trigger)
;;     23039E2A (in _led_bloop_msg)
;;     23039F2C (in _led_bloop_evt)
;;     23039FFC (in loopset_led_trigger)
;;     2304994E (in file_info)
;;     23049998 (in file_info)
;;     230499E2 (in file_info)
;;     23049BE8 (in dirent_file)
;;     23049C3A (in dirent_file)
;;     23049CCE (in dirent_file)
;;     23049D0E (in dirent_file)
;;     23049D70 (in dirent_file)
;;     23049DEA (in romfs_opendir)
;;     23049EB4 (in romfs_stat)
;;     23049F38 (in romfs_stat)
;;     23049F8C (in romfs_open)
;;     2304A026 (in romfs_open)
;;     2304A0AC (in romfs_open)
;;     2304A0DE (in romfs_open)
;;     2304A112 (in romfs_open)
;;     2304A18C (in romfs_register)
;;     2304A1E6 (in romfs_register)
;;     2304A234 (in romfs_register)
;;     2304B82A (in log_buf_out)
;;     2304B8DA (in log_buf_out)
;;     230551D8 (in bl_mtd_write)
;;     23055682 (in bloop_run)
;;     2305571A (in bloop_run)
xTaskGetTickCountFromISR proc
	lui	a5,0004200E
	lw	a0,a5,-00000198
	c.jr	ra

;; pcTaskGetName: 23030314
;;   Called from:
;;     230019F6 (in aws_main_entry)
pcTaskGetName proc
	c.beqz	a0,000000002303031C

l23030316:
	addi	a0,a0,+00000034
	c.jr	ra

l2303031C:
	lui	a5,0004200E
	lw	a0,a5,-000001C8
	c.bnez	a0,0000000023030316

l23030326:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	addi	a0,a0,+00000034
	c.addi16sp	00000020
	c.jr	ra

;; xTaskIncrementTick: 2303033C
;;   Called from:
;;     230305D2 (in xTaskResumeAll)
;;     23034734 (in int_timer_cb)
xTaskIncrementTick proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a0,0000000C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	jal	ra,000000002302B340
	c.mv	s1,a0
	c.beqz	a0,0000000023030384

l2303035E:
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,00000000230303A0

l23030368:
	lui	a5,0004200E
	addi	a5,a5,-000001B4
	c.lw	a5,0(a4)
	c.li	s1,00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)

l23030378:
	lui	a5,0004200E
	lw	a5,a5,-00000194
	c.beqz	a5,0000000023030384

l23030382:
	c.li	s1,00000001

l23030384:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l230303A0:
	lui	a5,0004200E
	addi	a5,a5,-00000198
	lw	s3,a5,+00000000
	c.addi	s3,00000001
	sw	s3,a5,+00000000
	bne	s3,zero,0000000023030406

l230303B6:
	lui	s2,0004200E
	addi	s2,s2,-000001C4
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	bne	a5,zero,00000000230304D6

l230303C8:
	lui	a4,0004200E
	addi	a4,a4,-000001C0
	lw	a3,s2,+00000000
	c.lw	a4,0(a2)
	lui	a5,0004200E
	addi	a5,a5,-000001A0
	sw	a2,s2,+00000000
	c.sw	a4,0(a3)
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023030402

l230303F2:
	lui	s6,0004200E
	addi	s6,s6,-000001A4
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	000000002303040E

l23030402:
	jal	ra,000000002302FB38

l23030406:
	lui	s6,0004200E
	addi	s6,s6,-000001A4

l2303040E:
	lw	a5,s6,+00000000
	bltu	s3,a5,00000000230304A0

l23030416:
	lui	s2,0004200E
	lui	s4,00042012
	lui	s5,0004200E
	c.li	s1,00000000
	addi	s2,s2,-000001C4
	addi	s4,s4,+0000053C
	addi	s5,s5,-000001C8
	lui	s8,0004200E
	c.li	s7,00000001

l23030436:
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023030498

l2303043E:
	lw	a5,s2,+00000000
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	c.lw	s0,4(a5)
	addi	s9,s0,+00000004
	c.mv	a0,s9
	bltu	s3,a5,00000000230304D0

l23030452:
	jal	ra,000000002302E914
	c.lw	s0,40(a5)
	addi	a0,s0,+00000018
	c.beqz	a5,0000000023030462

l2303045E:
	jal	ra,000000002302E914

l23030462:
	c.lw	s0,44(a5)
	addi	a4,s8,-000001A8
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s7,a5
	c.or	a5,a3
	c.mv	a1,s9
	c.add	a0,s4
	c.sw	a4,0(a5)
	jal	ra,000000002302E8CE
	lw	a5,s5,+00000000
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bltu	a4,a5,0000000023030436

l2303048E:
	lw	a5,s2,+00000000
	c.li	s1,00000001
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303043E

l23030498:
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	00000000230304B2

l230304A0:
	lui	s4,00042012
	lui	s5,0004200E
	c.li	s1,00000000
	addi	s4,s4,+0000053C
	addi	s5,s5,-000001C8

l230304B2:
	lw	a5,s5,+00000000
	c.li	a3,00000001
	c.lw	a5,44(a4)
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	s4,a5
	lw	a5,s4,+00000000
	bgeu	a3,a5,0000000023030378

l230304CC:
	c.li	s1,00000001
	c.j	0000000023030378

l230304D0:
	sw	a5,s6,+00000000
	c.j	00000000230304B2

l230304D6:
	jal	ra,0000000023001004
	c.j	00000000230303C8

;; xTaskResumeAll: 230304DC
;;   Called from:
;;     2302E6E8 (in xEventGroupWaitBits)
;;     2302E72A (in xEventGroupWaitBits)
;;     2302E762 (in xEventGroupWaitBits)
;;     2302E826 (in xEventGroupSetBits)
;;     2302E89E (in vEventGroupDelete)
;;     2302E8B0 (in vEventGroupDelete)
;;     2302ED30 (in xQueueGenericSend)
;;     2302ED7E (in xQueueGenericSend)
;;     2302EDCC (in xQueueGenericSend)
;;     2302F054 (in xQueueReceive)
;;     2302F084 (in xQueueReceive)
;;     2302F0DA (in xQueueReceive)
;;     2302F1A0 (in xQueueSemaphoreTake)
;;     2302F1CC (in xQueueSemaphoreTake)
;;     2302F1FE (in xQueueSemaphoreTake)
;;     2302F856 (in xStreamBufferSend)
;;     2302F9FA (in xStreamBufferReceive)
;;     23030656 (in vTaskDelay)
;;     23030B2E (in vTaskGetInfo)
;;     23030CC6 (in uxTaskGetSystemState)
;;     230319A8 (in prvTimerTask)
;;     23031AA8 (in prvTimerTask)
;;     23031AB8 (in prvTimerTask)
;;     230321BA (in pvPortMalloc)
;;     2303224E (in pvPortMalloc)
;;     230322FE (in vPortFree)
xTaskResumeAll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,0004200E
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	addi	s1,s1,-000001B0
	c.lw	s1,0(a5)
	beq	a5,zero,000000002303061C

l23030500:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023030514

l23030510:
	jal	ra,000000002302FD16

l23030514:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	c.lw	s1,0(a5)
	c.bnez	a5,00000000230305EA

l2303051E:
	lui	a5,0004200E
	lw	a5,a5,-000001BC
	c.beqz	a5,00000000230305EA

l23030528:
	lui	s3,0004200E
	lui	s8,00042012
	lui	s2,00042012
	c.li	s6,00000000
	addi	s3,s3,-00000194
	addi	s8,s8,+000007E4
	lui	s5,0004200E
	c.li	s1,00000001
	addi	s2,s2,+0000053C
	lui	s4,0004200E

l2303054C:
	lw	a5,s8,+00000000
	c.beqz	a5,00000000230305A8

l23030552:
	lw	a5,s8,+0000000C
	lw	s6,a5,+0000000C
	addi	a0,s6,+00000018
	jal	ra,000000002302E914
	addi	s7,s6,+00000004
	c.mv	a0,s7
	jal	ra,000000002302E914
	lw	a5,s6,+0000002C
	addi	a4,s5,-000001A8
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s1,a5
	c.or	a5,a3
	c.mv	a1,s7
	c.add	a0,s2
	c.sw	a4,0(a5)
	jal	ra,000000002302E8CE
	addi	a5,s4,-000001C8
	c.lw	a5,0(a5)
	lw	a4,s6,+0000002C
	c.lw	a5,44(a5)
	bltu	a4,a5,000000002303054C

l2303059E:
	sw	s1,s3,+00000000
	lw	a5,s8,+00000000
	c.bnez	a5,0000000023030552

l230305A8:
	beq	s6,zero,00000000230305C2

l230305AC:
	lui	a5,0004200E
	lw	a5,a5,-000001C4
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303062A

l230305B8:
	lui	a5,0004200E
	c.li	a4,FFFFFFFF
	sw	a4,a5,+00000E5C

l230305C2:
	lui	s2,0004200E
	addi	s2,s2,-000001B4
	lw	s1,s2,+00000000
	c.beqz	s1,00000000230305E4

l230305D0:
	c.li	s4,00000001

l230305D2:
	jal	ra,000000002303033C
	c.addi	s1,FFFFFFFF
	c.beqz	a0,00000000230305DE

l230305DA:
	sw	s4,s3,+00000000

l230305DE:
	c.bnez	s1,00000000230305D2

l230305E0:
	sw	zero,s2,+00000000

l230305E4:
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023030622

l230305EA:
	c.li	a0,00000000

l230305EC:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023030604

l230305F0:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023030604

l230305FC:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l23030604:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l2303061C:
	jal	ra,0000000023001004
	c.j	0000000023030500

l23030622:
	ecall
	c.li	a0,00000001
	c.j	00000000230305EC

l2303062A:
	jal	ra,000000002302FB38
	c.j	00000000230305C2

;; vTaskDelay: 23030630
;;   Called from:
;;     23000476 (in proc_hellow_entry)
;;     23000490 (in proc_hellow_entry)
;;     2300148C (in aws_main_entry)
;;     230014FC (in aws_main_entry)
;;     23001644 (in aws_main_entry)
;;     23001666 (in aws_main_entry)
;;     23001710 (in aws_main_entry)
;;     23001788 (in aws_main_entry)
;;     230017AA (in aws_main_entry)
;;     230017DA (in aws_main_entry)
;;     23001A16 (in aws_main_entry)
;;     230063D2 (in txl_frame_get)
;;     23013390 (in coex_wifi_pta_forece_enable)
;;     2301A720 (in hal_dma_push)
;;     230229BA (in bl_main_rtthread_start)
;;     230260AA (in wifi_mgmr_event_notify)
;;     23027AEE (in wifi_disconnect_cmd)
;;     23033222 (in bl_cks_test)
;;     23033904 (in bl_dma_test)
;;     23039B38 (in proc_entry_looprt)
;;     23047FE6 (in tcpc_entry)
;;     230486AA (in iperf_server_udp)
;;     23048A0E (in iperf_client_udp)
;;     23048BC8 (in iperf_client_udp)
;;     23048F02 (in iperf_client_tcp)
;;     2304905E (in iperf_client_tcp)
;;     2304EAEC (in has_timer_expired)
;;     230553E6 (in bloop_wait_startup)
vTaskDelay proc
	c.bnez	a0,0000000023030638

l23030632:
	ecall
	c.jr	ra

l23030638:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	s0,s0,-000001B0
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.bnez	a5,0000000023030668

l2303064A:
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000000
	jal	ra,000000002302FC54
	jal	ra,00000000230304DC
	c.bnez	a0,0000000023030660

l2303065C:
	ecall

l23030660:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23030668:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	000000002303064A

;; vTaskSwitchContext: 23030672
;;   Called from:
;;     23013510 (in ipc_emb_notify)
;;     2303473E (in int_timer_cb)
;;     2304C9A8 (in __uart_rx_irq)
;;     2304C9EC (in __uart_tx_irq)
;;     2304D41E (in aos_sem_signal)
vTaskSwitchContext proc
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,0000000023030688

l2303067C:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E6C
	c.jr	ra

l23030688:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	a5,0004200E
	lui	s2,0004200E
	sw	zero,a5,+00000E6C
	addi	s2,s2,-000001C8
	lw	a4,s2,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a4,48(a4)
	lui	a5,000A5A5A
	addi	a5,a5,+000005A5
	c.lw	a4,0(a3)
	bne	a3,a5,00000000230306BE

l230306B8:
	c.lw	a4,4(a5)
	beq	a5,a3,0000000023030722

l230306BE:
	lw	a0,s2,+00000000
	lw	a1,s2,+00000000
	addi	a1,a1,+00000034
	jal	ra,00000000230008C2

l230306CE:
	lui	a5,0004200E
	lw	a0,a5,-000001A8
	c.li	s0,0000001F
	lui	s1,00042012
	jal	ra,000000002306C8C0
	sub	s3,s0,a0
	slli	s0,s3,00000002
	add	a5,s0,s3
	addi	s1,s1,+0000053C
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023030730

l230306F8:
	c.add	s0,s3
	c.slli	s0,02
	add	a4,s1,s0
	c.lw	a4,4(a5)
	c.addi	s0,00000008
	c.add	s0,s1
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	beq	a5,s0,0000000023030736

l2303070E:
	c.lw	a5,12(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a5,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23030722:
	c.lw	a4,8(a3)
	bne	a3,a5,00000000230306BE

l23030728:
	c.lw	a4,12(a5)
	bne	a5,a3,00000000230306BE

l2303072E:
	c.j	00000000230306CE

l23030730:
	jal	ra,0000000023001004
	c.j	00000000230306F8

l23030736:
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	c.j	000000002303070E

;; vTaskPlaceOnEventList: 2303073C
;;   Called from:
;;     2302ED74 (in xQueueGenericSend)
;;     2302F0D0 (in xQueueReceive)
;;     2302F1F4 (in xQueueSemaphoreTake)
vTaskPlaceOnEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,0000000023030762

l23030746:
	lui	a5,0004200E
	lw	a1,a5,-000001C8
	c.addi	a1,00000018
	jal	ra,000000002302E8E4
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002302FC54

l23030762:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	0000000023030746

;; vTaskPlaceOnUnorderedEventList: 2303076C
;;   Called from:
;;     2302E726 (in xEventGroupWaitBits)
vTaskPlaceOnUnorderedEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s1,a2
	c.beqz	a0,00000000230307B8

l2303077A:
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,00000000230307AE

l23030784:
	lui	a5,0004200E
	addi	a5,a5,-000001C8
	c.lw	a5,0(a4)
	c.lw	a5,0(a1)
	lui	a5,00080000
	c.or	a5,s0
	c.addi	a1,00000018
	c.sw	a4,24(a5)
	jal	ra,000000002302E8CE
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002302FC54

l230307AE:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	0000000023030784

l230307B8:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	000000002303077A

;; vTaskPlaceOnEventListRestricted: 230307C2
;;   Called from:
;;     2302F416 (in vQueueWaitForMessageRestricted)
vTaskPlaceOnEventListRestricted proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a2
	c.beqz	a0,00000000230307F2

l230307D0:
	lui	a5,0004200E
	lw	a1,a5,-000001C8
	c.addi	a1,00000018
	jal	ra,000000002302E8CE
	c.beqz	s0,00000000230307E2

l230307E0:
	c.li	s1,FFFFFFFF

l230307E2:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302FC54

l230307F2:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	00000000230307D0

;; xTaskRemoveFromEventList: 230307FC
;;   Called from:
;;     2302EA42 (in prvUnlockQueue)
;;     2302EA92 (in prvUnlockQueue)
;;     2302EB10 (in xQueueGenericReset)
;;     2302ED98 (in xQueueGenericSend)
;;     2302EF3A (in xQueueGenericSendFromISR)
;;     2302EFB8 (in xQueueGiveFromISR)
;;     2302F108 (in xQueueReceive)
;;     2302F280 (in xQueueSemaphoreTake)
xTaskRemoveFromEventList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,12(a5)
	c.lw	a5,12(s0)
	c.beqz	s0,000000002303088E

l2303080A:
	addi	s1,s0,+00000018
	c.mv	a0,s1
	jal	ra,000000002302E914
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,0000000023030854

l2303081E:
	lui	a0,00042012
	c.mv	a1,s1
	addi	a0,a0,+000007E4
	jal	ra,000000002302E8CE

l2303082C:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	s0,44(a4)
	c.li	a0,00000000
	c.lw	a5,44(a5)
	bgeu	a5,a4,000000002303084A

l2303083E:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E6C
	c.li	a0,00000001

l2303084A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23030854:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,-000001A8
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042012
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+0000053C
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002302E8CE
	c.j	000000002303082C

l2303088E:
	jal	ra,0000000023001004
	c.j	000000002303080A

;; vTaskRemoveFromUnorderedEventList: 23030894
;;   Called from:
;;     2302E812 (in xEventGroupSetBits)
;;     2302E870 (in vEventGroupDelete)
;;     2302E888 (in vEventGroupDelete)
vTaskRemoveFromUnorderedEventList proc
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.beqz	a5,0000000023030914

l230308A8:
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.beqz	s0,000000002303092C

l230308B4:
	jal	ra,000000002302E914
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.lw	s0,44(a5)
	lui	a3,0004200E
	addi	a3,a3,-000001A8
	c.lw	a3,0(a2)
	slli	a4,a5,00000002
	c.add	a4,a5
	c.li	s2,00000001
	lui	a0,00042012
	c.slli	a4,02
	sll	a5,s2,a5
	addi	a0,a0,+0000053C
	c.or	a5,a2
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002302E8CE
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023030908

l23030900:
	lui	a5,0004200E
	sw	s2,a5,+00000E6C

l23030908:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23030914:
	c.swsp	a1,00000084
	c.swsp	a0,00000004
	jal	ra,0000000023001004
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.bnez	s0,00000000230308B4

l2303092C:
	c.swsp	a0,00000004
	jal	ra,0000000023001004
	c.lwsp	s0,00000044
	c.j	00000000230308B4

;; vTaskSetTimeOutState: 23030936
;;   Called from:
;;     2302F7BC (in xStreamBufferSend)
vTaskSetTimeOutState proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.beqz	a0,0000000023030990

l23030942:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023030956

l23030952:
	jal	ra,000000002302FD16

l23030956:
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a3,a4,-000001A0
	lw	a4,a5,-00000198
	c.lw	s0,0(a5)
	c.sw	s1,0(a3)
	c.sw	s1,4(a4)
	c.beqz	a5,0000000023030986

l2303096E:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023030986

l2303097A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302FD2A

l23030986:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23030990:
	jal	ra,0000000023001004
	c.j	0000000023030942

;; vTaskInternalSetTimeOutState: 23030996
;;   Called from:
;;     2302ED8E (in xQueueGenericSend)
;;     2302EFFE (in xQueueReceive)
;;     2302F1E2 (in xQueueSemaphoreTake)
vTaskInternalSetTimeOutState proc
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a4,a4,-000001A0
	lw	a5,a5,-00000198
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; xTaskCheckForTimeOut: 230309AC
;;   Called from:
;;     2302ED14 (in xQueueGenericSend)
;;     2302F03C (in xQueueReceive)
;;     2302F188 (in xQueueSemaphoreTake)
;;     2302F7EC (in xStreamBufferSend)
xTaskCheckForTimeOut proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a0,0000000023030A50

l230309BC:
	beq	s2,zero,0000000023030A58

l230309C0:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023030A3E

l230309D0:
	lui	a5,0004200E
	addi	a5,a5,-00000198
	lw	a4,s2,+00000000
	c.lw	a5,0(a2)
	c.li	a3,FFFFFFFF
	c.li	a0,00000000
	beq	a4,a3,0000000023030A1A

l230309E6:
	lui	a3,0004200E
	addi	a3,a3,-000001A0
	c.lw	a3,0(a0)
	lw	a6,s1,+00000000
	c.lw	s1,4(a1)
	beq	a6,a0,0000000023030A00

l230309FA:
	c.li	a0,00000001
	bgeu	a2,a1,0000000023030A1A

l23030A00:
	sub	a0,a2,a1
	bgeu	a0,a4,0000000023030A44

l23030A08:
	c.lw	a3,0(a3)
	c.sub	a4,a2
	c.lw	a5,0(a5)
	c.add	a4,a1
	sw	a4,s2,+00000000
	c.sw	s1,0(a3)
	c.sw	s1,4(a5)
	c.li	a0,00000000

l23030A1A:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023030A32

l23030A1E:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023030A32

l23030A2A:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l23030A32:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23030A3E:
	jal	ra,000000002302FD16
	c.j	00000000230309D0

l23030A44:
	c.lw	s0,0(a5)
	sw	zero,s2,+00000000
	c.li	a0,00000001
	c.beqz	a5,0000000023030A32

l23030A4E:
	c.j	0000000023030A1E

l23030A50:
	jal	ra,0000000023001004
	bne	s2,zero,00000000230309C0

l23030A58:
	jal	ra,0000000023001004
	c.j	00000000230309C0

;; vTaskMissedYield: 23030A5E
;;   Called from:
;;     2302EA4A (in prvUnlockQueue)
;;     2302EA9A (in prvUnlockQueue)
vTaskMissedYield proc
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E6C
	c.jr	ra

;; vTaskGetInfo: 23030A6A
;;   Called from:
;;     23030B78 (in prvListTasksWithinSingleList.part.11)
;;     23030BA6 (in prvListTasksWithinSingleList.part.11)
vTaskGetInfo proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,0000000023030AEE

l23030A74:
	addi	a5,s0,+00000034
	c.sw	a1,4(a5)
	c.sw	a1,0(s0)
	c.lw	s0,44(a4)
	c.li	a5,00000005
	c.sw	a1,16(a4)
	c.lw	s0,48(a4)
	c.sw	a1,28(a4)
	c.lw	s0,72(a4)
	c.sw	a1,8(a4)
	c.lw	s0,80(a4)
	sw	zero,a1,+00000018
	c.sw	a1,20(a4)
	beq	a3,a5,0000000023030AFE

l23030A96:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	beq	a5,s0,0000000023030AF8

l23030AA2:
	sb	a3,a1,+0000000C
	c.li	a5,00000003
	beq	a3,a5,0000000023030B12

l23030AAC:
	c.beqz	a2,0000000023030AE2

l23030AAE:
	c.lw	s0,48(a3)
	addi	a5,zero,+000000A5
	lbu	a4,a3,+00000000
	bne	a4,a5,0000000023030B38

l23030ABC:
	c.li	a5,00000000
	addi	a2,zero,+000000A5

l23030AC2:
	c.addi	a5,00000001
	add	a4,a3,a5
	lbu	a4,a4,+00000000
	beq	a4,a2,0000000023030AC2

l23030AD0:
	c.srli	a5,00000002
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a1,+00000020

l23030ADA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23030AE2:
	sh	zero,a1,+00000020
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23030AEE:
	lui	a5,0004200E
	lw	s0,a5,-000001C8
	c.j	0000000023030A74

l23030AF8:
	sb	zero,a1,+0000000C
	c.j	0000000023030AAC

l23030AFE:
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023030196
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	sb	a0,a1,+0000000C
	c.j	0000000023030AAC

l23030B12:
	lui	a5,0004200E
	addi	a5,a5,-000001B0
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023030B2A

l23030B24:
	c.li	a5,00000002
	sb	a5,a1,+0000000C

l23030B2A:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230304DC
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.j	0000000023030AAC

l23030B38:
	c.li	a5,00000000
	sh	a5,a1,+00000020
	c.j	0000000023030ADA

;; prvListTasksWithinSingleList.part.11: 23030B40
;;   Called from:
;;     23030C2C (in uxTaskGetSystemState)
;;     23030C52 (in uxTaskGetSystemState)
;;     23030C72 (in uxTaskGetSystemState)
;;     23030C96 (in uxTaskGetSystemState)
;;     23030CBA (in uxTaskGetSystemState)
prvListTasksWithinSingleList.part.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.lw	a1,4(a5)
	addi	s4,a1,+00000008
	c.mv	s2,a1
	c.lw	a5,4(a5)
	c.mv	s6,a2
	c.sw	a1,4(a5)
	beq	a5,s4,0000000023030BC4

l23030B64:
	lw	s5,a5,+0000000C
	c.mv	s0,a0
	c.li	s3,00000000
	c.j	0000000023030B84

l23030B6E:
	c.lw	a5,12(s1)
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	c.mv	a0,s1
	jal	ra,0000000023030A6A
	beq	s5,s1,0000000023030BAE

l23030B80:
	lw	a5,s2,+00000004

l23030B84:
	c.lw	a5,4(a5)
	c.mv	a1,s0
	c.mv	a3,s6
	sw	a5,s2,+00000004
	c.li	a2,00000001
	bne	s4,a5,0000000023030B6E

l23030B94:
	lw	a5,s4,+00000004
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	sw	a5,s2,+00000004
	c.lw	a5,12(s1)
	c.mv	a0,s1
	jal	ra,0000000023030A6A
	bne	s5,s1,0000000023030B80

l23030BAE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l23030BC4:
	c.lw	a1,12(a5)
	c.sw	a1,4(a5)
	c.j	0000000023030B64

;; uxTaskGetSystemState: 23030BCA
;;   Called from:
;;     23031078 (in vTaskList)
uxTaskGetSystemState proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	a5,a5,-000001B0
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lui	a5,0004200E
	lw	a5,a5,-000001BC
	c.li	s2,00000000
	bltu	a1,a5,0000000023030CC6

l23030BF6:
	lui	s5,00042012
	addi	s5,s5,+0000053C
	c.mv	s4,a0
	c.mv	s0,a2
	addi	s3,s5,+0000026C
	addi	s1,zero,+00000020
	c.li	s2,00000000
	c.li	a4,00000000

l23030C0E:
	c.addi	s1,FFFFFFFF
	slli	a5,s1,00000002
	c.add	a5,s1
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a3)
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4
	c.mv	a1,s3
	c.li	a2,00000001
	c.mv	a0,a5
	c.beqz	a3,0000000023030C3E

l23030C2C:
	jal	ra,0000000023030B40
	c.add	s2,a0
	slli	a4,s2,00000003
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4

l23030C3E:
	c.addi	s3,FFFFFFEC
	c.bnez	s1,0000000023030C0E

l23030C42:
	lui	a4,0004200E
	lw	a1,a4,-000001C4
	c.lw	a1,0(a4)
	c.beqz	a4,0000000023030C62

l23030C4E:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,0000000023030B40
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23030C62:
	lui	a4,0004200E
	lw	a1,a4,-000001C0
	c.lw	a1,0(a4)
	c.beqz	a4,0000000023030C82

l23030C6E:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,0000000023030B40
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23030C82:
	lui	a1,00042013
	addi	a4,a1,-000007F4
	c.lw	a4,0(a4)
	c.beqz	a4,0000000023030CA6

l23030C8E:
	c.mv	a0,a5
	c.li	a2,00000004
	addi	a1,a1,-000007F4
	jal	ra,0000000023030B40
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23030CA6:
	lui	a1,00042012
	addi	a4,a1,+000007F8
	c.lw	a4,0(a4)
	c.beqz	a4,0000000023030CC0

l23030CB2:
	c.li	a2,00000003
	addi	a1,a1,+000007F8
	c.mv	a0,a5
	jal	ra,0000000023030B40
	c.add	s2,a0

l23030CC0:
	c.beqz	s0,0000000023030CC6

l23030CC2:
	sw	zero,s0,+00000000

l23030CC6:
	jal	ra,00000000230304DC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; uxTaskGetStackHighWaterMark: 23030CDE
;;   Called from:
;;     230019FE (in aws_main_entry)
uxTaskGetStackHighWaterMark proc
	c.beqz	a0,0000000023030D0A

l23030CE0:
	c.lw	a0,48(a4)
	addi	a5,zero,+000000A5
	c.li	a0,00000000
	lbu	a3,a4,+00000000
	bne	a3,a5,0000000023030D22

l23030CF0:
	addi	a3,zero,+000000A5

l23030CF4:
	c.addi	a0,00000001
	add	a5,a4,a0
	lbu	a5,a5,+00000000
	beq	a5,a3,0000000023030CF4

l23030D02:
	c.srli	a0,00000002
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

l23030D0A:
	lui	a5,0004200E
	lw	a0,a5,-000001C8
	addi	a5,zero,+000000A5
	c.lw	a0,48(a4)
	c.li	a0,00000000
	lbu	a3,a4,+00000000
	beq	a3,a5,0000000023030CF0

l23030D22:
	c.jr	ra

;; xTaskGetCurrentTaskHandle: 23030D24
;;   Called from:
;;     2301354E (in ipc_emb_init)
;;     2302452E (in bl_output)
;;     2302EE2A (in xQueueGiveMutexRecursive)
;;     2302F2AE (in xQueueTakeMutexRecursive)
;;     2302F7CE (in xStreamBufferSend)
;;     2302FA3C (in xStreamBufferReceive)
;;     2304D288 (in aos_task_key_create)
;;     2304D2EE (in aos_task_setspecific)
;;     2304D32C (in aos_task_getspecific)
;;     230554DC (in bloop_run)
xTaskGetCurrentTaskHandle proc
	lui	a5,0004200E
	lw	a0,a5,-000001C8
	c.jr	ra

;; xTaskGetSchedulerState: 23030D2E
;;   Called from:
;;     2302E6C2 (in xEventGroupWaitBits)
;;     2302E704 (in xEventGroupWaitBits)
;;     2302ECB0 (in xQueueGenericSend)
;;     2302EFE4 (in xQueueReceive)
;;     2302F130 (in xQueueSemaphoreTake)
;;     23031842 (in xTimerGenericCommand)
xTaskGetSchedulerState proc
	lui	a5,0004200E
	lw	a5,a5,-0000019C
	c.li	a0,00000001
	c.beqz	a5,0000000023030D48

l23030D3A:
	lui	a5,0004200E
	lw	a0,a5,-000001B0
	sltiu	a0,a0,+00000001
	c.slli	a0,01

l23030D48:
	c.jr	ra

;; xTaskPriorityInherit: 23030D4A
;;   Called from:
;;     2302F264 (in xQueueSemaphoreTake)
xTaskPriorityInherit proc
	c.beqz	a0,0000000023030DC4

l23030D4C:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,-000001C8
	c.lw	s1,0(a4)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,44(a3)
	c.lw	a4,44(a4)
	c.mv	s0,a0
	bgeu	a3,a4,0000000023030DAC

l23030D6C:
	c.lw	a0,24(a4)
	blt	a4,zero,0000000023030D7E

l23030D72:
	c.lw	s1,0(a4)
	c.lw	a4,44(a2)
	addi	a4,zero,+00000020
	c.sub	a4,a2
	c.sw	a0,24(a4)

l23030D7E:
	slli	a4,a3,00000002
	c.add	a4,a3
	lui	s2,00042012
	c.lw	s0,20(a3)
	addi	s2,s2,+0000053C
	c.slli	a4,02
	c.add	a4,s2
	beq	a3,a4,0000000023030DC8

l23030D96:
	c.lw	s1,0(a4)
	c.li	a0,00000001
	c.lw	a4,44(a4)
	c.sw	s0,44(a4)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23030DAC:
	c.lw	s1,0(a4)
	c.lw	a0,80(a0)
	c.lw	a4,44(a5)
	sltu	a0,a0,a5

l23030DB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23030DC4:
	c.li	a0,00000000
	c.jr	ra

l23030DC8:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,000000002302E914
	c.bnez	a0,0000000023030DFE

l23030DD4:
	c.lw	s0,44(a3)
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	slli	a5,a3,00000002
	c.add	a5,a3
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023030E06

l23030DEC:
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	0000000023030E06

l23030DFE:
	lui	a4,0004200E
	addi	a4,a4,-000001A8

l23030E06:
	c.lw	s1,0(a5)
	c.lw	a4,0(a2)
	c.mv	a1,s3
	c.lw	a5,44(a3)
	c.li	a5,00000001
	slli	a0,a3,00000002
	c.add	a0,a3
	sll	a5,a5,a3
	c.slli	a0,02
	c.or	a5,a2
	c.add	a0,s2
	c.sw	s0,44(a3)
	c.sw	a4,0(a5)
	jal	ra,000000002302E8CE
	c.li	a0,00000001
	c.j	0000000023030DB6

;; xTaskPriorityDisinherit: 23030E2C
;;   Called from:
;;     2302E9D8 (in prvCopyDataToQueue)
xTaskPriorityDisinherit proc
	c.beqz	a0,0000000023030E7A

l23030E2E:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	beq	a5,a0,0000000023030E48

l23030E44:
	jal	ra,0000000023001004

l23030E48:
	c.lw	s0,84(a5)
	c.beqz	a5,0000000023030E66

l23030E4C:
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	beq	a3,a4,0000000023030E5A

l23030E58:
	c.beqz	a5,0000000023030E7E

l23030E5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23030E66:
	jal	ra,0000000023001004
	c.lw	s0,84(a5)
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	bne	a3,a4,0000000023030E58

l23030E78:
	c.j	0000000023030E5A

l23030E7A:
	c.li	a0,00000000
	c.jr	ra

l23030E7E:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.beqz	a0,0000000023030ED2

l23030E8A:
	lui	a0,00042012
	lui	a2,0004200E
	addi	a0,a0,+0000053C
	addi	a2,a2,-000001A8

l23030E9A:
	c.lw	s0,80(a3)
	c.lw	a2,0(a1)
	addi	a6,zero,+00000020
	slli	a4,a3,00000002
	c.add	a4,a3
	c.li	a5,00000001
	sub	a6,a6,a3
	sll	a5,a5,a3
	c.slli	a4,02
	c.or	a5,a1
	c.sw	s0,44(a3)
	sw	a6,s0,+00000018
	c.mv	a1,s1
	c.add	a0,a4
	c.sw	a2,0(a5)
	jal	ra,000000002302E8CE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23030ED2:
	c.lw	s0,44(a4)
	lui	a0,00042012
	addi	a0,a0,+0000053C
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	a5,a0
	c.lw	a5,0(a5)
	lui	a2,0004200E
	addi	a2,a2,-000001A8
	c.bnez	a5,0000000023030E9A

l23030EF2:
	c.lw	a2,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a4
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a2,0(a5)
	c.j	0000000023030E9A

;; vTaskPriorityDisinheritAfterTimeout: 23030F04
;;   Called from:
;;     2302F24E (in xQueueSemaphoreTake)
vTaskPriorityDisinheritAfterTimeout proc
	c.beqz	a0,0000000023030F52

l23030F06:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a0,84(a5)
	c.mv	s1,a1
	c.mv	s0,a0
	c.beqz	a5,0000000023030F44

l23030F18:
	lw	s2,s0,+00000050
	bltu	s2,s1,0000000023030F3A

l23030F20:
	c.lw	s0,44(a5)
	beq	a5,s2,0000000023030F2E

l23030F26:
	c.lw	s0,84(a3)
	c.li	a4,00000001
	beq	a3,a4,0000000023030F54

l23030F2E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23030F3A:
	c.lw	s0,44(a5)
	c.mv	s2,s1
	bne	a5,s2,0000000023030F26

l23030F42:
	c.j	0000000023030F2E

l23030F44:
	jal	ra,0000000023001004
	lw	s2,s0,+00000050
	bgeu	s2,s1,0000000023030F20

l23030F50:
	c.j	0000000023030F3A

l23030F52:
	c.jr	ra

l23030F54:
	lui	a4,0004200E
	lw	a4,a4,-000001C8
	beq	a4,s0,0000000023030FCC

l23030F60:
	c.lw	s0,24(a4)
	sw	s2,s0,+0000002C
	blt	a4,zero,0000000023030F76

l23030F6A:
	addi	a4,zero,+00000020
	sub	s2,a4,s2
	sw	s2,s0,+00000018

l23030F76:
	slli	a4,a5,00000002
	c.add	a5,a4
	lui	s1,00042012
	c.lw	s0,20(a4)
	addi	s1,s1,+0000053C
	c.slli	a5,02
	c.add	a5,s1
	bne	a4,a5,0000000023030F2E

l23030F8E:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,000000002302E914
	c.beqz	a0,0000000023030FD4

l23030F9A:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	lui	a4,0004200E
	sll	a3,a3,a0
	slli	a5,a0,00000002
	addi	a4,a4,-000001A8

l23030FAE:
	c.lw	a4,0(a2)
	c.add	a5,a0
	slli	a0,a5,00000002
	c.or	a3,a2
	c.sw	a4,0(a3)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s2
	c.add	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302E8CE

l23030FCC:
	jal	ra,0000000023001004
	c.lw	s0,44(a5)
	c.j	0000000023030F60

l23030FD4:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	slli	a5,a0,00000002
	add	a4,a5,a0
	c.slli	a4,02
	c.add	a4,s1
	c.lw	a4,0(a4)
	sll	a3,a3,a0
	c.beqz	a4,0000000023030FF6

l23030FEC:
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	c.j	0000000023030FAE

l23030FF6:
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	c.lw	a4,0(a1)
	xori	a2,a3,-00000001
	c.and	a2,a1
	c.sw	a4,0(a2)
	c.j	0000000023030FAE

;; vTaskEnterCritical: 2303100A
;;   Called from:
;;     2300432C (in rxl_mpdu_free)
;;     23004756 (in bl60x_firmwre_mpdu_free)
;;     230048BE (in rxl_hwdesc_init)
;;     230063B2 (in txl_frame_get)
;;     2300A7CC (in rxu_swdesc_upload_evt)
;;     23024396 (in bl_tx_resend)
;;     23024406 (in bl_tx_try_flush)
;;     23024632 (in bl_output)
;;     230250CE (in stateConnectedIPNoEnter)
;;     23027CDE (in cmd_wifi_dump)
;;     23027CFC (in cmd_wifi_dump)
;;     23028314 (in wifi_mgmr_sta_ip_set)
;;     23028662 (in wifi_mgmr_scan_filter_hidden_ssid)
;;     2302B356 (in bl_sys_time_sync_state)
;;     2302E776 (in xEventGroupWaitBits)
;;     2302EA14 (in prvUnlockQueue)
;;     2302EA64 (in prvUnlockQueue)
;;     2302EACC (in xQueueGenericReset)
;;     2302ECBC (in xQueueGenericSend)
;;     2302ECE8 (in xQueueGenericSend)
;;     2302ED1A (in xQueueGenericSend)
;;     2302ED36 (in xQueueGenericSend)
;;     2302EFEC (in xQueueReceive)
;;     2302F010 (in xQueueReceive)
;;     2302F042 (in xQueueReceive)
;;     2302F058 (in xQueueReceive)
;;     2302F088 (in xQueueReceive)
;;     2302F094 (in xQueueReceive)
;;     2302F138 (in xQueueSemaphoreTake)
;;     2302F15C (in xQueueSemaphoreTake)
;;     2302F18E (in xQueueSemaphoreTake)
;;     2302F1A6 (in xQueueSemaphoreTake)
;;     2302F1D0 (in xQueueSemaphoreTake)
;;     2302F238 (in xQueueSemaphoreTake)
;;     2302F25E (in xQueueSemaphoreTake)
;;     2302F2F6 (in uxQueueMessagesWaiting)
;;     2302F3CE (in vQueueWaitForMessageRestricted)
;;     2302F7F2 (in xStreamBufferSend)
;;     2302F9B2 (in xStreamBufferReceive)
;;     2303166C (in prvCheckForValidListAndQueue)
;;     23031B2E (in pvTimerGetTimerID)
;;     2303355A (in bl_dma_copy)
;;     2303A076 (in loopset_led_trigger)
;;     2303A3AA (in sys_arch_protect)
;;     2304A486 (in sntp_recv)
;;     2304A744 (in sntp_get_time)
;;     2304CB3C (in vfs_uart_poll)
;;     2304CB66 (in vfs_uart_poll)
;;     23055418 (in bloop_evt_set_async)
;;     230554F6 (in bloop_run)
;;     23055562 (in bloop_run)
vTaskEnterCritical proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	lw	a5,a5,-0000019C
	c.beqz	a5,000000002303101C

l23031018:
	jal	zero,000000002302FD16

l2303101C:
	c.jr	ra

;; vTaskExitCritical: 2303101E
;;   Called from:
;;     23004380 (in rxl_mpdu_free)
;;     2300476E (in bl60x_firmwre_mpdu_free)
;;     230049F4 (in rxl_hwdesc_init)
;;     230063D8 (in txl_frame_get)
;;     2300A7DE (in rxu_swdesc_upload_evt)
;;     230243D4 (in bl_tx_resend)
;;     23024432 (in bl_tx_try_flush)
;;     23024644 (in bl_output)
;;     230250F0 (in stateConnectedIPNoEnter)
;;     23027CEC (in cmd_wifi_dump)
;;     23028334 (in wifi_mgmr_sta_ip_set)
;;     2302867C (in wifi_mgmr_scan_filter_hidden_ssid)
;;     2302B366 (in bl_sys_time_sync_state)
;;     2302E798 (in xEventGroupWaitBits)
;;     2302EA60 (in prvUnlockQueue)
;;     2302EABA (in prvUnlockQueue)
;;     2302EAFC (in xQueueGenericReset)
;;     2302EB1A (in xQueueGenericReset)
;;     2302EB3A (in xQueueGenericReset)
;;     2302ECE0 (in xQueueGenericSend)
;;     2302ED0C (in xQueueGenericSend)
;;     2302ED26 (in xQueueGenericSend)
;;     2302ED52 (in xQueueGenericSend)
;;     2302ED6C (in xQueueGenericSend)
;;     2302EDBE (in xQueueGenericSend)
;;     2302F008 (in xQueueReceive)
;;     2302F034 (in xQueueReceive)
;;     2302F04A (in xQueueReceive)
;;     2302F068 (in xQueueReceive)
;;     2302F090 (in xQueueReceive)
;;     2302F0B2 (in xQueueReceive)
;;     2302F0C8 (in xQueueReceive)
;;     2302F154 (in xQueueSemaphoreTake)
;;     2302F180 (in xQueueSemaphoreTake)
;;     2302F196 (in xQueueSemaphoreTake)
;;     2302F1BE (in xQueueSemaphoreTake)
;;     2302F1D8 (in xQueueSemaphoreTake)
;;     2302F1E8 (in xQueueSemaphoreTake)
;;     2302F20C (in xQueueSemaphoreTake)
;;     2302F252 (in xQueueSemaphoreTake)
;;     2302F26A (in xQueueSemaphoreTake)
;;     2302F274 (in xQueueSemaphoreTake)
;;     2302F2FC (in uxQueueMessagesWaiting)
;;     2302F3F6 (in vQueueWaitForMessageRestricted)
;;     2302F7D4 (in xStreamBufferSend)
;;     2302F804 (in xStreamBufferSend)
;;     2302F9CA (in xStreamBufferReceive)
;;     2302FA42 (in xStreamBufferReceive)
;;     2303167E (in prvCheckForValidListAndQueue)
;;     23031B34 (in pvTimerGetTimerID)
;;     2303358C (in bl_dma_copy)
;;     2303A090 (in loopset_led_trigger)
;;     2303A3B6 (in sys_arch_unprotect)
;;     2304A4CC (in sntp_recv)
;;     2304A754 (in sntp_get_time)
;;     2304CB48 (in vfs_uart_poll)
;;     2304CB76 (in vfs_uart_poll)
;;     23055436 (in bloop_evt_set_async)
;;     23055506 (in bloop_run)
;;     23055578 (in bloop_run)
vTaskExitCritical proc
	lui	a5,0004200E
	lw	a5,a5,-0000019C
	c.beqz	a5,0000000023031038

l23031028:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023031038

l23031034:
	jal	zero,000000002302FD2A

l23031038:
	c.jr	ra

;; vTaskList: 2303103A
;;   Called from:
;;     2302B6A8 (in ps_cmd)
vTaskList proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200E
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	addi	a5,a5,-000001BC
	c.lw	a5,0(s1)
	c.lw	a5,0(a5)
	c.mv	s0,a0
	sb	zero,a0,+00000000
	slli	a0,a5,00000003
	c.add	a0,a5
	c.slli	a0,02
	jal	ra,000000002303218A
	c.beqz	a0,000000002303111E

l23031072:
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	s8,a0
	jal	ra,0000000023030BCA
	c.beqz	a0,0000000023031100

l2303107E:
	slli	s2,a0,00000003
	c.add	s2,a0
	c.slli	s2,02
	lui	s7,0002308E
	c.mv	s1,s8
	c.add	s2,s8
	lui	s6,00023082
	c.li	s5,00000004
	addi	s7,s7,-000001A0
	c.li	s4,0000000E
	addi	s3,zero,+00000020

l2303109E:
	lbu	a5,s1,+0000000C
	c.li	s9,00000000
	bltu	s5,a5,00000000230310AE

l230310A8:
	c.add	a5,s7
	lbu	s9,a5,+00000000

l230310AE:
	c.lw	s1,4(a1)
	c.mv	a0,s0
	jal	ra,000000002307127C
	c.mv	a0,s0
	jal	ra,000000002307132C
	bltu	s4,a0,00000000230310D2

l230310C0:
	c.add	a0,s0
	addi	a5,s0,+0000000F

l230310C6:
	sb	s3,a0,+00000000
	c.addi	a0,00000001
	bne	a5,a0,00000000230310C6

l230310D0:
	c.li	a0,0000000F

l230310D2:
	c.add	s0,a0
	sb	zero,s0,+00000000
	lw	a6,s1,+0000001C
	c.lw	s1,8(a5)
	lhu	a4,s1,+00000020
	c.lw	s1,16(a3)
	c.mv	a2,s9
	addi	a1,s6,+000007D4
	c.mv	a0,s0
	jal	ra,0000000023052148
	c.mv	a0,s0
	jal	ra,000000002307132C
	addi	s1,s1,+00000024
	c.add	s0,a0
	bne	s1,s2,000000002303109E

l23031100:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	tp,0000002C
	c.mv	a0,s8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	jal	zero,0000000023032272

l2303111E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

;; uxTaskResetEventItemValue: 23031138
;;   Called from:
;;     2302E734 (in xEventGroupWaitBits)
uxTaskResetEventItemValue proc
	lui	a5,0004200E
	addi	a5,a5,-000001C8
	c.lw	a5,0(a2)
	c.lw	a5,0(a3)
	c.lw	a5,0(a4)
	addi	a5,zero,+00000020
	c.lw	a3,44(a3)
	c.lw	a2,24(a0)
	c.sub	a5,a3
	c.sw	a4,24(a5)
	c.jr	ra

;; pvTaskIncrementMutexHeldCount: 23031154
;;   Called from:
;;     2302F294 (in xQueueSemaphoreTake)
pvTaskIncrementMutexHeldCount proc
	lui	a5,0004200E
	addi	a5,a5,-000001C8
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023031168

l23031160:
	c.lw	a5,0(a3)
	c.lw	a3,84(a4)
	c.addi	a4,00000001
	c.sw	a3,84(a4)

l23031168:
	c.lw	a5,0(a0)
	c.jr	ra

;; ulTaskNotifyTake: 2303116C
;;   Called from:
;;     23013530 (in ipc_emb_wait)
;;     23055528 (in bloop_run)
ulTaskNotifyTake proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	c.mv	s3,a1
	csrrci	zero,mstatus,00000008
	lui	s1,0004200E
	addi	s1,s1,-0000019C
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023031190

l2303118C:
	jal	ra,000000002302FD16

l23031190:
	lui	s0,0004200E
	addi	s0,s0,-000001C8
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	c.bnez	a5,00000000230311AA

l2303119E:
	c.lw	s0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+0000005C
	bne	s3,zero,0000000023031204

l230311AA:
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230311B4

l230311AE:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,00000000230311FE

l230311B4:
	csrrci	zero,mstatus,00000008
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230311C0

l230311BC:
	jal	ra,000000002302FD16

l230311C0:
	c.lw	s0,0(a5)
	c.lw	a5,88(a0)
	c.beqz	a0,00000000230311D0

l230311C6:
	c.lw	s0,0(a5)
	beq	s2,zero,00000000230311F6

l230311CC:
	sw	zero,a5,+00000058

l230311D0:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230311E8

l230311DA:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230311E8

l230311E0:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l230311E8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230311F6:
	addi	a4,a0,-00000001
	c.sw	a5,88(a4)
	c.j	00000000230311D0

l230311FE:
	jal	ra,000000002302FD2A
	c.j	00000000230311B4

l23031204:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002302FC54
	ecall
	c.j	00000000230311AA

;; xTaskNotifyWait: 23031212
;;   Called from:
;;     2302F7E0 (in xStreamBufferSend)
;;     2302FA4E (in xStreamBufferReceive)
xTaskNotifyWait proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.mv	s5,a3
	csrrci	zero,mstatus,00000008
	lui	s3,0004200E
	addi	s3,s3,-0000019C
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023031240

l2303123C:
	jal	ra,000000002302FD16

l23031240:
	lui	s0,0004200E
	addi	s0,s0,-000001C8
	c.lw	s0,0(a5)
	c.li	a4,00000002
	lbu	a5,a5,+0000005C
	beq	a4,a5,000000002303126C

l23031254:
	c.lw	s0,0(a5)
	xori	s1,s1,-00000001
	c.li	a4,00000001
	c.lw	a5,88(a0)
	c.and	s1,a0
	c.sw	a5,88(s1)
	c.lw	s0,0(a5)
	sb	a4,a5,+0000005C
	bne	s5,zero,00000000230312E4

l2303126C:
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023031278

l23031272:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,00000000230312DE

l23031278:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,0000000023031286

l23031282:
	jal	ra,000000002302FD16

l23031286:
	beq	s4,zero,0000000023031292

l2303128A:
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	sw	a5,s4,+00000000

l23031292:
	c.lw	s0,0(a5)
	c.li	a4,00000002
	c.li	a0,00000000
	lbu	a5,a5,+0000005C
	bne	a4,a5,00000000230312B2

l230312A0:
	c.lw	s0,0(a5)
	xori	s2,s2,-00000001
	c.li	a0,00000001
	c.lw	a5,88(a4)
	and	s2,s2,a4
	sw	s2,a5,+00000058

l230312B2:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230312CC

l230312BE:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230312CC

l230312C4:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l230312CC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230312DE:
	jal	ra,000000002302FD2A
	c.j	0000000023031278

l230312E4:
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,000000002302FC54
	ecall
	c.j	000000002303126C

;; xTaskGenericNotify: 230312F2
;;   Called from:
;;     23013522 (in ipc_emb_notify)
;;     230244D8 (in bl_tx_notify)
;;     2302F84E (in xStreamBufferSend)
;;     2302F9F2 (in xStreamBufferReceive)
;;     23055448 (in bloop_evt_set_async)
xTaskGenericNotify proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s1,a2
	c.mv	s2,a3
	beq	a0,zero,000000002303141A

l2303130C:
	csrrci	zero,mstatus,00000008
	lui	s3,0004200E
	addi	s3,s3,-0000019C
	lw	a5,s3,+00000000
	c.bnez	a5,000000002303138A

l2303131E:
	beq	s2,zero,0000000023031328

l23031322:
	c.lw	s0,88(a5)
	sw	a5,s2,+00000000

l23031328:
	lbu	s2,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s2,s2,+000000FF
	bltu	a5,s1,000000002303134C

l2303133C:
	lui	a2,00023082
	c.slli	s1,02
	addi	a2,a2,+000007AC
	c.add	s1,a2
	c.lw	s1,0(a5)
	c.jr	a5

l2303134C:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023031358

l23031354:
	jal	ra,0000000023001004

l23031358:
	c.li	a5,00000001
	beq	s2,a5,0000000023031390

l2303135E:
	c.li	a0,00000001
	lw	a5,s3,+00000000
	c.beqz	a5,000000002303137A

l23031366:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,000000002303137A

l23031372:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l2303137A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303138A:
	jal	ra,000000002302FD16
	c.j	000000002303131E

l23031390:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.lw	s0,44(a3)
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	c.lw	a4,0(a2)
	slli	a5,a3,00000002
	c.add	a5,a3
	lui	a0,00042012
	c.slli	a5,02
	sll	s2,s2,a3
	addi	a0,a0,+0000053C
	or	s2,s2,a2
	c.add	a0,a5
	c.mv	a1,s1
	sw	s2,a4,+00000000
	jal	ra,000000002302E8CE
	c.lw	s0,40(a5)
	c.beqz	a5,00000000230313D2

l230313CE:
	jal	ra,0000000023001004

l230313D2:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,000000002303135E

l230313E2:
	ecall
	c.j	000000002303135E
230313E8                         89 47 01 45 E3 0A F9 F6         .G.E....
230313F0 23 2C 44 05 85 47 E3 14 F9 F6 59 BF 3C 4C 85 07 #,D..G....Y.<L..
23031400 3C CC 85 47 E3 1D F9 F4 61 B7 2C 4C 85 47 B3 E5 <..G....a.,L.G..
23031410 45 01 2C CC E3 15 F9 F4 A5 BF                   E.,.......     

l2303141A:
	jal	ra,0000000023001004
	c.j	000000002303130C

;; xTaskGenericNotifyFromISR: 23031420
;;   Called from:
;;     2302F932 (in xStreamBufferSendFromISR)
;;     2302FAD2 (in xStreamBufferReceiveFromISR)
xTaskGenericNotifyFromISR proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s2,a4
	c.beqz	a0,00000000230314D4

l23031430:
	c.beqz	a3,0000000023031436

l23031432:
	c.lw	s0,88(a5)
	c.sw	a3,0(a5)

l23031436:
	lbu	s1,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s1,s1,+000000FF
	bltu	a5,a2,000000002303145A

l2303144A:
	lui	a5,00023082
	addi	a5,a5,+000007C0
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5

l2303145A:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023031466

l23031462:
	jal	ra,0000000023001004

l23031466:
	c.li	a5,00000001
	beq	s1,a5,000000002303147A

l2303146C:
	c.li	a0,00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303147A:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023031482

l2303147E:
	jal	ra,0000000023001004

l23031482:
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,00000000230314E6

l2303148C:
	lui	a0,00042012
	addi	a1,s0,+00000018
	addi	a0,a0,+000007E4
	jal	ra,000000002302E8CE

l2303149C:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,000000002303146C

l230314AC:
	beq	s2,zero,00000000230314B6

l230314B0:
	c.li	a5,00000001
	sw	a5,s2,+00000000

l230314B6:
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E6C
	c.j	000000002303146C
230314C2       89 47 01 45 E3 84 F4 FA 2C CC 85 47 E3 9F   .G.E....,..G..
230314D0 F4 F8 65 B7                                     ..e.           

l230314D4:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023001004
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.j	0000000023031430

l230314E6:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,-000001A8
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042012
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+0000053C
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,000000002302E8CE
	c.j	000000002303149C
23031520 3C 4C 85 07 3C CC 85 47 E3 92 F4 F4 B9 B7 3C 4C <L..<..G......<L
23031530 DD 8D 2C CC 85 47 E3 9B F4 F2 81 B7             ..,..G......   

;; vTaskNotifyGiveFromISR: 2303153C
;;   Called from:
;;     23013508 (in ipc_emb_notify)
vTaskNotifyGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,00000000230315F6

l2303154C:
	c.li	a5,00000002
	lbu	a4,s0,+0000005C
	sb	a5,s0,+0000005C
	c.lw	s0,88(a5)
	c.li	a3,00000001
	c.addi	a5,00000001
	c.sw	s0,88(a5)
	beq	a3,a4,000000002303156E

l23031562:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303156E:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023031576

l23031572:
	jal	ra,0000000023001004

l23031576:
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.beqz	a5,00000000230315BC

l23031580:
	lui	a0,00042012
	addi	a1,s0,+00000018
	addi	a0,a0,+000007E4
	jal	ra,000000002302E8CE

l23031590:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023031562

l230315A0:
	c.beqz	s1,00000000230315A6

l230315A2:
	c.li	a5,00000001
	c.sw	s1,0(a5)

l230315A6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E6C
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230315BC:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,000000002302E914
	c.lw	s0,44(a2)
	lui	a3,0004200E
	addi	a3,a3,-000001A8
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042012
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+0000053C
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s2
	c.sw	a3,0(a5)
	jal	ra,000000002302E8CE
	c.j	0000000023031590

l230315F6:
	jal	ra,0000000023001004
	c.j	000000002303154C

;; xTaskNotifyStateClear: 230315FC
;;   Called from:
;;     2302F7C2 (in xStreamBufferSend)
;;     2302FA30 (in xStreamBufferReceive)
xTaskNotifyStateClear proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.beqz	a0,0000000023031650

l23031608:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.beqz	a5,000000002303161C

l23031618:
	jal	ra,000000002302FD16

l2303161C:
	lbu	a5,s1,+0000005C
	c.li	a4,00000002
	c.li	a0,00000000
	bne	a4,a5,000000002303162E

l23031628:
	sb	zero,s1,+0000005C
	c.li	a0,00000001

l2303162E:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023031646

l23031632:
	lui	a5,0004200E
	lw	a5,a5,-000001C8
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023031646

l2303163E:
	c.swsp	a0,00000084
	jal	ra,000000002302FD2A
	c.lwsp	a2,00000044

l23031646:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23031650:
	lui	a5,0004200E
	lw	s1,a5,-000001C8
	c.j	0000000023031608

;; prvCheckForValidListAndQueue: 2303165A
;;   Called from:
;;     2303173A (in xTimerCreateTimerTask)
;;     230317CA (in xTimerCreateStatic)
prvCheckForValidListAndQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,-00000184
	jal	ra,000000002303100A
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023031682

l23031674:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002303101E

l23031682:
	lui	a5,00042013
	addi	a0,a5,-000007A0
	addi	s2,a5,-000007A0
	jal	ra,000000002302E8B4
	lui	a5,00042013
	addi	a0,a5,-0000078C
	addi	s1,a5,-0000078C
	jal	ra,000000002302E8B4
	lui	a5,0004200E
	lui	a3,00042013
	lui	a2,00042013
	sw	s2,a5,+00000E70
	c.li	a4,00000000
	lui	a5,0004200E
	addi	a3,a3,-00000778
	addi	a2,a2,-000007E0
	c.li	a1,00000010
	c.li	a0,00000004
	sw	s1,a5,+00000E74
	jal	ra,000000002302EB50
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023031674

l230316D0:
	lui	a1,00023083
	addi	a1,a1,-000007F0
	jal	ra,000000002302F396
	c.j	0000000023031674

;; prvInsertTimerInActiveList: 230316DE
;;   Called from:
;;     23031B08 (in prvTimerTask)
prvInsertTimerInActiveList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.sw	a0,4(a1)
	c.sw	a0,16(a0)
	c.mv	a5,a0
	bltu	a2,a1,00000000230316FC

l230316EC:
	c.lw	a0,24(a4)
	c.sub	a2,a3
	c.li	a0,00000001
	bltu	a2,a4,000000002303171E

l230316F6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230316FC:
	bgeu	a2,a3,0000000023031706

l23031700:
	c.li	a0,00000001
	bgeu	a1,a3,00000000230316F6

l23031706:
	lui	a4,0004200E
	lw	a0,a4,-00000190
	addi	a1,a5,+00000004
	jal	ra,000000002302E8E4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303171E:
	lui	a4,0004200E
	lw	a0,a4,-0000018C
	addi	a1,a5,+00000004
	jal	ra,000000002302E8E4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; xTimerCreateTimerTask: 23031736
;;   Called from:
;;     23030296 (in vTaskStartScheduler)
xTimerCreateTimerTask proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,000000002303165A
	lui	a5,0004200E
	lw	a5,a5,-00000184
	c.beqz	a5,0000000023031786

l23031748:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023000FE8
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000008
	c.lwsp	a2,00000084
	lui	a1,00023083
	lui	a0,00023032
	c.li	a4,0000001F
	c.li	a3,00000000
	addi	a1,a1,-000007E8
	addi	a0,a0,-000006CE
	jal	ra,000000002302FF48
	lui	a5,0004200E
	sw	a0,a5,+00000E80
	c.beqz	a0,0000000023031786

l2303177E:
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l23031786:
	jal	ra,0000000023001004
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; xTimerCreateStatic: 23031792
;;   Called from:
;;     230250B8 (in stateConnectedIPNoEnter)
;;     23025CD4 (in stateDisconnect_enter)
;;     23026154 (in wifi_mgmr_start)
xTimerCreateStatic proc
	c.addi16sp	FFFFFFD0
	addi	a6,zero,+0000002C
	c.swsp	a6,00000084
	c.lwsp	a2,00000028
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.mv	s5,a4
	c.mv	s0,a5
	beq	a7,a6,00000000230317BE

l230317BA:
	jal	ra,0000000023001004

l230317BE:
	c.lwsp	a2,000000E4
	c.beqz	s0,000000002303180E

l230317C2:
	c.li	a5,00000002
	sb	a5,s0,+00000028
	c.beqz	s1,0000000023031808

l230317CA:
	jal	ra,000000002303165A
	addi	a0,s0,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,24(s1)
	sw	s4,s0,+0000001C
	sw	s5,s0,+00000020
	jal	ra,000000002302E8C8
	beq	s3,zero,00000000230317F4

l230317E8:
	lbu	a5,s0,+00000028
	ori	a5,a5,+00000004
	sb	a5,s0,+00000028

l230317F4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23031808:
	jal	ra,0000000023001004
	c.j	00000000230317CA

l2303180E:
	jal	ra,0000000023001004
	c.j	00000000230317F4

;; xTimerGenericCommand: 23031814
;;   Called from:
;;     23024EA0 (in stateConnectedIPNoExit)
;;     23024EB4 (in stateConnectedIPNoExit)
;;     230250CA (in stateConnectedIPNoEnter)
;;     230258BE (in stateDisconnect_exit)
;;     230258CC (in stateDisconnect_exit)
;;     23025CF2 (in stateDisconnect_enter)
;;     23026172 (in wifi_mgmr_start)
;;     23031926 (in prvSwitchTimerLists)
;;     23031B18 (in prvTimerTask)
xTimerGenericCommand proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s1,a0
	c.mv	s2,a3
	c.mv	s3,a4
	c.beqz	a0,0000000023031880

l23031828:
	lui	s0,0004200E
	addi	s0,s0,-00000184
	c.lw	s0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023031858

l23031836:
	c.swsp	a1,00000008
	c.swsp	a2,00000088
	c.swsp	s1,0000000C
	c.li	a3,00000005
	blt	a3,a1,0000000023031866

l23031842:
	jal	ra,0000000023030D2E
	c.li	a5,00000002
	beq	a0,a5,000000002303188E

l2303184C:
	c.lw	s0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,000000002302EC88

l23031858:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23031866:
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	c.mv	a0,a5
	jal	ra,000000002302EE94
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23031880:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023001004
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.j	0000000023031828

l2303188E:
	c.lw	s0,0(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	jal	ra,000000002302EC88
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; prvSwitchTimerLists: 230318A8
;;   Called from:
;;     23031AA2 (in prvTimerTask)
;;     23031AB0 (in prvTimerTask)
prvSwitchTimerLists proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	addi	s2,s2,-00000190
	c.j	00000000230318DE

l230318BE:
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	lw	s3,a5,+00000000
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,000000002302E914
	c.lw	s0,32(a5)
	c.mv	a0,s0
	c.jalr	a5
	lbu	a5,s0,+00000028
	c.andi	a5,00000004
	c.bnez	a5,0000000023031904

l230318DE:
	lw	a5,s2,+00000000
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230318BE

l230318E6:
	lui	a4,0004200E
	addi	a4,a4,-0000018C
	c.lw	a4,0(a3)
	c.sw	a4,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a3,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23031904:
	c.lw	s0,24(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.add	a5,s3
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s0
	bgeu	s3,a5,0000000023031926

l23031916:
	lw	a0,s2,+00000000
	c.sw	s0,4(a5)
	c.sw	s0,16(s0)
	c.mv	a1,s1
	jal	ra,000000002302E8E4
	c.j	00000000230318DE

l23031926:
	jal	ra,0000000023031814
	c.bnez	a0,00000000230318DE

l2303192C:
	jal	ra,0000000023001004
	c.j	00000000230318DE

;; prvTimerTask: 23031932
prvTimerTask proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	lui	s4,0004200E
	lui	s1,0004200E
	lui	s3,0004200E
	lui	s6,00023082
	lui	s7,0004200E
	c.swsp	s5,00000098
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s8,00000014
	addi	s4,s4,-00000190
	addi	s1,s1,-00000188
	addi	s3,s3,-00000184
	addi	s6,s6,+000007E8
	addi	s7,s7,-0000018C
	c.li	s5,00000009

l23031972:
	lw	a5,s4,+00000000
	lw	s2,a5,+00000000
	beq	s2,zero,0000000023031A84

l2303197E:
	c.lw	a5,12(a5)
	lw	s2,a5,+00000000
	jal	ra,00000000230302D8
	jal	ra,00000000230302E8
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,0000000023031AA2

l23031994:
	c.sw	s1,0(a0)
	c.li	a2,00000000
	bgeu	a0,s2,0000000023031AB8

l2303199C:
	lw	a0,s3,+00000000
	sub	a1,s2,s0
	jal	ra,000000002302F3BE
	jal	ra,00000000230304DC
	c.bnez	a0,00000000230319B2

l230319AE:
	ecall

l230319B2:
	lw	a0,s3,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,000000002302EFC8
	c.beqz	a0,0000000023031972

l230319C0:
	c.lwsp	a6,000000E4
	c.lwsp	s8,00000004
	blt	a5,zero,0000000023031A72

l230319C8:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230319D4

l230319CC:
	addi	a0,s0,+00000004
	jal	ra,000000002302E914

l230319D4:
	jal	ra,00000000230302E8
	c.lw	s1,0(a5)
	bltu	a0,a5,0000000023031AAE

l230319DE:
	c.lwsp	a6,000000E4
	c.sw	s1,0(a0)
	bltu	s5,a5,00000000230319B2

l230319E6:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5
230319EE                                           83 47               .G
230319F0 84 02 D2 45 93 E7 17 00 23 04 F4 02 0C CC 63 85 ...E....#.....c.
23031A00 05 0E AA 86 2A 86 AA 95 22 85 EF F0 5F CD 55 B7 ....*..."..._.U.
23031A10 83 47 84 02 F9 9B 23 04 F4 02 61 BF 83 47 84 02 .G....#...a..G..
23031A20 13 F7 27 00 61 CB F9 9B 23 04 F4 02 59 B7 83 47 ..'.a...#...Y..G
23031A30 84 02 0C 4C D2 46 93 E7 17 00 2A 86 23 04 F4 02 ...L.F....*.#...
23031A40 B6 95 22 85 EF F0 BF C9 2D D5 1C 50 22 85 82 97 ..".....-..P"...
23031A50 83 47 84 02 91 8B B1 DF 1C 4C 52 46 01 47 81 46 .G.......LRF.G.F
23031A60 3E 96 81 45 22 85 EF F0 FF DA 21 F5 EF F0 8C D9 >..E".....!.....
23031A70 89 B7                                           ..             

l23031A72:
	c.lwsp	s4,000000E4
	c.lwsp	t3,00000064
	c.mv	a0,s0
	c.jalr	a5
	c.lwsp	a6,000000E4
	blt	a5,zero,00000000230319B2

l23031A80:
	c.lwsp	s8,00000004
	c.j	00000000230319C8

l23031A84:
	jal	ra,00000000230302D8
	jal	ra,00000000230302E8
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,0000000023031AA2

l23031A94:
	lw	a5,s7,+00000000
	c.sw	s1,0(s0)
	c.lw	a5,0(a2)
	sltiu	a2,a2,+00000001
	c.j	000000002303199C

l23031AA2:
	jal	ra,00000000230318A8
	c.sw	s1,0(s0)
	jal	ra,00000000230304DC
	c.j	00000000230319B2

l23031AAE:
	c.swsp	a0,00000084
	jal	ra,00000000230318A8
	c.lwsp	a2,00000044
	c.j	00000000230319DE

l23031AB8:
	jal	ra,00000000230304DC
	lw	a5,s4,+00000000
	c.lw	a5,12(a5)
	lw	s8,a5,+0000000C
	addi	a0,s8,+00000004
	jal	ra,000000002302E914
	lbu	a5,s8,+00000028
	andi	a4,a5,+00000004
	c.bnez	a4,0000000023031AFC

l23031AD8:
	c.andi	a5,FFFFFFFE
	sb	a5,s8,+00000028

l23031ADE:
	lw	a5,s8,+00000020
	c.mv	a0,s8
	c.jalr	a5
	c.j	00000000230319B2
23031AE8                         2A C6 EF F0 AC D1 0C 4C         *......L
23031AF0 32 45 01 BF 22 85 EF 00 C0 77 65 BD             2E.."....we.   

l23031AFC:
	lw	a1,s8,+00000018
	c.mv	a3,s2
	c.mv	a2,s0
	c.add	a1,s2
	c.mv	a0,s8
	jal	ra,00000000230316DE
	c.beqz	a0,0000000023031ADE

l23031B0E:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,0000000023031814
	c.bnez	a0,0000000023031ADE

l23031B1E:
	jal	ra,0000000023001004
	c.j	0000000023031ADE

;; pvTimerGetTimerID: 23031B24
;;   Called from:
;;     23025060 (in ip_obtaining_timeout)
;;     23025832 (in __reload_tsen)
;;     230258F6 (in disconnect_retry)
pvTimerGetTimerID proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,0000000023031B42

l23031B2E:
	jal	ra,000000002303100A
	c.lw	s0,28(s0)
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23031B42:
	jal	ra,0000000023001004
	c.j	0000000023031B2E

;; vPortSetupTimerInterrupt: 23031B48
;;   Called from:
;;     23031BAA (in xPortStartScheduler)
vPortSetupTimerInterrupt proc
	lui	a5,0000200C

l23031B4C:
	lw	a3,a5,-00000004
	lw	a2,a5,-00000008
	lw	a4,a5,-00000004
	bne	a4,a3,0000000023031B4C

l23031B5C:
	c.lui	a3,00002000
	addi	a3,a3,+00000710
	c.add	a3,a2
	c.lui	a5,00005000
	sltu	a6,a3,a2
	c.mv	a0,a3
	addi	a5,a5,-000001E0
	lui	a3,00002004
	c.sw	a3,0(a0)
	c.add	a5,a2
	add	a1,a6,a4
	c.sw	a3,4(a1)
	sltu	a2,a5,a2
	lui	a3,0004200E
	addi	a3,a3,-00000178
	c.add	a4,a2
	c.sw	a3,0(a5)
	c.sw	a3,4(a4)
	c.jr	ra

;; xPortStartScheduler: 23031B92
;;   Called from:
;;     230302BE (in vTaskStartScheduler)
xPortStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	csrrs	a5,mtvec,t0
	c.swsp	a5,00000084
	lui	a5,00042042
	addi	a5,a5,+00000000
	c.andi	a5,00000007
	c.bnez	a5,0000000023031BCC

l23031BAA:
	jal	ra,0000000023031B48
	c.lui	a5,00001000
	addi	a5,a5,-00000780
	csrrs	zero,mie,tp
	lui	a5,00002800
	c.li	a4,00000001
	sb	a4,a5,+00000407
	c.jal	0000000023031F00
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23031BCC:
	jal	ra,0000000023001004
	c.j	0000000023031BAA
23031BD2       00 00 00 00 00 00 00 00 00 00 00 00 00 00   ..............
23031BE0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23031C00 13 01 81 F8 06 C2 16 C4 1A C6 1E C8 22 CA 26 CC ............".&.
23031C10 2A CE 2E D0 32 D2 36 D4 3A D6 3E D8 42 DA 46 DC *...2.6.:.>.B.F.
23031C20 4A DE CE C0 D2 C2 D6 C4 DA C6 DE C8 E2 CA E6 CC J...............
23031C30 EA CE EE D0 F2 D2 F6 D4 FA D6 FE D8 F3 22 00 30 .............".0
23031C40 96 DA 13 01 81 F7 02 E2 06 E4 0A E6 0E E8 12 EA ................
23031C50 16 EC 1A EE 1E F0 22 F2 26 F4 2A F6 2E F8 32 FA ......".&.*...2.
23031C60 36 FC 3A FE BE E0 C2 E2 C6 E4 CA E6 CE E8 D2 EA 6.:.............
23031C70 D6 EC DA EE DE F0 E2 F2 E6 F4 EA F6 EE F8 F2 FA ................
23031C80 F6 FC FA FE 7E E1 F3 22 30 00 16 C3 97 C2 FD 1E ....~.."0.......
23031C90 83 A2 42 CB 03 A3 02 00 05 03 23 A0 62 00 97 C2 ..B.......#.b...
23031CA0 FD 1E 83 A2 A2 19 23 A0 22 00 73 25 20 34 B7 02 ......#.".s% 4..
23031CB0 80 80 93 82 F2 FF 33 75 55 00 F3 25 10 34 13 56 ......3uU..%.4.V
23031CC0 F5 01 25 CA 2E C0 93 02 10 00 FE 02 13 83 72 00 ..%...........r.
23031CD0 63 1A 65 04 97 C2 05 00 83 A2 42 19 17 C3 FD 1E c.e.......B.....
23031CE0 03 23 83 C6 83 23 03 00 03 2E 43 00 23 A0 72 00 .#...#....C.#.r.
23031CF0 23 A2 C2 01 97 C2 05 00 83 A2 82 17 B3 8E 72 00 #.............r.
23031D00 33 BF 7E 00 B3 0F EE 01 23 20 D3 01 23 22 F3 01 3.~.....# ..#"..
23031D10 17 C1 05 00 03 21 01 16 EF E0 4F E2 31 C5 EF E0 .....!....O.1...
23031D20 5F 95 99 A0 17 C1 05 00 03 21 C1 14 EF 10 70 6A _........!....pj
23031D30 25 A8 91 05 2E C0 AD 42 63 19 55 00 17 C1 05 00 %......Bc.U.....
23031D40 03 21 41 13 EF E0 FF 92 05 A0 73 25 20 34 F3 25 .!A.......s% 4.%
23031D50 10 34 73 26 30 34 B3 06 01 00 EF 10 70 6C 29 A0 .4s&04......pl).
23031D60 02 90 FD BF 02 90 FD BF 97 C2 FD 1E 83 A2 82 BD ................
23031D70 03 A3 02 00 7D 13 23 A0 62 00 17 C3 FD 1E 03 23 ....}.#.b......#
23031D80 E3 0B 03 21 03 00 82 42 73 90 12 34 12 60 A2 60 ...!...Bs..4.`.`
23031D90 32 61 C2 61 52 62 E2 62 72 63 82 73 12 74 A2 74 2a.aRb.brc.s.t.t
23031DA0 32 75 C2 75 52 76 E2 76 72 77 86 67 16 68 A6 68 2u.uRv.vrw.g.h.h
23031DB0 36 69 C6 69 56 6A E6 6A 76 6B 86 7B 16 7C A6 7C 6i.iVj.jvk.{.|.|
23031DC0 36 7D C6 7D 56 7E E6 7E 76 7F 8A 6F 9A 42 73 90 6}.}V~.~v..o.Bs.
23031DD0 32 00 13 01 81 08 D6 52 73 90 02 30 92 40 A2 42 2......Rs..0.@.B
23031DE0 32 43 C2 43 52 44 E2 44 72 45 82 55 12 56 A2 56 2C.CRD.DrE.U.V.V
23031DF0 32 57 C2 57 52 58 E2 58 72 59 86 49 16 4A A6 4A 2W.WRX.XrY.I.J.J
23031E00 36 4B C6 4B 56 4C E6 4C 76 4D 86 5D 16 5E A6 5E 6K.KVL.LvM.].^.^
23031E10 36 5F C6 5F 13 01 81 07 73 00 20 30 13 00 00 00 6_._....s. 0....
23031E20 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E30 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E40 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E50 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E60 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E70 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E80 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031E90 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031EA0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031EB0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031EC0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031ED0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031EE0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23031EF0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................

;; fn23031F00: 23031F00
;;   Called from:
;;     23031BC2 (in xPortStartScheduler)
fn23031F00 proc
	auipc	t0,00000000
	addi	t0,t0,-00000300
	c.addi	t0,00000002
	csrrw	zero,mtvec,t0
	auipc	sp,0001EFDC
	lw	sp,sp,-000000D6
	c.lwsp	zero,00000040
	c.lwsp	zero,00000020
	c.ldsp	tp,00000000
	c.ldsp	s0,00000040
	c.ldsp	a2,00000080
	c.ldsp	a6,000000C0
	c.ldsp	s4,00000100
	c.ldsp	s8,00000140
	c.ldsp	t3,00000180
	c.ldsp	zero,000003E0
	c.ldsp	tp,00000228
	c.ldsp	s0,00000268
	c.ldsp	a2,000002A8
	c.ldsp	a6,000002E8
	c.ldsp	s4,00000328
	c.ldsp	s8,00000368
	c.ldsp	t3,000003A8
	c.ldsp	ra,000001C8
	c.ldsp	t0,00000010
	c.ldsp	s1,00000050
	c.ldsp	a3,00000090
	c.ldsp	a7,000000D0
	c.ldsp	s5,00000110
	c.ldsp	s9,00000150
	c.ldsp	t4,00000190
	c.ldsp	ra,000003F0
	c.ldsp	t0,00000238
	c.ldsp	s1,00000278
	c.ldsp	a3,000002B8
	c.ldsp	a7,000002F8
	c.ldsp	s5,00000338
	c.ldsp	s9,00000378
	c.ldsp	t4,000003B8
	c.ldsp	sp,000001D8
	c.lwsp	t1,000000A0
	csrrw	zero,fcsr,gp
	addi	sp,sp,+00000088
	c.lwsp	s5,000001B0
	csrrw	zero,mstatus,zero
	c.lwsp	s0,000000A0
	c.lwsp	a2,000000C0
	c.lwsp	a6,000000E0
	c.lwsp	s4,00000004
	c.lwsp	s8,00000024
	c.lwsp	t3,00000044
	c.lwsp	zero,00000174
	c.lwsp	tp,00000194
	c.lwsp	s0,000001B4
	c.lwsp	a2,000001D4
	c.lwsp	a6,000001F4
	c.lwsp	s4,00000118
	c.lwsp	s8,00000138
	c.lwsp	t3,00000158
	c.lwsp	ra,00000068
	c.lwsp	t0,00000088
	c.lwsp	s1,000000A8
	c.lwsp	a3,000000C8
	c.lwsp	a7,000000E8
	c.lwsp	s5,0000000C
	c.lwsp	s9,0000002C
	c.lwsp	t4,0000004C
	c.lwsp	ra,0000017C
	c.lwsp	t0,0000019C
	c.lwsp	s1,000001BC
	c.lwsp	a3,000001DC
	c.lwsp	a7,000001FC
	addi	sp,sp,+00000078
	c.jr	ra
23031FA6                   13 00 00 00 13 00 00 00 13 00       ..........
23031FB0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
23031FC0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
23031FD0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
23031FE0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
23031FF0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 01 00 ................

;; fn23032000: 23032000
;;   Called from:
;;     2302FBF4 (in prvInitialiseNewTask.isra.2)
fn23032000 proc
	csrrs	t0,mstatus,zero
	lui	t1,00000002
	addi	t1,t1,-00000780
	or	t0,t0,t1
	andi	t0,t0,-00000009
	c.addi	a0,FFFFFFFC
	sw	t0,a0,+00000000
	addi	a0,a0,-00000058
	c.sw	a0,0(a2)
	c.addi	a0,FFFFFFE8
	sw	zero,a0,+00000000
	addi	t0,zero,+00000022

l2303202A:
	beq	t0,zero,0000000023032038

l2303202E:
	c.addi	a0,FFFFFFFC
	sw	zero,a0,+00000000
	c.addi	t0,FFFFFFFF
	c.j	000000002303202A

l23032038:
	c.addi	a0,FFFFFFFC
	c.sw	a0,0(a1)
	c.jr	ra
2303203E                                           00 00               ..
23032040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23032130 00 00 00 00 00 00 00 00                         ........       

;; prvInsertBlockIntoFreeList: 23032138
;;   Called from:
;;     23032264 (in pvPortMalloc)
;;     230322F2 (in vPortFree)
prvInsertBlockIntoFreeList proc
	lui	a4,0004200E
	addi	a4,a4,-00000160
	c.j	0000000023032144

l23032142:
	c.mv	a4,a5

l23032144:
	c.lw	a4,0(a5)
	bltu	a5,a0,0000000023032142

l2303214A:
	c.lw	a4,4(a2)
	c.lw	a0,4(a3)
	add	a1,a4,a2
	beq	a0,a1,0000000023032182

l23032156:
	add	a2,a0,a3
	beq	a5,a2,0000000023032168

l2303215E:
	c.sw	a0,0(a5)

l23032160:
	beq	a0,a4,0000000023032166

l23032164:
	c.sw	a4,0(a0)

l23032166:
	c.jr	ra

l23032168:
	lui	a2,0004200E
	lw	a2,a2,-00000170
	beq	a5,a2,000000002303215E

l23032174:
	c.lw	a5,4(a5)
	c.add	a3,a5
	c.sw	a0,4(a3)
	c.lw	a4,0(a5)
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	c.j	0000000023032160

l23032182:
	c.add	a3,a2
	c.sw	a4,4(a3)
	c.mv	a0,a4
	c.j	0000000023032156

;; pvPortMalloc: 2303218A
;;   Called from:
;;     230006C0 (in client_demo.constprop.3)
;;     230014CE (in aws_main_entry)
;;     23001616 (in aws_main_entry)
;;     230016E2 (in aws_main_entry)
;;     23012EFA (in Encrypt_keyData)
;;     23012F06 (in Encrypt_keyData)
;;     230130AE (in cm_AllocAPResources)
;;     230130BC (in cm_AllocAPResources)
;;     23013104 (in cm_InitConnection)
;;     23022CA8 (in bl_send_msg)
;;     23022D44 (in bl_msg_zalloc.constprop.3)
;;     23024B46 (in bl_ipc_init)
;;     2302AE90 (in ota_tcp_cmd.part.0)
;;     2302B65A (in ps_cmd)
;;     2302B896 (in ls_cmd)
;;     2302CA9E (in dns_server_init)
;;     2302E48E (in psm_test_cmd)
;;     2302E496 (in psm_test_cmd)
;;     2302EBF0 (in xQueueGenericCreate)
;;     2302EC08 (in xQueueGenericCreate)
;;     2302F5FE (in xStreamBufferGenericCreate)
;;     2303000C (in xTaskCreate)
;;     23030018 (in xTaskCreate)
;;     2303106C (in vTaskList)
;;     23033622 (in bl_dma_irq_register)
;;     23033712 (in bl_dma_init)
;;     23033774 (in bl_dma_init)
;;     2303382A (in bl_dma_test)
;;     23033834 (in bl_dma_test)
;;     2303383E (in bl_dma_test)
;;     23035AF4 (in dev_uart_init)
;;     23035B68 (in dev_uart_init)
;;     23039B70 (in looprt_evt_schedule)
;;     23039FEC (in loopset_led_trigger)
;;     23047E7E (in tcpc_entry)
;;     2304801C (in tcpclient_cmd)
;;     230480A2 (in TCP_Server)
;;     2304853E (in iperf_server_udp_entry)
;;     23048572 (in iperf_client_udp_entry)
;;     230485A6 (in iperf_server_entry)
;;     230485DA (in iperf_client_tcp_entry)
;;     230489A2 (in iperf_client_udp)
;;     23048C1E (in iperf_server)
;;     23048E76 (in iperf_client_tcp)
;;     230494CE (in ping_api_init)
;;     2304BEAE (in utils_memp_init)
;;     2304C7C2 (in inode_reserve)
;;     2304CD84 (in aos_loop_init)
;;     2304CE06 (in aos_poll_read_fd)
;;     2304CE10 (in aos_poll_read_fd)
;;     2304CED6 (in aos_post_delayed_action)
;;     2304D1DE (in aos_task_new)
;;     2304D1E6 (in aos_task_new)
;;     2304D1EE (in aos_task_new)
;;     2304D434 (in aos_malloc)
;;     23054FCA (in bl_mtd_open)
;;     2305F68A (in mycalloc)
pvPortMalloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s1,s1,-00000170
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002303226C

l230321A6:
	jal	ra,00000000230302D8
	lui	a5,0004200E
	lw	s2,a5,-0000016C
	and	a5,s2,s0
	c.bnez	a5,00000000230321BA

l230321B8:
	c.bnez	s0,00000000230321D6

l230321BA:
	jal	ra,00000000230304DC

l230321BE:
	jal	ra,00000000230008E4
	c.li	s1,00000000

l230321C4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230321D6:
	addi	a5,s0,+00000008
	andi	a4,a5,+00000007
	c.bnez	a4,0000000023032256

l230321E0:
	c.beqz	a5,00000000230321BA

l230321E2:
	lui	s3,0004200E
	addi	s3,s3,-00000168
	lw	s4,s3,+00000000
	bltu	s4,a5,00000000230321BA

l230321F2:
	lui	a3,0004200E
	lw	s0,a3,-00000160
	addi	a3,a3,-00000160
	c.j	0000000023032208

l23032200:
	c.lw	s0,0(a4)
	c.beqz	a4,000000002303220E

l23032204:
	c.mv	a3,s0
	c.mv	s0,a4

l23032208:
	c.lw	s0,4(a4)
	bltu	a4,a5,0000000023032200

l2303220E:
	c.lw	s1,0(a4)
	beq	a4,s0,00000000230321BA

l23032214:
	c.lw	s0,0(a4)
	c.lw	a3,0(s1)
	c.li	a2,00000010
	c.sw	a3,0(a4)
	c.lw	s0,4(a4)
	c.addi	s1,00000008
	sub	a3,a4,a5
	bltu	a2,a3,000000002303225C

l23032228:
	lui	a5,0004200E
	addi	a5,a5,-00000164
	c.lw	a5,0(a3)
	sub	s4,s4,a4
	sw	s4,s3,+00000000
	bgeu	s4,a3,0000000023032242

l2303223E:
	sw	s4,a5,+00000000

l23032242:
	or	s2,s2,a4
	sw	s2,s0,+00000004
	sw	zero,s0,+00000000
	jal	ra,00000000230304DC
	c.bnez	s1,00000000230321C4

l23032254:
	c.j	00000000230321BE

l23032256:
	c.andi	a5,FFFFFFF8
	c.addi	a5,00000008
	c.j	00000000230321E0

l2303225C:
	add	a0,s0,a5
	c.sw	a0,4(a3)
	c.sw	s0,4(a5)
	jal	ra,0000000023032138
	c.lw	s0,4(a4)
	c.j	0000000023032228

l2303226C:
	jal	ra,0000000023001004
	c.j	00000000230321A6

;; vPortFree: 23032272
;;   Called from:
;;     230006F4 (in client_demo.constprop.3)
;;     23012886 (in GeneratePWKMsg3)
;;     2301288C (in GeneratePWKMsg3)
;;     230129C6 (in GenerateApEapolMsg)
;;     230129CE (in GenerateApEapolMsg)
;;     23012F62 (in Encrypt_keyData)
;;     23012F68 (in Encrypt_keyData)
;;     23013128 (in cm_InitConnection)
;;     230131A8 (in cm_DeleteConnection)
;;     230131AE (in cm_DeleteConnection)
;;     230131C4 (in cm_DeleteConnection)
;;     23022C36 (in bl_send_msg)
;;     23022CB2 (in bl_send_msg)
;;     23022D22 (in bl_send_msg)
;;     23028C00 (in cmd_complete.isra.1)
;;     23028D8C (in cmd_mgr_llind)
;;     23028EA6 (in cmd_mgr_queue)
;;     2302AED0 (in ota_tcp_cmd.part.0)
;;     2302AFC4 (in ota_tcp_cmd.part.0)
;;     2302B6BE (in ps_cmd)
;;     2302B94C (in ls_cmd)
;;     2302E4C8 (in psm_test_cmd)
;;     2302E4D2 (in psm_test_cmd)
;;     2302E8A4 (in vEventGroupDelete)
;;     2302F338 (in vQueueDelete)
;;     2302F384 (in vQueueDelete)
;;     2302F70E (in vStreamBufferDelete)
;;     2302F734 (in vStreamBufferDelete)
;;     2302FC40 (in prvDeleteTCB)
;;     2302FC4C (in prvDeleteTCB)
;;     2302FC50 (in prvDeleteTCB)
;;     2303005C (in xTaskCreate)
;;     2303111A (in vTaskList)
;;     230338E2 (in bl_dma_test)
;;     230338E8 (in bl_dma_test)
;;     230338F8 (in bl_dma_test)
;;     23047E98 (in tcpc_entry)
;;     23047EDC (in tcpc_entry)
;;     230480FA (in TCP_Server)
;;     2304812A (in TCP_Server)
;;     23048628 (in iperf_server_udp)
;;     230489AA (in iperf_client_udp)
;;     23048C34 (in iperf_server)
;;     23048C82 (in iperf_server)
;;     23048E7E (in iperf_client_tcp)
;;     230491BE (in ping_free)
;;     23049546 (in ping_api_init)
;;     2304BF08 (in utils_memp_deinit)
;;     2304C85A (in aos_register_driver)
;;     2304C8E0 (in aos_register_fs)
;;     2304CE28 (in aos_poll_read_fd)
;;     2304CE2E (in aos_poll_read_fd)
;;     2304CE78 (in aos_poll_read_fd)
;;     2304CE8E (in aos_poll_read_fd)
;;     2304D022 (in aos_loop_run)
;;     2304D1AA (in dfl_entry)
;;     2304D250 (in aos_task_new)
;;     2304D256 (in aos_task_new)
;;     2304D25C (in aos_task_new)
;;     2304D438 (in aos_free)
;;     2305514E (in bl_mtd_close)
;;     2305569E (in bloop_run)
;;     23056D06 (in mbedtls_pk_load_file)
;;     230570D8 (in mbedtls_pk_parse_keyfile)
;;     23057188 (in rsa_free_wrap)
;;     23057274 (in eckey_free_wrap)
;;     23058260 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058266 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23059942 (in ssl_flight_free)
;;     23059948 (in ssl_flight_free)
;;     2305A6B8 (in mbedtls_ssl_handshake_free)
;;     2305A6C2 (in mbedtls_ssl_handshake_free)
;;     2305A6C8 (in mbedtls_ssl_handshake_free)
;;     2305A714 (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A726 (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A768 (in mbedtls_ssl_session_free)
;;     2305A76E (in mbedtls_ssl_session_free)
;;     2305A7BC (in mbedtls_ssl_handshake_wrapup)
;;     2305A8C6 (in ssl_handshake_init)
;;     2305A8CC (in ssl_handshake_init)
;;     2305A8D2 (in ssl_handshake_init)
;;     2305AA62 (in mbedtls_ssl_setup)
;;     2305AABC (in mbedtls_ssl_free)
;;     2305AAD0 (in mbedtls_ssl_free)
;;     2305AADE (in mbedtls_ssl_free)
;;     2305AAF8 (in mbedtls_ssl_free)
;;     2305AAFE (in mbedtls_ssl_free)
;;     2305AB04 (in mbedtls_ssl_free)
;;     2305AB12 (in mbedtls_ssl_free)
;;     2305AB30 (in mbedtls_ssl_free)
;;     2305AC4C (in mbedtls_ssl_config_free)
;;     2305AF6E (in mbedtls_ssl_write_record)
;;     2305BE1C (in mbedtls_ssl_prepare_handshake_record)
;;     2305D39E (in mbedtls_ssl_parse_certificate)
;;     2305EAEE (in mbedtls_x509_crt_free)
;;     2305EB0E (in mbedtls_x509_crt_free)
;;     2305EB36 (in mbedtls_x509_crt_free)
;;     2305EB4E (in mbedtls_x509_crt_free)
;;     2305EB64 (in mbedtls_x509_crt_free)
;;     2305EB7A (in mbedtls_x509_crt_free)
;;     2305F1CE (in mbedtls_x509_crt_parse_der)
;;     2305F336 (in mbedtls_x509_crt_parse_file)
;;     23061032 (in mbedtls_mpi_free)
;;     230610AC (in mbedtls_mpi_grow)
;;     2306110C (in mbedtls_mpi_shrink)
;;     23062D90 (in gcm_ctx_free)
;;     23062DD4 (in aes_ctx_free)
;;     23063D0A (in ecp_normalize_jac_many)
;;     23063F3E (in mbedtls_ecp_group_free)
;;     23064516 (in ecp_mul_comb)
;;     23065748 (in mbedtls_md_free)
;;     23065A34 (in md5_ctx_free)
;;     23065A82 (in sha1_ctx_free)
;;     23065AD0 (in sha224_ctx_free)
;;     23066128 (in mbedtls_pem_read_buffer)
;;     2306615A (in mbedtls_pem_read_buffer)
;;     2306619E (in mbedtls_pem_read_buffer)
;;     230661F8 (in mbedtls_pem_free)
;;     230661FE (in mbedtls_pem_free)
vPortFree proc
	c.beqz	a0,0000000023032302

l23032274:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s1,s1,-0000016C
	lw	a4,a0,-00000004
	c.lw	s1,0(a5)
	c.mv	s0,a0
	and	a3,a4,a5
	c.beqz	a3,00000000230322B8

l23032292:
	lw	a3,a0,-00000008
	c.beqz	a3,00000000230322CE

l23032298:
	jal	ra,0000000023001004
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,00000000230322AE

l230322A8:
	lw	a3,s0,-00000008
	c.beqz	a3,00000000230322CE

l230322AE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230322B8:
	jal	ra,0000000023001004
	lw	a5,s0,-00000008
	c.bnez	a5,0000000023032298

l230322C2:
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,00000000230322AE

l230322CE:
	xori	a5,a5,-00000001
	c.and	a5,a4
	sw	a5,s0,+00000FFC
	jal	ra,00000000230302D8
	lui	a5,0004200E
	addi	a5,a5,-00000168
	c.lw	a5,0(a3)
	lw	a4,s0,-00000004
	addi	a0,s0,-00000008
	c.add	a4,a3
	c.sw	a5,0(a4)
	jal	ra,0000000023032138
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230304DC

l23032302:
	c.jr	ra

;; xPortGetFreeHeapSize: 23032304
;;   Called from:
;;     230008E8 (in vApplicationMallocFailedHook)
;;     2302BBEC (in version_cmd)
xPortGetFreeHeapSize proc
	lui	a5,0004200E
	lw	a0,a5,-00000168
	c.jr	ra

;; vPortDefineHeapRegions: 2303230E
;;   Called from:
;;     23001166 (in bfl_main)
vPortDefineHeapRegions proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	lui	s6,0004200E
	addi	s6,s6,-00000170
	lw	a5,s6,+00000000
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.mv	s3,a0
	c.beqz	a5,00000000230323F8

l23032332:
	jal	ra,0000000023001004
	lw	s0,s3,+00000004
	c.beqz	s0,00000000230323FC

l2303233C:
	lw	a5,s6,+00000000

l23032340:
	lui	s7,0004200E
	c.li	s4,00000000
	c.li	s5,00000000
	addi	s7,s7,-00000160

l2303234C:
	lw	s1,s3,+00000000
	andi	a4,s1,+00000007
	c.mv	s2,s1
	c.beqz	a4,0000000023032366

l23032358:
	addi	a4,s1,+00000007
	c.andi	a4,FFFFFFF8
	c.add	s0,s1
	c.sub	s0,a4
	c.mv	s1,a4
	c.mv	s2,a4

l23032366:
	bne	s4,zero,00000000230323DC

l2303236A:
	sw	s1,s7,+00000000
	sw	zero,s7,+00000004
	c.mv	a4,a5

l23032374:
	c.add	s0,s2
	c.addi	s0,FFFFFFF8
	andi	a5,s0,-00000008
	sw	zero,a5,+00000004
	sw	zero,a5,+00000000
	sub	s2,a5,s2
	sw	a5,s6,+00000000
	sw	s2,s1,+00000004
	c.sw	s1,0(a5)
	c.beqz	a4,000000002303239A

l23032394:
	c.sw	a4,0(s1)
	lw	s2,s1,+00000004

l2303239A:
	c.addi	s3,00000008
	lw	s0,s3,+00000004
	c.add	s5,s2
	c.addi	s4,00000001
	c.bnez	s0,000000002303234C

l230323A6:
	lui	a5,0004200E
	sw	s5,a5,+00000E9C
	lui	a5,0004200E
	sw	s5,a5,+00000E98
	beq	s5,zero,000000002303240C

l230323BA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200E
	lui	a4,00080000
	sw	a4,a5,+00000E94
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l230323DC:
	c.beqz	a5,00000000230323EE

l230323DE:
	c.mv	a4,a5
	bltu	a5,s2,0000000023032374

l230323E4:
	jal	ra,0000000023001004
	lw	a4,s6,+00000000
	c.j	0000000023032374

l230323EE:
	jal	ra,0000000023001004
	lw	a5,s6,+00000000
	c.j	00000000230323DE

l230323F8:
	c.lw	a0,4(s0)
	c.bnez	s0,0000000023032340

l230323FC:
	lui	a5,0004200E
	sw	zero,a5,+00000E9C
	lui	a5,0004200E
	sw	zero,a5,+00000E98

l2303240C:
	jal	ra,0000000023001004
	c.j	00000000230323BA

;; uart_generic_notify_handler: 23032412
;;   Called from:
;;     23032506 (in UART0_IRQHandler)
;;     2303250C (in UART1_IRQHandler)
uart_generic_notify_handler proc
	lui	a5,0002308E
	slli	a4,a0,00000002
	addi	a5,a5,-0000018C
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s3,00000084
	lw	s3,a5,+00000000
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lw	s1,s3,+00000020
	lw	s0,s3,+00000024
	c.mv	s2,a0
	andi	a5,s1,+00000001
	c.beqz	a5,000000002303244C

l23032440:
	andi	a5,s0,+00000001
	c.bnez	a5,000000002303244C

l23032446:
	c.li	a5,00000001
	sw	a5,s3,+00000028

l2303244C:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023032474

l23032452:
	andi	a5,s0,+00000002
	c.bnez	a5,0000000023032474

l23032458:
	c.li	a5,00000002
	lui	a4,00042013
	addi	a4,a4,-00000728
	sw	a5,s3,+00000028
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023032474

l23032470:
	c.lw	a5,4(a0)
	c.jalr	a4

l23032474:
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023032496

l2303247A:
	andi	a5,s0,+00000004
	c.bnez	a5,0000000023032496

l23032480:
	lui	a4,00042013
	addi	a4,a4,-00000728
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.beqz	a4,0000000023032496

l23032492:
	c.lw	a5,12(a0)
	c.jalr	a4

l23032496:
	andi	a5,s1,+00000008
	c.beqz	a5,00000000230324B8

l2303249C:
	andi	a5,s0,+00000008
	c.bnez	a5,00000000230324B8

l230324A2:
	lui	a4,00042013
	addi	a4,a4,-00000728
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,00000000230324B8

l230324B4:
	c.lw	a5,4(a0)
	c.jalr	a4

l230324B8:
	andi	a5,s1,+00000010
	c.beqz	a5,00000000230324E2

l230324BE:
	andi	a5,s0,+00000010
	c.bnez	a5,00000000230324E2

l230324C4:
	c.li	a5,00000010
	sw	a5,s3,+00000028
	lui	a5,00042013
	addi	a5,a5,-00000728
	c.slli	s2,04
	c.add	s2,a5
	lw	a5,s2,+00000000
	c.beqz	a5,00000000230324E2

l230324DC:
	lw	a0,s2,+00000004
	c.jalr	a5

l230324E2:
	andi	s1,s1,+00000020
	c.beqz	s1,00000000230324F6

l230324E8:
	andi	s0,s0,+00000020
	c.bnez	s0,00000000230324F6

l230324EE:
	addi	a5,zero,+00000020
	sw	a5,s3,+00000028

l230324F6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; UART0_IRQHandler: 23032504
UART0_IRQHandler proc
	c.li	a0,00000000
	jal	zero,0000000023032412

;; UART1_IRQHandler: 2303250A
UART1_IRQHandler proc
	c.li	a0,00000001
	jal	zero,0000000023032412

;; bl_uart_init: 23032510
;;   Called from:
;;     23001048 (in bfl_main)
;;     230363E2 (in vfs_uart_init)
bl_uart_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.mv	s3,a1
	lui	a1,00023083
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,-000007E0
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.mv	s4,a5
	jal	ra,0000000023070C7C
	lui	a5,0004200E
	lw	a5,a5,-00000640
	lui	s1,0004200E
	addi	s1,s1,-00000158
	c.swsp	a5,00000080
	lbu	a5,s1,+00000000
	c.bnez	a5,000000002303255E

l2303254E:
	c.li	a2,00000003
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,0000000023053ED6
	c.li	a5,00000001
	sb	a5,s1,+00000000

l2303255E:
	c.li	a5,00000007
	sb	a5,sp,+00000009
	c.li	s1,00000002
	addi	a5,zero,+00000101
	c.addi4spn	a0,00000008
	sb	s2,sp,+00000008
	sh	s1,sp,+0000000A
	sh	a5,sp,+0000000C
	auipc	ra,0001EFDA
	jalr	ra,ra,+00000060
	c.addi4spn	a0,00000008
	sb	s3,sp,+00000008
	sh	s1,sp,+0000000A
	auipc	ra,0001EFDA
	jalr	ra,ra,+0000004E
	c.beqz	s0,00000000230325FA

l23032594:
	c.li	s1,00000007
	c.li	a1,00000006

l23032598:
	andi	a0,s3,+00000007
	jal	ra,0000000023053F54
	c.mv	a1,s1
	andi	a0,s2,+00000007
	jal	ra,0000000023053F54
	lui	a5,00002626
	addi	a5,a5,-00000600
	c.li	a2,00000001
	c.li	a1,00000008
	c.mv	a0,s0
	c.swsp	a5,00000008
	c.swsp	s4,00000088
	jal	ra,0000000023052968
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,00000000230528F6
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023052764
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023052944
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023052858
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,00000000230528C2
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l230325FA:
	c.li	s1,00000003
	c.li	a1,00000002
	c.j	0000000023032598

;; bl_uart_data_send: 23032600
;;   Called from:
;;     23035D52 (in hal_uart_send)
;;     230520B6 (in vprint)
;;     230520D0 (in bl_putchar)
;;     230520FC (in puts)
bl_uart_data_send proc
	lui	a5,0002308E
	slli	a4,a0,00000002
	addi	a5,a5,-0000018C
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s1,00000088
	c.lw	a5,0(s1)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0

l2303261A:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,00000000230529A6
	c.lwsp	a2,00000064
	c.beqz	a0,000000002303261A

l23032626:
	sb	a1,s1,+00000088
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_data_recv: 23032636
;;   Called from:
;;     23035CFC (in hal_uart_recv_II)
bl_uart_data_recv proc
	lui	a5,0002308E
	slli	a4,a0,00000002
	addi	a5,a5,-0000018C
	c.addi	sp,FFFFFFF0
	c.add	a5,a4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a5,0(s0)
	jal	ra,0000000023052A30
	c.beqz	a0,0000000023032662

l23032652:
	lbu	a0,s0,+0000008C
	andi	a0,a0,+000000FF

l2303265A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23032662:
	c.li	a0,FFFFFFFF
	c.j	000000002303265A

;; bl_uart_int_rx_enable: 23032666
;;   Called from:
;;     2303278A (in bl_uart_int_enable)
;;     230327B0 (in bl_uart_int_enable)
bl_uart_int_rx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023052926
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023052968
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023052968
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000004
	jal	ra,0000000023052968
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_rx_disable: 2303269C
;;   Called from:
;;     230327E4 (in bl_uart_int_disable)
;;     2303280A (in bl_uart_int_disable)
bl_uart_int_rx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023052968
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023052968
	c.mv	a0,s0
	c.li	a2,00000001
	c.li	a1,00000004
	jal	ra,0000000023052968
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_enable: 230326CA
;;   Called from:
;;     23032790 (in bl_uart_int_enable)
;;     230327B6 (in bl_uart_int_enable)
;;     23035C72 (in hal_uart_send_trigger)
bl_uart_int_tx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023052968
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_disable: 230326DE
;;   Called from:
;;     230327EA (in bl_uart_int_disable)
;;     23032810 (in bl_uart_int_disable)
;;     23035C86 (in hal_uart_send_trigger_off)
bl_uart_int_tx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023052968
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_flush: 230326F2
;;   Called from:
;;     230363CA (in vfs_uart_init)
;;     230365E0 (in hal_uart_send_flush)
bl_uart_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,zero,+00000020

l23032700:
	c.mv	a0,s1
	jal	ra,00000000230529A6
	bne	a0,s0,0000000023032700

l2303270A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_getdefconfig: 23032716
;;   Called from:
;;     23035CB0 (in hal_uart_init)
bl_uart_getdefconfig proc
	c.beqz	a1,000000002303271C

l23032718:
	sb	zero,a1,+00000000

l2303271C:
	c.jr	ra

;; bl_uart_setconfig: 2303271E
;;   Called from:
;;     23032772 (in bl_uart_setbaud)
;;     230365F8 (in hal_uart_setconfig)
bl_uart_setconfig proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a1
	lui	a1,00023083
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a2
	addi	a1,a1,-000007D0
	c.li	a2,00000010
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070C7C
	c.li	a1,00000002
	c.mv	a0,s0
	c.swsp	s2,00000080
	sb	s1,sp,+0000000A
	jal	ra,00000000230528F6
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,0000000023052764
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023052944
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,00000000230528C2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_setbaud: 23032770
;;   Called from:
;;     230365F0 (in hal_uart_setbaud)
bl_uart_setbaud proc
	c.li	a2,00000000
	jal	zero,000000002303271E

;; bl_uart_int_enable: 23032776
;;   Called from:
;;     23035CC2 (in hal_uart_init)
bl_uart_int_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,000000002303278A

l2303277C:
	c.li	a4,00000001
	beq	a0,a4,00000000230327B0

l23032782:
	c.li	a0,FFFFFFFF

l23032784:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303278A:
	jal	ra,0000000023032666
	c.li	a0,00000000
	jal	ra,00000000230326CA
	lui	a1,00023032
	addi	a0,zero,+0000002D
	addi	a1,a1,+00000504
	jal	ra,0000000023033B28
	addi	a0,zero,+0000002D

l230327A8:
	jal	ra,0000000023033968
	c.li	a0,00000000
	c.j	0000000023032784

l230327B0:
	jal	ra,0000000023032666
	c.li	a0,00000001
	jal	ra,00000000230326CA
	lui	a1,00023032
	addi	a0,zero,+0000002E
	addi	a1,a1,+0000050A
	jal	ra,0000000023033B28
	addi	a0,zero,+0000002E
	c.j	00000000230327A8

;; bl_uart_int_disable: 230327D0
;;   Called from:
;;     23035D64 (in hal_uart_finalize)
bl_uart_int_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,00000000230327E4

l230327D6:
	c.li	a4,00000001
	beq	a0,a4,000000002303280A

l230327DC:
	c.li	a0,FFFFFFFF

l230327DE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230327E4:
	jal	ra,000000002303269C
	c.li	a0,00000000
	jal	ra,00000000230326DE
	lui	a1,00023032
	addi	a0,zero,+0000002D
	addi	a1,a1,+00000504
	jal	ra,0000000023033B2E
	addi	a0,zero,+0000002D

l23032802:
	jal	ra,000000002303397A
	c.li	a0,00000000
	c.j	00000000230327DE

l2303280A:
	jal	ra,000000002303269C
	c.li	a0,00000001
	jal	ra,00000000230326DE
	lui	a1,00023032
	addi	a0,zero,+0000002E
	addi	a1,a1,+0000050A
	jal	ra,0000000023033B2E
	addi	a0,zero,+0000002E
	c.j	0000000023032802

;; bl_uart_int_rx_notify_register: 2303282A
;;   Called from:
;;     23035DA4 (in hal_uart_notify_register)
bl_uart_int_rx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023032846

l23032830:
	slli	a5,a0,00000004
	lui	a0,00042013
	addi	a0,a0,-00000728
	c.add	a0,a5
	c.sw	a0,0(a1)
	c.sw	a0,4(a2)
	c.li	a0,00000000
	c.jr	ra

l23032846:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_uart_int_tx_notify_register: 2303284A
;;   Called from:
;;     23035D88 (in hal_uart_notify_register)
bl_uart_int_tx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023032866

l23032850:
	slli	a5,a0,00000004
	lui	a0,00042013
	addi	a0,a0,-00000728
	c.add	a0,a5
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.li	a0,00000000
	c.jr	ra

l23032866:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_chip_info: 2303286A
;;   Called from:
;;     230010A4 (in bfl_main)
bl_chip_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	zero,00000084
	csrrs	a5,misa,ra
	c.swsp	a5,00000084
	c.lwsp	a2,00000024
	c.li	a4,00000002
	srli	a5,s1,0000001E
	beq	a5,a4,00000000230328AA

l23032888:
	c.li	a4,00000003
	beq	a5,a4,00000000230328F6

l2303288E:
	c.li	a4,00000001
	addi	s0,a0,+00000004
	c.li	a2,00000004
	bne	a5,a4,000000002303290A

l2303289A:
	lui	a1,00023083
	addi	a1,a1,-00000504

l230328A2:
	jal	ra,0000000023070C7C
	c.mv	a0,s0
	c.j	00000000230328BC

l230328AA:
	lui	a1,00023083
	c.li	a2,00000004
	addi	a1,a1,-000004FC
	jal	ra,0000000023070C7C
	addi	a0,s0,+00000004

l230328BC:
	addi	a5,zero,+0000002D
	sb	a5,a0,+00000000
	addi	a4,a0,+00000001
	c.li	a5,00000000
	c.li	a1,00000001
	c.li	a2,0000001A

l230328CE:
	sll	a3,a1,a5
	c.and	a3,s1
	c.beqz	a3,00000000230328E0

l230328D6:
	addi	a3,a5,+00000041
	sb	a3,a4,+00000000
	c.addi	a4,00000001

l230328E0:
	c.addi	a5,00000001
	bne	a5,a2,00000000230328CE

l230328E6:
	sb	zero,a4,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230328F6:
	lui	a1,00023083
	c.li	a2,00000005
	addi	a1,a1,-000004F4
	jal	ra,0000000023070C7C
	addi	a0,s0,+00000005
	c.j	00000000230328BC

l2303290A:
	lui	a1,00023083
	addi	a1,a1,-000004EC
	c.j	00000000230328A2

;; bl_chip_banner: 23032914
;;   Called from:
;;     23001066 (in bfl_main)
bl_chip_banner proc
	lui	a5,00023083
	addi	a5,a5,-000007C0
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; bl_chip_memory_ram: 23032922
;;   Called from:
;;     2302BBE6 (in version_cmd)
bl_chip_memory_ram proc
	c.lw	a0,0(a4)
	c.li	a5,00000002
	bge	a5,a4,00000000230329B8

l2303292A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000003
	c.sw	a0,0(a5)
	lui	a5,00023000
	addi	a5,a5,+00000000
	c.sw	a1,0(a5)
	lui	a5,00000400
	c.mv	s2,a1
	addi	a5,a5,+00000000
	lui	a1,00023083
	c.sw	a2,0(a5)
	c.mv	a0,a3
	addi	a1,a1,-000004E4
	c.mv	s0,a3
	c.mv	s1,a2
	jal	ra,000000002307127C
	lui	a5,0004200C
	addi	a5,a5,+00000000
	sw	a5,s2,+00000004
	lui	a5,00000036
	addi	a5,a5,+00000000
	lui	a1,00023083
	c.sw	s1,4(a5)
	addi	a1,a1,-000004DC
	addi	a0,s0,+00000006
	jal	ra,000000002307127C
	lui	a5,00042042
	addi	a5,a5,+00000000
	sw	a5,s2,+00000008
	c.lui	a5,0000A000
	addi	a5,a5,+00000000
	lui	a1,00023073
	c.sw	s1,8(a5)
	addi	a0,s0,+0000000C
	addi	a1,a1,-000003C4
	jal	ra,000000002307127C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230329B8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; _cb_cmd: 230329BC
_cb_cmd proc
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a0
	bltu	a5,a4,0000000023032A10

l230329D2:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032A10

l230329DE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023032A1C

l230329E8:
	jal	ra,000000002303030A

l230329EC:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s0
	addi	a4,zero,+000000E5
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000004CC
	jal	ra,000000002304B718

l23032A10:
	sw	zero,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23032A1C:
	jal	ra,00000000230302E8
	c.j	00000000230329EC

;; bl_cks_test: 23032A22
;;   Called from:
;;     2300042E (in cmd_cks)
bl_cks_test proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	lui	s0,00042020
	lbu	a4,s0,-000003A4
	c.swsp	ra,000000BC
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.li	a5,00000002
	bltu	a5,a4,0000000023032A80

l23032A42:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032A80

l23032A4E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023033000

l23032A5A:
	jal	ra,000000002303030A

l23032A5E:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+00000137
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000488
	jal	ra,000000002304B718

l23032A80:
	lui	a5,0004000A
	c.li	a4,00000001
	lui	s1,00023083
	sb	a4,a5,+00000700
	addi	s1,s1,-00000260
	c.li	a5,00000000
	lui	a4,0004000A
	c.li	a3,00000014

l23032A9A:
	add	a2,s1,a5
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	sb	a2,a4,+00000704
	bne	a5,a3,0000000023032A9A

l23032AAC:
	lhu	s2,a4,+00000708
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.slli	s2,10
	srli	s2,s2,00000010
	bltu	a5,a4,0000000023032B08

l23032AC0:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032B08

l23032ACC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023033006

l23032AD8:
	jal	ra,000000002303030A

l23032ADC:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a7,zero,+000000B8
	addi	a6,zero,+00000061
	c.mv	a5,s2
	addi	a4,zero,+00000040
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000460
	jal	ra,000000002304B718

l23032B08:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,00000002
	sb	a4,a5,+00000700
	c.li	a3,00000014
	c.li	a5,00000000
	lui	a4,0004000A

l23032B20:
	add	a2,s1,a5
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	sb	a2,a4,+00000704
	bne	a5,a3,0000000023032B20

l23032B32:
	lhu	s1,a4,+00000708
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.slli	s1,10
	c.srli	s1,00000010
	bltu	a5,a4,0000000023032B52

l23032B44:
	lui	a4,00042020
	lbu	a3,a4,-000003A3
	c.mv	s4,a4
	bgeu	a5,a3,000000002303300C

l23032B52:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,0000001F
	sb	a4,a5,+00000704
	addi	a4,zero,+0000003F
	sb	a4,a5,+00000704
	lhu	s1,a5,+00000708
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.slli	s1,10
	c.srli	s1,00000010
	bltu	a5,a4,0000000023032BC2

l23032B7C:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032BC2

l23032B88:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303308C

l23032B94:
	jal	ra,000000002303030A

l23032B98:
	c.lui	a6,0000C000
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a6,a6,+000000E0
	c.mv	a5,s1
	addi	a4,zero,+00000061
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000003B0
	jal	ra,000000002304B718

l23032BC2:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,00000002
	sb	a4,a5,+00000700
	c.li	a3,0000001F
	sb	a3,a5,+00000704
	addi	a3,zero,+0000003F
	sb	a3,a5,+00000704
	lhu	s1,a5,+00000708
	lbu	a5,s0,-000003A4
	c.slli	s1,10
	c.srli	s1,00000010
	bltu	a4,a5,0000000023033324

l23032BF0:
	lui	s5,00042020
	lbu	a5,s5,-000003A3
	bltu	a4,a5,00000000230332C4

l23032BFC:
	lui	a5,0004200E
	lw	a4,a5,-0000017C
	c.mv	s6,a5
	beq	a4,zero,0000000023033092

l23032C0A:
	jal	ra,000000002303030A

l23032C0E:
	c.lui	s2,0000C000
	c.mv	a1,a0
	lui	s4,00023083
	lui	s3,0002307F
	lui	a0,00023083
	addi	a6,s2,+000000E0
	c.mv	a5,s1
	addi	a4,zero,+00000073
	addi	a3,s4,-000004D8
	addi	a2,s3,+0000016C
	addi	a0,a0,-0000037C
	addi	s2,s2,+000000E0
	jal	ra,000000002304B718
	bne	s1,s2,000000002303332E

l23032C40:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032C88

l23032C4A:
	lbu	a4,s5,-000003A3
	bltu	a5,a4,0000000023032C88

l23032C52:
	lw	a5,s6,-0000017C
	beq	a5,zero,0000000023033098

l23032C5A:
	jal	ra,000000002303030A

l23032C5E:
	c.lui	a5,0000C000
	c.mv	a1,a0
	lui	a0,00023083
	addi	a5,a5,+000000E0
	addi	a4,zero,+00000075
	addi	a3,s4,-000004D8
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000348

l23032C7A:
	jal	ra,000000002304B718
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bgeu	a5,a4,0000000023033284

l23032C88:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a2,0000001F
	addi	a4,zero,+000003E8
	addi	a5,a5,+00000704
	addi	a3,zero,+0000003F

l23032CA0:
	sb	a2,a5,+00000000
	sb	a3,a5,+00000000
	c.addi	a4,FFFFFFFF
	c.bnez	a4,0000000023032CA0

l23032CAC:
	lui	s1,00000F69
	c.lui	a5,00010000
	addi	s1,s1,+00000118
	c.addi	a5,FFFFFFFF

l23032CB8:
	srli	a4,s1,00000010
	bne	a4,zero,00000000230330AA

l23032CC0:
	lui	a5,0004000A
	lhu	s2,a5,+00000708
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.slli	s2,10
	srli	s2,s2,00000010
	bltu	a5,a4,0000000023032D22

l23032CD8:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032D22

l23032CE4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230330B0

l23032CF0:
	jal	ra,000000002303030A

l23032CF4:
	xori	a6,s1,-00000001
	c.slli	a6,10
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	srli	a6,a6,00000010
	c.mv	a5,s2
	addi	a4,zero,+00000091
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000003B0
	jal	ra,000000002304B718

l23032D22:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,00000002
	sb	a4,a5,+00000700
	c.li	a2,0000001F
	addi	a4,zero,+000003E8
	addi	a5,a5,+00000704
	addi	a3,zero,+0000003F

l23032D40:
	sb	a2,a5,+00000000
	sb	a3,a5,+00000000
	c.addi	a4,FFFFFFFF
	c.bnez	a4,0000000023032D40

l23032D4C:
	lui	a4,00000F69
	c.lui	a5,00010000
	addi	a4,a4,+00000118
	c.addi	a5,FFFFFFFF

l23032D58:
	srli	a3,a4,00000010
	bne	a3,zero,00000000230330B6

l23032D60:
	lui	a5,0004000A
	lhu	s2,a5,+00000708
	lbu	a3,s0,-000003A4
	c.li	a5,00000002
	c.slli	s2,10
	srli	s2,s2,00000010
	xori	s1,a4,-00000001
	bltu	a5,a3,0000000023032DC4

l23032D7C:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032DC4

l23032D88:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230330BC

l23032D94:
	jal	ra,000000002303030A

l23032D98:
	slli	a6,s1,00000010
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	srli	a6,a6,00000010
	c.mv	a5,s2
	addi	a4,zero,+000000A3
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000037C
	jal	ra,000000002304B718

l23032DC4:
	slli	a4,s1,00000010
	c.srli	a4,00000010
	lbu	a3,s0,-000003A4
	bne	s2,a4,0000000023033142

l23032DD2:
	c.li	a5,00000002
	bltu	a5,a3,0000000023032DE4

l23032DD8:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bgeu	a5,a4,00000000230330C2

l23032DE4:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,0000001F
	sb	a4,a5,+00000704
	addi	a4,zero,+0000003F
	sb	a4,a5,+00000704
	addi	a4,zero,-0000005F
	sb	a4,a5,+00000704
	lhu	s1,a5,+00000708
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.slli	s1,10
	c.srli	s1,00000010
	bltu	a5,a4,0000000023032E5C

l23032E16:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032E5C

l23032E22:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023033190

l23032E2E:
	jal	ra,000000002303030A

l23032E32:
	c.lui	a6,0000C000
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a6,a6,+0000003F
	c.mv	a5,s1
	addi	a4,zero,+000000C4
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000003B0
	jal	ra,000000002304B718

l23032E5C:
	lui	a5,0004000A
	c.li	a4,00000001
	sb	a4,a5,+00000700
	c.li	a4,00000002
	sb	a4,a5,+00000700
	c.li	a3,0000001F
	sb	a3,a5,+00000704
	addi	a3,zero,+0000003F
	sb	a3,a5,+00000704
	addi	a3,zero,-0000005F
	sb	a3,a5,+00000704
	lhu	s2,a5,+00000708
	lbu	a5,s0,-000003A4
	c.slli	s2,10
	srli	s2,s2,00000010
	bltu	a4,a5,00000000230332D0

l23032E94:
	lui	s5,00042020
	lbu	a5,s5,-000003A3
	bltu	a4,a5,0000000023033278

l23032EA0:
	lui	a5,0004200E
	lw	a4,a5,-0000017C
	c.mv	s6,a5
	beq	a4,zero,0000000023033196

l23032EAE:
	jal	ra,000000002303030A

l23032EB2:
	c.lui	s1,0000C000
	c.mv	a1,a0
	lui	s4,00023083
	lui	s3,0002307F
	lui	a0,00023083
	addi	a6,s1,+0000003F
	c.mv	a5,s2
	addi	a4,zero,+000000D8
	addi	a3,s4,-000004D8
	addi	a2,s3,+0000016C
	addi	a0,a0,-0000037C
	addi	s1,s1,+0000003F
	jal	ra,000000002304B718
	bne	s2,s1,00000000230332DA

l23032EE4:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032EF6

l23032EEE:
	lbu	a4,s5,-000003A3
	bgeu	a5,a4,000000002303319C

l23032EF6:
	c.lui	a5,00004000
	addi	a5,a5,-000000E1
	c.addi4spn	s1,0000000C
	sh	a5,sp,+00000000
	c.li	a5,00000001
	c.swsp	a5,00000080
	c.li	a2,0000001C
	c.li	a5,00000002
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	a5,00000004
	sh	zero,sp,+00000002
	jal	ra,0000000023070EB8
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,0000000023070EB8
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000044
	jal	ra,0000000023070EB8
	c.addi4spn	a5,00000004
	c.swsp	a5,0000000C
	lui	a5,0004000A
	addi	a4,a5,+00000700
	c.swsp	a4,0000008C
	c.addi4spn	a4,00000034
	c.swsp	a4,00000010
	lui	a4,00004480
	c.addi	a4,00000002
	c.swsp	a4,00000090
	lui	a4,00023033
	addi	a4,a4,-00000644
	c.swsp	a4,00000008
	addi	a4,a5,+00000704
	addi	a5,a5,+00000708
	c.swsp	a4,0000001C
	c.swsp	a5,00000028
	c.addi4spn	a4,00000050
	addi	a5,sp,+00000002
	c.swsp	a4,0000009C
	c.swsp	a5,000000A8
	lui	a4,00000040
	lui	a5,00080240
	addi	a4,a4,+000003E8
	c.addi	a5,00000001
	c.mv	a0,s1
	c.swsp	s1,00000088
	c.swsp	sp,00000098
	c.swsp	a4,00000020
	c.swsp	zero,00000094
	c.swsp	zero,00000018
	c.swsp	zero,0000002C
	c.swsp	a5,000000AC
	c.swsp	zero,00000024
	c.swsp	zero,000000A4
	c.jal	0000000023033550

l23032F8A:
	c.lwsp	s4,000000E4
	bne	a5,zero,0000000023033220

l23032F90:
	lhu	a3,sp,+00000002
	c.lui	a5,00007000
	addi	a5,a5,-0000020F
	lbu	a4,s0,-000003A4
	bne	a3,a5,000000002303322E

l23032FA2:
	c.li	a5,00000002
	bltu	a5,a4,0000000023032FEA

l23032FA8:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032FEA

l23032FB4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023033228

l23032FC0:
	jal	ra,000000002303030A

l23032FC4:
	lhu	a5,sp,+00000002
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+0000012F
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000348

l23032FE6:
	jal	ra,000000002304B718

l23032FEA:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23033000:
	jal	ra,00000000230302E8
	c.j	0000000023032A5E

l23033006:
	jal	ra,00000000230302E8
	c.j	0000000023032ADC

l2303300C:
	lui	a5,0004200E
	lw	a4,a5,-0000017C
	c.mv	s3,a5
	c.beqz	a4,0000000023033080

l23033018:
	jal	ra,000000002303030A

l2303301C:
	c.mv	a5,s1
	c.mv	a1,a0
	lui	s2,00023083
	lui	s1,0002307F
	lui	a0,00023083
	addi	a4,zero,+00000048
	addi	a7,zero,+000000B8
	addi	a6,zero,+00000061
	addi	a3,s2,-000004D8
	addi	a2,s1,+0000016C
	addi	a0,a0,-0000041C
	jal	ra,000000002304B718
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032B52

l23033052:
	lbu	a4,s4,-000003A3
	bltu	a5,a4,0000000023032B52

l2303305A:
	lw	a5,s3,-0000017C
	c.beqz	a5,0000000023033086

l23033060:
	jal	ra,000000002303030A

l23033064:
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+00000139
	addi	a3,s2,-000004D8
	addi	a2,s1,+0000016C
	addi	a0,a0,-000003D8
	jal	ra,000000002304B718
	c.j	0000000023032B52

l23033080:
	jal	ra,00000000230302E8
	c.j	000000002303301C

l23033086:
	jal	ra,00000000230302E8
	c.j	0000000023033064

l2303308C:
	jal	ra,00000000230302E8
	c.j	0000000023032B98

l23033092:
	jal	ra,00000000230302E8
	c.j	0000000023032C0E

l23033098:
	jal	ra,00000000230302E8
	c.j	0000000023032C5E

l2303309E:
	jal	ra,00000000230302E8
	c.j	0000000023033356

l230330A4:
	jal	ra,00000000230302E8
	c.j	00000000230332A0

l230330AA:
	c.and	s1,a5
	c.add	s1,a4
	c.j	0000000023032CB8

l230330B0:
	jal	ra,00000000230302E8
	c.j	0000000023032CF4

l230330B6:
	c.and	a4,a5
	c.add	a4,a3
	c.j	0000000023032D58

l230330BC:
	jal	ra,00000000230302E8
	c.j	0000000023032D98

l230330C2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303313C

l230330CC:
	jal	ra,000000002303030A

l230330D0:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s2
	addi	a4,zero,+000000A5
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000348

l230330F0:
	jal	ra,000000002304B718

l230330F4:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032DE4

l230330FE:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032DE4

l2303310A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303318A

l23033114:
	jal	ra,000000002303030A

l23033118:
	c.mv	a1,a0
	lui	a3,00023083
	lui	a2,0002307F
	lui	a0,00023083
	addi	a4,zero,+0000013D
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000002B0
	jal	ra,000000002304B718
	c.j	0000000023032DE4

l2303313C:
	jal	ra,00000000230302E8
	c.j	00000000230330D0

l23033142:
	c.li	a5,00000004
	bltu	a5,a3,00000000230330F4

l23033148:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,00000000230330F4

l23033154:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033184

l2303315E:
	jal	ra,000000002303030A

l23033162:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s2
	addi	a4,zero,+000000A7
	addi	a3,a3,-000004D8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000310
	c.j	00000000230330F0

l23033184:
	jal	ra,00000000230302E8
	c.j	0000000023033162

l2303318A:
	jal	ra,00000000230302E8
	c.j	0000000023033118

l23033190:
	jal	ra,00000000230302E8
	c.j	0000000023032E32

l23033196:
	jal	ra,00000000230302E8
	c.j	0000000023032EB2

l2303319C:
	lw	a5,s6,-0000017C
	c.beqz	a5,000000002303320E

l230331A2:
	jal	ra,000000002303030A

l230331A6:
	c.lui	a5,0000C000
	c.mv	a1,a0
	lui	a0,00023083
	addi	a5,a5,+0000003F
	addi	a4,zero,+000000DA
	addi	a3,s4,-000004D8
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000348

l230331C2:
	jal	ra,000000002304B718

l230331C6:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032EF6

l230331D0:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032EF6

l230331DC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303321A

l230331E6:
	jal	ra,000000002303030A

l230331EA:
	c.mv	a1,a0
	lui	a3,00023083
	lui	a2,0002307F
	lui	a0,00023083
	addi	a4,zero,+0000013F
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000288
	jal	ra,000000002304B718
	c.j	0000000023032EF6

l2303320E:
	jal	ra,00000000230302E8
	c.j	00000000230331A6

l23033214:
	jal	ra,00000000230302E8
	c.j	0000000023033302

l2303321A:
	jal	ra,00000000230302E8
	c.j	00000000230331EA

l23033220:
	c.li	a0,00000002
	jal	ra,0000000023030630
	c.j	0000000023032F8A

l23033228:
	jal	ra,00000000230302E8
	c.j	0000000023032FC4

l2303322E:
	c.li	a5,00000004
	bltu	a5,a4,0000000023032FEA

l23033234:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032FEA

l23033240:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033272

l2303324A:
	jal	ra,000000002303030A

l2303324E:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	lhu	a5,sp,+00000002
	addi	a4,zero,+00000131
	addi	a3,a3,-000004D8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000310
	c.j	0000000023032FE6

l23033272:
	jal	ra,00000000230302E8
	c.j	000000002303324E

l23033278:
	c.lui	a5,0000C000
	addi	a5,a5,+0000003F
	bne	s2,a5,00000000230332E4

l23033282:
	c.j	0000000023032EF6

l23033284:
	lui	a4,00042020
	lbu	a4,a4,-000003A3
	bltu	a5,a4,0000000023032C88

l23033290:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230330A4

l2303329C:
	jal	ra,000000002303030A

l230332A0:
	c.mv	a1,a0
	lui	a3,00023083
	lui	a2,0002307F
	lui	a0,00023083
	addi	a4,zero,+0000013B
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-000002D8
	jal	ra,000000002304B718
	c.j	0000000023032C88

l230332C4:
	c.lui	a5,0000C000
	addi	a5,a5,+000000E0
	bne	s1,a5,0000000023033338

l230332CE:
	c.j	0000000023032C88

l230332D0:
	c.lui	a5,0000C000
	addi	a5,a5,+0000003F
	beq	s2,a5,0000000023032EF6

l230332DA:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230331C6

l230332E4:
	lui	a5,00042020
	lbu	a4,a5,-000003A3
	c.li	a5,00000004
	bltu	a5,a4,00000000230331C6

l230332F2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023033214

l230332FE:
	jal	ra,000000002303030A

l23033302:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s2
	addi	a4,zero,+000000DC
	addi	a3,a3,-000004D8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000310
	c.j	00000000230331C2

l23033324:
	c.lui	a5,0000C000
	addi	a5,a5,+000000E0
	beq	s1,a5,0000000023032C88

l2303332E:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023032C88

l23033338:
	lui	a5,00042020
	lbu	a4,a5,-000003A3
	c.li	a5,00000002
	bltu	a5,a4,0000000023032C88

l23033346:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303309E

l23033352:
	jal	ra,000000002303030A

l23033356:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s1
	addi	a4,zero,+00000077
	addi	a3,a3,-000004D8
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000310
	c.j	0000000023032C7A

;; _cb_cmd: 23033378
_cb_cmd proc
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a0
	bltu	a5,a4,00000000230333CC

l2303338E:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,00000000230333CC

l2303339A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230333D8

l230333A4:
	jal	ra,000000002303030A

l230333A8:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s0
	addi	a4,zero,+0000019C
	addi	a3,a3,-00000234
	addi	a2,a2,+0000016C
	addi	a0,a0,-000004CC
	jal	ra,000000002304B718

l230333CC:
	sw	zero,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230333D8:
	jal	ra,00000000230302E8
	c.j	00000000230333A8

;; bl_dma_int_process: 230333DE
bl_dma_int_process proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	lui	a5,0004000C
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.lw	a5,4(s0)
	c.li	s2,00000000
	lw	s7,a5,+0000000C
	c.li	s8,00000001
	jal	ra,0000000023033B02
	lui	s3,0004000C
	c.li	s6,00000004

l23033410:
	sll	a5,s8,s2
	and	s5,a5,s0
	and	s4,a5,s7
	bne	s5,zero,000000002303345A

l23033420:
	beq	s4,zero,000000002303343C

l23033424:
	lw	s0,s3,+00000010
	c.or	s0,a5
	sw	s0,s3,+00000010

l2303342E:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s1)

l23033434:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	bne	s1,a5,000000002303346A

l2303343C:
	c.addi	s2,00000001
	bne	s2,s6,0000000023033410

l23033442:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l2303345A:
	lw	s0,s3,+00000008
	c.or	s0,a5
	sw	s0,s3,+00000008
	beq	s4,zero,000000002303342E

l23033468:
	c.j	0000000023033424

l2303346A:
	c.lw	s1,8(a5)
	bne	a5,s2,0000000023033484

l23033470:
	c.lw	s1,12(a5)
	c.beqz	a5,000000002303347A

l23033474:
	beq	s5,zero,000000002303347A

l23033478:
	c.jalr	a5

l2303347A:
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023033484

l2303347E:
	beq	s4,zero,0000000023033484

l23033482:
	c.jalr	a5

l23033484:
	c.lw	s1,4(s1)
	c.j	0000000023033434

;; bl_dma_int_clear: 23033488
;;   Called from:
;;     230334C6 (in bl_dma_IRQHandler)
bl_dma_int_clear proc
	lui	a3,0004000C
	c.lw	a3,4(a4)
	c.li	a5,00000001
	sll	a0,a5,a0
	c.and	a4,a0
	andi	a4,a4,+000000FF
	c.beqz	a4,00000000230334A2

l2303349C:
	c.lw	a3,8(a5)
	c.or	a5,a0
	c.sw	a3,8(a5)

l230334A2:
	lui	a4,0004000C
	c.lw	a4,12(a5)
	c.and	a5,a0
	andi	a5,a5,+000000FF
	c.beqz	a5,00000000230334B6

l230334B0:
	c.lw	a4,16(a5)
	c.or	a0,a5
	c.sw	a4,16(a0)

l230334B6:
	c.li	a0,00000000
	c.jr	ra

;; bl_dma_IRQHandler: 230334BA
bl_dma_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200E
	jal	ra,0000000023033488
	addi	a0,s0,-00000154
	jal	ra,000000002304B984
	c.bnez	a0,0000000023033526

l230334D4:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,000000002303351E

l230334E2:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,000000002303351E

l230334EE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033520

l230334F8:
	jal	ra,000000002303030A

l230334FC:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+0000009D
	addi	a3,a3,-00000234
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000228
	jal	ra,000000002304B718

l2303351E:
	c.j	000000002303351E

l23033520:
	jal	ra,00000000230302E8
	c.j	00000000230334FC

l23033526:
	c.lw	a0,4(a5)
	c.beqz	a5,000000002303352E

l2303352A:
	c.lw	a0,8(a0)
	c.jalr	a5

l2303352E:
	lw	a1,s0,-00000154
	c.beqz	a1,0000000023033548

l23033534:
	c.li	a0,00000000
	c.addi	a1,0000000C
	jal	ra,0000000023053E38
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023053DEC

l23033548:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_dma_copy: 23033550
;;   Called from:
;;     23032F88 (in bl_cks_test)
;;     230338D8 (in bl_dma_test)
bl_dma_copy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,000000002303100A
	lui	a0,0004200E
	lw	a5,a0,-00000154
	c.mv	s0,a0
	c.bnez	a5,000000002303357A

l2303356A:
	c.li	a0,00000000
	addi	a1,s1,+0000000C
	jal	ra,0000000023053E38
	c.li	a0,00000000
	jal	ra,0000000023053DEC

l2303357A:
	c.mv	a1,s1
	addi	a0,s0,-00000154
	jal	ra,000000002304B970
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303101E

;; bl_dma_irq_register: 23033590
;;   Called from:
;;     23033814 (in bl_dma_init)
bl_dma_irq_register proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	a5,00000004
	bltu	a5,a0,00000000230335A8

l230335A4:
	c.mv	s2,a1
	c.bnez	a1,000000002303360A

l230335A8:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230335F2

l230335B6:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,00000000230335F2

l230335C2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033604

l230335CC:
	jal	ra,000000002303030A

l230335D0:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+0000011C
	addi	a3,a3,-00000234
	addi	a2,a2,-00000434
	addi	a0,a0,-00000190
	jal	ra,000000002304B718

l230335F2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFFF
	c.addi16sp	00000030
	c.jr	ra

l23033604:
	jal	ra,00000000230302E8
	c.j	00000000230335D0

l2303360A:
	c.mv	s1,a0
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.mv	s4,a2
	c.mv	s3,a3
	c.jal	0000000023033B02
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s0)

l2303361C:
	bne	a5,s0,0000000023033692

l23033620:
	c.li	a0,00000018
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.bnez	a0,0000000023033674

l2303362A:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023033674

l23033638:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,0000000023033674

l23033644:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230336F0

l2303364E:
	jal	ra,000000002303030A

l23033652:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+0000012A
	addi	a3,a3,-00000234
	addi	a2,a2,-00000434
	addi	a0,a0,-00000134
	jal	ra,000000002304B718

l23033674:
	c.lwsp	a2,000000E4
	c.sw	s0,8(s1)
	sw	s2,s0,+0000000C
	sw	s4,s0,+00000010
	sw	s3,s0,+00000014
	c.lw	a5,0(a5)
	c.lw	a5,4(a4)
	c.sw	s0,0(a5)
	c.sw	s0,4(a4)
	c.sw	a5,4(s0)
	c.sw	a4,0(s0)
	c.j	00000000230335F2

l23033692:
	c.lw	s0,8(a4)
	bne	s1,a4,00000000230336EC

l23033698:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000003
	bltu	a5,a4,00000000230335F2

l230336A6:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,00000000230335F2

l230336B2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230336E6

l230336BC:
	jal	ra,000000002303030A

l230336C0:
	c.lw	s0,8(a5)
	c.mv	a1,a0
	lui	a3,00023083
	lui	a2,00023082
	lui	a0,00023083
	addi	a4,zero,+00000124
	addi	a3,a3,-00000234
	addi	a2,a2,-00000318
	addi	a0,a0,-00000168
	jal	ra,000000002304B718
	c.j	00000000230335F2

l230336E6:
	jal	ra,00000000230302E8
	c.j	00000000230336C0

l230336EC:
	c.lw	s0,4(s0)
	c.j	000000002303361C

l230336F0:
	jal	ra,00000000230302E8
	c.j	0000000023033652

;; bl_dma_init: 230336F6
;;   Called from:
;;     230011BC (in bfl_main)
bl_dma_init proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000154
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002304B966
	c.li	a0,00000004
	jal	ra,000000002303218A
	c.bnez	a0,0000000023033770

l23033718:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023033762

l23033726:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,0000000023033762

l23033732:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303376A

l2303373C:
	jal	ra,000000002303030A

l23033740:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+00000180
	addi	a3,a3,-00000234
	addi	a2,a2,-00000434
	addi	a0,a0,-000001F0

l2303375E:
	jal	ra,000000002304B718

l23033762:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303376A:
	jal	ra,00000000230302E8
	c.j	0000000023033740

l23033770:
	c.mv	s0,a0
	c.li	a0,00000008
	jal	ra,000000002303218A
	c.sw	s0,0(a0)
	c.bnez	a0,00000000230337CA

l2303377C:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023033762

l2303378A:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,0000000023033762

l23033796:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230337C4

l230337A0:
	jal	ra,000000002303030A

l230337A4:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+00000187
	addi	a3,a3,-00000234
	addi	a2,a2,-00000434
	addi	a0,a0,-000001C4
	c.j	000000002303375E

l230337C4:
	jal	ra,00000000230302E8
	c.j	00000000230337A4

l230337CA:
	c.sw	a0,4(a0)
	c.sw	a0,0(a0)
	jal	ra,0000000023053DDE
	c.li	a2,00000001
	c.li	a1,00000002
	c.li	a0,00000000
	jal	ra,0000000023053E4E
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023053E4E
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023053E4E
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,0000000023053E02
	lui	a1,00023033
	c.mv	a2,s0
	addi	a1,a1,+000003DE
	c.li	a0,0000001F
	c.jal	00000000230339DC
	lui	a1,00023033
	c.li	a3,00000000
	c.li	a2,00000000
	addi	a1,a1,+000004BA
	c.li	a0,00000000
	jal	ra,0000000023033590
	c.li	a0,0000001F
	c.jal	0000000023033968
	c.j	0000000023033762

;; bl_dma_test: 2303381E
;;   Called from:
;;     2300042A (in cmd_dma)
bl_dma_test proc
	c.addi	sp,FFFFFFF0
	c.li	a0,0000001C
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002303218A
	c.mv	s0,a0
	addi	a0,zero,+00000044
	jal	ra,000000002303218A
	c.mv	s2,a0
	addi	a0,zero,+00000044
	jal	ra,000000002303218A
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000002
	c.mv	s1,a0
	bltu	a5,a4,0000000023033894

l23033852:
	lui	a4,00042020
	lbu	a4,a4,-000003A2
	bltu	a5,a4,0000000023033894

l2303385E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230338FC

l23033868:
	jal	ra,000000002303030A

l2303386C:
	lui	a3,00023083
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a7,s1
	c.mv	a6,s2
	c.mv	a5,s0
	addi	a4,zero,+000001AF
	addi	a3,a3,-00000234
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000104
	jal	ra,000000002304B718

l23033894:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000044
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000044
	addi	a1,zero,+000000FF
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	lui	a5,0008C49B
	c.addi	a5,00000011
	c.sw	s0,24(a5)
	lui	a5,00023033
	addi	a5,a5,+00000378
	sw	s2,s0,+0000000C
	c.sw	s0,16(s1)
	sw	zero,s0,+00000014
	c.sw	s0,4(a5)
	c.sw	s0,8(s0)
	c.mv	a0,s0
	jal	ra,0000000023033550

l230338DC:
	c.lw	s0,8(a5)
	c.bnez	a5,0000000023033902

l230338E0:
	c.lw	s0,12(a0)
	jal	ra,0000000023032272
	c.lw	s0,16(a0)
	jal	ra,0000000023032272
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023032272

l230338FC:
	jal	ra,00000000230302E8
	c.j	000000002303386C

l23033902:
	c.li	a0,00000002
	jal	ra,0000000023030630
	c.j	00000000230338DC

;; _irq_num_check.part.0: 2303390A
;;   Called from:
;;     230339F2 (in bl_irq_register_with_ctx)
;;     23033B0E (in bl_irq_ctx_get)
;;     23033B42 (in bl_irq_unregister)
_irq_num_check.part.0 proc
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023033966

l23033918:
	lui	a4,00042020
	lbu	a4,a4,-000003A1
	bltu	a5,a4,0000000023033966

l23033924:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a5,0000000023033960

l23033936:
	jal	ra,000000002303030A

l2303393A:
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s0
	addi	a4,zero,+00000070
	addi	a3,a3,-00000078
	addi	a2,a2,-00000434
	addi	a0,a0,-0000006C
	jal	ra,000000002304B718

l2303395E:
	c.j	000000002303395E

l23033960:
	jal	ra,00000000230302E8
	c.j	000000002303393A

l23033966:
	c.j	0000000023033966

;; bl_irq_enable: 23033968
;;   Called from:
;;     230327A8 (in bl_uart_int_enable)
;;     2303381A (in bl_dma_init)
;;     230340B6 (in bl_sec_init)
;;     23034710 (in bl_pka_test)
;;     230347E8 (in bl_timer_tick_enable)
;;     23035472 (in bl_sec_aes_test)
;;     2303564E (in sha256_test_case0)
;;     2303576A (in bl_wifi_enable_irq)
;;     23035772 (in bl_wifi_enable_irq)
bl_irq_enable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.jr	ra

;; bl_irq_disable: 2303397A
;;   Called from:
;;     23032802 (in bl_uart_int_disable)
bl_irq_disable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	sb	zero,a0,+00000000
	c.jr	ra

;; bl_irq_exception_trigger: 2303398A
;;   Called from:
;;     23000404 (in cmd_exception_illegal_ins)
;;     23000410 (in cmd_exception_store)
;;     2300041A (in cmd_exception_l_illegal)
;;     23000426 (in cmd_exception_load)
bl_irq_exception_trigger proc
	c.li	a5,00000002
	bltu	a5,a0,00000000230339A0

l23033990:
	c.beqz	a0,00000000230339B8

l23033992:
	lui	a5,00012345
	addi	a5,a5,+00000678
	c.sw	a1,0(a5)
	c.mv	a1,a5
	c.j	00000000230339AE

l230339A0:
	lui	a1,00012345
	c.li	a5,00000003
	addi	a1,a1,+00000678
	beq	a0,a5,00000000230339BC

l230339AE:
	lui	a0,00023083
	addi	a0,a0,-00000044
	c.j	00000000230339D8

l230339B8:
	c.lw	a1,0(a1)
	c.j	00000000230339AE

l230339BC:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.addi4spn	a5,0000000C
	c.jalr	a5
	lui	a5,00012345
	lui	a0,00023083
	c.lwsp	t3,00000020
	addi	a1,a5,+00000678
	addi	a0,a0,-00000044
	c.addi16sp	00000020

l230339D8:
	jal	zero,0000000023052118

;; bl_irq_register_with_ctx: 230339DC
;;   Called from:
;;     23033804 (in bl_dma_init)
;;     23033B2A (in bl_irq_register)
bl_irq_register_with_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	a5,zero,+0000004F
	bgeu	a5,a0,00000000230339F6

l230339F2:
	jal	ra,000000002303390A

l230339F6:
	lui	s2,00042013
	addi	a5,s2,-00000708
	slli	s1,a0,00000002
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s3,a2
	addi	s2,s2,-00000708
	c.beqz	a5,0000000023033A6A

l23033A12:
	beq	a5,a1,0000000023033ADC

l23033A16:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000003
	bltu	a5,a4,0000000023033A6A

l23033A24:
	lui	a4,00042020
	lbu	a4,a4,-000003A1
	bltu	a5,a4,0000000023033ADA

l23033A30:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033AC8

l23033A3A:
	jal	ra,000000002303030A

l23033A3E:
	add	a5,s2,s1
	lw	a6,a5,+00000000
	lui	a3,00023083
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s0
	addi	a4,zero,+0000007E
	addi	a3,a3,-00000078
	addi	a2,a2,-00000318
	addi	a0,a0,+00000014
	jal	ra,000000002304B718

l23033A6A:
	bne	s4,zero,0000000023033ADC

l23033A6E:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023033AF2

l23033A7C:
	lui	a5,00042020
	lbu	a4,a5,-000003A1
	c.li	a5,00000004
	bltu	a5,a4,0000000023033AF2

l23033A8A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033ACE

l23033A94:
	jal	ra,000000002303030A

l23033A98:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a3,00023083
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a4,zero,+00000082
	addi	a3,a3,-00000078
	addi	a2,a2,-00000434
	addi	a0,a0,+0000004C
	c.addi16sp	00000020
	jal	zero,000000002304B718

l23033AC8:
	jal	ra,00000000230302E8
	c.j	0000000023033A3E

l23033ACE:
	jal	ra,00000000230302E8
	c.j	0000000023033A98

l23033AD4:
	sw	s3,s0,+00000000
	c.j	0000000023033AF2

l23033ADA:
	c.beqz	a1,0000000023033A7C

l23033ADC:
	addi	s0,s0,+00000050
	c.add	s1,s2
	c.slli	s0,02
	sw	s4,s1,+00000000
	c.add	s0,s2
	bne	s3,zero,0000000023033AD4

l23033AEE:
	sw	zero,s0,+00000000

l23033AF2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bl_irq_ctx_get: 23033B02
;;   Called from:
;;     23033406 (in bl_dma_int_process)
;;     23033614 (in bl_dma_irq_register)
bl_irq_ctx_get proc
	addi	a4,zero,+0000004F
	bgeu	a4,a0,0000000023033B12

l23033B0A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303390A

l23033B12:
	addi	a5,a0,+00000050
	lui	a4,00042013
	c.slli	a5,02
	addi	a4,a4,-00000708
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; bl_irq_register: 23033B28
;;   Called from:
;;     230327A0 (in bl_uart_int_enable)
;;     230327C6 (in bl_uart_int_enable)
;;     230340B0 (in bl_sec_init)
;;     2303470A (in bl_pka_test)
;;     230347F8 (in bl_timer_tick_enable)
;;     2303546C (in bl_sec_aes_test)
;;     23035648 (in sha256_test_case0)
;;     23035752 (in bl_wifi_enable_irq)
;;     23035762 (in bl_wifi_enable_irq)
bl_irq_register proc
	c.li	a2,00000000
	jal	zero,00000000230339DC

;; bl_irq_unregister: 23033B2E
;;   Called from:
;;     230327FA (in bl_uart_int_disable)
;;     23032820 (in bl_uart_int_disable)
bl_irq_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,zero,+0000004F
	bgeu	a5,a0,0000000023033B46

l23033B42:
	jal	ra,000000002303390A

l23033B46:
	lui	s0,00042013
	addi	a5,s0,-00000708
	slli	s3,a0,00000002
	c.add	a5,s3
	c.lw	a5,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,s0,-00000708
	beq	a5,a1,0000000023033BB8

l23033B62:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000003
	bltu	a5,a4,0000000023033BB8

l23033B70:
	lui	a4,00042020
	lbu	a4,a4,-000003A1
	bltu	a5,a4,0000000023033BB8

l23033B7C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033BCC

l23033B86:
	jal	ra,000000002303030A

l23033B8A:
	add	a5,s0,s3
	lw	a7,a5,+00000000
	lui	a3,00023083
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a6,s2
	c.mv	a5,s1
	addi	a4,zero,+000000A8
	addi	a3,a3,-00000078
	addi	a2,a2,-00000318
	addi	a0,a0,+0000007C
	jal	ra,000000002304B718

l23033BB8:
	c.add	s0,s3
	sw	s2,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23033BCC:
	jal	ra,00000000230302E8
	c.j	0000000023033B8A

;; interrupt_entry: 23033BD2
interrupt_entry proc
	slli	a2,a0,00000005
	c.srli	a2,00000005
	addi	a5,zero,+0000004F
	bltu	a5,a2,0000000023033C06

l23033BE0:
	lui	a5,00042013
	addi	a5,a5,-00000708
	slli	a4,a2,00000002
	c.add	a4,a5
	lw	t1,a4,+00000000
	beq	t1,zero,0000000023033C06

l23033BF6:
	addi	a2,a2,+00000050
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.beqz	a0,0000000023033C04

l23033C02:
	c.jr	t1

l23033C04:
	c.jr	t1

l23033C06:
	addi	a4,a2,-00000010
	lui	a0,00023083
	c.addi	sp,FFFFFFF0
	c.mv	a3,a4
	c.mv	a1,a2
	addi	a0,a0,+00000324
	c.swsp	ra,00000084
	jal	ra,0000000023052118

l23033C1E:
	c.j	0000000023033C1E

;; exception_entry: 23033C20
exception_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.mv	a0,a3
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	andi	a4,s0,+000003FF
	c.li	a3,00000004
	bne	a4,a3,0000000023033C4A

l23033C38:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023055930

l23033C4A:
	c.li	a3,00000006
	bne	a4,a3,0000000023033C62

l23033C50:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023055A82

l23033C62:
	c.mv	s2,a0
	lui	a0,00023083
	addi	a0,a0,+000000B8
	c.mv	s1,a1
	c.swsp	a2,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,000000A4
	lui	a0,00023083
	c.mv	a1,s0
	c.mv	a2,s1
	addi	a0,a0,+000000D0
	jal	ra,0000000023052118
	c.slli	s0,10
	c.srli	s0,00000010
	lui	a0,00023083
	c.mv	a1,s0
	addi	a0,a0,+000000F8
	jal	ra,0000000023052118
	c.li	a5,0000000F
	bltu	a5,s0,0000000023033D56

l23033C9E:
	lui	a5,00023083
	addi	a5,a5,-000000B8
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.jr	a5
23033CAE                                           37 35               75
23033CB0 08 23 13 05 05 11                               .#....         

l23033CB6:
	jal	ra,00000000230520DC
	lui	a0,00023052
	c.mv	a1,s2
	addi	a0,a0,+00000118
	jal	ra,0000000023055DCE

l23033CC8:
	c.j	0000000023033CC8
23033CCA                               37 35 08 23 13 05           75.#..
23033CD0 85 13 D5 B7 37 35 08 23 13 05 C5 15 E9 BF 37 35 ....75.#......75
23033CE0 08 23 13 05 C5 17 C1 BF 37 35 08 23 13 05 05 19 .#......75.#....
23033CF0 D9 B7 37 35 08 23 13 05 45 1B 75 BF 37 35 08 23 ..75.#..E.u.75.#
23033D00 13 05 05 1D 4D BF 37 35 08 23 13 05 85 1F 65 B7 ....M.75.#....e.
23033D10 37 35 08 23 13 05 85 21 79 BF 37 35 08 23 13 05 75.#...!y.75.#..
23033D20 05 24 51 BF 37 35 08 23 13 05 85 26 69 B7 37 35 .$Q.75.#...&i.75
23033D30 08 23 13 05 C5 27 41 B7 37 35 08 23 13 05 45 2A .#...'A.75.#..E*
23033D40 9D BF 37 35 08 23 13 05 45 2C B5 B7 37 35 08 23 ..75.#..E,..75.#
23033D50 13 05 05 2E 8D B7                               ......         

l23033D56:
	lui	a0,00023083
	addi	a0,a0,+00000300
	c.j	0000000023033CB6

;; bl_irq_init: 23033D60
;;   Called from:
;;     230011B0 (in bfl_main)
bl_irq_init proc
	lui	a0,00023083
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000020
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a5,00002800
	addi	a4,a5,+00000400
	addi	a5,a5,+00000480

l23033D7C:
	sb	zero,a4,+00000000
	c.addi	a4,00000001
	bne	a4,a5,0000000023033D7C

l23033D86:
	lui	a5,00002800
	addi	a4,a5,+00000080

l23033D8E:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023033D8E

l23033D98:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; _trng_trigger: 23033D9E
;;   Called from:
;;     23033F90 (in bl_sec_get_random_word)
;;     23033FD8 (in bl_rand_stream)
;;     23033FF4 (in bl_rand_stream)
;;     2303401A (in bl_rand_stream)
;;     23034096 (in bl_sec_init)
;;     2303409E (in bl_sec_init)
_trng_trigger proc
	lui	a5,00040004
	lw	a4,a5,+00000200
	andi	a3,a4,+00000001
	c.bnez	a3,0000000023033DC8

l23033DAC:
	lui	a3,00042013
	addi	a3,a3,-00000438
	c.lw	a3,0(a2)
	ori	a4,a4,+00000606
	sw	a2,a5,+0000022C
	c.lw	a3,4(a3)
	sw	a3,a5,+00000230
	sw	a4,a5,+00000200

l23033DC8:
	c.jr	ra

;; wait_trng4feed: 23033DCA
;;   Called from:
;;     23033FDC (in bl_rand_stream)
;;     23033FF8 (in bl_rand_stream)
;;     2303401E (in bl_rand_stream)
;;     2303409A (in bl_sec_init)
;;     230340A2 (in bl_sec_init)
wait_trng4feed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00040004
	lw	a5,a5,+00000200
	lui	a3,00040004

l23033DDC:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023033E80

l23033DE2:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	lui	a4,00040004
	sw	a5,a4,+00000200
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	lui	s0,00042013
	c.li	a5,00000001
	addi	s0,s0,-00000438
	bltu	a5,a4,0000000023033E44

l23033E06:
	lui	a4,00042020
	lbu	a4,a4,-000003A0
	bltu	a5,a4,0000000023033E44

l23033E12:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033E86

l23033E1C:
	jal	ra,000000002303030A

l23033E20:
	c.lw	s0,0(a5)
	lui	a3,00023084
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+0000005B
	addi	a3,a3,-000002E4
	addi	a2,a2,-000002D8
	addi	a0,a0,-000002D0
	jal	ra,000000002304B718

l23033E44:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23033E80:
	lw	a5,a3,+00000200
	c.j	0000000023033DDC

l23033E86:
	jal	ra,00000000230302E8
	c.j	0000000023033E20

;; sec_trng_IRQHandler: 23033E8C
sec_trng_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002304D43C
	blt	zero,a1,0000000023033EB0

l23033E9A:
	c.bnez	a1,0000000023033EA4

l23033E9C:
	addi	a5,zero,+000007CF
	bltu	a5,a0,0000000023033EB0

l23033EA4:
	lui	a0,00023084
	addi	a0,a0,-0000033C
	jal	ra,00000000230520DC

l23033EB0:
	lui	a4,00040004
	lw	a5,a4,+00000200
	lui	s0,00042013
	addi	s0,s0,-00000438
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	sw	a5,a4,+00000200
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023033F16

l23033ED8:
	lui	a4,00042020
	lbu	a4,a4,-000003A0
	bltu	a5,a4,0000000023033F16

l23033EE4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023033F52

l23033EEE:
	jal	ra,000000002303030A

l23033EF2:
	c.lw	s0,0(a5)
	lui	a3,00023084
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+000000AB
	addi	a3,a3,-000002E4
	addi	a2,a2,-000002D8
	addi	a0,a0,-00000320
	jal	ra,000000002304B718

l23033F16:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23033F52:
	jal	ra,00000000230302E8
	c.j	0000000023033EF2

;; bl_sec_pka_IRQHandler: 23033F58
bl_sec_pka_IRQHandler proc
	lui	a0,00023083
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000540
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a1,00000001
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,0000000023053CB8

;; bl_sec_get_random_word: 23033F74
;;   Called from:
;;     23034054 (in bl_rand)
bl_sec_get_random_word proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a4,a5,-00000148
	c.lw	a4,0(s0)
	addi	s1,a5,-00000148
	c.andi	s0,00000007
	c.sw	a4,0(s0)
	c.bnez	s0,0000000023033F94

l23033F90:
	jal	ra,0000000023033D9E

l23033F94:
	addi	a5,s0,+00000001
	c.sw	s1,0(a5)
	lui	a5,00042013
	c.slli	s0,02
	addi	a5,a5,-00000438
	c.add	s0,a5
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bl_rand_stream: 23033FB2
;;   Called from:
;;     230104D4 (in supplicantGenerateRand)
bl_rand_stream proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200E
	lw	a5,s0,-00000148
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.mv	s4,a0
	c.mv	s1,a1
	addi	s0,s0,-00000148
	c.beqz	a5,0000000023033FE4

l23033FD8:
	jal	ra,0000000023033D9E
	jal	ra,0000000023033DCA
	sw	zero,s0,+00000000

l23033FE4:
	c.li	s3,00000000
	addi	s5,zero,+00000020
	lui	s6,00042013
	c.li	s7,0000001F

l23033FF0:
	blt	zero,s1,0000000023034016

l23033FF4:
	jal	ra,0000000023033D9E
	jal	ra,0000000023033DCA
	c.lwsp	a2,00000130
	sw	zero,s0,+00000000
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23034016:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023034026

l2303401A:
	jal	ra,0000000023033D9E
	jal	ra,0000000023033DCA
	sw	zero,s0,+00000000

l23034026:
	c.mv	s2,s1
	bge	s5,s1,0000000023034030

l2303402C:
	addi	s2,zero,+00000020

l23034030:
	add	a0,s4,s3
	c.mv	a2,s2
	addi	a1,s6,-00000438
	jal	ra,0000000023070C7C
	c.add	s3,s2
	sub	s1,s1,s2
	sw	s7,s0,+00000000
	c.j	0000000023033FF0

;; bl_rand: 2303404A
;;   Called from:
;;     230340D4 (in bl_sec_test)
;;     230340E6 (in bl_sec_test)
;;     2303D07A (in dhcp_create_msg)
;;     2303EEA2 (in igmp_delaying_member)
;;     2303F1BA (in igmp_joingroup_netif)
;;     23041484 (in tcp_init)
;;     230453DA (in udp_init)
;;     23049508 (in ping_api_init)
;;     2304A6D0 (in sntp_init)
;;     230564BA (in mbedtls_platform_entropy_poll)
bl_rand proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,00000013

l23034054:
	jal	ra,0000000023033F74
	c.addi	s0,FFFFFFFF
	c.mv	s1,a0
	c.bnez	s0,0000000023034078

l2303405E:
	lui	a0,00023083
	addi	a0,a0,+0000051C
	jal	ra,00000000230520DC

l2303406A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	srli	a0,s1,00000001
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23034078:
	c.beqz	a0,0000000023034054

l2303407A:
	c.j	000000002303406A

;; bl_sec_init: 2303407C
;;   Called from:
;;     230011B4 (in bfl_main)
bl_sec_init proc
	lui	a1,00042013
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000488
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302EDE0
	lui	a5,0004200E
	sw	a0,a5,+00000EB4
	jal	ra,0000000023033D9E
	jal	ra,0000000023033DCA
	jal	ra,0000000023033D9E
	jal	ra,0000000023033DCA
	lui	a1,00023034
	addi	a1,a1,-00000174
	c.li	a0,0000001C
	jal	ra,0000000023033B28
	c.li	a0,0000001C
	jal	ra,0000000023033968
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sec_test: 230340C2
;;   Called from:
;;     23000436 (in cmd_trng)
;;     230011B8 (in bfl_main)
bl_sec_test proc
	lui	a0,00023083
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000554
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002304B718
	jal	ra,000000002303404A
	lui	s0,00023083
	c.mv	a1,a0
	addi	a0,s0,+00000594
	jal	ra,000000002304B718
	jal	ra,000000002303404A
	c.mv	a1,a0
	addi	a0,s0,+00000594
	jal	ra,000000002304B718
	lui	a0,0002307E
	addi	a0,a0,+000007D4
	jal	ra,000000002304B718
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; _dump_rsa_data: 2303410A
;;   Called from:
;;     23034330 (in _pka_test_case_xgcd)
;;     23034592 (in _pka_test_case2)
_dump_rsa_data proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s4,a0
	c.mv	s3,a1
	c.li	s0,00000000
	lui	s1,00023083
	lui	s5,00023083
	c.li	s6,0000000F
	lui	s7,00023072

l23034132:
	blt	s0,s3,000000002303414C

l23034136:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2303414C:
	andi	a5,s0,+0000000F
	add	s2,s4,s0
	c.beqz	a5,0000000023034168

l23034156:
	beq	a5,s6,0000000023034174

l2303415A:
	lbu	a1,s2,+00000000
	addi	a0,s1,+0000037C
	jal	ra,000000002304B718
	c.j	0000000023034188

l23034168:
	c.mv	a1,s0
	addi	a0,s5,+00000374
	jal	ra,000000002304B718
	c.j	000000002303415A

l23034174:
	lbu	a1,s2,+00000000
	addi	a0,s1,+0000037C
	jal	ra,000000002304B718
	addi	a0,s7,+000007FC
	jal	ra,00000000230520DC

l23034188:
	c.addi	s0,00000001
	c.j	0000000023034132

;; _pka_test_case_xgcd: 2303418C
;;   Called from:
;;     23034718 (in bl_pka_test)
_pka_test_case_xgcd proc
	c.addi16sp	FFFFFEE0
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	s1,sp,+00000114
	sb	zero,sp,+0000000F
	jal	ra,0000000023053868
	jal	ra,0000000023053878
	lui	a2,00023084
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,a2,-0000063C
	c.li	a1,00000001
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,00000000230539FE
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000003
	c.li	a0,00000008
	jal	ra,00000000230539FE
	lui	s0,00023084
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,s0,-0000053C
	c.li	a1,00000000
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.lui	a4,00001000
	c.li	a5,00000000
	addi	a4,a4,-00000800
	c.li	a3,00000000
	c.li	a2,00000008
	c.li	a1,00000001
	c.li	a0,0000000A
	jal	ra,0000000023053C70
	c.li	a6,00000000
	c.li	a5,00000001
	c.li	a4,00000008
	c.li	a3,00000001
	c.li	a2,0000000A
	c.li	a1,00000000
	c.li	a0,00000008
	jal	ra,0000000023053C20
	c.li	a6,00000000
	c.li	a5,00000001
	c.li	a4,00000008
	c.li	a3,00000001
	c.li	a2,0000000A
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,0000000023053A72
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,0000000A
	jal	ra,00000000230539FE
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000008
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000001
	c.li	a3,00000004
	c.li	a2,00000008
	c.li	a1,00000001
	c.li	a0,00000008
	jal	ra,0000000023053A34
	lui	s1,00023083
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,s1,+0000041C
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,s0,-0000053C
	c.li	a1,00000005
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,s0,-0000053C
	c.li	a1,00000006
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,s1,+0000041C
	c.li	a1,00000007
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a6,00000000
	c.li	a5,00000005
	c.li	a4,00000008
	c.li	a3,00000000
	c.li	a2,00000008
	c.li	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023053BCE
	c.li	a6,00000000
	c.li	a5,00000008
	c.li	a4,00000008
	c.li	a3,00000004
	c.li	a2,00000008
	c.li	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023053B7C
	c.li	a6,00000000
	c.li	a5,00000007
	c.li	a4,00000008
	c.li	a3,00000000
	c.li	a2,00000008
	c.li	a1,00000009
	c.li	a0,00000008
	jal	ra,0000000023053BCE
	c.li	a6,00000000
	c.li	a5,00000009
	c.li	a4,00000008
	c.li	a3,00000006
	c.li	a2,00000008
	c.li	a1,00000009
	c.li	a0,00000008
	jal	ra,0000000023053B7C
	c.li	a4,00000000
	c.li	a3,00000005
	c.li	a2,00000008
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000000
	c.li	a3,00000008
	c.li	a2,00000008
	c.li	a1,00000005
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000000
	c.li	a3,00000007
	c.li	a2,00000008
	c.li	a1,00000006
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000001
	c.li	a3,00000009
	c.li	a2,00000008
	c.li	a1,00000007
	c.li	a0,00000008
	jal	ra,0000000023053A34

l23034316:
	lbu	a5,sp,+0000000F
	c.beqz	a5,0000000023034344

l2303431C:
	c.addi4spn	a2,00000010
	addi	a3,zero,+00000040
	c.li	a1,00000006
	c.li	a0,00000008
	jal	ra,000000002305396A
	c.addi4spn	a0,00000010
	addi	a1,zero,+00000100
	jal	ra,000000002303410A
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	c.addi16sp	00000120
	c.jr	ra

l23034344:
	c.li	a6,00000000
	c.li	a5,00000001
	c.li	a4,00000008
	c.li	a3,00000002
	c.li	a2,00000008
	c.li	a1,00000000
	c.li	a0,00000008
	jal	ra,0000000023053C20
	c.li	a6,00000000
	c.li	a5,00000001
	c.li	a4,00000008
	c.li	a3,00000002
	c.li	a2,00000008
	c.li	a1,00000003
	c.li	a0,00000008
	jal	ra,0000000023053A72
	c.li	a6,00000000
	c.li	a5,00000005
	c.li	a4,00000008
	c.li	a3,00000000
	c.li	a2,00000008
	c.li	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023053BCE
	c.li	a6,00000000
	c.li	a5,00000008
	c.li	a4,00000008
	c.li	a3,00000004
	c.li	a2,00000008
	c.li	a1,00000008
	c.li	a0,00000008
	jal	ra,0000000023053B7C
	c.li	a6,00000000
	c.li	a5,00000007
	c.li	a4,00000008
	c.li	a3,00000000
	c.li	a2,00000008
	c.li	a1,00000009
	c.li	a0,00000008
	jal	ra,0000000023053BCE
	c.li	a6,00000000
	c.li	a5,00000009
	c.li	a4,00000008
	c.li	a3,00000006
	c.li	a2,00000008
	c.li	a1,00000009
	c.li	a0,00000008
	jal	ra,0000000023053B7C
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000008
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000000
	c.li	a3,00000005
	c.li	a2,00000008
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000000
	c.li	a3,00000008
	c.li	a2,00000008
	c.li	a1,00000005
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000000
	c.li	a3,00000007
	c.li	a2,00000008
	c.li	a1,00000006
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000001
	c.li	a3,00000009
	c.li	a2,00000008
	c.li	a1,00000007
	c.li	a0,00000008
	jal	ra,0000000023053A34
	c.li	a4,00000001
	c.li	a3,00000003
	c.li	a2,00000008
	c.li	a1,00000001
	c.li	a0,00000008
	jal	ra,0000000023053A34
	addi	a2,s0,-0000053C
	c.li	a4,00000000
	addi	a3,zero,+00000040
	c.li	a1,0000000A
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a4,0000000A
	c.li	a3,00000008
	c.li	a2,00000001
	c.li	a1,00000008
	addi	a0,sp,+0000000F
	jal	ra,0000000023053B34
	c.j	0000000023034316

;; _pka_test_case2: 23034428
;;   Called from:
;;     23034714 (in bl_pka_test)
;;     2303471C (in bl_pka_test)
_pka_test_case2 proc
	c.addi16sp	FFFFFEC0
	sw	ra,sp,+0000013C
	sw	s0,sp,+00000138
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	jal	ra,0000000023053868
	jal	ra,0000000023053878
	lui	a2,00023084
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,a2,-0000073C
	c.li	a1,00000000
	c.li	a0,00000008
	jal	ra,00000000230538D8
	lui	a2,00023084
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,a2,-0000043C
	c.li	a1,00000001
	c.li	a0,00000008
	jal	ra,00000000230538D8
	lui	a2,00023083
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,a2,+000007C4
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,00000000230538D8
	lui	a2,0002308E
	c.li	a4,00000000
	c.li	a3,00000001
	addi	a2,a2,-00000184
	c.li	a1,00000003
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,00000000230539FE
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000005
	c.li	a0,00000008
	jal	ra,00000000230539FE
	c.lui	a4,00001000
	c.li	a5,00000000
	addi	a4,a4,-00000800
	c.li	a3,00000002
	c.li	a2,00000008
	c.li	a1,00000002
	c.li	a0,0000000A
	jal	ra,0000000023053C70
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000008
	c.li	a3,00000002
	c.li	a2,0000000A
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,0000000023053A72
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,0000000A
	jal	ra,00000000230539FE
	c.li	a5,00000001
	c.li	a7,00000000
	c.li	a6,00000008
	c.swsp	a5,00000000
	c.li	a4,00000008
	c.li	a5,00000003
	c.li	a3,00000002
	c.li	a2,00000008
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,0000000023053AC4
	c.li	a4,00000001
	c.li	a3,00000004
	c.li	a2,00000008
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,0000000023053A34
	lui	a2,00023083
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a2,a2,+000006C4
	c.li	a1,00000001
	c.li	a0,00000008
	jal	ra,00000000230538D8
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000004
	c.li	a0,00000008
	jal	ra,00000000230539FE
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000005
	c.li	a0,00000008
	jal	ra,00000000230539FE
	c.li	a6,00000000
	c.li	a5,00000001
	c.li	a4,00000008
	c.li	a3,00000002
	c.li	a2,00000008
	c.li	a1,00000002
	c.li	a0,0000000A
	jal	ra,0000000023053BCE
	c.li	a4,00000008
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a3,00000002
	c.li	a2,0000000A
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,0000000023053A72
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,0000000A
	jal	ra,00000000230539FE
	addi	a3,zero,+00000040
	c.addi4spn	a2,00000010
	c.li	a1,00000002
	c.li	a0,00000008
	jal	ra,000000002305396A
	addi	a1,zero,+00000100
	c.addi4spn	a0,00000010
	jal	ra,000000002303410A
	lui	s1,00023083
	lui	s3,0002307B
	lui	s4,00023083
	c.addi4spn	s0,00000010
	addi	s1,s1,+000005C4
	c.li	a4,00000000
	c.li	s2,00000000
	lui	s5,00042020
	lui	s6,00042020
	lui	s7,0004200E
	lui	s8,00023084
	addi	s3,s3,+00000100
	addi	s4,s4,+00000384

l230345C4:
	addi	a3,zero,+00000100
	lbu	a5,s5,-000003A4
	bne	s2,a3,0000000023034644

l230345D0:
	c.beqz	a4,00000000230346B2

l230345D2:
	c.li	a4,00000004
	bltu	a4,a5,0000000023034618

l230345D8:
	lui	a5,00042020
	lbu	a5,a5,-000003A0
	bltu	a4,a5,0000000023034618

l230345E4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230346AC

l230345EE:
	jal	ra,000000002303030A

l230345F2:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	addi	a5,zero,+00000100
	addi	a4,zero,+000000FD
	addi	a3,a3,-000002E4
	addi	a2,a2,-00000434
	addi	a0,a0,+000003B4

l23034614:
	jal	ra,000000002304B718

l23034618:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	lw	s3,sp,+0000012C
	lw	s4,sp,+00000128
	lw	s5,sp,+00000124
	lw	s6,sp,+00000120
	lw	s7,sp,+0000011C
	lw	s8,sp,+00000118
	c.addi16sp	00000140
	c.jr	ra

l23034644:
	lbu	a2,s0,+00000000
	lbu	a3,s1,+00000000
	beq	a2,a3,000000002303469E

l23034650:
	c.li	a3,00000002
	c.li	a4,00000001
	bltu	a3,a5,000000002303469E

l23034658:
	lbu	a5,s6,-000003A0
	bltu	a3,a5,000000002303469E

l23034660:
	lw	a5,s7,-0000017C
	c.beqz	a5,00000000230346A6

l23034666:
	jal	ra,000000002303030A

l2303466A:
	lbu	a7,s0,+00000000
	lbu	a4,s1,+00000000
	c.mv	a5,s3
	beq	a7,a4,000000002303467A

l23034678:
	c.mv	a5,s4

l2303467A:
	c.mv	a1,a0
	lui	a2,0002307F
	lui	a0,00023083
	c.swsp	a4,00000000
	c.mv	a6,s2
	addi	a4,zero,+000000F9
	addi	a3,s8,-000002E4
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000388
	jal	ra,000000002304B718
	c.li	a4,00000001

l2303469E:
	c.addi	s2,00000001
	c.addi	s0,00000001
	c.addi	s1,00000001
	c.j	00000000230345C4

l230346A6:
	jal	ra,00000000230302E8
	c.j	000000002303466A

l230346AC:
	jal	ra,00000000230302E8
	c.j	00000000230345F2

l230346B2:
	c.li	a4,00000002
	bltu	a4,a5,0000000023034618

l230346B8:
	lui	a5,00042020
	lbu	a5,a5,-000003A0
	bltu	a4,a5,0000000023034618

l230346C4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230346F6

l230346CE:
	jal	ra,000000002303030A

l230346D2:
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	addi	a5,zero,+00000100
	addi	a4,zero,+000000FF
	addi	a3,a3,-000002E4
	addi	a2,a2,+0000016C
	addi	a0,a0,+000003E8
	c.j	0000000023034614

l230346F6:
	jal	ra,00000000230302E8
	c.j	00000000230346D2

;; bl_pka_test: 230346FC
;;   Called from:
;;     23000442 (in cmd_pka)
bl_pka_test proc
	lui	a1,00023034
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-000000A8
	c.li	a0,0000001B
	c.swsp	ra,00000084
	jal	ra,0000000023033B28
	c.li	a0,0000001B
	jal	ra,0000000023033968
	jal	ra,0000000023034428
	jal	ra,000000002303418C
	jal	ra,0000000023034428
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; int_timer_cb: 23034728
int_timer_cb proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023054036
	jal	ra,000000002303033C
	c.beqz	a0,0000000023034742

l2303473A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023030672

l23034742:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_timer_now_us: 23034748
;;   Called from:
;;     230003C0 (in cmd_stack_wifi)
;;     230003D8 (in cmd_stack_wifi)
;;     23000D5C (in event_cb_wifi_event)
;;     23001026 (in bfl_main)
;;     230486E8 (in iperf_server_udp_recv_fn)
;;     2305557C (in bloop_run)
;;     23055596 (in bloop_run)
bl_timer_now_us proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,0000200C

l23034750:
	lw	a1,a5,-00000004
	lw	a0,a5,-00000008
	lw	a4,a5,-00000004
	bne	a1,a4,0000000023034750

l23034760:
	c.li	a2,0000000A
	c.li	a3,00000000
	jal	ra,000000002306D260
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_timer_tick_enable: 2303476E
;;   Called from:
;;     230358E0 (in cmd_timer_start)
bl_timer_tick_enable proc
	c.addi16sp	FFFFFFD0
	lui	a1,00023084
	c.li	a2,00000018
	addi	a1,a1,-0000029C
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,0000000023070C7C
	c.li	a2,00000001
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,0000000023054144
	lbu	a0,sp,+00000008
	jal	ra,0000000023054128
	c.addi4spn	a0,00000008
	jal	ra,0000000023054050
	lbu	a0,sp,+00000008
	c.li	a1,00000000
	jal	ra,0000000023054036
	lbu	a0,sp,+00000008
	c.li	a1,00000001
	jal	ra,0000000023054036
	lbu	a0,sp,+00000008
	c.li	a1,00000002
	jal	ra,0000000023054036
	lbu	a0,sp,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023054144
	lbu	a0,sp,+00000008
	c.li	a2,00000001
	c.li	a1,00000001
	jal	ra,0000000023054144
	lbu	a0,sp,+00000008
	c.li	a2,00000001
	c.li	a1,00000002
	jal	ra,0000000023054144
	lbu	a0,sp,+00000008
	jal	ra,0000000023054110
	addi	a0,zero,+00000035
	jal	ra,0000000023033968
	lui	a1,00023034
	addi	a0,zero,+00000035
	addi	a1,a1,+00000728
	jal	ra,0000000023033B28
	c.lwsp	a2,00000130
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; cmd_gpio_get: 23034804
cmd_gpio_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	a5,00000002
	c.mv	s0,a3
	beq	a2,a5,0000000023034872

l23034816:
	lui	a4,00042020
	lbu	a4,a4,-000003A4
	bltu	a5,a4,0000000023034860

l23034822:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034860

l2303482E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303486C

l23034838:
	jal	ra,000000002303030A

l2303483C:
	c.lw	s0,0(a5)
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000066
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-000001B4
	jal	ra,000000002304B718

l23034860:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303486C:
	jal	ra,00000000230302E8
	c.j	000000002303483C

l23034872:
	c.lw	a3,4(a0)
	c.mv	s1,a2
	jal	ra,0000000023070AF0
	c.mv	s0,a0
	bge	a0,zero,000000002303488E

l23034880:
	lui	a0,00023084
	addi	a0,a0,-0000017C
	jal	ra,00000000230520DC
	c.j	0000000023034860

l2303488E:
	addi	a1,sp,+0000000F
	andi	a0,a0,+000000FF
	jal	ra,000000002303916E
	lui	a5,00042020
	lbu	a5,a5,-000003A4
	c.mv	s2,a0
	bltu	s1,a5,0000000023034860

l230348A8:
	lui	a5,00042020
	lbu	a5,a5,-0000039F
	bltu	s1,a5,0000000023034860

l230348B4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230348FA

l230348BE:
	jal	ra,000000002303030A

l230348C2:
	bne	s2,zero,0000000023034900

l230348C6:
	lbu	a5,sp,+0000000F
	c.bnez	a5,000000002303490A

l230348CC:
	lui	a6,00023084
	addi	a6,a6,-000001C8

l230348D4:
	c.mv	a1,a0
	lui	a3,00023084
	lui	a2,0002307F
	lui	a0,00023084
	c.mv	a5,s0
	addi	a4,zero,+00000072
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000016C
	jal	ra,000000002304B718
	c.j	0000000023034860

l230348FA:
	jal	ra,00000000230302E8
	c.j	00000000230348C2

l23034900:
	lui	a6,00023084
	addi	a6,a6,-000001D4
	c.j	00000000230348D4

l2303490A:
	lui	a6,00023084
	addi	a6,a6,-000001D0
	c.j	00000000230348D4

;; cmd_gpio_set: 23034914
cmd_gpio_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000003
	c.mv	s1,a3
	lui	s2,00042020
	beq	a2,a5,0000000023034982

l2303492A:
	lbu	a4,s2,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023034A64

l23034934:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034A64

l23034940:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303497C

l2303494A:
	jal	ra,000000002303030A

l2303494E:
	c.lwsp	s0,00000004
	c.lw	s1,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+0000004D
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000140
	c.addi	sp,00000010
	jal	zero,000000002304B718

l2303497C:
	jal	ra,00000000230302E8
	c.j	000000002303494E

l23034982:
	c.lw	a3,4(a0)
	jal	ra,0000000023070AF0
	c.mv	s0,a0
	c.lw	s1,8(a0)
	jal	ra,0000000023070AF0
	c.mv	s1,a0
	lbu	a4,s2,-000003A4
	blt	s0,zero,000000002303499E

l2303499A:
	bge	a0,zero,00000000230349F0

l2303499E:
	c.li	a5,00000004
	bltu	a5,a4,0000000023034A64

l230349A4:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034A64

l230349B0:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230349EA

l230349BA:
	jal	ra,000000002303030A

l230349BE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000053
	addi	a3,a3,-000001C4
	addi	a2,a2,-00000434
	addi	a0,a0,-000000FC
	c.addi	sp,00000010
	jal	zero,000000002304B718

l230349EA:
	jal	ra,00000000230302E8
	c.j	00000000230349BE

l230349F0:
	c.li	a5,00000002
	bltu	a5,a4,0000000023034A3E

l230349F6:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034A3E

l23034A02:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034A54

l23034A0C:
	jal	ra,000000002303030A

l23034A10:
	c.bnez	s1,0000000023034A5A

l23034A12:
	lui	a6,00023084
	addi	a6,a6,-00000144

l23034A1A:
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a5,s0
	addi	a4,zero,+00000059
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-000000D8
	jal	ra,000000002304B718

l23034A3E:
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	sltu	a1,zero,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303915A

l23034A54:
	jal	ra,00000000230302E8
	c.j	0000000023034A10

l23034A5A:
	lui	a6,00023084
	addi	a6,a6,-000001D0
	c.j	0000000023034A1A

l23034A64:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; cmd_gpio_func: 23034A70
cmd_gpio_func proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.li	a5,00000005
	c.mv	s2,a3
	lui	s4,00042020
	beq	a2,a5,0000000023034AE8

l23034A8A:
	lbu	a4,s4,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023034C3C

l23034A94:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034C3C

l23034AA0:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034AE2

l23034AAA:
	jal	ra,000000002303030A

l23034AAE:
	c.lwsp	s0,00000114
	lw	a5,s2,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+0000002E
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000264
	c.addi16sp	00000030
	jal	zero,000000002304B718

l23034AE2:
	jal	ra,00000000230302E8
	c.j	0000000023034AAE

l23034AE8:
	c.lw	a3,4(a0)
	jal	ra,0000000023070AF0
	c.mv	s0,a0
	lw	a0,s2,+00000008
	jal	ra,0000000023070AF0
	c.mv	s3,a0
	lw	a0,s2,+0000000C
	jal	ra,0000000023070AF0
	c.mv	s1,a0
	lw	a0,s2,+00000010
	jal	ra,0000000023070AF0
	c.mv	s2,a0
	blt	s0,zero,0000000023034B1E

l23034B12:
	blt	s3,zero,0000000023034B1E

l23034B16:
	blt	s1,zero,0000000023034B1E

l23034B1A:
	bge	a0,zero,0000000023034B78

l23034B1E:
	lbu	a4,s4,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023034C3C

l23034B28:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034C3C

l23034B34:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034B72

l23034B3E:
	jal	ra,000000002303030A

l23034B42:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000036
	addi	a3,a3,-000001C4
	addi	a2,a2,-00000434
	addi	a0,a0,-000000FC
	c.addi16sp	00000030
	jal	zero,000000002304B718

l23034B72:
	jal	ra,00000000230302E8
	c.j	0000000023034B42

l23034B78:
	lbu	a4,s4,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023034BE4

l23034B82:
	lui	a4,00042020
	lbu	a4,a4,-0000039F
	bltu	a5,a4,0000000023034BE4

l23034B8E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034C06

l23034B98:
	jal	ra,000000002303030A

l23034B9C:
	bne	s3,zero,0000000023034C0C

l23034BA0:
	lui	a6,00023084
	addi	a6,a6,-0000027C

l23034BA8:
	c.bnez	s1,0000000023034C16

l23034BAA:
	lui	a7,00023084
	addi	a7,a7,-0000026C

l23034BB2:
	bne	s2,zero,0000000023034C20

l23034BB6:
	lui	a5,00023084
	addi	a5,a5,-0000026C

l23034BBE:
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	c.swsp	a5,00000000
	addi	a4,zero,+0000003E
	c.mv	a5,s0
	addi	a3,a3,-000001C4
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000218
	jal	ra,000000002304B718

l23034BE4:
	andi	a0,s0,+000000FF
	sltu	a1,zero,s1
	sltu	a2,zero,s2
	beq	s3,zero,0000000023034C2A

l23034BF4:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,0000000023039118

l23034C06:
	jal	ra,00000000230302E8
	c.j	0000000023034B9C

l23034C0C:
	lui	a6,00023084
	addi	a6,a6,-00000284
	c.j	0000000023034BA8

l23034C16:
	lui	a7,00023084
	addi	a7,a7,-00000274
	c.j	0000000023034BB2

l23034C20:
	lui	a5,00023084
	addi	a5,a5,-00000274
	c.j	0000000023034BBE

l23034C2A:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,00000000230390D4

l23034C3C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; bl_gpio_cli_init: 23034C4C
;;   Called from:
;;     23000866 (in aos_loop_proc)
bl_gpio_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_efuse_read_mac: 23034C50
;;   Called from:
;;     230377FA (in hal_board_cfg)
bl_efuse_read_mac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023054304
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_mac_factory: 23034C60
;;   Called from:
;;     2303813A (in hal_board_cfg)
bl_efuse_read_mac_factory proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,000000002305474C
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_capcode: 23034C78
;;   Called from:
;;     23037938 (in hal_board_cfg)
bl_efuse_read_capcode proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023054730
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_pwroft: 23034C90
;;   Called from:
;;     2303859E (in hal_board_cfg)
bl_efuse_read_pwroft proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,000000002305473E
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; Aes_Compare_Data: 23034CA8
;;   Called from:
;;     23034F90 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23035004 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303507E (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230351F6 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303526A (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230352E4 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303540E (in Sec_Eng_AES_Link_Case_ECB_128)
;;     2303542A (in Sec_Eng_AES_Link_Case_ECB_128)
;;     23035446 (in Sec_Eng_AES_Link_Case_ECB_128)
Aes_Compare_Data proc
	c.addi16sp	FFFFFFB0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	lui	s2,0002307B
	lui	s3,00023083
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.swsp	ra,000000A4
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s7,a0
	c.mv	s8,a1
	c.mv	s1,a2
	c.li	a4,00000000
	c.li	s0,00000000
	lui	s6,00042020
	lui	s9,00042020
	lui	s10,0004200E
	lui	s11,00023084
	addi	s2,s2,+00000100
	addi	s3,s3,+00000384

l23034CEE:
	lbu	a5,s6,-000003A4
	bne	s0,s1,0000000023034D58

l23034CF6:
	c.beqz	a4,0000000023034DCA

l23034CF8:
	c.li	a4,00000004
	bltu	a4,a5,0000000023034E12

l23034CFE:
	lui	a5,00042020
	lbu	a5,a5,-0000039E
	bltu	a4,a5,0000000023034E12

l23034D0A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034DC4

l23034D14:
	jal	ra,000000002303030A

l23034D18:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s1
	addi	a4,zero,+0000003F
	addi	a3,a3,-0000000C
	addi	a2,a2,-00000434
	addi	a0,a0,+000003B4

l23034D38:
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	jal	zero,000000002304B718

l23034D58:
	add	s5,s8,s0
	add	s4,s7,s0
	lbu	a2,s5,+00000000
	lbu	a3,s4,+00000000
	beq	a2,a3,0000000023034DBA

l23034D6C:
	c.li	a3,00000002
	c.li	a4,00000001
	bltu	a3,a5,0000000023034DBA

l23034D74:
	lbu	a5,s9,-0000039E
	bltu	a3,a5,0000000023034DBA

l23034D7C:
	lw	a5,s10,-0000017C
	c.beqz	a5,0000000023034DBE

l23034D82:
	jal	ra,000000002303030A

l23034D86:
	lbu	a7,s5,+00000000
	lbu	a4,s4,+00000000
	c.mv	a5,s2
	beq	a7,a4,0000000023034D96

l23034D94:
	c.mv	a5,s3

l23034D96:
	c.mv	a1,a0
	lui	a2,0002307F
	lui	a0,00023083
	c.swsp	a4,00000000
	c.mv	a6,s0
	addi	a4,zero,+0000003B
	addi	a3,s11,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000388
	jal	ra,000000002304B718
	c.li	a4,00000001

l23034DBA:
	c.addi	s0,00000001
	c.j	0000000023034CEE

l23034DBE:
	jal	ra,00000000230302E8
	c.j	0000000023034D86

l23034DC4:
	jal	ra,00000000230302E8
	c.j	0000000023034D18

l23034DCA:
	c.li	a4,00000002
	bltu	a4,a5,0000000023034E12

l23034DD0:
	lui	a5,00042020
	lbu	a5,a5,-0000039E
	bltu	a4,a5,0000000023034E12

l23034DDC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023034E0C

l23034DE6:
	jal	ra,000000002303030A

l23034DEA:
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023083
	c.mv	a5,s1
	addi	a4,zero,+00000041
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+000003E8
	c.j	0000000023034D38

l23034E0C:
	jal	ra,00000000230302E8
	c.j	0000000023034DEA

l23034E12:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

;; _dump_iv_status: 23034E30
;;   Called from:
;;     23034F68 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23034FE0 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23035052 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350CC (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230351CE (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035246 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230352B8 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035332 (in Sec_Eng_AES_Link_Case_CTR_128)
_dump_iv_status proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,a0,+0000000C
	addi	s0,a0,+0000001C
	lui	s2,00023084

l23034E46:
	lbu	a1,s1,+00000000
	addi	a0,s2,+00000190
	c.addi	s1,00000001
	jal	ra,000000002304B718
	bne	s1,s0,0000000023034E46

l23034E58:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023072
	addi	a0,a0,+000007FC
	c.addi	sp,00000010
	jal	zero,000000002304B718

;; bl_sec_aes_IRQHandler: 23034E6E
bl_sec_aes_IRQHandler proc
	lui	a0,00023084
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000298
	c.swsp	ra,00000084
	jal	ra,000000002304B718
	lui	a4,00040004
	lw	a5,a4,+00000100
	ori	a5,a5,+00000200
	sw	a5,a4,+00000100
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; Sec_Eng_AES_Link_Case_CBC_128: 23034E94
;;   Called from:
;;     23035484 (in bl_sec_aes_test)
Sec_Eng_AES_Link_Case_CBC_128 proc
	c.addi16sp	FFFFFF80
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000024
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	jal	ra,0000000023070EB8
	c.lui	a5,00012000
	addi	a5,a5,+00000400
	c.swsp	a5,00000090
	lui	a5,00003020
	addi	a5,a5,+00000100
	c.swsp	a5,00000018
	lui	a5,00007060
	addi	a5,a5,+00000504
	c.swsp	a5,00000098
	lui	a5,0000B0A1
	addi	a5,a5,-000006F8
	c.swsp	a5,0000001C
	lui	a5,0000F0E1
	addi	a5,a5,-000002F4
	c.swsp	a5,0000009C
	lui	a5,00016158
	addi	a5,a5,-000001D5
	c.swsp	a5,00000020
	lui	a5,000A6D2B
	addi	a5,a5,-000001D8
	c.swsp	a5,000000A0
	lui	a5,0008815F
	addi	a5,a5,+000007AB
	c.swsp	a5,00000024
	lui	a5,0003C4FD
	addi	a5,a5,-000000F7
	c.mv	a0,s1
	c.swsp	a5,000000A4
	jal	ra,00000000230537CA
	lui	a0,00023084
	addi	a0,a0,+00000004
	jal	ra,00000000230520DC
	lui	s0,00042020
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023034F66

l23034F26:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,0000000023034F66

l23034F32:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230350E4

l23034F3E:
	jal	ra,000000002303030A

l23034F42:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000084
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000020
	jal	ra,000000002304B718

l23034F66:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	lui	s3,00023084
	c.addi4spn	a4,00000004
	addi	a3,zero,+00000020
	addi	a2,s3,+00000258
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	lui	s2,00023084
	addi	a2,zero,+00000020
	addi	a0,s2,+00000198
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023034FDE

l23034F9E:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,0000000023034FDE

l23034FAA:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230350EA

l23034FB6:
	jal	ra,000000002303030A

l23034FBA:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000088
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000054
	jal	ra,000000002304B718

l23034FDE:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	addi	a2,s3,+00000258
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,a2,+00000020
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	addi	a0,s2,+00000198
	c.li	a2,00000010
	addi	a0,a0,+00000020
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035050

l23035012:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,0000000023035050

l2303501E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230350F0

l23035028:
	jal	ra,000000002303030A

l2303502C:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+0000008D
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000088
	jal	ra,000000002304B718

l23035050:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	lui	a2,00023084
	addi	a2,a2,+00000258
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,a2,+00000030
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	lui	a0,00023084
	addi	a0,a0,+00000198
	c.li	a2,00000010
	addi	a0,a0,+00000030
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230350CA

l2303508C:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,00000000230350CA

l23035098:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230350F6

l230350A2:
	jal	ra,000000002303030A

l230350A6:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000092
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000054
	jal	ra,000000002304B718

l230350CA:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	c.mv	a0,s1
	jal	ra,00000000230537DC
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

l230350E4:
	jal	ra,00000000230302E8
	c.j	0000000023034F42

l230350EA:
	jal	ra,00000000230302E8
	c.j	0000000023034FBA

l230350F0:
	jal	ra,00000000230302E8
	c.j	000000002303502C

l230350F6:
	jal	ra,00000000230302E8
	c.j	00000000230350A6

;; Sec_Eng_AES_Link_Case_CTR_128: 230350FC
;;   Called from:
;;     23035496 (in bl_sec_aes_test)
Sec_Eng_AES_Link_Case_CTR_128 proc
	c.addi16sp	FFFFFF80
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	c.swsp	s1,000000B8
	c.mv	s1,a0
	c.addi4spn	a0,00000024
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	jal	ra,0000000023070EB8
	c.lui	a5,00011000
	addi	a5,a5,+00000400
	c.swsp	a5,00000090
	lui	a5,000F3F2F
	addi	a5,a5,+000001F0
	c.swsp	a5,00000018
	lui	a5,000F7F6F
	addi	a5,a5,+000005F4
	c.swsp	a5,00000098
	lui	a5,000FBFB0
	addi	a5,a5,-00000608
	c.swsp	a5,0000001C
	c.lui	a5,FFFF0000
	addi	a5,a5,-00000204
	c.swsp	a5,0000009C
	lui	a5,00016158
	addi	a5,a5,-000001D5
	c.swsp	a5,00000020
	lui	a5,000A6D2B
	addi	a5,a5,-000001D8
	c.swsp	a5,000000A0
	lui	a5,0008815F
	addi	a5,a5,+000007AB
	c.swsp	a5,00000024
	lui	a5,0003C4FD
	addi	a5,a5,-000000F7
	c.mv	a0,s1
	c.swsp	a5,000000A4
	jal	ra,00000000230537CA
	lui	a0,00023084
	addi	a0,a0,+000000BC
	jal	ra,00000000230520DC
	lui	s0,00042020
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230351CC

l2303518C:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,00000000230351CC

l23035198:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303534A

l230351A4:
	jal	ra,000000002303030A

l230351A8:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+000000BE
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+000000D8
	jal	ra,000000002304B718

l230351CC:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	lui	s3,00023084
	c.addi4spn	a4,00000004
	addi	a3,zero,+00000020
	addi	a2,s3,+00000258
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	lui	s2,00023084
	addi	a2,zero,+00000020
	addi	a0,s2,+000001D8
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035244

l23035204:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,0000000023035244

l23035210:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023035350

l2303521C:
	jal	ra,000000002303030A

l23035220:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+000000C4
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+0000010C
	jal	ra,000000002304B718

l23035244:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	addi	a2,s3,+00000258
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,a2,+00000020
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	addi	a0,s2,+000001D8
	c.li	a2,00000010
	addi	a0,a0,+00000020
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230352B6

l23035278:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,00000000230352B6

l23035284:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035356

l2303528E:
	jal	ra,000000002303030A

l23035292:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+000000C9
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+0000010C
	jal	ra,000000002304B718

l230352B6:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	lui	a2,00023084
	addi	a2,a2,+00000258
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,a2,+00000030
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	lui	a0,00023084
	addi	a0,a0,+000001D8
	c.li	a2,00000010
	addi	a0,a0,+00000030
	jal	ra,0000000023034CA8
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035330

l230352F2:
	lui	a4,00042020
	lbu	a4,a4,-0000039E
	bltu	a5,a4,0000000023035330

l230352FE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303535C

l23035308:
	jal	ra,000000002303030A

l2303530C:
	c.lwsp	s0,000001F4
	lui	a3,00023084
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+000000CE
	addi	a3,a3,-0000000C
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000140
	jal	ra,000000002304B718

l23035330:
	c.addi4spn	a0,00000024
	jal	ra,0000000023034E30
	c.mv	a0,s1
	jal	ra,00000000230537DC
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

l2303534A:
	jal	ra,00000000230302E8
	c.j	00000000230351A8

l23035350:
	jal	ra,00000000230302E8
	c.j	0000000023035220

l23035356:
	jal	ra,00000000230302E8
	c.j	0000000023035292

l2303535C:
	jal	ra,00000000230302E8
	c.j	000000002303530C

;; Sec_Eng_AES_Link_Case_ECB_128: 23035362
;;   Called from:
;;     230354A4 (in bl_sec_aes_test)
Sec_Eng_AES_Link_Case_ECB_128 proc
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	addi	a2,zero,+0000003C
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	c.swsp	ra,000000B4
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	jal	ra,0000000023070EB8
	c.lui	a5,00010000
	addi	a5,a5,+00000400
	c.swsp	a5,00000090
	lui	a5,000F3F2F
	addi	a5,a5,+000001F0
	c.swsp	a5,00000018
	lui	a5,000F7F6F
	addi	a5,a5,+000005F4
	c.swsp	a5,00000098
	lui	a5,000FBFB0
	addi	a5,a5,-00000608
	c.swsp	a5,0000001C
	c.lui	a5,FFFF0000
	addi	a5,a5,-00000204
	c.swsp	a5,0000009C
	lui	a5,00016158
	addi	a5,a5,-000001D5
	c.swsp	a5,00000020
	lui	a5,000A6D2B
	addi	a5,a5,-000001D8
	c.swsp	a5,000000A0
	lui	a5,0008815F
	addi	a5,a5,+000007AB
	c.swsp	a5,00000024
	lui	a0,00023084
	lui	a5,0003C4FD
	addi	a5,a5,-000000F7
	addi	a0,a0,+00000174
	c.swsp	a5,000000A4
	jal	ra,00000000230520DC
	c.mv	a0,s0
	jal	ra,00000000230537CA
	lui	a2,00023084
	addi	s2,a2,+00000258
	c.addi4spn	a4,00000004
	addi	a3,zero,+00000020
	c.addi4spn	a1,00000024
	addi	a2,a2,+00000258
	c.mv	a0,s0
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	lui	a0,00023084
	addi	s1,a0,+00000218
	addi	a2,zero,+00000020
	addi	a0,a0,+00000218
	jal	ra,0000000023034CA8
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,s2,+00000020
	c.addi4spn	a1,00000024
	c.mv	a0,s0
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	addi	a0,s1,+00000020
	c.li	a2,00000010
	jal	ra,0000000023034CA8
	c.addi4spn	a4,00000004
	c.li	a3,00000010
	addi	a2,s2,+00000030
	c.addi4spn	a1,00000024
	c.mv	a0,s0
	jal	ra,00000000230537F0
	c.lwsp	a2,00000174
	addi	a0,s1,+00000030
	c.li	a2,00000010
	jal	ra,0000000023034CA8
	c.mv	a0,s0
	jal	ra,00000000230537DC
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.addi16sp	00000070
	c.jr	ra

;; bl_sec_aes_test: 2303545C
;;   Called from:
;;     23000432 (in cmd_aes)
bl_sec_aes_test proc
	lui	a1,00023035
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000192
	c.li	a0,0000001D
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023033B28
	c.li	a0,0000001D
	jal	ra,0000000023033968
	lui	a0,00023084
	addi	a0,a0,+000002AC
	jal	ra,000000002304B718
	c.li	a0,00000000
	jal	ra,0000000023034E94
	lui	s0,00023084
	addi	a0,s0,+00000304
	jal	ra,000000002304B718
	c.li	a0,00000000
	jal	ra,00000000230350FC
	addi	a0,s0,+00000304
	jal	ra,000000002304B718
	c.li	a0,00000000
	jal	ra,0000000023035362
	lui	a0,0002307E
	addi	a0,a0,+000007BC
	jal	ra,000000002304B718
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sec_sha_IRQHandler: 230354BE
bl_sec_sha_IRQHandler proc
	lui	a0,00023084
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000370
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a4,00040004
	c.lw	a4,0(a5)
	ori	a5,a5,+00000200
	c.sw	a4,0(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sha_mutex_take: 230354E0
;;   Called from:
;;     2304BD86 (in Bl_F_fast.constprop.0)
bl_sha_mutex_take proc
	lui	a5,0004200E
	lw	a0,a5,-0000014C
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.swsp	ra,00000084
	jal	ra,000000002302F114
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,0000000023035548

l230354FA:
	lui	a5,00042020
	lbu	a3,a5,-000003A4
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,0000000023035548

l2303550A:
	lui	a3,00042020
	lbu	a3,a3,-0000039D
	bltu	a4,a3,0000000023035548

l23035516:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035550

l23035520:
	jal	ra,000000002303030A

l23035524:
	c.mv	a1,a0
	lui	a3,00023084
	lui	a2,00023073
	lui	a0,00023084
	addi	a4,zero,+00000036
	addi	a3,a3,+00000408
	addi	a2,a2,-00000434
	addi	a0,a0,+00000418
	jal	ra,000000002304B718
	c.li	a5,FFFFFFFF

l23035548:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23035550:
	jal	ra,00000000230302E8
	c.j	0000000023035524

;; bl_sha_mutex_give: 23035556
;;   Called from:
;;     2304BDEA (in Bl_F_fast.constprop.0)
bl_sha_mutex_give proc
	lui	a5,0004200E
	lw	a0,a5,-0000014C
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302EC88
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,00000000230355C2

l23035574:
	lui	a5,00042020
	lbu	a3,a5,-000003A4
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,00000000230355C2

l23035584:
	lui	a3,00042020
	lbu	a3,a3,-0000039D
	bltu	a4,a3,00000000230355C2

l23035590:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230355CA

l2303559A:
	jal	ra,000000002303030A

l2303559E:
	c.mv	a1,a0
	lui	a3,00023084
	lui	a2,00023073
	lui	a0,00023084
	addi	a4,zero,+0000003F
	addi	a3,a3,+00000408
	addi	a2,a2,-00000434
	addi	a0,a0,+000003DC
	jal	ra,000000002304B718
	c.li	a5,FFFFFFFF

l230355C2:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230355CA:
	jal	ra,00000000230302E8
	c.j	000000002303559E

;; bl_sha_init: 230355D0
;;   Called from:
;;     2304C02E (in utils_hmac_sha1_fast)
;;     2304C088 (in utils_hmac_sha1_fast)
;;     2304C0E0 (in utils_hmac_sha1_fast)
bl_sha_init proc
	c.addi	sp,FFFFFFF0
	addi	a4,a0,+00000054
	addi	a3,a0,+00000014
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230532A6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230532F6

;; bl_sha_update: 230355EE
;;   Called from:
;;     2304C038 (in utils_hmac_sha1_fast)
;;     2304C094 (in utils_hmac_sha1_fast)
;;     2304C0EC (in utils_hmac_sha1_fast)
;;     2304C0F6 (in utils_hmac_sha1_fast)
;;     2304C148 (in utils_hmac_sha1_fast)
bl_sha_update proc
	c.addi	sp,FFFFFFF0
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023053308
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sha_finish: 23035602
;;   Called from:
;;     2304C040 (in utils_hmac_sha1_fast)
;;     2304C0A2 (in utils_hmac_sha1_fast)
;;     2304C0FE (in utils_hmac_sha1_fast)
bl_sha_finish proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023053316
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; sha256_test_case0: 23035614
;;   Called from:
;;     23035716 (in bl_sec_sha_test)
sha256_test_case0 proc
	c.addi16sp	FFFFFF20
	addi	a2,zero,+000000BC
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	c.swsp	ra,000000EC
	c.swsp	s0,0000006C
	c.swsp	s1,000000E8
	c.swsp	s2,00000068
	c.swsp	s3,000000E4
	c.swsp	s4,00000064
	c.swsp	s5,000000E0
	jal	ra,0000000023070EB8
	c.lui	a5,00010000
	addi	a5,a5,+00000400
	lui	a1,00023035
	addi	a1,a1,+000004BE
	c.swsp	a5,0000000C
	c.li	a0,0000001E
	lui	a5,00050020
	c.swsp	a5,0000008C
	jal	ra,0000000023033B28
	c.li	a0,0000001E
	jal	ra,0000000023033968
	c.li	a0,00000000
	jal	ra,0000000023053500
	c.addi4spn	a4,00000080
	c.addi4spn	a3,00000040
	c.addi4spn	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023053524
	lui	a2,00023084
	addi	a3,zero,+00000040
	addi	a2,a2,+000004BC
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023053570
	c.addi4spn	a2,00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230536A0
	c.li	a0,00000000
	jal	ra,0000000023053512
	lui	s2,00023084
	c.addi4spn	s0,00000004
	c.li	a5,00000000
	c.li	s1,00000000
	addi	s2,s2,+0000049C
	lui	s4,00023083
	lui	s5,00023084
	addi	s3,zero,+00000020

l230356A4:
	add	a4,s2,s1
	lbu	a3,a4,+00000000
	lbu	a4,s0,+0000001C
	beq	a3,a4,00000000230356C4

l230356B4:
	c.mv	a2,s1
	addi	a1,s4,+00000384
	addi	a0,s5,+00000444
	jal	ra,000000002304B718
	c.li	a5,00000001

l230356C4:
	c.addi	s1,00000001
	c.addi	s0,00000001
	bne	s1,s3,00000000230356A4

l230356CC:
	addi	a1,zero,+00000020
	c.beqz	a5,00000000230356F0

l230356D2:
	lui	a0,00023084
	addi	a0,a0,+0000045C

l230356DA:
	jal	ra,000000002304B718
	c.lwsp	t6,00000020
	c.lwsp	s11,00000004
	c.lwsp	s7,00000024
	c.lwsp	s3,00000048
	c.lwsp	a5,00000068
	c.lwsp	a1,00000088
	c.lwsp	t2,000000A8
	c.addi16sp	000000E0
	c.jr	ra

l230356F0:
	lui	a0,00023084
	addi	a0,a0,+0000047C
	c.j	00000000230356DA

;; bl_sec_sha_test: 230356FA
;;   Called from:
;;     2300043A (in cmd_sha)
bl_sec_sha_test proc
	lui	a0,00023084
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000002AC
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a0,00023084
	addi	a0,a0,+00000384
	jal	ra,00000000230520DC
	jal	ra,0000000023035614
	lui	a0,0002307E
	addi	a0,a0,+000007BC
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_clock_enable: 2303572E
;;   Called from:
;;     23029308 (in bl606a0_wifi_init)
bl_wifi_clock_enable proc
	lui	a5,0004200E
	addi	a5,a5,-00000144
	c.lw	a5,0(a4)
	c.bnez	a4,000000002303573E

l2303573A:
	c.li	a4,00000001
	c.sw	a5,0(a4)

l2303573E:
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_enable_irq: 23035742
;;   Called from:
;;     230229A2 (in bl_main_rtthread_start)
bl_wifi_enable_irq proc
	lui	a1,00023019
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-000000AC
	addi	a0,zero,+00000046
	c.swsp	ra,00000084
	jal	ra,0000000023033B28
	lui	a1,00023019
	addi	a1,a1,-0000005C
	addi	a0,zero,+0000004F
	jal	ra,0000000023033B28
	addi	a0,zero,+00000046
	jal	ra,0000000023033968
	addi	a0,zero,+0000004F
	jal	ra,0000000023033968
	lui	a0,00023084
	addi	a0,a0,+00000510
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_sta_mac_addr_set: 2303578A
;;   Called from:
;;     23037BCA (in hal_board_cfg)
;;     23038010 (in hal_board_cfg)
bl_wifi_sta_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,00042020
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,-0000039C
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_ap_mac_addr_set: 230357A6
;;   Called from:
;;     23037BC4 (in hal_board_cfg)
;;     230380DE (in hal_board_cfg)
bl_wifi_ap_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,00042020
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,-00000390
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_mac_addr_get: 230357C2
;;   Called from:
;;     23027A12 (in cmd_wifi_ap_start)
;;     23028238 (in wifi_mgmr_sta_enable)
;;     230284A0 (in wifi_mgmr_ap_enable)
;;     230292CE (in bl606a0_wifi_init)
bl_wifi_mac_addr_get proc
	lui	a1,00042020
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a1,a1,-0000039C
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_country_code_set: 230357DC
;;   Called from:
;;     23037C60 (in hal_board_cfg)
bl_wifi_country_code_set proc
	lui	a5,00042020
	sb	a0,a5,+00000C7C
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_ap_info_set: 230357E8
;;   Called from:
;;     23038928 (in hal_board_cfg)
bl_wifi_ap_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042020
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,-00000383
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,0000000023070EB8
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,-00000383
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000A4
	lui	a0,00042020
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,-00000362
	jal	ra,0000000023070C7C
	c.lwsp	s0,000000C4
	lui	a5,00042020
	addi	a5,a5,-0000039C
	sb	a4,a5,+0000007B
	c.li	a4,00000001
	sb	a4,a5,+0000007C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_wifi_sta_info_set: 23035852
;;   Called from:
;;     230389F2 (in hal_board_cfg)
bl_wifi_sta_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042020
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,-0000031F
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,0000000023070EB8
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,-0000031F
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000A4
	lui	a0,00042020
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,-000002FE
	jal	ra,0000000023070C7C
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,00042020
	sb	a4,a5,+00000D44
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_wifi_sta_info_get: 230358B2
;;   Called from:
;;     23000916 (in check_dts_config)
bl_wifi_sta_info_get proc
	lui	a5,00042020
	lbu	a4,a5,-000002BC
	c.li	a5,00000001
	bne	a4,a5,00000000230358DC

l230358C0:
	lui	a1,00042020
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000063
	addi	a1,a1,-0000031F
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230358DC:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; cmd_timer_start: 230358E0
cmd_timer_start proc
	jal	zero,000000002303476E

;; cmd_wdt_disable: 230358E4
cmd_wdt_disable proc
	jal	zero,000000002303942C

;; cmd_wdt_feed: 230358E8
cmd_wdt_feed proc
	jal	zero,0000000023039428

;; cmd_wdt_init: 230358EC
cmd_wdt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.mv	s0,a3
	lui	s3,0004200E
	lui	s2,00023084
	lui	s1,0002307F
	beq	a2,a5,0000000023035944

l2303590C:
	lw	a5,s3,-0000017C
	c.beqz	a5,000000002303593E

l23035912:
	jal	ra,000000002303030A

l23035916:
	c.lw	s0,0(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	addi	a3,s2,+00000524
	addi	a2,s1,+0000016C
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+0000002A
	addi	a0,a0,+00000534
	c.addi16sp	00000020
	jal	zero,000000002304B718

l2303593E:
	jal	ra,00000000230302E8
	c.j	0000000023035916

l23035944:
	c.lw	a3,4(a0)
	jal	ra,0000000023070AF0
	lw	a5,s3,-0000017C
	c.mv	s0,a0
	c.beqz	a5,0000000023035988

l23035952:
	jal	ra,000000002303030A

l23035956:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a5,s0
	addi	a4,zero,+0000002E
	addi	a3,s2,+00000524
	addi	a2,s1,+0000016C
	addi	a0,a0,+00000558
	jal	ra,000000002304B718
	bge	zero,s0,000000002303598E

l23035976:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023039430

l23035988:
	jal	ra,00000000230302E8
	c.j	0000000023035956

l2303598E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl_wdt_cli_init: 2303599C
;;   Called from:
;;     23000862 (in aos_loop_proc)
bl_wdt_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; fdt32_to_cpu: 230359A0
;;   Called from:
;;     230361FA (in vfs_uart_init)
;;     23036204 (in vfs_uart_init)
;;     23036250 (in vfs_uart_init)
;;     23036258 (in vfs_uart_init)
;;     2303654A (in vfs_uart_init)
fdt32_to_cpu proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	c.srli	a0,00000010
	c.slli	a4,10
	andi	a0,a0,+000000FF
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; dev_uart_init: 230359C2
;;   Called from:
;;     23036404 (in vfs_uart_init)
dev_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,00000002
	bltu	a5,a0,00000000230359DE

l230359DA:
	c.mv	s3,a1
	c.bnez	a1,0000000023035A2C

l230359DE:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035AC0

l230359EC:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035AC0

l230359F8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035A26

l23035A02:
	jal	ra,000000002303030A

l23035A06:
	addi	a4,zero,+00000065

l23035A0A:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a3,a3,+00000600
	addi	a2,a2,-00000434
	addi	a0,a0,+0000060C
	c.j	0000000023035ABC

l23035A26:
	jal	ra,00000000230302E8
	c.j	0000000023035A06

l23035A2C:
	c.mv	s1,a0
	c.mv	s5,a2
	c.mv	s4,a3
	c.beqz	a0,0000000023035ADC

l23035A34:
	c.li	a5,00000001
	bne	a0,a5,0000000023035A76

l23035A3A:
	lui	s0,0004200E
	lw	a5,s0,-0000013C
	addi	s0,s0,-0000013C

l23035A46:
	c.beqz	a5,0000000023035AF0

l23035A48:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035AC0

l23035A56:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035AC0

l23035A62:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035AEA

l23035A6C:
	jal	ra,000000002303030A

l23035A70:
	addi	a4,zero,+00000036
	c.j	0000000023035A0A

l23035A76:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035AC0

l23035A84:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035AC0

l23035A90:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035AD6

l23035A9A:
	jal	ra,000000002303030A

l23035A9E:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000074
	addi	a3,a3,+00000600
	addi	a2,a2,-00000434
	addi	a0,a0,+0000062C

l23035ABC:
	jal	ra,000000002304B718

l23035AC0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

l23035AD6:
	jal	ra,00000000230302E8
	c.j	0000000023035A9E

l23035ADC:
	lui	s0,0004200E
	lw	a5,s0,-00000140
	addi	s0,s0,-00000140
	c.j	0000000023035A46

l23035AEA:
	jal	ra,00000000230302E8
	c.j	0000000023035A70

l23035AF0:
	addi	a0,zero,+0000003C
	jal	ra,000000002303218A
	c.sw	s0,0(a0)
	c.bnez	a0,0000000023035B4A

l23035AFC:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035AC0

l23035B0A:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035AC0

l23035B16:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035B44

l23035B20:
	jal	ra,000000002303030A

l23035B24:
	addi	a4,zero,+0000003C

l23035B28:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a3,a3,+00000600
	addi	a2,a2,-00000434
	addi	a0,a0,+00000648
	c.j	0000000023035ABC

l23035B44:
	jal	ra,00000000230302E8
	c.j	0000000023035B24

l23035B4A:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lw	s0,0(a5)
	c.li	s2,00000002
	c.li	a0,00000004
	sb	s2,a5,+00000034
	c.lw	s0,0(a5)
	sw	zero,a5,+00000038
	lw	s6,s0,+00000000
	jal	ra,000000002303218A
	sw	a0,s6,+00000038
	c.lw	s0,0(a5)
	c.lw	a5,56(a0)
	c.bnez	a0,0000000023035BAA

l23035B76:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035AC0

l23035B84:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035AC0

l23035B90:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035BA4

l23035B9A:
	jal	ra,000000002303030A

l23035B9E:
	addi	a4,zero,+00000045
	c.j	0000000023035B28

l23035BA4:
	jal	ra,00000000230302E8
	c.j	0000000023035B9E

l23035BAA:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lw	s0,0(a5)
	sw	s5,a5,+00000018
	c.lw	s0,0(a5)
	sw	s4,a5,+0000001C
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023035C34

l23035BC2:
	lui	a5,00042020
	lbu	a4,a5,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035C0C

l23035BD0:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035C0C

l23035BDC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035C2E

l23035BE6:
	jal	ra,000000002303030A

l23035BEA:
	lui	a3,00023084
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023084
	addi	a4,zero,+00000050
	addi	a3,a3,+00000600
	addi	a2,a2,-00000434
	addi	a0,a0,+00000648
	jal	ra,000000002304B718

l23035C0C:
	c.lw	s0,0(a2)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	lui	a1,00023088
	addi	a1,a1,-000006C4
	c.addi16sp	00000020
	jal	zero,000000002304C7F6

l23035C2E:
	jal	ra,00000000230302E8
	c.j	0000000023035BEA

l23035C34:
	sb	s1,a5,+00000000
	c.lw	s0,0(a5)
	sb	s2,a5,+00000034
	c.lw	s0,0(a4)
	c.lui	a5,0001C000
	addi	a5,a5,+00000200
	c.sw	a4,4(a5)
	c.lw	s0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000008
	c.lw	s0,0(a5)
	sb	zero,a5,+00000009
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000A
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000B
	c.lw	s0,0(a5)
	sb	s2,a5,+0000000C
	c.j	0000000023035C0C

;; hal_uart_send_trigger: 23035C6A
;;   Called from:
;;     2304CB00 (in vfs_uart_write)
hal_uart_send_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,00000000230326CA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_send_trigger_off: 23035C7E
;;   Called from:
;;     2304CA10 (in __uart_tx_irq)
hal_uart_send_trigger_off proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,00000000230326DE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_init: 23035C92
;;   Called from:
;;     2304C978 (in vfs_uart_open)
hal_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,56(a0)
	c.li	s1,FFFFFFFF
	jal	ra,000000002304D35E
	c.bnez	a0,0000000023035CC6

l23035CA6:
	c.mv	s1,a0
	lbu	a0,s0,+00000000
	addi	a1,sp,+0000000F
	jal	ra,0000000023032716
	lbu	a5,sp,+0000000F
	c.bnez	a5,0000000023035CD2

l23035CBA:
	sb	zero,s0,+00000009

l23035CBE:
	lbu	a0,s0,+00000000
	jal	ra,0000000023032776

l23035CC6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23035CD2:
	c.li	a4,00000001
	bne	a5,a4,0000000023035CDE

l23035CD8:
	sb	a5,s0,+00000009
	c.j	0000000023035CBE

l23035CDE:
	c.li	a5,00000002
	c.j	0000000023035CD8

;; hal_uart_recv_II: 23035CE2
;;   Called from:
;;     2302C040 (in cli_getchar)
;;     2304C992 (in __uart_rx_irq)
hal_uart_recv_II proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.li	s0,00000000

l23035CEE:
	beq	s0,a2,0000000023035D0A

l23035CF2:
	lbu	a0,s1,+00000000
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023032636
	c.lwsp	tp,00000064
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	bge	a0,zero,0000000023035D18

l23035D0A:
	c.sw	a3,0(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23035D18:
	add	a5,a1,s0
	sb	a0,a5,+00000000
	c.addi	s0,00000001
	c.j	0000000023035CEE

;; hal_uart_send: 23035D24
;;   Called from:
;;     2304CA02 (in __uart_tx_irq)
hal_uart_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	add	s1,a1,a2

l23035D36:
	bne	s0,s1,0000000023035D48

l23035D3A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23035D48:
	lbu	a1,s0,+00000000
	lbu	a0,s2,+00000000
	c.addi	s0,00000001
	jal	ra,0000000023032600
	c.j	0000000023035D36

;; hal_uart_finalize: 23035D58
;;   Called from:
;;     2304CA4E (in vfs_uart_close)
hal_uart_finalize proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,56(s0)
	lbu	a0,a0,+00000000
	jal	ra,00000000230327D0
	c.mv	a0,s0
	jal	ra,000000002304D37E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_notify_register: 23035D78
;;   Called from:
;;     2304C95C (in vfs_uart_open)
;;     2304C96C (in vfs_uart_open)
hal_uart_notify_register proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a1
	c.swsp	ra,00000084
	c.mv	a1,a2
	c.bnez	a4,0000000023035D96

l23035D82:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,000000002303284A

l23035D8C:
	c.li	a5,00000000

l23035D8E:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23035D96:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a4,a3,0000000023035D8E

l23035D9E:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,000000002303282A
	c.j	0000000023035D8C

;; vfs_uart_init: 23035DAA
;;   Called from:
;;     230007C0 (in aos_loop_proc)
vfs_uart_init proc
	lui	a5,0004200E
	lb	a3,a5,-00000138
	c.addi16sp	FFFFFF40
	addi	a5,a5,-00000138
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	s9,000000C8
	c.swsp	s10,00000048
	c.swsp	s11,000000C4
	c.li	a4,00000001
	c.swsp	a5,0000001C
	beq	a3,a4,0000000023035F0E

l23035DDA:
	lui	a5,00023084
	addi	a5,a5,+00000688
	c.swsp	a1,0000009C
	c.swsp	a5,00000024
	lui	a1,00023084
	lui	a5,00023084
	addi	a5,a5,+00000698
	c.mv	s4,a0
	addi	a2,zero,+00000030
	addi	a1,a1,+000005D0
	c.addi4spn	a0,00000050
	c.swsp	a5,000000A4
	c.swsp	zero,000000A0
	jal	ra,0000000023070C7C
	c.addi4spn	a5,00000048
	c.swsp	a5,00000094
	c.li	s2,00000000
	lui	s0,00023084
	lui	s3,0002307F

l23035E14:
	c.lwsp	a2,000001F4
	c.lwsp	t3,00000174
	c.mv	a0,s4
	lw	s6,a5,+00000000
	lui	s1,00042020
	c.mv	a2,s6
	jal	ra,00000000230295BC
	c.mv	s5,a0
	blt	zero,a0,0000000023035E78

l23035E2E:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l23035E38:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23035E44:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035E72

l23035E4E:
	jal	ra,000000002303030A

l23035E52:
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000012C

l23035E5A:
	c.mv	a1,a0
	lui	a0,00023084
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+000006A8
	c.j	0000000023035ECE

l23035E6E:
	c.li	s2,00000001
	c.j	0000000023035E14

l23035E72:
	jal	ra,00000000230302E8
	c.j	0000000023035E52

l23035E78:
	lui	s7,00023084
	c.mv	a1,a0
	addi	a2,s7,+000006D0
	c.mv	a0,s4
	jal	ra,0000000023029728
	c.li	a5,00000001
	c.mv	s6,a0
	beq	a0,a5,0000000023035EDA

l23035E90:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l23035E9A:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23035EA6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035ED4

l23035EB0:
	jal	ra,000000002303030A

l23035EB4:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000132
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+000006D8

l23035ECE:
	jal	ra,000000002304B718
	c.j	0000000023035EFE

l23035ED4:
	jal	ra,00000000230302E8
	c.j	0000000023035EB4

l23035EDA:
	c.addi4spn	a4,00000044
	addi	a2,s7,+000006D0
	c.li	a3,00000000
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023029772
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s7,a0
	beq	a4,a5,0000000023035F2E

l23035EF4:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bgeu	a5,a4,0000000023035F96

l23035EFE:
	c.lwsp	a2,000001F4
	c.addi	a5,00000004
	c.swsp	a5,00000094
	beq	s2,zero,0000000023035E6E

l23035F08:
	c.lwsp	s8,000001F4
	sb	s2,a5,+00000000

l23035F0E:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.lwsp	t5,000000E8
	c.lwsp	s10,0000000C
	c.lwsp	s6,0000002C
	c.lwsp	s2,0000004C
	c.lwsp	a4,0000006C
	c.li	a0,00000000
	c.addi16sp	000000C0
	c.jr	ra

l23035F2E:
	lui	a5,00023084
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,+00000714
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023035EF4

l23035F40:
	lui	s8,00023084
	addi	a2,s8,+00000748
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023029728
	c.mv	s7,a0
	beq	a0,s6,0000000023035FD8

l23035F56:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l23035F60:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23035F6C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035FD2

l23035F76:
	jal	ra,000000002303030A

l23035F7A:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+0000013E
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+00000750
	c.j	0000000023035ECE

l23035F96:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23035FA2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023035FCC

l23035FAC:
	jal	ra,000000002303030A

l23035FB0:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+00000137
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+0000071C
	c.j	0000000023035ECE

l23035FCC:
	jal	ra,00000000230302E8
	c.j	0000000023035FB0

l23035FD2:
	jal	ra,00000000230302E8
	c.j	0000000023035F7A

l23035FD8:
	c.addi4spn	a4,00000044
	c.li	a3,00000000
	addi	a2,s8,+00000748
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023029772
	c.lwsp	t0,000000C4
	c.swsp	a0,00000098
	addi	a5,zero,+00000020
	bgeu	a5,a4,0000000023036036

l23035FF4:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023036036

l23035FFE:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023036036

l2303600A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303608C

l23036014:
	jal	ra,000000002303030A

l23036018:
	c.lwsp	t0,00000008
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a5,s2
	addi	a4,zero,+00000144
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+0000078C
	jal	ra,000000002304B718

l23036036:
	lui	a2,00023084
	c.addi4spn	a3,00000044
	addi	a2,a2,+000007BC
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023029700
	c.bnez	a0,0000000023036098

l2303604A:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l23036054:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23036060:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023036092

l2303606A:
	jal	ra,000000002303030A

l2303606E:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a5,s2
	addi	a4,zero,+0000014B
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+000007C8

l23036086:
	jal	ra,000000002304B718
	c.j	0000000023035EFE

l2303608C:
	jal	ra,00000000230302E8
	c.j	0000000023036018

l23036092:
	jal	ra,00000000230302E8
	c.j	000000002303606E

l23036098:
	lui	a2,00023084
	lw	s7,a0,+00000000
	c.addi4spn	a3,00000044
	addi	a2,a2,+000007F8
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023029700
	c.bnez	a0,00000000230360F4

l230360B0:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l230360BA:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l230360C6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230360EE

l230360D0:
	jal	ra,000000002303030A

l230360D4:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a5,s2
	addi	a4,zero,+00000153
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+000007FC
	c.j	0000000023036086

l230360EE:
	jal	ra,00000000230302E8
	c.j	00000000230360D4

l230360F4:
	lui	a2,00023085
	lw	s6,a0,+00000000
	addi	a2,a2,-000007DC
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230295BC
	c.mv	s9,a0
	blt	zero,a0,000000002303615E

l2303610E:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,000000002303614E

l23036118:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,000000002303614E

l23036124:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023036158

l2303612E:
	jal	ra,000000002303030A

l23036132:
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a5,s2
	addi	a4,zero,+0000015B
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-000007D0
	jal	ra,000000002304B718

l2303614E:
	addi	s9,zero,+00000200
	addi	s8,zero,+00000200
	c.j	000000002303620A

l23036158:
	jal	ra,00000000230302E8
	c.j	0000000023036132

l2303615E:
	lui	s8,00023085
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,s8,-00000790
	c.mv	a0,s4
	jal	ra,0000000023029700
	c.bnez	a0,00000000230361A8

l23036172:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l2303617C:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23036188:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230361A2

l23036192:
	jal	ra,000000002303030A

l23036196:
	addi	a6,s8,-00000790
	c.mv	a5,s2
	addi	a4,zero,+00000161
	c.j	0000000023035E5A

l230361A2:
	jal	ra,00000000230302E8
	c.j	0000000023036196

l230361A8:
	lui	s8,00023085
	lw	s10,a0,+00000000
	c.mv	a1,s9
	c.addi4spn	a3,00000044
	addi	a2,s8,-00000788
	c.mv	a0,s4
	jal	ra,0000000023029700
	c.mv	s9,a0
	c.bnez	a0,00000000230361F8

l230361C2:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023035EFE

l230361CC:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l230361D8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230361F2

l230361E2:
	jal	ra,000000002303030A

l230361E6:
	addi	a6,s8,-00000788
	c.mv	a5,s2
	addi	a4,zero,+00000167
	c.j	0000000023035E5A

l230361F2:
	jal	ra,00000000230302E8
	c.j	00000000230361E6

l230361F8:
	c.mv	a0,s10
	jal	ra,00000000230359A0
	c.mv	s8,a0
	lw	a0,s9,+00000000
	jal	ra,00000000230359A0
	c.mv	s9,a0

l2303620A:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,000000002303624E

l23036214:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,000000002303624E

l23036220:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230362C0

l2303622A:
	jal	ra,000000002303030A

l2303622E:
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a7,s9
	c.mv	a6,s8
	c.mv	a5,s2
	addi	a4,zero,+0000016C
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000780
	jal	ra,000000002304B718

l2303624E:
	c.mv	a0,s7
	jal	ra,00000000230359A0
	c.swsp	a0,00000090
	c.mv	a0,s6
	jal	ra,00000000230359A0
	c.swsp	a0,00000014
	addi	s7,sp,+00000050
	lui	s11,00042020
	lui	s10,0004200E

l2303626A:
	lui	a5,00023085
	addi	a2,a5,-00000740
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230295BC
	blt	zero,a0,00000000230362CC

l2303627E:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230362B6

l23036288:
	lbu	a4,s11,-000002BA
	bltu	a5,a4,00000000230362B6

l23036290:
	lw	a5,s10,-0000017C
	c.beqz	a5,00000000230362C6

l23036296:
	jal	ra,000000002303030A

l2303629A:
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a5,s2
	addi	a4,zero,+00000171
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000738
	jal	ra,000000002304B718

l230362B6:
	c.addi	s7,0000000C
	c.addi4spn	a5,00000080
	bne	a5,s7,000000002303626A

l230362BE:
	c.j	0000000023036482

l230362C0:
	jal	ra,00000000230302E8
	c.j	000000002303622E

l230362C6:
	jal	ra,00000000230302E8
	c.j	000000002303629A

l230362CC:
	lw	s6,s7,+00000000
	c.mv	a1,a0
	c.swsp	a0,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,0000000023029728
	c.li	a4,00000001
	c.lwsp	a6,000001F4
	beq	a0,a4,000000002303632A

l230362E4:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230362B6

l230362EE:
	lbu	a4,s11,-000002BA
	bltu	a5,a4,00000000230362B6

l230362F6:
	lw	a5,s10,-0000017C
	c.swsp	a0,00000018
	c.beqz	a5,0000000023036324

l230362FE:
	jal	ra,000000002303030A

l23036302:
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000176
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-0000070C
	jal	ra,000000002304B718
	c.j	00000000230362B6

l23036324:
	jal	ra,00000000230302E8
	c.j	0000000023036302

l2303632A:
	c.addi4spn	a4,00000044
	c.mv	a1,a5
	c.li	a3,00000000
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,0000000023029772
	c.lwsp	t0,000000C4
	c.swsp	a0,00000018
	c.li	a5,00000004
	beq	a4,a5,0000000023036386

l23036342:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230362B6

l2303634C:
	lbu	a4,s11,-000002BA
	bltu	a5,a4,00000000230362B6

l23036354:
	lw	a5,s10,-0000017C
	beq	a5,zero,0000000023036452

l2303635C:
	jal	ra,000000002303030A

l23036360:
	c.lwsp	t0,000000E4
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,00023085
	c.swsp	a5,00000000
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000017B
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-000006D8
	jal	ra,000000002304B718
	c.j	00000000230362B6

l23036386:
	c.lwsp	a6,00000174
	lui	a5,00023084
	c.li	a2,00000004
	addi	a0,a5,+00000714
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023036342

l23036398:
	lui	a5,00023085
	c.mv	a1,s5
	addi	a2,a5,-0000069C
	c.mv	a0,s4
	jal	ra,00000000230295BC
	c.mv	a1,a0
	blt	zero,a0,00000000230364F4

l230363AE:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230363C4

l230363B8:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bgeu	a5,a4,0000000023036458

l230363C4:
	lbu	s5,sp,+00000028
	c.mv	a0,s5
	jal	ra,00000000230326F2
	c.lwsp	tp,000001F4
	lbu	a4,sp,+0000007C
	lbu	a3,sp,+00000070
	lbu	a2,sp,+00000064
	lbu	a1,sp,+00000058
	c.mv	a0,s5
	jal	ra,0000000023032510
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230363FC

l230363F0:
	lui	s7,00042020
	lbu	a4,s7,-000002BA
	bgeu	a5,a4,000000002303655A

l230363FC:
	c.lwsp	s4,00000174
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s5
	jal	ra,00000000230359C2
	beq	a0,zero,0000000023035EFE

l2303640C:
	lbu	a4,s1,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023035EFE

l23036416:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,0000000023035EFE

l23036422:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230365D2

l2303642E:
	jal	ra,000000002303030A

l23036432:
	c.mv	a1,a0
	lui	a2,00023073
	lui	a0,00023085
	addi	a4,zero,+0000019E
	addi	a3,s0,+00000600
	addi	a2,a2,-00000434
	addi	a0,a0,-000005B8
	jal	ra,000000002304B718
	c.j	0000000023035EFE

l23036452:
	jal	ra,00000000230302E8
	c.j	0000000023036360

l23036458:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230364EE

l23036462:
	jal	ra,000000002303030A

l23036466:
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a5,s2
	addi	a4,zero,+00000182
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000698
	jal	ra,000000002304B718

l23036482:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230363C4

l2303648C:
	lui	a4,00042020
	lbu	a4,a4,-000002BA
	bltu	a5,a4,00000000230363C4

l23036498:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023036554

l230364A2:
	jal	ra,000000002303030A

l230364A6:
	c.lwsp	tp,000001F4
	lbu	a7,sp,+00000058
	c.lwsp	s5,00000008
	c.swsp	a5,0000000C
	lbu	a5,sp,+0000007C
	c.mv	a1,a0
	lui	a0,00023085
	c.swsp	a5,00000088
	c.lwsp	s9,000001F4
	addi	a4,zero,+00000192
	addi	a3,s0,+00000600
	c.swsp	a5,00000008
	lbu	a5,sp,+00000070
	addi	a2,s3,+0000016C
	addi	a0,a0,-00000670
	c.swsp	a5,00000084
	c.lwsp	a3,000001F4
	c.swsp	a5,00000004
	lbu	a5,sp,+00000064
	c.swsp	a5,00000080
	c.lwsp	ra,000001F4
	c.swsp	a5,00000000
	lbu	a5,sp,+00000028
	jal	ra,000000002304B718
	c.j	00000000230363C4

l230364EE:
	jal	ra,00000000230302E8
	c.j	0000000023036466

l230364F4:
	lw	a5,s7,+00000004
	c.addi4spn	a3,00000044
	c.mv	a0,s4
	c.mv	a2,a5
	c.mv	s6,a5
	jal	ra,0000000023029700
	c.bnez	a0,0000000023036548

l23036506:
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230362B6

l23036510:
	lbu	a4,s11,-000002BA
	bltu	a5,a4,00000000230362B6

l23036518:
	lw	a5,s10,-0000017C
	c.beqz	a5,0000000023036542

l2303651E:
	jal	ra,000000002303030A

l23036522:
	c.mv	a1,a0
	lui	a0,00023084
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000187
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,+000006A8
	jal	ra,000000002304B718
	c.j	00000000230362B6

l23036542:
	jal	ra,00000000230302E8
	c.j	0000000023036522

l23036548:
	c.lw	a0,0(a0)
	jal	ra,00000000230359A0
	sb	a0,s7,+00000008
	c.j	00000000230362B6

l23036554:
	jal	ra,00000000230302E8
	c.j	00000000230364A6

l2303655A:
	lui	s10,0004200E
	lw	a5,s10,-0000017C
	c.beqz	a5,00000000230365C6

l23036564:
	jal	ra,000000002303030A

l23036568:
	c.lwsp	s0,000001F4
	c.mv	a1,a0
	lui	a0,00023085
	andi	s6,a5,+000000FF
	c.mv	a5,s6
	addi	a4,zero,+0000019A
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-0000061C
	jal	ra,000000002304B718
	lbu	a4,s1,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230363FC

l23036594:
	lbu	a4,s7,-000002BA
	bltu	a5,a4,00000000230363FC

l2303659C:
	lw	a5,s10,-0000017C
	c.beqz	a5,00000000230365CC

l230365A2:
	jal	ra,000000002303030A

l230365A6:
	c.lwsp	tp,00000118
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a5,s6
	addi	a4,zero,+0000019B
	addi	a3,s0,+00000600
	addi	a2,s3,+0000016C
	addi	a0,a0,-000005F0
	jal	ra,000000002304B718
	c.j	00000000230363FC

l230365C6:
	jal	ra,00000000230302E8
	c.j	0000000023036568

l230365CC:
	jal	ra,00000000230302E8
	c.j	00000000230365A6

l230365D2:
	jal	ra,00000000230302E8
	c.j	0000000023036432

;; hal_uart_send_flush: 230365D8
;;   Called from:
;;     2304CBC0 (in vfs_uart_sync)
hal_uart_send_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,00000000230326F2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_setbaud: 230365EC
hal_uart_setbaud proc
	lbu	a0,a0,+00000000
	jal	zero,0000000023032770

;; hal_uart_setconfig: 230365F4
;;   Called from:
;;     2304CC70 (in uart_ioctl_cmd_setconfig)
hal_uart_setconfig proc
	lbu	a0,a0,+00000000
	jal	zero,000000002303271E

;; hal_gpio_init_from_dts: 230365FC
;;   Called from:
;;     230007EC (in aos_loop_proc)
hal_gpio_init_from_dts proc
	c.addi16sp	FFFFFF80
	lui	a2,00023085
	c.addi4spn	a3,00000034
	addi	a2,a2,-00000590
	c.swsp	s1,000000B8
	c.swsp	s5,000000B0
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s5,a0
	c.swsp	a1,0000000C
	c.swsp	zero,00000098
	jal	ra,0000000023029700
	c.li	s1,FFFFFFFF
	c.beqz	a0,0000000023036652

l23036630:
	c.lw	a0,0(a5)
	srli	a4,a5,00000018
	slli	s1,a5,00000018
	c.or	s1,a4
	srli	a4,a5,00000008
	andi	a4,a4,+000000FF
	c.srli	a5,00000010
	c.slli	a4,10
	andi	a5,a5,+000000FF
	c.or	s1,a4
	c.slli	a5,08
	c.or	s1,a5

l23036652:
	lui	s0,00042020
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,000000002303669E

l23036660:
	lui	a4,00042020
	lbu	a4,a4,-000002B9
	bltu	a5,a4,000000002303669E

l2303666C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023036748

l23036676:
	jal	ra,000000002303030A

l2303667A:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a5,s1
	addi	a4,zero,+000000B5
	addi	a3,a3,-00000588
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000057C
	jal	ra,000000002304B718

l2303669E:
	c.li	s7,00000000
	lui	s10,00023085
	lui	s11,00023085
	lui	s2,00042020
	lui	s3,0004200E
	lui	s4,00023085

l230366B4:
	bge	s7,s1,0000000023036728

l230366B8:
	lui	a5,00023085
	addi	a2,a5,-0000054C
	c.mv	a3,s7
	c.li	a1,0000000B
	c.addi4spn	a0,00000028
	jal	ra,000000002305216A
	c.lwsp	s8,00000064
	c.addi4spn	a2,00000028
	c.mv	a0,s5
	sb	zero,sp,+00000033
	c.swsp	zero,00000090
	jal	ra,00000000230295BC
	c.mv	s6,a0
	bge	a0,zero,0000000023036754

l230366E0:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023036728

l230366EA:
	lui	a4,00042020
	lbu	a4,a4,-000002B9
	bltu	a5,a4,0000000023036728

l230366F6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303674E

l23036700:
	jal	ra,000000002303030A

l23036704:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000061
	addi	a3,a3,-00000588
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000544
	jal	ra,000000002304B718

l23036728:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23036748:
	jal	ra,00000000230302E8
	c.j	000000002303667A

l2303674E:
	jal	ra,00000000230302E8
	c.j	0000000023036704

l23036754:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,0000000023070EB8
	lui	a5,00023084
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a5,+000006D0
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000038
	jal	ra,0000000023029772
	c.lwsp	tp,0000013C
	c.li	a4,00000004
	c.mv	s8,a0
	beq	s9,a4,00000000230367F0

l23036780:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bgeu	a5,a4,000000002303684E

l2303678A:
	lbu	a5,sp,+00000038
	c.li	a4,00000001
	bne	a5,a4,0000000023036AB8

l23036794:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230367E4

l2303679E:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,00000000230367E4

l230367A6:
	lw	a5,s3,-0000017C
	beq	a5,zero,0000000023036AB2

l230367AE:
	jal	ra,000000002303030A

l230367B2:
	c.lwsp	t3,000001F4
	lbu	a7,sp,+0000003A
	lbu	a6,sp,+00000039
	c.swsp	a5,00000080
	lbu	a5,sp,+0000003B
	lui	a2,0002307F
	c.mv	a1,a0
	c.swsp	a5,00000000
	c.lwsp	s4,000001F4
	lui	a0,00023085
	addi	a4,zero,+000000A6
	addi	a3,s4,-00000588
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000444
	jal	ra,000000002304B718

l230367E4:
	c.lwsp	t3,00000174
	c.lwsp	s4,00000154
	jal	ra,0000000023039FD8

l230367EC:
	c.addi	s7,00000001
	c.j	00000000230366B4

l230367F0:
	lui	a5,00023084
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,+00000714
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023036780

l23036802:
	c.addi4spn	a3,00000024
	addi	a2,s10,-0000069C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,0000000023029700
	c.bnez	a0,0000000023036890

l23036812:
	lbu	a4,s0,-000003A4
	bltu	s9,a4,000000002303678A

l2303681A:
	lbu	a4,s2,-000002B9
	bltu	s9,a4,000000002303678A

l23036822:
	lw	a5,s3,-0000017C
	c.beqz	a5,000000002303688A

l23036828:
	jal	ra,000000002303030A

l2303682C:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000070
	addi	a3,s4,-00000588
	addi	a2,a2,-00000434
	addi	a0,a0,-000004F8

l23036848:
	jal	ra,000000002304B718
	c.j	000000002303678A

l2303684E:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,000000002303678A

l23036856:
	lw	a5,s3,-0000017C
	c.beqz	a5,0000000023036884

l2303685C:
	jal	ra,000000002303030A

l23036860:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000006A
	addi	a3,s4,-00000588
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000520

l2303687E:
	jal	ra,000000002304B718
	c.j	000000002303678A

l23036884:
	jal	ra,00000000230302E8
	c.j	0000000023036860

l2303688A:
	jal	ra,00000000230302E8
	c.j	000000002303682C

l23036890:
	c.lw	a0,0(a5)
	addi	a2,s11,-00000740
	c.mv	a1,s6
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.li	a3,00000000
	c.addi4spn	a4,00000024
	c.mv	a0,s5
	c.swsp	a5,00000098
	jal	ra,0000000023029772
	c.lwsp	tp,000001D4
	c.li	a5,00000003
	c.mv	s8,a0
	bne	a4,a5,00000000230369A6

l230368CE:
	c.mv	a1,a0
	lui	a0,00023086
	c.li	a2,00000003
	addi	a0,a0,+00000114
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230369A6

l230368E0:
	lui	a2,00023085
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,-000004CC
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000039
	jal	ra,0000000023029772
	c.lwsp	tp,000001F4
	c.li	a4,00000002
	c.mv	s8,a0
	bne	a5,a4,0000000023036A06

l23036902:
	c.mv	a1,a0
	lui	a0,00023085
	c.li	a2,00000002
	addi	a0,a0,-00000490
	c.swsp	a5,0000008C
	jal	ra,0000000023070BF4
	c.lwsp	t3,000000E4
	c.bnez	a0,00000000230369E8

l23036918:
	c.li	a5,00000001
	sb	a5,sp,+0000003A

l2303691E:
	lui	a2,0002307E
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,-0000002C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,0000000023029772
	c.lwsp	tp,000001D4
	c.li	a5,00000005
	c.mv	s8,a0
	bne	a4,a5,0000000023036A32

l2303693C:
	c.mv	a1,a0
	lui	a0,00023085
	c.li	a2,00000005
	addi	a0,a0,-00000488
	jal	ra,0000000023070BF4
	bne	a0,zero,0000000023036A32

l23036950:
	sb	zero,sp,+0000003B

l23036954:
	lui	a2,00023081
	c.addi4spn	a3,00000024
	addi	a2,a2,+000007E8
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,0000000023029700
	bne	a0,zero,0000000023036A86

l2303696A:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303678A

l23036974:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,000000002303678A

l2303697C:
	lw	a5,s3,-0000017C
	beq	a5,zero,0000000023036A80

l23036984:
	jal	ra,000000002303030A

l23036988:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000093
	addi	a3,s4,-00000588
	addi	a2,a2,-00000434
	addi	a0,a0,-00000474
	c.j	0000000023036848

l230369A6:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303678A

l230369B0:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,000000002303678A

l230369B8:
	lw	a5,s3,-0000017C
	c.beqz	a5,00000000230369E2

l230369BE:
	jal	ra,000000002303030A

l230369C2:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000079

l230369CA:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	addi	a3,s4,-00000588
	addi	a2,a2,-00000434
	addi	a0,a0,-000004C4
	c.j	000000002303687E

l230369E2:
	jal	ra,00000000230302E8
	c.j	00000000230369C2

l230369E8:
	c.lwsp	tp,000001D4
	bne	a4,a5,0000000023036A06

l230369EE:
	lui	a0,00023085
	c.li	a2,00000002
	c.mv	a1,s8
	addi	a0,a0,-0000048C
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023036A06

l23036A00:
	sb	zero,sp,+0000003A
	c.j	000000002303691E

l23036A06:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303678A

l23036A10:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,000000002303678A

l23036A18:
	lw	a5,s3,-0000017C
	c.beqz	a5,0000000023036A2C

l23036A1E:
	jal	ra,000000002303030A

l23036A22:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000083
	c.j	00000000230369CA

l23036A2C:
	jal	ra,00000000230302E8
	c.j	0000000023036A22

l23036A32:
	c.lwsp	tp,000001D4
	c.li	a5,00000009
	bne	a4,a5,0000000023036A54

l23036A3A:
	lui	a0,00023085
	c.li	a2,00000009
	c.mv	a1,s8
	addi	a0,a0,-00000480
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023036A54

l23036A4C:
	c.li	a5,00000001
	sb	a5,sp,+0000003B
	c.j	0000000023036954

l23036A54:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303678A

l23036A5E:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,000000002303678A

l23036A66:
	lw	a5,s3,-0000017C
	c.beqz	a5,0000000023036A7A

l23036A6C:
	jal	ra,000000002303030A

l23036A70:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000008D
	c.j	00000000230369CA

l23036A7A:
	jal	ra,00000000230302E8
	c.j	0000000023036A70

l23036A80:
	jal	ra,00000000230302E8
	c.j	0000000023036988

l23036A86:
	c.lw	a0,0(a5)
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.swsp	a5,0000009C
	c.li	a5,00000001
	sb	a5,sp,+00000038
	c.j	000000002303678A

l23036AB2:
	jal	ra,00000000230302E8
	c.j	00000000230367B2

l23036AB8:
	bne	a5,zero,00000000230367EC

l23036ABC:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230367EC

l23036AC6:
	lbu	a4,s2,-000002B9
	bltu	a5,a4,00000000230367EC

l23036ACE:
	lw	a5,s3,-0000017C
	c.beqz	a5,0000000023036AFA

l23036AD4:
	jal	ra,000000002303030A

l23036AD8:
	c.mv	a1,a0
	lui	a2,00023073
	lui	a0,00023085
	c.addi4spn	a5,00000028
	addi	a4,zero,+000000C3
	addi	a3,s4,-00000588
	addi	a2,a2,-00000434
	addi	a0,a0,-00000474
	jal	ra,000000002304B718
	c.j	00000000230367EC

l23036AFA:
	jal	ra,00000000230302E8
	c.j	0000000023036AD8

;; _dump_partition: 23036B00
;;   Called from:
;;     23036FF0 (in hal_boot2_dump)
;;     23037068 (in hal_boot2_init)
_dump_partition proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	c.swsp	s0,00000014
	lui	a0,00023085
	addi	s0,s1,-00000638
	addi	a1,s0,+00000004
	addi	a0,a0,-000003DC
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	jal	ra,000000002304B718
	c.lw	s0,4(a1)
	lui	a0,00023085
	addi	a0,a0,-000003B8
	jal	ra,000000002304B718
	lhu	a1,s0,+00000008
	lui	a0,00023085
	addi	a0,a0,-000003A4
	jal	ra,000000002304B718
	lhu	a1,s0,+0000000A
	lui	a0,00023085
	addi	a0,a0,-00000390
	jal	ra,000000002304B718
	c.lw	s0,12(a1)
	lui	a0,00023085
	addi	a0,a0,-00000380
	jal	ra,000000002304B718
	c.lw	s0,16(a1)
	lui	a0,00023085
	addi	a0,a0,-00000374
	jal	ra,000000002304B718
	lui	a0,00023085
	addi	a0,a0,-00000364
	addi	s3,s1,-00000638
	jal	ra,000000002304B718
	c.li	s2,00000000
	addi	s1,s1,-00000638
	lui	s5,00023085
	lui	s6,00023085
	lui	s7,00023085
	lui	s8,00023085
	lui	s9,00023085
	lui	s4,00023085
	lui	s10,00023085

l23036BAE:
	lhu	a5,s1,+0000000A
	addi	s0,s3,+00000024
	blt	s2,a5,0000000023036BD6

l23036BBA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.addi16sp	00000030
	c.jr	ra

l23036BD6:
	c.mv	a1,s2
	addi	a0,s5,-00000304
	jal	ra,000000002304B718
	lbu	a1,s0,-00000010
	addi	a0,s6,-000002FC
	c.addi	s2,00000001
	jal	ra,000000002304B718
	lbu	a1,s0,-0000000F
	addi	a0,s7,-000002F0
	jal	ra,000000002304B718
	lbu	a1,s0,-0000000E
	addi	a0,s8,-000002F4
	jal	ra,000000002304B718
	addi	a1,s3,+00000017
	addi	a0,s9,-000002E8
	jal	ra,000000002304B718
	lw	a1,s0,-00000004
	addi	a0,s4,-000002DC
	jal	ra,000000002304B718
	lw	a1,s3,+00000024
	addi	a0,s4,-000002DC
	c.mv	s3,s0
	jal	ra,000000002304B718
	c.lw	s0,4(a1)
	addi	a0,s4,-000002DC
	jal	ra,000000002304B718
	c.lw	s0,8(a1)
	addi	a0,s4,-000002DC
	jal	ra,000000002304B718
	c.lw	s0,16(a1)
	addi	a0,s10,-000002D4
	jal	ra,000000002304B718
	c.j	0000000023036BAE

;; hal_boot2_update_ptable: 23036C4C
;;   Called from:
;;     2302B24C (in ota_tcp_cmd.part.0)
hal_boot2_update_ptable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a5,a0,+00000002
	lui	a2,0004200E
	addi	a2,a2,-00000638
	sltiu	a5,a5,+00000001
	sb	a5,a0,+00000002
	c.lw	a0,32(a5)
	lbu	a1,a2,+00000000
	c.mv	a3,a0
	c.addi	a5,00000001
	c.sw	a0,32(a5)
	c.addi	a2,00000004
	sltiu	a1,a1,+00000001
	c.li	a0,00000000
	jal	ra,0000000023038F98
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_get_flash_addr: 23036C82
;;   Called from:
;;     23000042 (in bl602_start)
hal_boot2_get_flash_addr proc
	lui	a5,0004200E
	lhu	a5,a5,-0000062E
	addi	a0,zero,+00000024
	add	a5,a5,a0
	lui	a0,0004204A
	addi	a0,a0,-000003E8
	c.add	a0,a5
	c.jr	ra

;; hal_boot2_partition_bus_addr: 23036C9E
;;   Called from:
;;     23036E28 (in hal_boot2_partition_bus_addr_active)
;;     23036E64 (in hal_boot2_partition_bus_addr_inactive)
hal_boot2_partition_bus_addr proc
	lui	a6,0004200E
	addi	a7,a6,-00000638
	lw	t1,a7,+00000004
	lui	a7,00054504
	addi	a7,a7,+00000642
	bne	t1,a7,0000000023036E0E

l23036CB6:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	addi	s1,a6,-00000638
	c.mv	s9,a5
	c.mv	s7,a4
	c.mv	s8,a3
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s5,a0
	addi	s6,a6,-00000638
	addi	s4,a6,-00000638
	c.li	s0,00000000

l23036CE8:
	lhu	a5,s1,+0000000A
	bge	s0,a5,0000000023036D00

l23036CF0:
	addi	a0,s4,+00000017
	c.mv	a1,s5
	jal	ra,0000000023071100
	addi	s4,s4,+00000024
	c.bnez	a0,0000000023036D24

l23036D00:
	lhu	a5,s1,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,0000000023036D28

l23036D0A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23036D24:
	c.addi	s0,00000001
	c.j	0000000023036CE8

l23036D28:
	addi	a5,zero,+00000024
	add	a2,s0,a5
	c.addi	s0,00000001
	add	s0,s0,a5
	c.add	a2,s1
	lbu	a4,a2,+00000016
	lw	s5,a2,+00000020
	lw	s4,a2,+00000024
	sw	a4,s9,+00000000
	c.lw	a2,40(a4)
	sw	a4,s8,+00000000
	c.add	s0,s1
	c.lw	s0,8(a5)
	c.li	s0,00000000
	sw	a5,s7,+00000000
	lui	s7,00023081

l23036D5C:
	lhu	a5,s1,+0000000A
	bge	s0,a5,0000000023036D76

l23036D64:
	addi	a0,s6,+00000017
	addi	a1,s7,-000002E8
	jal	ra,0000000023071100
	addi	s6,s6,+00000024
	c.bnez	a0,0000000023036E0A

l23036D76:
	lhu	a5,s1,+0000000A
	addi	a0,zero,-0000008C
	beq	s0,a5,0000000023036D0A

l23036D82:
	beq	s5,zero,0000000023036D9E

l23036D86:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s5,a4,0000000023036D0A

l23036D98:
	c.lw	a5,36(a5)
	bltu	s5,a5,0000000023036D0A

l23036D9E:
	beq	s4,zero,0000000023036DBA

l23036DA2:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s4,a4,0000000023036D0A

l23036DB4:
	c.lw	a5,36(a5)
	bltu	s4,a5,0000000023036D0A

l23036DBA:
	addi	a4,zero,+00000024
	add	a4,s0,a4
	c.li	a3,00000001
	c.li	a0,FFFFFFF2
	c.add	a4,s1
	lbu	a5,a4,+00000016
	bltu	a3,a5,0000000023036D0A

l23036DD0:
	c.li	a2,00000009
	add	s0,s0,a2
	lui	a3,00022FFF
	c.add	s5,a3
	c.add	s4,a3
	c.li	a0,00000000
	c.add	a5,s0
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,16(a5)
	sub	s5,s5,a5
	sw	s5,s3,+00000000
	lbu	a5,a4,+00000016
	c.add	s0,a5
	c.addi	s0,00000004
	c.slli	s0,02
	c.add	s0,s1
	c.lw	s0,16(a5)
	sub	s4,s4,a5
	sw	s4,s2,+00000000
	c.j	0000000023036D0A

l23036E0A:
	c.addi	s0,00000001
	c.j	0000000023036D5C

l23036E0E:
	c.li	a0,FFFFFFFB
	c.jr	ra

;; hal_boot2_partition_bus_addr_active: 23036E12
;;   Called from:
;;     2303720C (in hal_board_cfg)
;;     23055066 (in bl_mtd_open)
hal_boot2_partition_bus_addr_active proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,0000000023036C9E
	c.bnez	a0,0000000023036E3C

l23036E2E:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023036E46

l23036E32:
	c.lwsp	a6,000000C4

l23036E34:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023036E4A

l23036E38:
	c.lwsp	s8,000000E4

l23036E3A:
	c.sw	s0,0(a5)

l23036E3C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23036E46:
	c.lwsp	a2,000000C4
	c.j	0000000023036E34

l23036E4A:
	c.lwsp	s4,000000E4
	c.j	0000000023036E3A

;; hal_boot2_partition_bus_addr_inactive: 23036E4E
;;   Called from:
;;     23054FFC (in bl_mtd_open)
hal_boot2_partition_bus_addr_inactive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,0000000023036C9E
	c.bnez	a0,0000000023036E78

l23036E6A:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023036E82

l23036E6E:
	c.lwsp	a2,000000C4

l23036E70:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023036E86

l23036E74:
	c.lwsp	s4,000000E4

l23036E76:
	c.sw	s0,0(a5)

l23036E78:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23036E82:
	c.lwsp	a6,000000C4
	c.j	0000000023036E70

l23036E86:
	c.lwsp	s8,000000E4
	c.j	0000000023036E76

;; hal_boot2_partition_addr: 23036E8A
;;   Called from:
;;     23036F5C (in hal_boot2_partition_addr_active)
;;     23036F98 (in hal_boot2_partition_addr_inactive)
hal_boot2_partition_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	addi	a6,s1,-00000638
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lw	a7,a6,+00000004
	lui	a6,00054504
	addi	a6,a6,+00000642
	bne	a7,a6,0000000023036F42

l23036EB8:
	addi	s2,s1,-00000638
	c.mv	s3,a5
	c.mv	s4,a4
	c.mv	s5,a3
	c.mv	s6,a2
	c.mv	s7,a1
	c.mv	s8,a0
	addi	s1,s1,-00000638
	c.li	s0,00000000

l23036ECE:
	lhu	a5,s2,+0000000A
	bge	s0,a5,0000000023036EE6

l23036ED6:
	addi	a0,s1,+00000017
	c.mv	a1,s8
	jal	ra,0000000023071100
	addi	s1,s1,+00000024
	c.bnez	a0,0000000023036F08

l23036EE6:
	lhu	a5,s2,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,0000000023036F0C

l23036EF0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l23036F08:
	c.addi	s0,00000001
	c.j	0000000023036ECE

l23036F0C:
	addi	a5,zero,+00000024
	add	a0,s0,a5
	c.addi	s0,00000001
	c.add	a0,s2
	c.lw	a0,32(a4)
	add	s0,s0,a5
	sw	a4,s7,+00000000
	c.lw	a0,36(a4)
	sw	a4,s6,+00000000
	c.lw	a0,40(a4)
	c.add	s0,s2
	sw	a4,s5,+00000000
	c.lw	s0,8(a5)
	sw	a5,s4,+00000000
	lbu	a5,a0,+00000016
	c.li	a0,00000000
	sw	a5,s3,+00000000
	c.j	0000000023036EF0

l23036F42:
	c.li	a0,FFFFFFFB
	c.j	0000000023036EF0

;; hal_boot2_partition_addr_active: 23036F46
;;   Called from:
;;     23037152 (in hal_board_cfg)
;;     23055098 (in bl_mtd_open)
hal_boot2_partition_addr_active proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,0000000023036E8A
	c.bnez	a0,0000000023036F70

l23036F62:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023036F7A

l23036F66:
	c.lwsp	a6,000000C4

l23036F68:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023036F7E

l23036F6C:
	c.lwsp	s8,000000E4

l23036F6E:
	c.sw	s0,0(a5)

l23036F70:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23036F7A:
	c.lwsp	a2,000000C4
	c.j	0000000023036F68

l23036F7E:
	c.lwsp	s4,000000E4
	c.j	0000000023036F6E

;; hal_boot2_partition_addr_inactive: 23036F82
;;   Called from:
;;     2305502E (in bl_mtd_open)
hal_boot2_partition_addr_inactive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,0000000023036E8A
	c.bnez	a0,0000000023036FAC

l23036F9E:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023036FB6

l23036FA2:
	c.lwsp	a2,000000C4

l23036FA4:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023036FBA

l23036FA8:
	c.lwsp	s4,000000E4

l23036FAA:
	c.sw	s0,0(a5)

l23036FAC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23036FB6:
	c.lwsp	a6,000000C4
	c.j	0000000023036FA4

l23036FBA:
	c.lwsp	s8,000000E4
	c.j	0000000023036FAA

;; hal_boot2_get_active_partition: 23036FBE
;;   Called from:
;;     2302AE96 (in ota_tcp_cmd.part.0)
hal_boot2_get_active_partition proc
	lui	a5,0004200E
	lbu	a0,a5,-00000638
	c.jr	ra

;; hal_boot2_get_active_entries: 23036FC8
;;   Called from:
;;     2302AEBC (in ota_tcp_cmd.part.0)
hal_boot2_get_active_entries proc
	c.mv	a2,a1
	andi	a1,a0,+000000FF
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000634
	c.swsp	ra,00000084
	jal	ra,0000000023039080
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_dump: 23036FEC
;;   Called from:
;;     2302AD94 (in ota_dump_cmd)
hal_boot2_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023036B00
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_init: 23036FFC
;;   Called from:
;;     230011C0 (in bfl_main)
hal_boot2_init proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004204A
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a5,-00000400
	lui	a5,0004200E
	sb	a4,a5,+000009C8
	lui	a4,00042020
	lbu	a3,a4,-000003A4
	c.li	a4,00000002
	bltu	a4,a3,0000000023037068

l23037020:
	addi	s0,a5,-00000638
	lui	a5,00042020
	lbu	a5,a5,-000002B8
	bltu	a4,a5,0000000023037068

l23037030:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303707A

l2303703A:
	jal	ra,000000002303030A

l2303703E:
	lbu	a5,s0,+00000000
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a6,zero,+00000254
	addi	a4,zero,+00000114
	addi	a3,a3,-000002CC
	addi	a2,a2,+0000016C
	addi	a0,a0,-000002C0
	jal	ra,000000002304B718

l23037068:
	jal	ra,0000000023036B00
	jal	ra,000000002303921A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303707A:
	jal	ra,00000000230302E8
	c.j	000000002303703E

;; hal_reboot: 23037080
;;   Called from:
;;     2302B25C (in ota_tcp_cmd.part.0)
;;     2302BBA8 (in reboot_cmd)
hal_reboot proc
	jal	zero,0000000023038F5C

;; hal_sys_reset: 23037084
;;   Called from:
;;     2302BB78 (in reset_cmd)
hal_sys_reset proc
	jal	zero,0000000023038F6E

;; hal_poweroff: 23037088
;;   Called from:
;;     2302BB90 (in poweroff_cmd)
hal_poweroff proc
	c.jr	ra

;; hal_sys_capcode_update: 2303708A
;;   Called from:
;;     2302611A (in wifi_mgmr_start)
;;     23027FF8 (in wifi_capcode_cmd)
;;     2303759C (in hal_board_cfg)
hal_sys_capcode_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	a3,00021011
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	t1,a3,-000007E4
	lui	s0,0004200E
	lui	s1,0004200E
	addi	a3,zero,+000000FF
	addi	s0,s0,-00000137
	addi	s1,s1,-00000136
	beq	a0,a3,00000000230370D6

l230370B6:
	c.mv	s2,a1
	beq	a1,a3,00000000230370D6

l230370BC:
	c.mv	s3,a0
	c.jalr	t1
	c.lwsp	t3,00000020
	sb	s3,s0,+00000000
	c.lwsp	s8,00000004
	sb	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230370D6:
	lbu	a0,s0,+00000000
	c.lwsp	s8,00000004
	lbu	a1,s1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	t1

;; hal_sys_capcode_get: 230370EC
;;   Called from:
;;     23027FBC (in wifi_capcode_cmd)
hal_sys_capcode_get proc
	auipc	t1,0001EFD6
	jalr	zero,t1,-0000033E

;; fdt32_to_cpu: 230370F4
;;   Called from:
;;     230374D0 (in hal_board_cfg)
;;     230374DA (in hal_board_cfg)
;;     230374E4 (in hal_board_cfg)
;;     230374EE (in hal_board_cfg)
;;     230374FC (in hal_board_cfg)
;;     2303753A (in hal_board_cfg)
;;     23037546 (in hal_board_cfg)
;;     230375CA (in hal_board_cfg)
;;     23037666 (in hal_board_cfg)
;;     23037716 (in hal_board_cfg)
;;     23037C2A (in hal_board_cfg)
;;     23037C58 (in hal_board_cfg)
;;     23037CA0 (in hal_board_cfg)
;;     23037D3C (in hal_board_cfg)
;;     23037DF0 (in hal_board_cfg)
;;     23038428 (in hal_board_cfg)
;;     230388EC (in hal_board_cfg)
;;     23038918 (in hal_board_cfg)
;;     230389B8 (in hal_board_cfg)
;;     230389E4 (in hal_board_cfg)
;;     23038A7E (in hal_board_cfg)
fdt32_to_cpu proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	c.srli	a0,00000010
	c.slli	a4,10
	andi	a0,a0,+000000FF
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; hal_board_get_factory_addr: 23037116
;;   Called from:
;;     23000796 (in aos_loop_proc)
;;     230007C6 (in aos_loop_proc)
hal_board_get_factory_addr proc
	lui	a5,0004200E
	lw	a0,a5,-00000134
	c.jr	ra

;; hal_board_cfg: 23037120
;;   Called from:
;;     230011C6 (in bfl_main)
hal_board_cfg proc
	c.addi16sp	FFFFFF00
	c.swsp	s1,000000F8
	c.swsp	s2,00000078
	lui	s1,0004200E
	lui	s2,00023085
	c.addi4spn	a2,00000040
	addi	a1,s1,-00000134
	addi	a0,s2,-00000260
	c.swsp	s0,0000007C
	c.swsp	s3,000000F4
	c.swsp	ra,000000FC
	c.swsp	s4,00000074
	c.swsp	s5,000000F0
	c.swsp	s6,00000070
	c.swsp	s7,000000EC
	c.swsp	s8,0000006C
	c.swsp	s9,000000E8
	c.swsp	s10,00000068
	c.swsp	s11,000000E4
	lui	s0,00042020
	jal	ra,0000000023036F46
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	addi	s3,s1,-00000134
	bltu	a5,a4,00000000230371A8

l23037164:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230371A8

l23037170:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.mv	s4,a0
	c.beqz	a5,00000000230371F6

l2303717C:
	jal	ra,000000002303030A

l23037180:
	lw	a5,s3,+00000000
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s4
	addi	a4,zero,+00000376
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000024C
	jal	ra,000000002304B718

l230371A8:
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023037202

l230371AE:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230371F4

l230371B8:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230371F4

l230371C4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230371FC

l230371CE:
	jal	ra,000000002303030A

l230371D2:
	lui	a3,00023085
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000378
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-000001F8
	jal	ra,000000002304B718

l230371F4:
	c.j	00000000230371F4

l230371F6:
	jal	ra,00000000230302E8
	c.j	0000000023037180

l230371FC:
	jal	ra,00000000230302E8
	c.j	00000000230371D2

l23037202:
	addi	a1,s1,-00000134
	c.addi4spn	a2,00000040
	addi	a0,s2,-00000260
	jal	ra,0000000023036E12
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.mv	s1,a0
	bltu	a5,a4,000000002303725E

l2303721C:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,000000002303725E

l23037228:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230372AC

l23037232:
	jal	ra,000000002303030A

l23037236:
	lw	a5,s3,+00000000
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s1
	addi	a4,zero,+0000037E
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000198
	jal	ra,000000002304B718

l2303725E:
	lw	s1,s3,+00000000
	c.bnez	s1,00000000230372B8

l23037264:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230372AA

l2303726E:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230372AA

l2303727A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230372B2

l23037284:
	jal	ra,000000002303030A

l23037288:
	lui	a3,00023085
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000380
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-00000144
	jal	ra,000000002304B718

l230372AA:
	c.j	00000000230372AA

l230372AC:
	jal	ra,00000000230302E8
	c.j	0000000023037236

l230372B2:
	jal	ra,00000000230302E8
	c.j	0000000023037288

l230372B8:
	lui	a2,00023073
	addi	a2,a2,-000003C4
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	zero,000000A0
	jal	ra,00000000230295BC
	c.mv	s4,a0
	blt	zero,a0,0000000023037318

l230372D0:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037318

l230372DA:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037318

l230372E6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037474

l230372F2:
	jal	ra,000000002303030A

l230372F6:
	lui	a3,00023085
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023080
	addi	a4,zero,+00000242
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+000006B8
	jal	ra,000000002304B718

l23037318:
	lui	s3,00023081
	addi	a2,s3,-00000698
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230295BC
	c.swsp	s3,00000014
	c.mv	s2,a0
	bge	zero,a0,0000000023037742

l23037330:
	lui	s3,00023085
	c.mv	a1,a0
	addi	a2,s3,-000000E8
	c.mv	a0,s1
	c.swsp	zero,00000030
	jal	ra,0000000023029728
	c.li	a5,00000001
	bne	a0,a5,00000000230375A0

l23037348:
	c.addi4spn	a4,00000060
	c.li	a3,00000000
	addi	a2,s3,-000000E8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029772
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.mv	s5,a0
	bltu	a5,a4,00000000230373A4

l23037364:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230373A4

l23037370:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303747A

l2303737C:
	jal	ra,000000002303030A

l23037380:
	c.lwsp	ra,000001F4
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000141
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-000000DC
	jal	ra,000000002304B718

l230373A4:
	c.lwsp	ra,00000194
	c.li	s3,00000002
	blt	s3,a2,00000000230375A0

l230373AC:
	c.mv	a1,s5
	c.addi4spn	a0,00000050
	jal	ra,0000000023070C7C
	lbu	a5,s0,-000003A4
	sb	zero,sp,+00000052
	bltu	s3,a5,00000000230373FE

l230373C0:
	lui	a5,00042020
	lbu	a5,a5,-000002B7
	bltu	s3,a5,00000000230373FE

l230373CC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023037480

l230373D6:
	jal	ra,000000002303030A

l230373DA:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.addi4spn	a5,00000050
	addi	a4,zero,+00000145
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-000000B0
	jal	ra,000000002304B718

l230373FE:
	c.addi4spn	a0,00000050
	jal	ra,000000002307132C
	c.mv	s10,a0
	c.li	s5,00000000
	lui	s6,00042020
	lui	s7,0004200E
	lui	s8,00023085
	lui	s9,00023084
	lui	s11,00023085

l2303741C:
	bge	s5,s10,000000002303790C

l23037420:
	c.addi4spn	a5,00000050
	c.add	a5,s5
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,0000000023037486

l23037430:
	addi	a4,zero,+0000004D
	beq	a5,a4,0000000023037932

l23037438:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230379D0

l23037444:
	jal	ra,000000002303030A

l23037448:
	lui	a3,00023085
	lui	a2,0002307C
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a5,a3,-00000258
	addi	a6,zero,+00000128
	addi	a4,zero,+00000128
	addi	a3,a3,-00000258
	addi	a2,a2,+00000064
	addi	a0,a0,+00000074
	jal	ra,000000002304B718

l23037472:
	c.j	0000000023037472

l23037474:
	jal	ra,00000000230302E8
	c.j	00000000230372F6

l2303747A:
	jal	ra,00000000230302E8
	c.j	0000000023037380

l23037480:
	jal	ra,00000000230302E8
	c.j	00000000230373DA

l23037486:
	lui	a5,00023081
	addi	a2,a5,-00000690
	c.addi4spn	a3,00000080
	c.mv	a1,s2
	c.mv	a0,s1
	c.swsp	zero,00000040
	jal	ra,0000000023029700
	c.lwsp	sp,000000C4
	c.li	a5,00000014
	c.mv	s3,a0
	bne	a4,a5,0000000023037898

l230374A4:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037536

l230374AE:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037536

l230374BA:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037892

l230374C6:
	jal	ra,000000002303030A

l230374CA:
	c.swsp	a0,00000090
	lw	a0,s3,+00000000
	jal	ra,00000000230370F4
	c.mv	s6,a0
	lw	a0,s3,+00000004
	jal	ra,00000000230370F4
	c.mv	s7,a0
	lw	a0,s3,+00000008
	jal	ra,00000000230370F4
	c.mv	s8,a0
	lw	a0,s3,+0000000C
	jal	ra,00000000230370F4
	c.mv	s5,a0
	lw	a0,s3,+00000010
	andi	s5,s5,+000000FF
	jal	ra,00000000230370F4
	andi	a0,a0,+000000FF
	c.lwsp	tp,00000174
	c.swsp	a0,00000080
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023085
	c.swsp	s5,00000000
	andi	a7,s8,+000000FF
	andi	a6,s7,+000000FF
	andi	a5,s6,+000000FF
	addi	a4,zero,+000000F9
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000088
	jal	ra,000000002304B718

l23037536:
	lw	a0,s3,+00000000
	jal	ra,00000000230370F4
	andi	s5,a0,+000000FF
	lw	a0,s3,+00000004
	jal	ra,00000000230370F4
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	andi	s3,a0,+000000FF
	bltu	a5,a4,0000000023037596

l23037558:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037596

l23037564:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037926

l23037570:
	jal	ra,000000002303030A

l23037574:
	lui	a3,00023085
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000114
	addi	a3,a3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,-0000002C
	jal	ra,000000002304B718

l23037596:
	andi	a1,s3,+000000FF
	c.mv	a0,s5
	jal	ra,000000002303708A

l230375A0:
	lui	a2,00023081
	c.addi4spn	a3,00000044
	addi	a2,a2,-0000061C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	addi	a5,zero,+0000003C
	c.mv	s6,a0
	bne	a4,a5,0000000023037A20

l230375BE:
	c.li	s3,00000000
	addi	s5,zero,+0000003C

l230375C4:
	add	a5,s6,s3
	c.lw	a5,0(a0)
	jal	ra,00000000230370F4
	c.addi4spn	a5,00000080
	c.add	a5,s3
	c.sw	a5,0(a0)
	c.addi	s3,00000004
	bne	s3,s5,00000000230375C4

l230375DA:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	lui	s3,00023085
	bltu	a5,a4,0000000023037622

l230375E8:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037622

l230375F4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037A1A

l23037600:
	jal	ra,000000002303030A

l23037604:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+00000258
	addi	a3,s3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-000005D4
	jal	ra,000000002304B718

l23037622:
	c.li	a4,00000000
	addi	a3,zero,+0000003C
	c.addi4spn	a2,00000080
	addi	a1,zero,+00000259
	addi	a0,s3,-00000258
	jal	ra,000000002304B746

l23037636:
	lui	a2,00023081
	c.addi4spn	a3,00000044
	addi	a2,a2,-000005A8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000038
	bne	a4,a5,0000000023037A74

l23037652:
	addi	s5,sp,+00000060
	c.mv	s3,a0
	addi	s7,a0,+00000038
	c.mv	s6,s5

l2303765E:
	lw	a0,s3,+00000000
	c.addi	s3,00000004
	c.addi	s5,00000002
	jal	ra,00000000230370F4
	sh	a0,s5,+00000FFE
	bne	s7,s3,000000002303765E

l23037672:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	lui	s3,00023085
	bltu	a5,a4,00000000230376BA

l23037680:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230376BA

l2303768C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037A6E

l23037698:
	jal	ra,000000002303030A

l2303769C:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+00000263
	addi	a3,s3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000564
	jal	ra,000000002304B718

l230376BA:
	c.li	a4,00000000
	addi	a3,zero,+00000038
	c.mv	a2,s6
	addi	a1,zero,+00000264
	addi	a0,s3,-00000258
	jal	ra,000000002304B746

l230376CE:
	lui	a2,00023081
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000538
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	bne	a4,a5,0000000023037AC8

l230376E8:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037742

l230376F2:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037742

l230376FE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	lw	s2,a0,+00000000
	beq	a5,zero,0000000023037AC2

l2303770E:
	jal	ra,000000002303030A

l23037712:
	c.swsp	a0,00000090
	c.mv	a0,s2
	jal	ra,00000000230370F4
	c.lwsp	tp,00000174
	slli	a5,a0,00000010
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023085
	c.srli	a5,00000010
	addi	a4,zero,+0000026C
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000000AC
	jal	ra,000000002304B718

l23037742:
	lui	a2,00023080
	addi	a2,a2,+00000748
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230295BC
	c.mv	s3,a0
	bge	zero,a0,0000000023037BCE

l23037758:
	lui	s2,0002307E
	c.mv	a1,a0
	addi	a2,s2,-0000002C
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,0000000023029728
	c.li	a5,00000001
	bne	a0,a5,0000000023037BCE

l23037770:
	addi	a2,s2,-0000002C
	c.addi4spn	a4,0000004C
	c.li	a3,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023029772
	c.lwsp	a3,00000064
	c.mv	s2,a0
	lui	a0,00023085
	addi	a0,a0,+000000D4
	jal	ra,000000002304B718
	c.lwsp	a3,00000084
	c.li	a5,00000003
	blt	a5,a2,0000000023037BCE

l23037798:
	c.mv	a1,s2
	c.addi4spn	a0,00000050
	jal	ra,0000000023070C7C
	lui	a0,00023085
	c.addi4spn	a1,00000050
	addi	a0,a0,+000000F4
	sb	zero,sp,+00000053
	jal	ra,000000002304B718
	c.addi4spn	a0,00000050
	jal	ra,000000002307132C
	c.mv	s10,a0
	c.li	s2,00000000
	lui	s5,00042020
	lui	s6,0004200E
	lui	s7,00023085
	lui	s8,00023084
	lui	s9,00023073
	lui	s11,00023080

l230377D4:
	bge	s2,s10,0000000023037876

l230377D8:
	c.addi4spn	a5,00000050
	c.add	a5,s2
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,0000000023037FE8

l230377E8:
	addi	a4,zero,+0000004D
	beq	a5,a4,0000000023038138

l230377F0:
	addi	a4,zero,+00000042
	bne	a5,a4,00000000230381FC

l230377F8:
	c.addi4spn	a0,00000080
	jal	ra,0000000023034C50
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,0000000023037836

l23037830:
	c.li	a4,00000001
	bne	a5,a4,0000000023037B14

l23037836:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,000000002303786E

l23037840:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,000000002303786E

l23037848:
	lw	a5,s6,-0000017C
	beq	a5,zero,0000000023037FE0

l23037850:
	jal	ra,000000002303030A

l23037854:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000093
	addi	a3,s7,-00000258
	addi	a2,s8,-000002D8
	addi	a0,a0,+0000013C

l2303786A:
	jal	ra,000000002304B718

l2303786E:
	c.addi	s2,00000001
	c.li	a5,00000003
	bne	s2,a5,00000000230377D4

l23037876:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bgeu	a5,a4,000000002303823C

l23037880:
	lui	a1,0002308E
	c.li	a2,00000006
	addi	a1,a1,-00000180
	c.addi4spn	a0,00000080
	jal	ra,0000000023070C7C
	c.j	0000000023037B5A

l23037892:
	jal	ra,00000000230302E8
	c.j	00000000230374CA

l23037898:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037904

l230378A2:
	lbu	a4,s6,-000002B7
	bltu	a5,a4,00000000230378CE

l230378AA:
	lw	a5,s7,-0000017C
	c.beqz	a5,0000000023037920

l230378B0:
	jal	ra,000000002303030A

l230378B4:
	lui	a5,00023073
	c.mv	a1,a0
	addi	a4,zero,+00000100
	addi	a3,s8,-00000258
	addi	a2,a5,-00000434
	addi	a0,s11,-00000050
	jal	ra,000000002304B718

l230378CE:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023037904

l230378D8:
	lbu	a4,s6,-000002B7
	bltu	a5,a4,0000000023037904

l230378E0:
	lw	a5,s7,-0000017C
	c.beqz	a5,000000002303792C

l230378E6:
	jal	ra,000000002303030A

l230378EA:
	lui	a5,00023085
	c.mv	a1,a0
	addi	a4,zero,+00000117
	addi	a3,s8,-00000258
	addi	a2,s9,-000002D8
	addi	a0,a5,+00000000

l23037900:
	jal	ra,000000002304B718

l23037904:
	c.addi	s5,00000001
	c.li	a5,00000002
	bne	s5,a5,000000002303741C

l2303790C:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bgeu	a5,a4,00000000230379D6

l23037916:
	addi	s3,zero,+00000032
	addi	s5,zero,+00000032
	c.j	0000000023037596

l23037920:
	jal	ra,00000000230302E8
	c.j	00000000230378B4

l23037926:
	jal	ra,00000000230302E8
	c.j	0000000023037574

l2303792C:
	jal	ra,00000000230302E8
	c.j	00000000230378EA

l23037932:
	c.addi4spn	a0,00000080
	sb	zero,sp,+00000080
	jal	ra,0000000023034C78
	c.bnez	a0,0000000023037950

l2303793E:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	lbu	s5,sp,+00000080
	bgeu	a5,a4,0000000023037984

l2303794C:
	c.mv	s3,s5
	c.j	0000000023037596

l23037950:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023037904

l2303795A:
	lbu	a4,s6,-000002B7
	bltu	a5,a4,0000000023037904

l23037962:
	lw	a5,s7,-0000017C
	c.beqz	a5,00000000230379CA

l23037968:
	jal	ra,000000002303030A

l2303796C:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000122
	addi	a3,s8,-00000258
	addi	a2,s9,-000002D8
	addi	a0,a0,+00000058
	c.j	0000000023037900

l23037984:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	c.mv	s3,s5
	bltu	a5,a4,0000000023037596

l23037992:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230379C4

l2303799C:
	jal	ra,000000002303030A

l230379A0:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023084
	lui	a0,00023085
	addi	a4,zero,+0000011F
	addi	a3,a3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+0000002C
	jal	ra,000000002304B718
	c.j	000000002303794C

l230379C4:
	jal	ra,00000000230302E8
	c.j	00000000230379A0

l230379CA:
	jal	ra,00000000230302E8
	c.j	000000002303796C

l230379D0:
	jal	ra,00000000230302E8
	c.j	0000000023037448

l230379D6:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037916

l230379E2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023037A14

l230379EC:
	jal	ra,000000002303030A

l230379F0:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023085
	addi	a4,zero,+0000012E
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000084
	jal	ra,000000002304B718
	c.j	0000000023037916

l23037A14:
	jal	ra,00000000230302E8
	c.j	00000000230379F0

l23037A1A:
	jal	ra,00000000230302E8
	c.j	0000000023037604

l23037A20:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037636

l23037A2A:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037636

l23037A36:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023037A68

l23037A40:
	jal	ra,000000002303030A

l23037A44:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023081
	addi	a4,zero,+0000025B
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-00000594
	jal	ra,000000002304B718
	c.j	0000000023037636

l23037A68:
	jal	ra,00000000230302E8
	c.j	0000000023037A44

l23037A6E:
	jal	ra,00000000230302E8
	c.j	000000002303769C

l23037A74:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230376CE

l23037A7E:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230376CE

l23037A8A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023037ABC

l23037A94:
	jal	ra,000000002303030A

l23037A98:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023081
	addi	a4,zero,+00000266
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-0000052C
	jal	ra,000000002304B718
	c.j	00000000230376CE

l23037ABC:
	jal	ra,00000000230302E8
	c.j	0000000023037A98

l23037AC2:
	jal	ra,00000000230302E8
	c.j	0000000023037712

l23037AC8:
	lbu	a4,s0,-000003A4
	bltu	a5,a4,0000000023037742

l23037AD0:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037742

l23037ADC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023037B0E

l23037AE6:
	jal	ra,000000002303030A

l23037AEA:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023081
	addi	a4,zero,+0000026E
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-000004D8
	jal	ra,000000002304B718
	c.j	0000000023037742

l23037B0E:
	jal	ra,00000000230302E8
	c.j	0000000023037AEA

l23037B14:
	lbu	a5,s0,-000003A4
	bltu	a4,a5,0000000023037B5A

l23037B1C:
	lui	a5,00042020
	lbu	a5,a5,-000002B7
	bltu	a4,a5,0000000023037B64

l23037B28:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023037FDA

l23037B34:
	jal	ra,000000002303030A

l23037B38:
	lui	a3,00023085
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000090
	addi	a3,a3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+00000110

l23037B56:
	jal	ra,000000002304B718

l23037B5A:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037BC2

l23037B64:
	lui	a5,00042020
	lbu	a4,a5,-000002B7
	c.li	a5,00000002
	bltu	a5,a4,0000000023037BC2

l23037B72:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038282

l23037B7E:
	jal	ra,000000002303030A

l23037B82:
	lbu	a5,sp,+00000085
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	lui	a3,00023085
	lui	a2,0002307F
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	c.mv	a1,a0
	lui	a0,00023085
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	addi	a4,zero,+000000C0
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000270
	jal	ra,000000002304B718

l23037BC2:
	c.addi4spn	a0,00000080
	jal	ra,00000000230357A6
	c.addi4spn	a0,00000080
	jal	ra,000000002303578A

l23037BCE:
	lui	a2,00023080
	c.mv	a1,s4
	addi	a2,a2,+000006D8
	c.mv	a0,s1
	jal	ra,00000000230295BC
	c.mv	a1,a0
	bge	zero,a0,0000000023037C64

l23037BE4:
	lui	a2,00023080
	c.addi4spn	a3,00000044
	addi	a2,a2,+000006E0
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s2,a0
	bne	a4,a5,0000000023038290

l23037BFE:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037C54

l23037C08:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037C54

l23037C14:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303828A

l23037C20:
	jal	ra,000000002303030A

l23037C24:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	c.lwsp	tp,00000174
	andi	a5,a0,+000000FF
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023085
	addi	a4,zero,+0000027F
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000002B4
	jal	ra,000000002304B718

l23037C54:
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	andi	a0,a0,+000000FF
	jal	ra,00000000230357DC

l23037C64:
	c.lwsp	s0,000001F4
	c.mv	a1,s4
	c.mv	a0,s1
	addi	a2,a5,-00000698
	jal	ra,00000000230295BC
	c.mv	s5,a0
	bge	zero,a0,0000000023038860

l23037C78:
	lui	a2,00023085
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,a2,+000002DC
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	c.li	a5,00000010
	c.mv	s6,a0
	bne	a4,a5,00000000230382E2

l23037C94:
	c.li	s2,00000000
	c.li	s3,00000004

l23037C98:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,00000000230370F4
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023037C98

l23037CB2:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037D0C

l23037CBC:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037D0C

l23037CC8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230382DC

l23037CD4:
	jal	ra,000000002303030A

l23037CD8:
	lbu	a5,sp,+00000083
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000298
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000002EC
	jal	ra,000000002304B718

l23037D0C:
	c.addi4spn	a0,00000080
	jal	ra,000000002300552E

l23037D12:
	lui	a2,00023085
	c.addi4spn	a3,00000044
	addi	a2,a2,+00000354
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,0000000023038338

l23037D30:
	c.li	s2,00000000
	c.li	s3,00000008

l23037D34:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,00000000230370F4
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023037D34

l23037D4E:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037DC0

l23037D58:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037DC0

l23037D64:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038332

l23037D70:
	jal	ra,000000002303030A

l23037D74:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,00023085
	lui	a2,0002307F
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,00023085
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002AC
	addi	a3,a3,-00000258
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000364
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,000000002304B718

l23037DC0:
	c.addi4spn	a0,00000080
	jal	ra,0000000023005532

l23037DC6:
	lui	a2,00023085
	c.addi4spn	a3,00000044
	addi	a2,a2,+000003D8
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,000000002303838E

l23037DE4:
	c.li	s2,00000000
	c.li	s3,00000008

l23037DE8:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,00000000230370F4
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023037DE8

l23037E02:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023037E74

l23037E0C:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037E74

l23037E18:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038388

l23037E24:
	jal	ra,000000002303030A

l23037E28:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,00023085
	lui	a2,0002307F
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,00023085
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002C0
	addi	a3,a3,-00000258
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+0000016C
	addi	a0,a0,+000003E8
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,000000002304B718

l23037E74:
	c.addi4spn	a0,00000080
	jal	ra,0000000023005536

l23037E7A:
	lui	s2,00023085
	addi	a2,s2,+0000045C
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,00000024
	jal	ra,0000000023029728
	c.li	a5,00000001
	c.mv	s11,a0
	bne	a0,a5,0000000023038860

l23037E94:
	c.addi4spn	a4,00000048
	c.li	a3,00000000
	addi	a2,s2,+0000045C
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023029772
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	c.mv	s3,a0
	bltu	a5,a4,0000000023037EF0

l23037EB0:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037EF0

l23037EBC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230383DE

l23037EC8:
	jal	ra,000000002303030A

l23037ECC:
	c.lwsp	s1,000000E4
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+000001C1
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000468
	jal	ra,000000002304B718

l23037EF0:
	c.lwsp	s1,00000084
	c.li	s2,00000002
	blt	s2,a2,0000000023038860

l23037EF8:
	c.mv	a1,s3
	c.addi4spn	a0,0000003C
	jal	ra,0000000023070C7C
	lbu	a5,s0,-000003A4
	sb	zero,sp,+0000003E
	bltu	s2,a5,0000000023037F4C

l23037F0C:
	lui	a5,00042020
	lbu	a5,a5,-000002B7
	bltu	s2,a5,0000000023037F4C

l23037F18:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230383E4

l23037F24:
	jal	ra,000000002303030A

l23037F28:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.addi4spn	a5,0000003C
	addi	a4,zero,+000001C5
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000490
	jal	ra,000000002304B718

l23037F4C:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	jal	ra,0000000023070EB8
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000060
	jal	ra,0000000023070EB8
	c.addi4spn	a0,0000003C
	jal	ra,000000002307132C
	c.swsp	a0,00000094
	addi	s2,sp,+0000003C
	c.swsp	zero,00000090
	c.li	s9,00000000
	lui	s7,00042020
	lui	s8,0004200E
	lui	s6,00023085
	lui	s10,00023084

l23037F80:
	c.lwsp	a2,000001F4
	bge	s9,a5,00000000230386C8

l23037F86:
	lbu	a5,s2,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,00000000230383FA

l23037F92:
	bltu	a4,a5,00000000230383EA

l23037F96:
	addi	a4,zero,+00000042
	beq	a5,a4,000000002303859C

l23037F9E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038AFA

l23037FAA:
	jal	ra,000000002303030A

l23037FAE:
	lui	a3,00023085
	lui	a2,0002307C
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a5,a3,-00000258
	addi	a6,zero,+000001A6
	addi	a4,zero,+000001A6
	addi	a3,a3,-00000258
	addi	a2,a2,+00000064
	addi	a0,a0,+00000074
	jal	ra,000000002304B718

l23037FD8:
	c.j	0000000023037FD8

l23037FDA:
	jal	ra,00000000230302E8
	c.j	0000000023037B38

l23037FE0:
	jal	ra,00000000230302E8
	jal	zero,0000000023037854

l23037FE8:
	lui	a5,00023080
	addi	a2,a5,+0000074C
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	ra,000001F4
	c.li	a4,00000006
	c.mv	a1,a0
	c.swsp	a5,00000090
	bne	a5,a4,0000000023038066

l23038006:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000080
	jal	ra,000000002303578A
	lui	a2,00023080
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	addi	a2,a2,+0000077C
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.lwsp	ra,000001D4
	c.lwsp	tp,000001F4
	c.mv	a1,a0
	beq	a4,a5,00000000230380D4

l23038030:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303786E

l2303803A:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,0000000023038098

l23038042:
	lw	a5,s6,-0000017C
	beq	a5,zero,0000000023038126

l2303804A:
	jal	ra,000000002303030A

l2303804E:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000054
	addi	a3,s7,-00000258
	addi	a2,s9,-00000434
	addi	a0,a0,+00000168
	c.j	0000000023038094

l23038066:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,000000002303786E

l23038070:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,0000000023038098

l23038078:
	lw	a5,s6,-0000017C
	c.beqz	a5,00000000230380CE

l2303807E:
	jal	ra,000000002303030A

l23038082:
	c.mv	a1,a0
	addi	a4,zero,+00000047
	addi	a3,s7,-00000258
	addi	a2,s9,-00000434
	addi	a0,s11,+00000788

l23038094:
	jal	ra,000000002304B718

l23038098:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,000000002303786E

l230380A2:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,000000002303786E

l230380AA:
	lw	a5,s6,-0000017C
	c.beqz	a5,0000000023038132

l230380B0:
	jal	ra,000000002303030A

l230380B4:
	lui	a5,00023085
	c.mv	a1,a0
	addi	a4,zero,+0000009E
	addi	a3,s7,-00000258
	addi	a2,s8,-000002D8
	addi	a0,a5,+000001BC
	jal	zero,000000002303786A

l230380CE:
	jal	ra,00000000230302E8
	c.j	0000000023038082

l230380D4:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000080
	jal	ra,00000000230357A6
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023037B5A

l230380EC:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037B64

l230380F8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303812C

l23038102:
	jal	ra,000000002303030A

l23038106:
	lui	a3,00023085
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+0000009B
	addi	a3,a3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+00000190
	c.j	0000000023037B56

l23038126:
	jal	ra,00000000230302E8
	c.j	000000002303804E

l2303812C:
	jal	ra,00000000230302E8
	c.j	0000000023038106

l23038132:
	jal	ra,00000000230302E8
	c.j	00000000230380B4

l23038138:
	c.addi4spn	a0,00000080
	jal	ra,0000000023034C60
	c.bnez	a0,00000000230381C0

l23038140:
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,00000000230381C0

l23038172:
	c.li	a4,00000001
	beq	a5,a4,00000000230381C0

l23038178:
	lbu	a5,s0,-000003A4
	bltu	a4,a5,0000000023037B5A

l23038180:
	lui	a5,00042020
	lbu	a5,a5,-000002B7
	bltu	a4,a5,0000000023037B64

l2303818C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230381BA

l23038196:
	jal	ra,000000002303030A

l2303819A:
	lui	a3,00023085
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+000000A6
	addi	a3,a3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+000001E8
	c.j	0000000023037B56

l230381BA:
	jal	ra,00000000230302E8
	c.j	000000002303819A

l230381C0:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,000000002303786E

l230381CA:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,000000002303786E

l230381D2:
	lw	a5,s6,-0000017C
	c.beqz	a5,00000000230381F6

l230381D8:
	jal	ra,000000002303030A

l230381DC:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+000000A9
	addi	a3,s7,-00000258
	addi	a2,s8,-000002D8
	addi	a0,a0,+00000214
	jal	zero,000000002303786A

l230381F6:
	jal	ra,00000000230302E8
	c.j	00000000230381DC

l230381FC:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038236

l23038206:
	jal	ra,000000002303030A

l2303820A:
	lui	a3,00023085
	lui	a2,0002307C
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a5,a3,-00000258
	addi	a6,zero,+000000AF
	addi	a4,zero,+000000AF
	addi	a3,a3,-00000258
	addi	a2,a2,+00000064
	addi	a0,a0,+00000074
	jal	ra,000000002304B718

l23038234:
	c.j	0000000023038234

l23038236:
	jal	ra,00000000230302E8
	c.j	000000002303820A

l2303823C:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037880

l23038248:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303827C

l23038252:
	jal	ra,000000002303030A

l23038256:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023085
	addi	a4,zero,+000000B5
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000240
	jal	ra,000000002304B718
	jal	zero,0000000023037880

l2303827C:
	jal	ra,00000000230302E8
	c.j	0000000023038256

l23038282:
	jal	ra,00000000230302E8
	jal	zero,0000000023037B82

l2303828A:
	jal	ra,00000000230302E8
	c.j	0000000023037C24

l23038290:
	lbu	a4,s0,-000003A4
	bltu	a5,a4,0000000023037C64

l23038298:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037C64

l230382A4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230382D6

l230382AE:
	jal	ra,000000002303030A

l230382B2:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023080
	addi	a4,zero,+00000283
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+00000720
	jal	ra,000000002304B718
	c.j	0000000023037C64

l230382D6:
	jal	ra,00000000230302E8
	c.j	00000000230382B2

l230382DC:
	jal	ra,00000000230302E8
	c.j	0000000023037CD8

l230382E2:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037D12

l230382EC:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037D12

l230382F8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303832C

l23038302:
	jal	ra,000000002303030A

l23038306:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023085
	addi	a4,zero,+0000029B
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+0000031C
	jal	ra,000000002304B718
	c.j	0000000023037D12

l2303832C:
	jal	ra,00000000230302E8
	c.j	0000000023038306

l23038332:
	jal	ra,00000000230302E8
	c.j	0000000023037D74

l23038338:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037DC6

l23038342:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037DC6

l2303834E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038382

l23038358:
	jal	ra,000000002303030A

l2303835C:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023085
	addi	a4,zero,+000002AF
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+000003A0
	jal	ra,000000002304B718
	c.j	0000000023037DC6

l23038382:
	jal	ra,00000000230302E8
	c.j	000000002303835C

l23038388:
	jal	ra,00000000230302E8
	c.j	0000000023037E28

l2303838E:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023037E7A

l23038398:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023037E7A

l230383A4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,00000000230383D8

l230383AE:
	jal	ra,000000002303030A

l230383B2:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023085
	addi	a4,zero,+000002C3
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+00000424
	jal	ra,000000002304B718
	c.j	0000000023037E7A

l230383D8:
	jal	ra,00000000230302E8
	c.j	00000000230383B2

l230383DE:
	jal	ra,00000000230302E8
	c.j	0000000023037ECC

l230383E4:
	jal	ra,00000000230302E8
	c.j	0000000023037F28

l230383EA:
	addi	a4,zero,+00000062
	beq	a5,a4,000000002303859C

l230383F2:
	addi	a4,zero,+00000066
	bne	a5,a4,0000000023037F9E

l230383FA:
	lui	a5,00023085
	c.addi4spn	a3,0000004C
	addi	a2,a5,+00000590
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,0000000023029700
	c.lwsp	a3,000000A4
	addi	a5,zero,+00000038
	c.mv	a4,a0
	bne	a3,a5,0000000023038760

l2303841A:
	c.li	s3,00000000
	c.li	s5,0000000E

l2303841E:
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.swsp	a4,00000090
	jal	ra,00000000230370F4
	c.addi4spn	a5,00000060
	c.add	a5,s3
	sb	a0,a5,+00000000
	c.addi	s3,00000001
	c.lwsp	tp,000001D4
	bne	s3,s5,000000002303841E

l2303843C:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	lui	s3,00023085
	bltu	a5,a4,0000000023038484

l2303844A:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038484

l23038456:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038754

l23038462:
	jal	ra,000000002303030A

l23038466:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000156
	addi	a3,s3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+0000059C
	jal	ra,000000002304B718

l23038484:
	c.li	a3,0000000E
	c.li	a4,00000000
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000157
	addi	a0,s3,-00000258
	jal	ra,000000002304B746
	c.addi4spn	a5,00000060
	addi	a3,sp,+0000006E

l2303849C:
	lbu	a4,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,FFFFFFF6
	sb	a4,a5,+00000FFF
	bne	a3,a5,000000002303849C

l230384AC:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038534

l230384B6:
	lui	a4,00042020
	lbu	a3,a4,-000002B7
	c.mv	s5,a4
	bltu	a5,a3,00000000230384F4

l230384C4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,000000002303875A

l230384D0:
	jal	ra,000000002303030A

l230384D4:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.li	a5,0000000A
	addi	a4,zero,+0000015B
	addi	a3,s3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000005C8
	jal	ra,000000002304B718

l230384F4:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023038534

l230384FE:
	lbu	a4,s5,-000002B7
	bltu	a5,a4,0000000023038534

l23038506:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230387D8

l23038512:
	jal	ra,000000002303030A

l23038516:
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+0000018F
	addi	a3,s3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+00000638
	jal	ra,000000002304B718

l23038534:
	lbu	a3,s2,+00000000
	addi	a5,zero,+00000042
	lbu	a4,s0,-000003A4
	bne	a3,a5,00000000230387E4

l23038544:
	c.li	a5,00000000
	c.li	a3,0000000E

l23038548:
	c.addi4spn	a1,00000060
	c.add	a1,a5
	lbu	a1,a1,+00000000
	c.addi4spn	a2,00000050
	c.add	a2,a5
	sb	a1,a2,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023038548

l2303855E:
	c.li	a5,00000001
	bltu	a5,a4,0000000023038844

l23038564:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038844

l23038570:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,00000000230387DE

l2303857C:
	jal	ra,000000002303030A

l23038580:
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000195
	addi	a3,s3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+0000066C
	c.j	0000000023038656

l2303859C:
	c.addi4spn	a0,00000060
	jal	ra,0000000023034C90
	c.mv	s3,a0
	lbu	a4,s0,-000003A4
	bne	a0,zero,000000002303871A

l230385AC:
	c.li	a5,00000002
	bltu	a5,a4,00000000230385E2

l230385B2:
	lbu	a4,s7,-000002B7
	bltu	a5,a4,00000000230385E2

l230385BA:
	lw	a5,s8,-0000017C
	c.beqz	a5,000000002303865C

l230385C0:
	jal	ra,000000002303030A

l230385C4:
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000175
	addi	a3,s6,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000004B4
	jal	ra,000000002304B718

l230385E2:
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000176
	addi	a0,s6,-00000258
	jal	ra,000000002304B746
	lbu	a4,s2,+00000000
	addi	a5,zero,+00000042
	bne	a4,a5,0000000023038668

l23038600:
	c.li	a5,0000000E

l23038602:
	c.addi4spn	a3,00000060
	c.add	a3,s3
	lbu	a3,a3,+00000000
	c.addi4spn	a4,00000050
	c.add	a4,s3
	sb	a3,a4,+00000000
	c.addi	s3,00000001
	bne	s3,a5,0000000023038602

l23038618:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,0000000023038844

l23038622:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038844

l2303862E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038662

l23038638:
	jal	ra,000000002303030A

l2303863C:
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+0000017C
	addi	a3,s6,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+000004E8

l23038656:
	jal	ra,000000002304B718
	c.j	0000000023038844

l2303865C:
	jal	ra,00000000230302E8
	c.j	00000000230385C4

l23038662:
	jal	ra,00000000230302E8
	c.j	000000002303863C

l23038668:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,000000002303869E

l23038672:
	lbu	a4,s7,-000002B7
	bltu	a5,a4,000000002303869E

l2303867A:
	lw	a5,s8,-0000017C
	c.beqz	a5,0000000023038714

l23038680:
	jal	ra,000000002303030A

l23038684:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000180
	addi	a3,s6,-00000258
	addi	a2,s10,-000002D8
	addi	a0,a0,+00000518
	jal	ra,000000002304B718

l2303869E:
	c.addi4spn	a5,00000050
	c.li	a3,0000000E

l230386A2:
	c.addi4spn	a4,00000060
	c.add	a4,s3
	lbu	a2,a5,+00000000
	lbu	a4,a4,+00000000
	c.addi	s3,00000001
	c.addi	a5,00000001
	c.add	a4,a2
	sb	a4,a5,+00000FFF
	bne	s3,a3,00000000230386A2

l230386BC:
	c.swsp	s11,00000090

l230386BE:
	c.addi	s9,00000001
	c.li	a5,00000002
	c.addi	s2,00000001
	bne	s9,a5,0000000023037F80

l230386C8:
	c.lwsp	tp,000001F4
	bne	a5,zero,0000000023038844

l230386CE:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038844

l230386D8:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038844

l230386E4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038B02

l230386F0:
	jal	ra,000000002303030A

l230386F4:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+000001AC
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000714
	c.j	0000000023038656

l23038714:
	jal	ra,00000000230302E8
	c.j	0000000023038684

l2303871A:
	c.li	a5,00000001
	bltu	a5,a4,00000000230386BE

l23038720:
	lbu	a4,s7,-000002B7
	bltu	a5,a4,00000000230386BE

l23038728:
	lw	a5,s8,-0000017C
	c.beqz	a5,000000002303874E

l2303872E:
	jal	ra,000000002303030A

l23038732:
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000186
	addi	a3,s6,-00000258
	addi	a2,s10,-000002D8
	addi	a0,a0,+00000558

l23038748:
	jal	ra,000000002304B718
	c.j	00000000230386BE

l2303874E:
	jal	ra,00000000230302E8
	c.j	0000000023038732

l23038754:
	jal	ra,00000000230302E8
	c.j	0000000023038466

l2303875A:
	jal	ra,00000000230302E8
	c.j	00000000230384D4

l23038760:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,00000000230386BE

l2303876A:
	lbu	a4,s7,-000002B7
	bltu	a5,a4,000000002303879C

l23038772:
	lw	a5,s8,-0000017C
	c.beqz	a5,00000000230387D2

l23038778:
	jal	ra,000000002303030A

l2303877C:
	c.lwsp	a3,000000E4
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+0000015F
	addi	a3,s6,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,+00000604
	jal	ra,000000002304B718

l2303879C:
	lbu	a4,s0,-000003A4
	c.li	a5,00000001
	bltu	a5,a4,00000000230386BE

l230387A6:
	lbu	a4,s7,-000002B7
	bltu	a5,a4,00000000230386BE

l230387AE:
	lw	a5,s8,-0000017C
	beq	a5,zero,0000000023038AF4

l230387B6:
	jal	ra,000000002303030A

l230387BA:
	lui	a5,00023085
	c.mv	a1,a0
	addi	a4,zero,+000001A0
	addi	a3,s6,-00000258
	addi	a2,s10,-000002D8
	addi	a0,a5,+000006DC
	c.j	0000000023038748

l230387D2:
	jal	ra,00000000230302E8
	c.j	000000002303877C

l230387D8:
	jal	ra,00000000230302E8
	c.j	0000000023038516

l230387DE:
	jal	ra,00000000230302E8
	c.j	0000000023038580

l230387E4:
	c.li	a5,00000001
	bltu	a5,a4,0000000023038824

l230387EA:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038824

l230387F6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038AEE

l23038802:
	jal	ra,000000002303030A

l23038806:
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023085
	addi	a4,zero,+00000199
	addi	a3,s3,-00000258
	addi	a2,a2,-000002D8
	addi	a0,a0,+0000069C
	jal	ra,000000002304B718

l23038824:
	c.addi4spn	a4,00000050
	c.li	a5,00000000
	c.li	a2,0000000E

l2303882A:
	c.addi4spn	a3,00000060
	c.add	a3,a5
	lbu	a1,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.add	a3,a1
	sb	a3,a4,+00000FFF
	bne	a5,a2,000000002303882A

l23038844:
	lui	a0,00023085
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000050
	addi	a1,zero,+000001AE
	addi	a0,a0,-00000258
	jal	ra,000000002304B746
	c.addi4spn	a0,00000050
	jal	ra,0000000023013F7E

l23038860:
	lui	a2,00023080
	addi	a2,a2,+000007D0
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,00000000230295BC
	c.mv	s2,a0
	bge	zero,a0,000000002303892C

l23038878:
	lui	s3,00023072
	c.mv	a1,a0
	addi	a2,s3,+00000164
	c.mv	a0,s1
	jal	ra,0000000023029728
	c.li	a5,00000001
	beq	a0,a5,0000000023038B08

l2303888E:
	c.li	s3,00000000

l23038890:
	lui	s5,00023081
	addi	a2,s5,-000007D4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029728
	c.li	a5,00000001
	beq	a0,a5,0000000023038B90

l230388A6:
	c.li	s5,00000000

l230388A8:
	lui	a2,00023081
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,-00000778
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.mv	s2,a0
	beq	a0,zero,0000000023038C1E

l230388C0:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038914

l230388CA:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038914

l230388D6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038C18

l230388E2:
	jal	ra,000000002303030A

l230388E6:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023081
	addi	a4,zero,+00000227
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000076C
	jal	ra,000000002304B718

l23038914:
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	andi	a4,a0,+000000FF

l23038920:
	c.mv	a3,s5
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,00000000230357E8

l2303892C:
	lui	a2,00023085
	addi	a2,a2,+000007C4
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,00000000230295BC
	c.mv	s2,a0
	bge	zero,a0,00000000230389F6

l23038944:
	lui	s3,00023072
	c.mv	a1,a0
	addi	a2,s3,+00000164
	c.mv	a0,s1
	jal	ra,0000000023029728
	c.li	a5,00000001
	beq	a0,a5,0000000023038C72

l2303895A:
	c.li	s3,00000000

l2303895C:
	lui	s4,00023081
	addi	a2,s4,-000007D4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029728
	c.li	a5,00000001
	beq	a0,a5,0000000023038CFA

l23038972:
	c.li	s4,00000000

l23038974:
	lui	a2,00023086
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,-000007AC
	c.mv	a0,s1
	jal	ra,0000000023029700
	c.mv	s2,a0
	c.li	a4,00000000
	c.beqz	a0,00000000230389EA

l2303898C:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,00000000230389E0

l23038996:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,00000000230389E0

l230389A2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038D82

l230389AE:
	jal	ra,000000002303030A

l230389B2:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,00023085
	lui	a2,0002307F
	lui	a0,00023086
	addi	a4,zero,+000001F2
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000798
	jal	ra,000000002304B718

l230389E0:
	lw	a0,s2,+00000000
	jal	ra,00000000230370F4
	c.mv	a4,a0

l230389EA:
	c.mv	a3,s4
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023035852

l230389F6:
	lui	a2,00023086
	addi	a2,a2,-00000768
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230295BC
	c.mv	s2,a0
	blt	zero,a0,0000000023038A54

l23038A0C:
	lbu	a4,s0,-000003A4
	c.li	a5,00000004
	bltu	a5,a4,0000000023038A54

l23038A16:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038A54

l23038A22:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038D88

l23038A2E:
	jal	ra,000000002303030A

l23038A32:
	lui	a3,00023085
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+000002CD
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-0000075C
	jal	ra,000000002304B718

l23038A54:
	c.lwsp	s0,000001F4
	c.mv	a1,s2
	c.mv	a0,s1
	addi	a2,a5,-00000698
	jal	ra,00000000230295BC
	c.mv	a1,a0
	bge	zero,a0,0000000023038ACE

l23038A68:
	lui	a2,00023086
	c.mv	a0,s1
	c.addi4spn	a3,00000044
	addi	a2,a2,-0000073C
	jal	ra,0000000023029700
	c.li	s1,00000000
	c.beqz	a0,0000000023038A84

l23038A7C:
	c.lw	a0,0(a0)
	jal	ra,00000000230370F4
	c.mv	s1,a0

l23038A84:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038ACE

l23038A8E:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038ACE

l23038A9A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	beq	a5,zero,0000000023038D8E

l23038AA6:
	jal	ra,000000002303030A

l23038AAA:
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023086
	c.mv	a5,s1
	addi	a4,zero,+000002D9
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-0000072C
	jal	ra,000000002304B718

l23038ACE:
	c.lwsp	t6,00000130
	c.lwsp	s11,00000114
	c.lwsp	s7,00000134
	c.lwsp	s3,00000158
	c.lwsp	a5,00000178
	c.lwsp	a1,00000198
	c.lwsp	t2,000001B8
	c.lwsp	gp,000001D8
	c.lwsp	t6,000000E8
	c.lwsp	s11,0000000C
	c.lwsp	s7,0000002C
	c.lwsp	s3,0000004C
	c.lwsp	a5,0000006C
	c.li	a0,00000000
	c.addi16sp	00000100
	c.jr	ra

l23038AEE:
	jal	ra,00000000230302E8
	c.j	0000000023038806

l23038AF4:
	jal	ra,00000000230302E8
	c.j	00000000230387BA

l23038AFA:
	jal	ra,00000000230302E8
	jal	zero,0000000023037FAE

l23038B02:
	jal	ra,00000000230302E8
	c.j	00000000230386F4

l23038B08:
	c.addi4spn	a4,00000050
	addi	a2,s3,+00000164
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029772
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,000000002303888E

l23038B24:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038B70

l23038B2E:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038B70

l23038B3A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038B8A

l23038B44:
	jal	ra,000000002303030A

l23038B48:
	c.lwsp	a7,00000028
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+00000213
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000744
	jal	ra,000000002304B718

l23038B70:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023070C7C
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	0000000023038890

l23038B8A:
	jal	ra,00000000230302E8
	c.j	0000000023038B48

l23038B90:
	c.addi4spn	a4,00000050
	addi	a2,s5,-000007D4
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029772
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s5,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230388A6

l23038BAC:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038BF8

l23038BB6:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038BF8

l23038BC2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038C12

l23038BCC:
	jal	ra,000000002303030A

l23038BD0:
	c.lwsp	a7,00000028
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s5
	c.li	a5,00000000
	addi	a4,zero,+0000021E
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+00000784
	jal	ra,000000002304B718

l23038BF8:
	c.lwsp	a7,00000084
	c.mv	a1,s5
	c.addi4spn	a0,00000080
	jal	ra,0000000023070C7C
	c.lwsp	a7,000000A8
	c.addi4spn	a5,000000C0
	c.add	a5,s5
	sb	zero,a5,+00000FC0
	andi	s5,s5,+000000FF
	c.j	00000000230388A8

l23038C12:
	jal	ra,00000000230302E8
	c.j	0000000023038BD0

l23038C18:
	jal	ra,00000000230302E8
	c.j	00000000230388E6

l23038C1E:
	lbu	a3,s0,-000003A4
	c.li	a5,00000004
	c.li	a4,00000000
	bltu	a5,a3,0000000023038920

l23038C2A:
	lui	a4,00042020
	lbu	a3,a4,-000002B7
	c.mv	a4,a0
	bltu	a5,a3,0000000023038920

l23038C38:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038C6C

l23038C42:
	jal	ra,000000002303030A

l23038C46:
	c.mv	a1,a0
	lui	a3,00023085
	lui	a2,00023073
	lui	a0,00023081
	addi	a4,zero,+0000022B
	addi	a3,a3,-00000258
	addi	a2,a2,-00000434
	addi	a0,a0,-00000730
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.j	0000000023038920

l23038C6C:
	jal	ra,00000000230302E8
	c.j	0000000023038C46

l23038C72:
	c.addi4spn	a4,00000050
	addi	a2,s3,+00000164
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029772
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,000000002303895A

l23038C8E:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038CDA

l23038C98:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038CDA

l23038CA4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038CF4

l23038CAE:
	jal	ra,000000002303030A

l23038CB2:
	c.lwsp	a7,00000028
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023085
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+000001DF
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,+000007C8
	jal	ra,000000002304B718

l23038CDA:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023070C7C
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	000000002303895C

l23038CF4:
	jal	ra,00000000230302E8
	c.j	0000000023038CB2

l23038CFA:
	c.addi4spn	a4,00000050
	addi	a2,s4,-000007D4
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023029772
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s4,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,0000000023038972

l23038D16:
	lbu	a4,s0,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023038D62

l23038D20:
	lui	a4,00042020
	lbu	a4,a4,-000002B7
	bltu	a5,a4,0000000023038D62

l23038D2C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023038D7C

l23038D36:
	jal	ra,000000002303030A

l23038D3A:
	c.lwsp	a7,00000028
	lui	a3,00023085
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023086
	c.mv	a6,s4
	c.li	a5,00000000
	addi	a4,zero,+000001EA
	addi	a3,a3,-00000258
	addi	a2,a2,+0000016C
	addi	a0,a0,-000007F0
	jal	ra,000000002304B718

l23038D62:
	c.lwsp	a7,00000084
	c.mv	a1,s4
	c.addi4spn	a0,00000080
	jal	ra,0000000023070C7C
	c.lwsp	a7,00000088
	c.addi4spn	a5,000000C0
	c.add	a5,s4
	sb	zero,a5,+00000FC0
	andi	s4,s4,+000000FF
	c.j	0000000023038974

l23038D7C:
	jal	ra,00000000230302E8
	c.j	0000000023038D3A

l23038D82:
	jal	ra,00000000230302E8
	c.j	00000000230389B2

l23038D88:
	jal	ra,00000000230302E8
	c.j	0000000023038A32

l23038D8E:
	jal	ra,00000000230302E8
	c.j	0000000023038AAA

;; bl_tsen_adc_get: 23038D94
;;   Called from:
;;     230261DC (in wifi_mgmr_start)
bl_tsen_adc_get proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	lui	s1,0004200E
	lhu	a4,s1,-000006B8
	c.lui	a5,00010000
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.sdsp	s0,00000128
	c.addi	a5,FFFFFFFF
	c.mv	s2,a0
	c.mv	s3,a1
	addi	s0,s1,-000006B8
	bne	a4,a5,0000000023038E46

l23038DBA:
	lui	a1,00023086
	c.li	a2,0000000E
	addi	a1,a1,-000006E4
	c.addi4spn	a0,00000010
	sh	zero,s0,+00000000
	jal	ra,0000000023070C7C
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000001
	sh	zero,sp,+0000000C
	jal	ra,0000000023053F14
	jal	ra,0000000023052A84
	jal	ra,0000000023052A72
	jal	ra,0000000023052A4A
	c.addi4spn	a0,00000010
	jal	ra,0000000023053004
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,0000000E
	jal	ra,0000000023052A94
	c.li	a0,00000000
	jal	ra,0000000023052E00
	c.addi4spn	a0,0000000C
	jal	ra,0000000023052B00
	addi	a0,s1,-000006B8
	auipc	ra,0001EFD4
	jalr	ra,ra,-00000420
	lui	a5,0004200E
	c.li	a4,00000001
	lui	s1,00023086
	lw	a5,a5,-0000017C
	bne	a0,a4,0000000023038E8E

l23038E22:
	c.beqz	a5,0000000023038E88

l23038E24:
	jal	ra,000000002303030A

l23038E28:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+0000010B
	addi	a3,s1,-00000690
	addi	a2,a2,-00000434
	addi	a0,a0,-00000660
	jal	ra,000000002304B718

l23038E46:
	lhu	a0,s0,+00000000
	jal	ra,0000000023052F26
	fmv.s	fs0,fa0,fa0
	beq	s3,zero,0000000023038E6A

l23038E56:
	jal	ra,0000000023070708
	c.mv	a2,a0
	lui	a0,00023086
	c.mv	a3,a1
	addi	a0,a0,-00000610
	jal	ra,0000000023052118

l23038E6A:
	beq	s2,zero,0000000023038E76

l23038E6E:
	fcvt.w.s	a5,fs0
	sh	a5,s2,+00000000

l23038E76:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.ldsp	a2,00000228
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23038E88:
	jal	ra,00000000230302E8
	c.j	0000000023038E28

l23038E8E:
	c.beqz	a5,0000000023038EB8

l23038E90:
	jal	ra,000000002303030A

l23038E94:
	lhu	a5,s0,+00000000
	c.mv	a1,a0
	lui	a2,0002307F
	lui	a0,00023086
	addi	a4,zero,+0000010D
	addi	a3,s1,-00000690
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000634
	jal	ra,000000002304B718
	c.j	0000000023038E46

l23038EB8:
	jal	ra,00000000230302E8
	c.j	0000000023038E94

;; bl_rtc_get_counter: 23038EBE
;;   Called from:
;;     23038ED8 (in bl_rtc_get_timestamp_ms)
bl_rtc_get_counter proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023053FD4
	c.lwsp	t3,00000020
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.addi16sp	00000020
	c.jr	ra

;; bl_rtc_get_timestamp_ms: 23038ED4
;;   Called from:
;;     2302B360 (in bl_sys_time_sync_state)
bl_rtc_get_timestamp_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023038EBE
	slli	a5,a1,0000001B
	srli	a4,a0,00000005
	c.or	a4,a5
	slli	a2,a1,00000015
	srli	a5,a0,0000000B
	slli	a6,a1,00000014
	c.srli	a0,0000000C
	c.or	a5,a2
	or	a0,a6,a0
	srli	a3,a1,00000005
	srli	a2,a1,0000000B
	c.add	a0,a5
	c.srli	a1,0000000C
	sltu	a5,a0,a5
	c.add	a1,a2
	c.lwsp	a2,00000020
	c.add	a5,a1
	sub	a0,a4,a0
	sltu	a4,a4,a0
	sub	a5,a3,a5
	sub	a1,a5,a4
	c.addi	sp,00000010
	c.jr	ra

;; hal_wifi_start_firmware_task: 23038F24
;;   Called from:
;;     230003D4 (in cmd_stack_wifi)
hal_wifi_start_firmware_task proc
	lui	a6,00042014
	lui	a5,00042013
	lui	a1,00023086
	lui	a0,00023013
	c.addi	sp,FFFFFFF0
	addi	a6,a6,+000003E8
	addi	a5,a5,-00000418
	c.li	a4,0000001E
	c.li	a3,00000000
	addi	a2,zero,+00000600
	addi	a1,a1,-000005E4
	addi	a0,a0,+0000039E
	c.swsp	ra,00000084
	jal	ra,000000002302FF48
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_reset_por: 23038F5C
;;   Called from:
;;     23037080 (in hal_reboot)
bl_sys_reset_por proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFD3
	jalr	ra,ra,+00000642

l23038F6C:
	c.j	0000000023038F6C

;; bl_sys_reset_system: 23038F6E
;;   Called from:
;;     23037084 (in hal_sys_reset)
bl_sys_reset_system proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFD3
	jalr	ra,ra,+0000061C

l23038F7E:
	c.j	0000000023038F7E

;; bl_sys_isxipaddr: 23038F80
;;   Called from:
;;     230551C8 (in bl_mtd_write)
bl_sys_isxipaddr proc
	lui	a5,000FF000
	c.and	a0,a5
	lui	a5,000DD000
	c.add	a0,a5
	lui	a5,000DF000
	c.and	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; PtTable_Update_Entry: 23038F98
;;   Called from:
;;     23036C78 (in hal_boot2_update_ptable)
PtTable_Update_Entry proc
	c.li	a0,00000005
	c.beqz	a3,000000002303907E

l23038F9C:
	c.beqz	a2,000000002303907E

l23038F9E:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	a5,00000002
	addi	s2,a2,+00000010
	c.li	a0,00000001
	beq	a1,a5,000000002303906A

l23038FB8:
	c.lui	s4,0000E000
	c.beqz	a1,0000000023038FBE

l23038FBC:
	c.lui	s4,0000F000

l23038FBE:
	lhu	a4,a2,+00000006
	c.mv	s3,a3
	c.mv	s0,a2
	c.mv	a5,s2
	c.li	s1,00000000

l23038FCA:
	bgeu	s1,a4,0000000023038FEA

l23038FCE:
	c.mv	a0,a5
	lbu	a2,a0,+00000000
	lbu	a3,s3,+00000000
	addi	a5,a5,+00000024
	bne	a2,a3,000000002303907A

l23038FE0:
	addi	a2,zero,+00000024
	c.mv	a1,s3
	jal	ra,0000000023070C7C

l23038FEA:
	lhu	a5,s0,+00000006
	bne	a5,s1,0000000023039018

l23038FF2:
	c.li	a5,0000000F
	c.li	a0,00000003
	bltu	a5,s1,000000002303906A

l23038FFA:
	addi	a0,zero,+00000024
	add	a0,s1,a0
	addi	a2,zero,+00000024
	c.mv	a1,s3
	c.add	a0,s2
	jal	ra,0000000023070C7C
	lhu	a5,s0,+00000006
	c.addi	a5,00000001
	sh	a5,s0,+00000006

l23039018:
	c.lw	s0,8(a5)
	c.li	a1,0000000C
	c.mv	a0,s0
	c.addi	a5,00000001
	c.sw	s0,8(a5)
	auipc	ra,0001EFD4
	jalr	ra,ra,-00000644
	lhu	s1,s0,+00000006
	addi	a5,zero,+00000024
	c.sw	s0,12(a0)
	add	s1,s1,a5
	c.mv	a0,s2
	c.mv	a1,s1
	auipc	ra,0001EFD4
	jalr	ra,ra,-0000065E
	c.add	s2,s1
	sw	a0,s2,+00000000
	addi	a1,s1,+00000014
	c.mv	a0,s4
	c.jal	0000000023039186
	andi	a0,a0,+000000FF
	c.bnez	a0,0000000023039068

l23039058:
	addi	a2,zero,+00000254
	c.mv	a1,s0
	c.mv	a0,s4
	c.jal	00000000230391B6
	andi	a0,a0,+000000FF
	c.beqz	a0,000000002303906A

l23039068:
	c.li	a0,00000007

l2303906A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303907A:
	c.addi	s1,00000001
	c.j	0000000023038FCA

l2303907E:
	c.jr	ra

;; PtTable_Get_Active_Entries: 23039080
;;   Called from:
;;     23036FDA (in hal_boot2_get_active_entries)
PtTable_Get_Active_Entries proc
	c.beqz	a0,00000000230390CE

l23039082:
	c.mv	a4,a0
	c.li	a0,00000005
	c.beqz	a2,00000000230390D2

l23039088:
	lhu	a0,a4,+00000006
	addi	a3,a4,+00000010
	c.li	a5,00000000

l23039092:
	bltu	a5,a0,000000002303909A

l23039096:
	c.li	a0,00000002
	c.jr	ra

l2303909A:
	addi	a3,a3,+00000024
	lbu	a6,a3,-00000024
	bne	a6,a1,00000000230390CA

l230390A6:
	addi	a1,zero,+00000024
	add	a5,a5,a1
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	addi	a2,zero,+00000024
	c.swsp	ra,00000084
	c.addi	a5,00000010
	add	a1,a4,a5
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230390CA:
	c.addi	a5,00000001
	c.j	0000000023039092

l230390CE:
	c.li	a0,00000005
	c.jr	ra

l230390D2:
	c.jr	ra

;; bl_gpio_enable_output: 230390D4
;;   Called from:
;;     23034C38 (in cmd_gpio_func)
;;     2303A072 (in loopset_led_trigger)
bl_gpio_enable_output proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000100
	sh	a5,sp,+0000000C
	c.li	a5,0000000B
	sb	a5,sp,+00000009
	c.li	a5,00000001
	c.swsp	ra,0000008C
	sb	a0,sp,+00000008
	sb	a5,sp,+0000000A
	c.bnez	a1,0000000023039112

l230390F2:
	c.li	a5,00000002
	sb	a5,sp,+0000000B

l230390F8:
	c.beqz	a2,0000000023039100

l230390FA:
	c.li	a5,00000001
	sb	a5,sp,+0000000B

l23039100:
	c.addi4spn	a0,00000008
	auipc	ra,0001EFD3
	jalr	ra,ra,+000004D6
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039112:
	sb	zero,sp,+0000000B
	c.j	00000000230390F8

;; bl_gpio_enable_input: 23039118
;;   Called from:
;;     23034C02 (in cmd_gpio_func)
bl_gpio_enable_input proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000100
	sh	a5,sp,+0000000C
	c.li	a5,0000000B
	c.swsp	ra,0000008C
	sb	a0,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	c.bnez	a1,0000000023039154

l23039134:
	c.li	a5,00000002
	sb	a5,sp,+0000000B

l2303913A:
	c.beqz	a2,0000000023039142

l2303913C:
	c.li	a5,00000001
	sb	a5,sp,+0000000B

l23039142:
	c.addi4spn	a0,00000008
	auipc	ra,0001EFD3
	jalr	ra,ra,+00000494
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039154:
	sb	zero,sp,+0000000B
	c.j	000000002303913A

;; bl_gpio_output_set: 2303915A
;;   Called from:
;;     23034A50 (in cmd_gpio_set)
;;     23039D82 (in _cb_led_trigger)
bl_gpio_output_set proc
	c.addi	sp,FFFFFFF0
	sltu	a1,zero,a1
	c.swsp	ra,00000084
	jal	ra,0000000023053F78
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_gpio_input_get: 2303916E
;;   Called from:
;;     23034896 (in cmd_gpio_get)
bl_gpio_input_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023053FA2
	c.lwsp	a2,00000064
	sb	a0,a1,+00000000
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_flash_erase: 23039186
;;   Called from:
;;     23039050 (in PtTable_Update_Entry)
;;     23055190 (in bl_mtd_erase)
;;     230551A4 (in bl_mtd_erase_all)
bl_flash_erase proc
	lui	a5,0004200E
	addi	a5,a5,-000003E0
	lbu	a4,a5,+00000011
	c.beqz	a4,00000000230391B2

l23039194:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000550
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230391B2:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_write: 230391B6
;;   Called from:
;;     23039060 (in PtTable_Update_Entry)
;;     2305523A (in bl_mtd_write)
;;     2305524E (in bl_mtd_write)
bl_flash_write proc
	lui	a5,0004200E
	addi	a5,a5,-000003E0
	lbu	a4,a5,+00000011
	c.beqz	a4,00000000230391E4

l230391C4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000554
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230391E4:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_read: 230391E8
;;   Called from:
;;     2305525E (in bl_mtd_read)
bl_flash_read proc
	lui	a5,0004200E
	addi	a5,a5,-000003E0
	lbu	a4,a5,+00000011
	c.beqz	a4,0000000023039216

l230391F6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000558
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23039216:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_config_update: 2303921A
;;   Called from:
;;     2303706C (in hal_boot2_init)
bl_flash_config_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042020
	lbu	a4,s3,-000003A4
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l23039238:
	lui	s4,00042020
	lbu	a4,s4,-000002B5
	bgeu	a5,a4,0000000023039258

l23039244:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039258:
	lui	s2,0004200E
	lw	a5,s2,-0000017C
	beq	a5,zero,00000000230393FE

l23039264:
	jal	ra,000000002303030A

l23039268:
	lui	s5,0004200E
	lw	a6,s5,-000003E0
	c.mv	a1,a0
	lui	a5,0004204A
	lui	s1,00023086
	lui	s0,0002307F
	lui	a0,00023086
	addi	a5,a5,-000003E8
	addi	a4,zero,+00000060
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-000005D4
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	addi	s5,s5,-000003E0
	bltu	a5,a4,0000000023039244

l230392A8:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l230392B0:
	lw	a5,s2,-0000017C
	beq	a5,zero,0000000023039404

l230392B8:
	jal	ra,000000002303030A

l230392BC:
	lbu	a5,s5,+00000011
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000061
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-00000588
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l230392E4:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l230392EC:
	lw	a5,s2,-0000017C
	beq	a5,zero,000000002303940A

l230392F4:
	jal	ra,000000002303030A

l230392F8:
	lbu	a5,s5,+00000006
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000062
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-00000568
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l23039320:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l23039328:
	lw	a5,s2,-0000017C
	beq	a5,zero,0000000023039410

l23039330:
	jal	ra,000000002303030A

l23039334:
	lbu	a5,s5,+00000007
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000063
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-00000544
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l2303935C:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l23039364:
	lw	a5,s2,-0000017C
	c.beqz	a5,0000000023039416

l2303936A:
	jal	ra,000000002303030A

l2303936E:
	lbu	a5,s5,+00000010
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000064
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-0000051C
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l23039396:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l2303939E:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002303941C

l230393A4:
	jal	ra,000000002303030A

l230393A8:
	lhu	a5,s5,+00000012
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000065
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-000004F0
	jal	ra,000000002304B718
	lbu	a4,s3,-000003A4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039244

l230393D0:
	lbu	a4,s4,-000002B5
	bltu	a5,a4,0000000023039244

l230393D8:
	lw	a5,s2,-0000017C
	c.beqz	a5,0000000023039422

l230393DE:
	jal	ra,000000002303030A

l230393E2:
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000066
	addi	a3,s1,-000005E0
	addi	a2,s0,+0000016C
	addi	a0,a0,-000004C8
	jal	ra,000000002304B718
	c.j	0000000023039244

l230393FE:
	jal	ra,00000000230302E8
	c.j	0000000023039268

l23039404:
	jal	ra,00000000230302E8
	c.j	00000000230392BC

l2303940A:
	jal	ra,00000000230302E8
	c.j	00000000230392F8

l23039410:
	jal	ra,00000000230302E8
	c.j	0000000023039334

l23039416:
	jal	ra,00000000230302E8
	c.j	000000002303936E

l2303941C:
	jal	ra,00000000230302E8
	c.j	00000000230393A8

l23039422:
	jal	ra,00000000230302E8
	c.j	00000000230393E2

;; bl_wdt_feed: 23039428
;;   Called from:
;;     230358E8 (in cmd_wdt_feed)
bl_wdt_feed proc
	jal	zero,0000000023054200

;; bl_wdt_disable: 2303942C
;;   Called from:
;;     230358E4 (in cmd_wdt_disable)
bl_wdt_disable proc
	jal	zero,0000000023054270

;; bl_wdt_init: 23039430
;;   Called from:
;;     23035984 (in cmd_wdt_init)
bl_wdt_init proc
	c.lui	a5,00001000
	c.addi	a5,FFFFFFFE
	blt	a5,a0,0000000023039472

l23039438:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023054270
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,00000000230541AA
	slli	a0,s0,00000004
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,00000000230541D0
	jal	ra,0000000023054200
	c.li	a0,00000000
	c.li	a1,00000001
	jal	ra,00000000230542A6
	jal	ra,0000000023054238
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23039472:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; httpc_tcp_sent: 23039476
httpc_tcp_sent proc
	c.li	a0,00000000
	c.jr	ra

;; httpc_get_internal_addr: 2303947A
;;   Called from:
;;     230397D0 (in httpc_dns_found)
;;     23039AC8 (in httpc_get_file_dns)
httpc_get_internal_addr proc
	addi	a5,a0,+00000004
	beq	a5,a1,0000000023039486

l23039482:
	c.lw	a1,0(a4)
	c.sw	a0,4(a4)

l23039486:
	lhu	a2,a0,+00000008
	c.lw	a0,0(a0)
	lui	a3,0002303A
	addi	a3,a3,-000007E0
	c.mv	a1,a5
	jal	zero,000000002303BFA2

;; httpc_free_state: 2303949A
;;   Called from:
;;     23039532 (in httpc_close)
;;     230399D4 (in httpc_init_connection_common.constprop.5)
;;     23039A70 (in httpc_init_connection_common.constprop.5)
;;     23039AD4 (in httpc_get_file_dns)
httpc_free_state proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.lw	a0,16(a0)
	c.beqz	a0,00000000230394B0

l230394A8:
	jal	ra,0000000023040890
	sw	zero,s1,+00000010

l230394B0:
	c.lw	s1,20(a0)
	c.beqz	a0,00000000230394BC

l230394B4:
	jal	ra,0000000023040890
	sw	zero,s1,+00000014

l230394BC:
	c.lw	s1,0(s0)
	c.mv	a0,s1
	jal	ra,000000002303FD02
	c.bnez	s0,00000000230394D2

l230394C6:
	c.li	a0,00000000

l230394C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230394D2:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303BF5E
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303BF64
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303BF8A
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303BF70
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002303BF6A
	c.mv	a0,s0
	jal	ra,000000002303BFC8
	c.beqz	a0,00000000230394C6

l23039504:
	c.mv	a0,s0
	jal	ra,000000002303BFB6
	c.li	a0,FFFFFFF3
	c.j	00000000230394C8

;; httpc_close: 2303950E
;;   Called from:
;;     2303957E (in httpc_tcp_recv)
;;     230397F0 (in httpc_dns_found)
;;     23039800 (in httpc_tcp_poll)
;;     2303981A (in httpc_tcp_err)
;;     2303984E (in httpc_tcp_connected)
httpc_close proc
	c.beqz	a0,0000000023039536

l23039510:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,32(a5)
	c.mv	a4,a3
	c.mv	s0,a0
	c.mv	a3,a2
	c.beqz	a5,000000002303952A

l23039520:
	c.lw	a5,20(a5)
	c.beqz	a5,000000002303952A

l23039524:
	c.lw	a0,40(a2)
	c.lw	a0,36(a0)
	c.jalr	a5

l2303952A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303949A

l23039536:
	c.jr	ra

;; httpc_tcp_recv: 23039538
httpc_tcp_recv proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.li	a5,0000001E
	c.sw	a0,12(a5)
	c.mv	s0,a0
	lbu	a5,a0,+00000030
	c.bnez	a2,000000002303959C

l2303955C:
	c.li	a4,00000002
	c.li	a1,00000004
	bne	a5,a4,0000000023039576

l23039564:
	c.lw	a0,44(a5)
	c.li	a4,FFFFFFFF
	c.li	a1,00000000
	beq	a5,a4,0000000023039576

l2303956E:
	c.lw	a0,40(a4)
	beq	a5,a4,0000000023039576

l23039574:
	c.li	a1,00000009

l23039576:
	lhu	a2,s0,+0000001A
	c.li	a3,00000000

l2303957C:
	c.mv	a0,s0
	jal	ra,000000002303950E

l23039582:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l2303959C:
	c.li	a4,00000002
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s4,a3
	bne	a5,a4,00000000230395C4

l230395A8:
	lhu	a4,s1,+00000008
	c.lw	s0,40(a5)
	c.add	a5,a4
	c.sw	s0,40(a5)
	c.lw	s0,28(a5)
	beq	a5,zero,00000000230397B2

l230395B8:
	c.lw	s0,36(a0)
	c.mv	a3,s4
	c.mv	a2,s1
	c.mv	a1,s3
	c.jalr	a5
	c.j	0000000023039582

l230395C4:
	c.lw	a0,20(a0)
	bne	a0,zero,0000000023039774

l230395CA:
	c.sw	s0,20(a2)

l230395CC:
	lbu	a5,s0,+00000030
	bne	a5,zero,0000000023039782

l230395D4:
	lw	s6,s0,+00000014
	lui	a1,00023072
	c.li	a3,00000000
	c.li	a2,00000002
	addi	a1,a1,+000007FC
	c.mv	a0,s6
	c.lui	s7,00010000
	jal	ra,0000000023040EC8
	c.addi	s7,FFFFFFFF
	c.mv	s5,a0
	beq	a0,s7,0000000023039782

l230395F4:
	lui	s9,00023081
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s9,-00000074
	c.mv	a0,s6
	jal	ra,0000000023040EC8
	c.mv	s2,a0
	beq	a0,s7,0000000023039782

l2303960C:
	lui	a2,00023086
	c.li	a3,00000005
	addi	a2,a2,-000002D4
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,0000000023040E3E
	bne	a0,zero,0000000023039782

l23039622:
	c.li	a1,00000006
	c.mv	a0,s6
	jal	ra,0000000023040DF8
	addi	a5,zero,+0000002E
	bne	a0,a5,0000000023039782

l23039632:
	c.li	a1,00000005
	c.mv	a0,s6
	jal	ra,0000000023040DF8
	addi	a0,a0,-00000030
	slli	s8,a0,00000010
	c.li	a1,00000007
	c.mv	a0,s6
	jal	ra,0000000023040DF8
	srli	s8,s8,00000010
	addi	a0,a0,-00000030
	c.slli	s8,08
	or	s8,a0,s8
	sh	s8,s0,+00000018
	addi	s8,s2,+00000001
	c.slli	s8,10
	srli	s8,s8,00000010
	c.mv	a3,s8
	c.li	a2,00000001
	addi	a1,s9,-00000074
	c.mv	a0,s6
	jal	ra,0000000023040EC8
	beq	a0,s7,000000002303977C

l23039678:
	sub	s2,a0,s2

l2303967C:
	c.li	a2,0000000A
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.addi	s2,FFFFFFFF
	slli	a2,s2,00000010
	c.mv	a3,s8
	c.srli	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s6
	jal	ra,0000000023040C4A
	bne	s2,a0,0000000023039782

l2303969C:
	c.mv	a0,sp
	jal	ra,0000000023070AF0
	c.lui	a5,00010000
	addi	a4,a0,-00000001
	c.addi	a5,FFFFFFFE
	bltu	a5,a4,0000000023039782

l230396AE:
	c.li	a5,00000001
	sh	a0,s0,+0000001A
	sb	a5,s0,+00000030

l230396B8:
	lw	s6,s0,+00000014
	lui	a1,0002307B
	c.li	a3,00000000
	c.li	a2,00000004
	addi	a1,a1,+0000007C
	c.mv	a0,s6
	jal	ra,0000000023040EC8
	c.lui	s7,00010000
	addi	a5,s7,-00000004
	c.mv	s2,a0
	bltu	a5,a0,000000002303978C

l230396DA:
	c.li	a5,FFFFFFFF
	lui	a1,00023086
	c.sw	s0,44(a5)
	c.li	a3,00000000
	c.li	a2,00000010
	addi	a1,a1,-000002CC
	c.mv	a0,s6
	jal	ra,0000000023040EC8
	c.addi	s7,FFFFFFFF
	c.mv	s5,a0
	beq	a0,s7,0000000023039744

l230396F8:
	lui	a1,00023072
	c.mv	a3,a0
	c.li	a2,00000002
	addi	a1,a1,+000007FC
	c.mv	a0,s6
	jal	ra,0000000023040EC8
	beq	a0,s7,0000000023039744

l2303970E:
	sub	s1,a0,s5
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.addi	s1,FFFFFFF0
	c.slli	s1,10
	addi	a3,s5,+00000010
	c.srli	s1,00000010
	c.slli	a3,10
	c.srli	a3,00000010
	c.mv	a2,s1
	c.mv	a1,sp
	c.mv	a0,s6
	jal	ra,0000000023040C4A
	bne	s1,a0,0000000023039744

l23039738:
	c.mv	a0,sp
	jal	ra,0000000023070AF0
	blt	a0,zero,0000000023039744

l23039742:
	c.sw	s0,44(a0)

l23039744:
	addi	s1,s2,+00000004
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303BF90
	c.lw	s0,32(a5)
	c.beqz	a5,000000002303979A

l23039758:
	c.lw	a5,24(a5)
	c.beqz	a5,000000002303979A

l2303975C:
	c.lw	s0,44(a4)
	c.lw	s0,20(a2)
	c.lw	s0,36(a1)
	c.mv	a3,s1
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a3,a0
	c.beqz	a0,000000002303979A

l2303976C:
	lhu	a2,s0,+0000001A
	c.li	a1,00000008
	c.j	000000002303957C

l23039774:
	c.mv	a1,a2
	jal	ra,0000000023040B62
	c.j	00000000230395CC

l2303977C:
	sub	s2,s5,s2
	c.j	000000002303967C

l23039782:
	lbu	a4,s0,+00000030
	c.li	a5,00000001
	beq	a4,a5,00000000230396B8

l2303978C:
	lbu	a4,s0,+00000030
	c.li	a5,00000002
	beq	a4,a5,00000000230395A8

l23039796:
	c.li	a0,00000000
	c.j	0000000023039582

l2303979A:
	c.lw	s0,20(a0)
	c.mv	a1,s1
	jal	ra,0000000023040AEA
	c.li	a5,00000002
	sw	zero,s0,+00000014
	sb	a5,s0,+00000030
	c.mv	s1,a0
	c.beqz	a0,0000000023039796

l230397B0:
	c.j	00000000230395A8

l230397B2:
	lhu	a1,s1,+00000008
	c.mv	a0,s3
	jal	ra,000000002303BF90
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.j	0000000023039796

;; httpc_dns_found: 230397C4
httpc_dns_found proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.beqz	a1,00000000230397E2

l230397CE:
	c.mv	a0,a2
	jal	ra,000000002303947A
	c.mv	a3,a0
	c.li	a1,00000002
	c.bnez	a0,00000000230397E6

l230397DA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230397E2:
	c.li	a1,00000003
	c.li	a3,FFFFFFF0

l230397E6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,000000002303950E

;; httpc_tcp_poll: 230397F4
httpc_tcp_poll proc
	c.beqz	a0,000000002303980A

l230397F6:
	c.lw	a0,12(a5)
	c.bnez	a5,0000000023039804

l230397FA:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	zero,000000002303950E

l23039804:
	c.addi	a5,FFFFFFFF
	c.sw	a0,12(a5)
	c.beqz	a5,00000000230397FA

l2303980A:
	c.li	a0,00000000
	c.jr	ra

;; httpc_tcp_err: 2303980E
httpc_tcp_err proc
	c.mv	a3,a1
	c.beqz	a0,000000002303981E

l23039812:
	sw	zero,a0,+00000000
	c.li	a2,00000000
	c.li	a1,00000004
	jal	zero,000000002303950E

l2303981E:
	c.jr	ra

;; httpc_tcp_connected: 23039820
httpc_tcp_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,16(a5)
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lhu	a2,a5,+0000000A
	c.lw	a5,4(a1)
	c.li	a3,00000001
	c.addi	a2,FFFFFFFF
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002303BFDC
	c.beqz	a0,0000000023039852

l23039840:
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000007
	c.addi	sp,00000010
	jal	zero,000000002303950E

l23039852:
	c.lw	s0,16(a0)
	jal	ra,0000000023040890
	c.lw	s0,0(a0)
	sw	zero,s0,+00000010
	jal	ra,000000002303BFF0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; httpc_create_request_string.constprop.6: 2303986C
;;   Called from:
;;     23039990 (in httpc_init_connection_common.constprop.5)
;;     23039A66 (in httpc_init_connection_common.constprop.5)
httpc_create_request_string.constprop.6 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a0
	c.mv	a7,a1
	c.mv	a1,a5
	lbu	a5,s0,+00000006
	c.swsp	s4,00000094
	c.swsp	ra,0000009C
	c.swsp	s2,00000098
	c.swsp	s3,00000018
	c.mv	t3,a3
	c.mv	a0,a4
	lui	s4,00023086
	c.beqz	a5,00000000230398D8

l2303988C:
	addi	a5,zero,+00000050
	beq	a2,a5,00000000230398B6

l23039894:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a6,s4,-0000045C
	c.lwsp	a2,00000198
	c.mv	a4,a2
	lui	a2,00023086
	c.mv	a5,a3
	c.mv	a3,a7
	addi	a2,a2,-00000450
	c.addi16sp	00000040
	jal	zero,000000002305216A

l230398B6:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a5,s4,-0000045C
	c.lwsp	a2,00000198
	lui	a2,00023086
	c.mv	a4,a3
	c.mv	a6,a7
	c.mv	a3,a7
	addi	a2,a2,-000003F4
	c.addi16sp	00000040
	jal	zero,000000002305216A

l230398D8:
	lbu	a4,s0,+00000007
	c.li	a5,00000001
	bne	a4,a5,000000002303993C

l230398E2:
	lbu	a5,s0,+0000000C
	c.li	a4,00000003
	c.li	s2,00000000
	bltu	a4,a5,0000000023039900

l230398EE:
	slli	a3,a5,00000002
	lui	a5,0004200D
	addi	a5,a5,+0000047C
	c.add	a5,a3
	lw	s2,a5,+00000000

l23039900:
	c.mv	s3,a0
	c.lw	s0,8(a0)
	c.swsp	a1,0000008C
	c.swsp	t3,0000000C
	c.swsp	a7,00000088
	jal	ra,000000002307132C
	c.lw	s0,8(a5)
	c.lwsp	s4,00000028
	c.lwsp	s8,000000A4
	c.lwsp	t3,00000064
	lui	a2,00023086
	c.swsp	a5,00000000
	addi	a6,s4,-0000045C
	c.mv	a5,a0
	c.mv	a4,s2
	c.mv	a0,s3
	addi	a2,a2,-0000039C
	jal	ra,000000002305216A
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	c.lwsp	a2,00000198
	c.addi16sp	00000040
	c.jr	ra

l2303993C:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a4,s4,-0000045C
	c.lwsp	a2,00000198
	lui	a2,00023086
	c.mv	a5,a7
	addi	a2,a2,-00000324
	c.addi16sp	00000040
	jal	zero,000000002305216A

;; httpc_init_connection_common.constprop.5: 2303995A
;;   Called from:
;;     23039AB4 (in httpc_get_file_dns)
httpc_init_connection_common.constprop.5 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s1,a1
	c.mv	s4,a2
	c.mv	s2,a3
	c.mv	s5,a4
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s6,a0
	c.mv	s8,a5
	c.mv	s9,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s10,00000000
	c.mv	s7,a6
	jal	ra,000000002303986C
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	bltu	a5,a0,0000000023039A74

l2303999C:
	c.mv	s3,a0
	addi	a0,zero,+00000034
	jal	ra,000000002303FFF8
	c.mv	s0,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,00000000230399DA

l230399AC:
	addi	a2,zero,+00000034
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	addi	s10,s3,+00000001
	c.li	a5,0000001E
	slli	a1,s10,00000010
	c.sw	s0,12(a5)
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	c.li	a0,00000000
	jal	ra,0000000023040912
	c.sw	s0,16(a0)
	c.bnez	a0,00000000230399F8

l230399D2:
	c.mv	a0,s0
	jal	ra,000000002303949A
	c.li	a5,FFFFFFFF

l230399DA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l230399F8:
	c.lw	a0,0(a5)
	c.bnez	a5,00000000230399D2

l230399FC:
	c.li	a5,FFFFFFFF
	c.sw	s0,44(a5)
	c.lw	s1,16(a0)
	jal	ra,000000002303BF58
	c.sw	s0,0(a0)
	c.beqz	a0,00000000230399D2

l23039A0A:
	lbu	a5,s1,+00000006
	c.beqz	a5,0000000023039A14

l23039A10:
	lhu	s2,s1,+00000004

l23039A14:
	c.mv	a1,s0
	sh	s2,s0,+00000008
	jal	ra,000000002303BF5E
	c.lw	s0,0(a0)
	lui	a1,00023039
	addi	a1,a1,+00000538
	jal	ra,000000002303BF64
	c.lw	s0,0(a0)
	lui	a1,0002303A
	addi	a1,a1,-000007F2
	jal	ra,000000002303BF8A
	c.lw	s0,0(a0)
	lui	a1,00023039
	c.li	a2,00000001
	addi	a1,a1,+000007F4
	jal	ra,000000002303BF70
	c.lw	s0,0(a0)
	lui	a1,00023039
	addi	a1,a1,+00000476
	jal	ra,000000002303BF6A
	c.lw	s0,16(a4)
	c.mv	a5,s10
	c.mv	a3,s5
	c.lw	a4,4(a4)
	c.mv	a2,s9
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002303986C
	beq	s3,a0,0000000023039A78

l23039A6E:
	c.mv	a0,s0
	jal	ra,000000002303949A

l23039A74:
	c.li	a5,FFFFFFFA
	c.j	00000000230399DA

l23039A78:
	sw	s8,s0,+0000001C
	c.sw	s0,32(s1)
	sw	s7,s0,+00000024
	sw	s0,s6,+00000000
	c.li	a5,00000000
	c.j	00000000230399DA

;; httpc_get_file_dns: 23039A8A
;;   Called from:
;;     2300055E (in cmd_httpc_test)
httpc_get_file_dns proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	s0,FFFFFFF0
	c.beqz	a0,0000000023039AD8

l23039A9C:
	c.beqz	a2,0000000023039AD8

l23039A9E:
	c.beqz	a4,0000000023039AD8

l23039AA0:
	c.mv	s2,a3
	c.mv	s3,a6
	c.mv	a3,a1
	c.mv	a6,a5
	c.mv	s1,a0
	c.mv	a5,a4
	c.mv	a1,s2
	c.mv	a4,a2
	c.mv	a2,a0
	c.addi4spn	a0,0000000C
	jal	ra,000000002303995A
	c.mv	s0,a0
	c.bnez	a0,0000000023039AD8

l23039ABC:
	lbu	a5,s2,+00000006
	c.lwsp	a2,00000088
	c.beqz	a5,0000000023039AEA

l23039AC4:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002303947A
	c.mv	s1,a0
	c.beqz	a0,0000000023039B0A

l23039AD0:
	c.lwsp	a2,00000044
	c.mv	s0,s1
	jal	ra,000000002303949A

l23039AD8:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23039AEA:
	addi	s2,s4,+00000004
	lui	a2,00023039
	c.mv	a0,s1
	c.mv	a3,s4
	addi	a2,a2,+000007C4
	c.mv	a1,s2
	jal	ra,000000002303CC2C
	c.mv	s1,a0
	c.beqz	a0,0000000023039AC4

l23039B04:
	c.li	a5,FFFFFFFB
	bne	a0,a5,0000000023039AD0

l23039B0A:
	beq	s3,zero,0000000023039AD8

l23039B0E:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000000
	c.j	0000000023039AD8

;; proc_entry_looprt: 23039B16
proc_entry_looprt proc
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000448
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00023086
	jal	ra,00000000230554BE

l23039B2C:
	addi	a0,s0,-00000254
	jal	ra,00000000230520DC
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023039B2C

;; looprt_evt_notify_async: 23039B3E
;;   Called from:
;;     23039D08 (in cmd_looprt_test_evt)
;;     23039D24 (in cmd_looprt_test_evt_dump)
;;     2303A0A4 (in loopset_led_trigger)
looprt_evt_notify_async proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042014
	addi	a0,a0,+00000448
	jal	zero,00000000230553EC

;; looprt_evt_status_dump: 23039B4E
;;   Called from:
;;     23039BE2 (in looprt_start)
;;     23039C3C (in looprt_start_auto)
;;     23039CEC (in cmd_looprt_test_status)
looprt_evt_status_dump proc
	lui	a0,00042014
	addi	a0,a0,+00000448
	jal	zero,000000002305574A

;; looprt_evt_schedule: 23039B5A
;;   Called from:
;;     23039D46 (in cmd_looprt_test_schedule_evt1)
;;     23039D68 (in cmd_looprt_test_schedule_evt2)
looprt_evt_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,zero,+00000024
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a1
	c.mv	s1,a2
	jal	ra,000000002303218A
	c.beqz	a0,0000000023039BA8

l23039B76:
	c.li	a1,00000001
	c.mv	s0,a0
	jal	ra,00000000230552E8
	c.mv	a1,s1
	c.mv	a0,s0
	c.mv	a5,s3
	c.mv	a4,s2
	c.li	a3,00000000
	c.li	a2,00000000
	jal	ra,0000000023055316
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00042014
	addi	a0,a0,+00000448
	c.addi16sp	00000020
	jal	zero,000000002305537E

l23039BA8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; looprt_start: 23039BB6
;;   Called from:
;;     23000782 (in aos_loop_proc)
looprt_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042014
	c.swsp	a0,00000084
	addi	a0,s0,+00000448
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	a2,00000004
	c.mv	s1,a1
	jal	ra,000000002305526A
	lui	a1,0004200D
	c.li	a2,0000001F
	addi	a1,a1,+0000048C
	addi	a0,s0,+00000448
	jal	ra,00000000230552CA
	jal	ra,0000000023039B4E
	c.lwsp	s0,00000008
	c.lwsp	a2,000000E4
	lui	a1,00023086
	lui	a0,0002303A
	c.mv	a2,s1
	c.li	a4,0000001A
	c.li	a3,00000000
	addi	a1,a1,-00000260
	addi	a0,a0,-000004EA
	jal	ra,000000002302FF48
	addi	a0,s0,+00000448
	jal	ra,00000000230553D0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; looprt_start_auto: 23039C18
;;   Called from:
;;     23039CD4 (in cmd_looprt_test)
looprt_start_auto proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	addi	a0,s0,+00000448
	c.swsp	ra,00000084
	jal	ra,000000002305526A
	lui	a1,0004200D
	c.li	a2,0000001F
	addi	a1,a1,+0000048C
	addi	a0,s0,+00000448
	jal	ra,00000000230552CA
	jal	ra,0000000023039B4E
	lui	a1,00023086
	lui	a0,0002303A
	c.li	a5,00000000
	c.li	a4,0000001A
	c.li	a3,00000000
	c.lui	a2,00001000
	addi	a1,a1,-00000260
	addi	a0,a0,-000004EA
	jal	ra,000000002302FFE8
	addi	a0,s0,+00000448
	jal	ra,00000000230553D0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; looprt_handler_register: 23039C6E
;;   Called from:
;;     23039FD4 (in loopset_led_hook_on_looprt)
looprt_handler_register proc
	lui	a5,00042014
	lw	a4,a5,+00000448
	c.mv	a2,a1
	c.beqz	a4,0000000023039C84

l23039C7A:
	c.mv	a1,a0
	addi	a0,a5,+00000448
	jal	zero,00000000230552CA

l23039C84:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; looprt_timer_register: 23039C88
;;   Called from:
;;     23039F68 (in _led_bloop_evt)
looprt_timer_register proc
	c.mv	a1,a0
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000448
	c.swsp	ra,00000084
	jal	ra,000000002305537E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_looprt_test: 23039CA2
cmd_looprt_test proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000230
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	lui	a0,00023086
	addi	a1,zero,+000004A0
	addi	a0,a0,-00000214
	jal	ra,0000000023052118
	lui	a0,00023086
	c.li	a1,00000018
	addi	a0,a0,-000001F4
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023039C18

;; cmd_looprt_test_status: 23039CD8
cmd_looprt_test_status proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000150
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023039B4E

;; cmd_looprt_test_evt: 23039CF0
cmd_looprt_test_evt proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000001E0
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023039B3E

;; cmd_looprt_test_evt_dump: 23039D0C
cmd_looprt_test_evt_dump proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000001C4
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023039B3E

;; cmd_looprt_test_schedule_evt1: 23039D28
cmd_looprt_test_schedule_evt1 proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000001A0
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.lui	a2,00005000
	addi	a2,a2,-000001E0
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023039B5A

;; cmd_looprt_test_schedule_evt2: 23039D4A
cmd_looprt_test_schedule_evt2 proc
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000178
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.lui	a2,00002000
	addi	a2,a2,+00000710
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023039B5A

;; looprt_test_cli_init: 23039D6C
;;   Called from:
;;     2300086A (in aos_loop_proc)
looprt_test_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; _cb_led_trigger: 23039D70
_cb_led_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a2,56(a1)
	lbu	a0,a2,+00000030
	c.mv	s0,a2
	sltu	a1,zero,a1
	jal	ra,000000002303915A
	lui	a5,00042020
	lbu	a4,a5,-000002B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023039DDE

l23039D94:
	lui	a4,00042020
	lbu	a4,a4,-000002B3
	bltu	a5,a4,0000000023039DDE

l23039DA0:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023039DEE

l23039DAA:
	jal	ra,000000002303030A

l23039DAE:
	c.lw	s0,56(a4)
	c.lw	s0,48(a5)
	c.bnez	a4,0000000023039DF4

l23039DB4:
	lui	a6,00023085
	addi	a6,a6,-0000048C

l23039DBC:
	lui	a3,00023086
	lui	a2,00023084
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+00000095
	addi	a3,a3,-0000005C
	addi	a2,a2,-000002D8
	addi	a0,a0,-0000004C
	jal	ra,000000002304B718

l23039DDE:
	c.lw	s0,56(a5)
	c.lwsp	a2,00000020
	sltiu	a5,a5,+00000001
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23039DEE:
	jal	ra,00000000230302E8
	c.j	0000000023039DAE

l23039DF4:
	lui	a6,00023085
	addi	a6,a6,-00000490
	c.j	0000000023039DBC

;; _led_bloop_msg: 23039DFE
_led_bloop_msg proc
	lui	a5,00042020
	lbu	a4,a5,-000002B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023039E7A

l23039E0C:
	lui	a4,00042020
	lbu	a4,a4,-000002B3
	bltu	a5,a4,0000000023039E7A

l23039E18:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a2
	c.beqz	a5,0000000023039E74

l23039E2A:
	jal	ra,000000002303030A

l23039E2E:
	c.lw	s0,12(a5)
	c.mv	a1,a0
	lui	a3,00023086
	c.swsp	a5,00000004
	c.lw	s0,8(a5)
	lui	a2,00023084
	lui	a0,00023086
	c.swsp	a5,00000080
	lbu	a5,s0,+00000007
	addi	a0,a0,+00000070
	addi	a4,zero,+00000078
	c.swsp	a5,00000000
	lbu	a7,s0,+00000006
	lbu	a6,s0,+00000005
	lbu	a5,s0,+00000004
	addi	a3,a3,-0000005C
	addi	a2,a2,-000002D8
	jal	ra,000000002304B718
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23039E74:
	jal	ra,00000000230302E8
	c.j	0000000023039E2E

l23039E7A:
	c.li	a0,00000000
	c.jr	ra

;; _led_bloop_evt: 23039E7E
_led_bloop_evt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	c.lw	a3,0(s1)
	lui	s4,00023086
	lui	s5,00023086
	lui	s6,00023085
	c.mv	s9,a1
	c.mv	s8,a3
	addi	s4,s4,-00000018
	addi	s5,s5,-0000000C
	addi	s6,s6,-00000490

l23039EB4:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023039EDE

l23039EBA:
	c.andi	s1,FFFFFFFE

l23039EBC:
	c.bnez	s1,0000000023039EB4

l23039EBE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	zero,s8,+00000000
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23039EDE:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023039F9A

l23039EE4:
	lw	s2,s9,+0000000C
	c.li	s3,00000000
	lw	s0,s2,+0000000C
	c.beqz	s0,0000000023039EF4

l23039EF0:
	lw	s3,s0,+00000004

l23039EF4:
	lui	s7,00023085
	addi	s7,s7,-0000048C

l23039EFC:
	addi	a5,s2,+00000008
	bne	s0,a5,0000000023039F08

l23039F04:
	c.andi	s1,FFFFFFFD
	c.j	0000000023039EBC

l23039F08:
	lui	a5,00042020
	lbu	a4,a5,-000002B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023039F64

l23039F16:
	lui	a4,00042020
	lbu	a4,a4,-000002B3
	bltu	a5,a4,0000000023039F64

l23039F22:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,0000000023039F94

l23039F2C:
	jal	ra,000000002303030A

l23039F30:
	c.lw	s0,52(a4)
	c.lw	s0,48(a5)
	c.mv	a6,s6
	c.bnez	a4,0000000023039F3A

l23039F38:
	c.mv	a6,s7

l23039F3A:
	c.lw	s0,44(a4)
	c.mv	a7,s4
	c.bnez	a4,0000000023039F42

l23039F40:
	c.mv	a7,s5

l23039F42:
	lui	a3,00023086
	lui	a2,0002307F
	c.mv	a1,a0
	lui	a0,00023086
	addi	a4,zero,+0000004B
	addi	a3,a3,-0000005C
	addi	a2,a2,+0000016C
	addi	a0,a0,-00000004
	jal	ra,000000002304B718

l23039F64:
	addi	a0,s0,+00000008
	jal	ra,0000000023039C88
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	a5,s2,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,4(a5)
	sw	s0,s2,+00000004
	c.sw	a5,0(s0)
	c.li	a5,00000000
	beq	s3,zero,0000000023039F8E

l23039F8A:
	lw	a5,s3,+00000004

l23039F8E:
	c.mv	s0,s3
	c.mv	s3,a5
	c.j	0000000023039EFC

l23039F94:
	jal	ra,00000000230302E8
	c.j	0000000023039F30

l23039F9A:
	c.beqz	s1,0000000023039EBE

l23039F9C:
	lui	a1,00023086
	lui	a0,00023086
	addi	a2,zero,+0000005E
	addi	a1,a1,-0000005C
	addi	a0,a0,+00000048
	jal	ra,0000000023052118

l23039FB4:
	c.j	0000000023039FB4

;; loopset_led_hook_on_looprt: 23039FB6
;;   Called from:
;;     23000786 (in aos_loop_proc)
loopset_led_hook_on_looprt proc
	lui	a5,00042015
	addi	a5,a5,-00000718
	addi	a4,a5,+00000008
	lui	a0,00023086
	c.sw	a5,4(a5)
	c.sw	a5,0(a5)
	c.sw	a5,12(a4)
	c.sw	a5,8(a4)
	c.li	a1,00000001
	addi	a0,a0,+00000060
	jal	zero,0000000023039C6E

;; loopset_led_trigger: 23039FD8
;;   Called from:
;;     230367E8 (in hal_gpio_init_from_dts)
loopset_led_trigger proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,zero,+0000003C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s3,a1
	jal	ra,000000002303218A
	c.bnez	a0,000000002303A032

l23039FF2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002303A02C

l23039FFC:
	jal	ra,000000002303030A

l2303A000:
	lui	a3,00023086
	lui	a2,0002307C
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a5,a3,-0000005C
	addi	a6,zero,+0000009E
	addi	a4,zero,+0000009E
	addi	a3,a3,-0000005C
	addi	a2,a2,+00000064
	addi	a0,a0,+00000074
	jal	ra,000000002304B718

l2303A02A:
	c.j	000000002303A02A

l2303A02C:
	jal	ra,00000000230302E8
	c.j	000000002303A000

l2303A032:
	c.mv	s0,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	addi	s1,s0,+00000008
	sw	s2,s0,+00000030
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230552E8
	c.mv	a0,s1
	jal	ra,000000002305534C
	lui	a2,0002303A
	c.mv	a3,s0
	c.li	a5,00000001
	c.li	a4,00000001
	c.mv	a1,s3
	c.mv	a0,s1
	addi	a2,a2,-00000290
	jal	ra,0000000023055316
	c.li	a1,00000000
	c.li	a2,00000000
	andi	a0,s2,+000000FF
	jal	ra,00000000230390D4
	jal	ra,000000002303100A
	lui	a5,00042015
	addi	a5,a5,-00000718
	c.lw	a5,12(a4)
	addi	a3,a5,+00000008
	c.sw	s0,0(a3)
	c.sw	s0,4(a4)
	c.sw	a5,12(s0)
	c.sw	a4,0(s0)
	jal	ra,000000002303101E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000002
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023039B3E

;; sys_mbox_new: 2303A0A8
;;   Called from:
;;     2303BED0 (in tcpip_init)
;;     23046BB2 (in netconn_alloc)
;;     2304706A (in lwip_netconn_do_listen)
sys_mbox_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000004
	addi	a0,zero,+00000032
	c.swsp	ra,00000084
	jal	ra,000000002302EBD0
	lui	a4,00042020
	c.sw	s0,0(a0)
	addi	a4,a4,-00000268
	lhu	a5,a4,+00000100
	lhu	a3,a4,+00000102
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000100
	bgeu	a3,a5,000000002303A0E0

l2303A0DC:
	sh	a5,a4,+00000102

l2303A0E0:
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; sys_mbox_free: 2303A0F2
;;   Called from:
;;     23045D00 (in netconn_new_with_proto_and_callback)
;;     23046BC6 (in netconn_alloc)
;;     23046C70 (in netconn_drain)
;;     23046CEC (in netconn_drain)
;;     23046DC4 (in accept_function)
;;     23047048 (in lwip_netconn_do_listen)
sys_mbox_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.lw	a0,0(a0)
	lui	s0,00042020
	addi	s0,s0,-00000268
	jal	ra,000000002302F2EC
	c.beqz	a0,000000002303A118

l2303A10C:
	c.nop
	lhu	a5,s0,+00000104
	c.addi	a5,00000001
	sh	a5,s0,+00000104

l2303A118:
	c.lw	s1,0(a0)
	jal	ra,000000002302F310
	lhu	a5,s0,+00000100
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000100
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sys_mbox_post: 2303A132
;;   Called from:
;;     2303BD92 (in tcpip_callback)
;;     2303BE2A (in tcpip_send_msg_wait_sem)
;;     2303BE80 (in tcpip_api_call)
sys_mbox_post proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.li	s0,00000001

l2303A140:
	c.lw	s1,0(a0)
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000000C
	jal	ra,000000002302EC88
	bne	a0,s0,000000002303A140

l2303A150:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sys_mbox_trypost: 2303A15A
;;   Called from:
;;     2303BD26 (in tcpip_inpkt)
;;     2303BDDE (in tcpip_try_callback)
;;     23046322 (in recv_udp)
;;     230464B8 (in err_tcp)
;;     230464CC (in err_tcp)
;;     23046974 (in recv_raw)
;;     23046A52 (in recv_tcp)
;;     23046D36 (in accept_function)
;;     23046D62 (in accept_function)
;;     23046D84 (in accept_function)
sys_mbox_trypost proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,000000002302EC88
	c.li	a5,00000001
	beq	a0,a5,000000002303A18C

l2303A172:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000104
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000104

l2303A186:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303A18C:
	c.li	a0,00000000
	c.j	000000002303A186

;; sys_arch_mbox_fetch: 2303A190
;;   Called from:
;;     2303BC5A (in tcpip_thread)
;;     2303BC80 (in tcpip_thread)
;;     2304600A (in netconn_accept)
;;     230460DE (in netconn_recv_data)
sys_arch_mbox_fetch proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	a2,00000084
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.mv	s2,a0
	c.mv	s1,a1
	jal	ra,00000000230302E8
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	s1,000000002303A1AE

l2303A1AC:
	c.addi4spn	s1,0000001C

l2303A1AE:
	c.li	s3,00000001
	c.beqz	a2,000000002303A1DE

l2303A1B2:
	lw	a0,s2,+00000000
	c.mv	a1,s1
	jal	ra,000000002302EFC8
	c.li	a5,00000001
	bne	a0,a5,000000002303A1CA

l2303A1C2:
	jal	ra,00000000230302E8
	c.sub	a0,s0
	c.j	000000002303A1D0

l2303A1CA:
	sw	zero,s1,+00000000
	c.li	a0,FFFFFFFF

l2303A1D0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303A1DE:
	lw	a0,s2,+00000000
	c.li	a2,FFFFFFFF
	c.mv	a1,s1
	jal	ra,000000002302EFC8
	bne	a0,s3,000000002303A1DE

l2303A1EE:
	c.j	000000002303A1C2

;; sys_arch_mbox_tryfetch: 2303A1F0
;;   Called from:
;;     23045FE4 (in netconn_accept)
;;     23046090 (in netconn_recv_data)
;;     23046C66 (in netconn_drain)
;;     23046CE2 (in netconn_drain)
sys_arch_mbox_tryfetch proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a1,000000002303A1F8

l2303A1F6:
	c.addi4spn	a1,0000000C

l2303A1F8:
	c.lw	a0,0(a0)
	c.li	a2,00000000
	jal	ra,000000002302EFC8
	c.lwsp	t3,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi16sp	00000020
	c.jr	ra

;; sys_mbox_valid: 2303A210
;;   Called from:
;;     2303BCE6 (in tcpip_inpkt)
;;     2303BD74 (in tcpip_callback)
;;     2303BDBC (in tcpip_try_callback)
;;     2303BE16 (in tcpip_send_msg_wait_sem)
;;     2303BE6A (in tcpip_api_call)
;;     23045CE2 (in netconn_new_with_proto_and_callback)
;;     23045CEA (in netconn_new_with_proto_and_callback)
;;     23045FC8 (in netconn_accept)
;;     23046064 (in netconn_recv_data)
;;     23046134 (in netconn_recv_data_tcp)
;;     230462F0 (in recv_udp)
;;     230464AE (in err_tcp)
;;     230464C2 (in err_tcp)
;;     23046918 (in recv_raw)
;;     23046A1A (in recv_tcp)
;;     23046C18 (in netconn_free)
;;     23046C20 (in netconn_free)
;;     23046C58 (in netconn_drain)
;;     23046C7E (in netconn_drain)
;;     23046D22 (in accept_function)
;;     2304703E (in lwip_netconn_do_listen)
;;     2304705C (in lwip_netconn_do_listen)
sys_mbox_valid proc
	c.lw	a0,0(a0)
	sltu	a0,zero,a0
	c.jr	ra

;; sys_mbox_set_invalid: 2303A218
;;   Called from:
;;     23046BDE (in netconn_alloc)
;;     23046C76 (in netconn_drain)
;;     23046CF2 (in netconn_drain)
;;     23046DCA (in accept_function)
;;     23047050 (in lwip_netconn_do_listen)
sys_mbox_set_invalid proc
	sw	zero,a0,+00000000
	c.jr	ra

;; sys_sem_new: 2303A21E
;;   Called from:
;;     2303B88C (in lwip_select)
;;     2303BE5C (in tcpip_api_call)
;;     2304626A (in netconn_gethostbyname)
;;     23046BBE (in netconn_alloc)
sys_sem_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000003
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302EBD0
	c.sw	s0,0(a0)
	c.beqz	a0,000000002303A242

l2303A238:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2303A242:
	c.lw	s0,0(a0)
	lui	s0,00042020
	addi	s0,s0,-00000268
	c.bnez	a0,000000002303A264

l2303A24E:
	lhu	a5,s0,+000000F8
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s0,+000000F8

l2303A25A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303A264:
	c.bnez	s1,000000002303A26C

l2303A266:
	c.li	a1,00000001
	jal	ra,000000002302F114

l2303A26C:
	lhu	a5,s0,+000000F4
	lhu	a4,s0,+000000F6
	c.li	a0,00000000
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000000F4
	bgeu	a4,a5,000000002303A25A

l2303A284:
	sh	a5,s0,+000000F6
	c.j	000000002303A25A

;; sys_arch_sem_wait: 2303A28A
;;   Called from:
;;     2303A354 (in sys_mutex_lock)
;;     2303B8FC (in lwip_select)
;;     2303BB58 (in lwip_setsockopt)
;;     2303BE34 (in tcpip_send_msg_wait_sem)
;;     2303BE88 (in tcpip_api_call)
sys_arch_sem_wait proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,00000000230302E8
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.li	s2,00000001
	c.beqz	a1,000000002303A2C8

l2303A2A4:
	c.lw	s1,0(a0)
	jal	ra,000000002302F114
	c.li	a4,00000001
	c.li	a5,FFFFFFFF
	bne	a0,a4,000000002303A2BA

l2303A2B2:
	jal	ra,00000000230302E8
	sub	a5,a0,s0

l2303A2BA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2303A2C8:
	c.lw	s1,0(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	bne	a0,s2,000000002303A2C8

l2303A2D4:
	c.j	000000002303A2B2

;; sys_sem_free: 2303A2D6
;;   Called from:
;;     2303B992 (in lwip_select)
;;     2303BE8E (in tcpip_api_call)
;;     23045CFA (in netconn_new_with_proto_and_callback)
;;     2304628A (in netconn_gethostbyname)
;;     23046C2A (in netconn_free)
sys_sem_free proc
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000F4
	c.addi	a4,FFFFFFFF
	sh	a4,a5,+000000F4
	c.lw	a0,0(a0)
	jal	zero,000000002302F310

;; sys_sem_valid: 2303A2EE
;;   Called from:
;;     2303BE0E (in tcpip_send_msg_wait_sem)
;;     23045CF4 (in netconn_new_with_proto_and_callback)
;;     23046508 (in err_tcp)
;;     23046E02 (in lwip_netconn_do_delconn)
sys_sem_valid proc
	c.lw	a0,0(a0)
	sltu	a0,zero,a0
	c.jr	ra

;; sys_sem_set_invalid: 2303A2F6
;;   Called from:
;;     23046C30 (in netconn_free)
sys_sem_set_invalid proc
	sw	zero,a0,+00000000
	c.jr	ra

;; sys_init: 2303A2FC
;;   Called from:
;;     2303CF6E (in lwip_init)
sys_init proc
	lui	a5,0004200E
	sh	zero,a5,+00000ED0
	c.jr	ra

;; sys_mutex_new: 2303A306
;;   Called from:
;;     2303FCFE (in mem_init)
sys_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002302EE60
	lui	a5,00042020
	c.sw	s0,0(a0)
	addi	a5,a5,-00000268
	c.bnez	a0,000000002303A334

l2303A320:
	lhu	a4,a5,+000000FE
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+000000FE

l2303A32C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303A334:
	lhu	a4,a5,+000000FA
	lhu	a3,a5,+000000FC
	c.li	a0,00000000
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000000FA
	bgeu	a3,a4,000000002303A32C

l2303A34C:
	sh	a4,a5,+000000FC
	c.j	000000002303A32C

;; sys_mutex_lock: 2303A352
;;   Called from:
;;     2303FD78 (in mem_free)
;;     2303FF1E (in mem_trim)
;;     23040036 (in mem_malloc)
sys_mutex_lock proc
	c.li	a1,00000000
	jal	zero,000000002303A28A

;; sys_mutex_unlock: 2303A358
;;   Called from:
;;     2303A364 (in sys_sem_signal)
;;     2303FD86 (in mem_free)
;;     2303FE68 (in mem_free)
;;     2303FF92 (in mem_trim)
;;     2304007C (in mem_malloc)
;;     2304011C (in mem_malloc)
sys_mutex_unlock proc
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002302EC88

;; sys_sem_signal: 2303A364
;;   Called from:
;;     2303AC82 (in lwip_setsockopt_callback)
;;     2303B186 (in event_callback)
;;     230462AA (in lwip_netconn_do_dns_found)
;;     2304641C (in lwip_netconn_do_connected)
;;     23046520 (in err_tcp)
;;     23046590 (in lwip_netconn_do_writemore)
;;     23046842 (in lwip_netconn_do_close_internal)
;;     23046B28 (in lwip_netconn_do_newconn)
;;     23046E12 (in lwip_netconn_do_delconn)
;;     23046ED6 (in lwip_netconn_do_bind)
;;     23046F8E (in lwip_netconn_do_connect)
;;     23046FEC (in lwip_netconn_do_disconnect)
;;     230470A8 (in lwip_netconn_do_listen)
;;     2304712E (in lwip_netconn_do_send)
;;     2304719A (in lwip_netconn_do_recv)
;;     23047226 (in lwip_netconn_do_write)
;;     23047294 (in lwip_netconn_do_getaddr)
;;     2304730E (in lwip_netconn_do_close)
;;     2304737C (in lwip_netconn_do_join_leave_group)
;;     230473C8 (in lwip_netconn_do_gethostbyname)
sys_sem_signal proc
	jal	zero,000000002303A358

;; sys_thread_new: 2303A368
;;   Called from:
;;     2303BEF2 (in tcpip_init)
sys_thread_new proc
	lui	a5,0004200E
	lhu	a6,a5,-00000130
	c.li	a5,00000005
	bgeu	a5,a6,000000002303A382

l2303A376:
	c.li	a0,00000000
	c.jr	ra

l2303A37A:
	c.li	a0,00000000

l2303A37C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303A382:
	c.mv	a7,a3
	c.addi	sp,FFFFFFE0
	c.mv	a6,a1
	c.mv	a3,a2
	slli	a2,a7,00000010
	c.mv	a1,a0
	c.addi4spn	a5,0000000C
	c.srli	a2,00000010
	c.mv	a0,a6
	c.swsp	ra,0000008C
	jal	ra,000000002302FFE8
	c.li	a5,00000001
	bne	a0,a5,000000002303A37A

l2303A3A2:
	c.lwsp	a2,00000044
	c.j	000000002303A37C

;; sys_arch_protect: 2303A3A6
;;   Called from:
;;     2303A6CA (in alloc_socket)
;;     2303A732 (in lwip_link_select_cb)
;;     2303A76A (in lwip_unlink_select_cb)
;;     2303A882 (in lwip_selscan)
;;     2303AA98 (in free_socket)
;;     2303B002 (in event_callback)
;;     2303B048 (in event_callback)
;;     2303B090 (in event_callback)
;;     2303B106 (in event_callback)
;;     2303B234 (in lwip_accept)
;;     2303B948 (in lwip_select)
;;     2303BA40 (in lwip_select)
;;     2303BBBA (in lwip_fcntl)
;;     2303FD26 (in mem_free)
;;     2303FEBE (in mem_trim)
;;     2304015E (in do_memp_malloc_pool)
;;     2304026E (in memp_free)
;;     23040724 (in pbuf_free_ooseq_callback)
;;     230408AA (in pbuf_free)
;;     230409DE (in pbuf_alloc)
;;     23040A08 (in pbuf_alloc)
;;     23040B48 (in pbuf_ref)
;;     23045F70 (in netconn_err)
;;     23046440 (in err_tcp)
sys_arch_protect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303100A
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; sys_arch_unprotect: 2303A3B6
;;   Called from:
;;     2303A6E0 (in alloc_socket)
;;     2303A71C (in alloc_socket)
;;     2303A75E (in lwip_link_select_cb)
;;     2303A79C (in lwip_unlink_select_cb)
;;     2303A8A2 (in lwip_selscan)
;;     2303A908 (in lwip_selscan)
;;     2303AAAA (in free_socket)
;;     2303B034 (in event_callback)
;;     2303B038 (in event_callback)
;;     2303B08C (in event_callback)
;;     2303B102 (in event_callback)
;;     2303B23E (in lwip_accept)
;;     2303B96C (in lwip_select)
;;     2303B9E8 (in lwip_select)
;;     2303B9F2 (in lwip_select)
;;     2303BA5A (in lwip_select)
;;     2303BA64 (in lwip_select)
;;     2303BBE0 (in lwip_fcntl)
;;     2303FD44 (in mem_free)
;;     2303FED4 (in mem_trim)
;;     2304018E (in do_memp_malloc_pool)
;;     23040290 (in memp_free)
;;     23040730 (in pbuf_free_ooseq_callback)
;;     230408BE (in pbuf_free)
;;     230409F0 (in pbuf_alloc)
;;     23040A10 (in pbuf_alloc)
;;     23040B5C (in pbuf_ref)
;;     23045F7C (in netconn_err)
;;     23046460 (in err_tcp)
sys_arch_unprotect proc
	jal	zero,000000002303101E

;; sys_now: 2303A3BA
;;   Called from:
;;     23045212 (in lwip_cyclic_timer)
;;     2304524C (in sys_timeout)
;;     2304535E (in sys_check_timeouts)
;;     230453BC (in sys_timeouts_sleeptime)
;;     23045C92 (in netconn_close_shutdown)
;;     23045D24 (in netconn_prepare_delete)
;;     23045F22 (in netconn_write_vectors_partly)
;;     23046566 (in lwip_netconn_do_writemore)
;;     230467DC (in lwip_netconn_do_close_internal)
;;     230492E6 (in ping_timeout)
;;     23049354 (in ping_timeout)
;;     23049440 (in ping_recv)
sys_now proc
	jal	zero,00000000230302E8

;; lwip_gethostbyname: 2303A3BE
;;   Called from:
;;     230005DE (in client_demo.constprop.3)
;;     2302ADD0 (in ota_tcp_cmd.part.0)
;;     23049610 (in ping_cmd)
lwip_gethostbyname proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s2,a0
	jal	ra,000000002304624C
	c.beqz	a0,000000002303A3EC

l2303A3D2:
	lui	a5,00042020
	addi	a4,zero,+000000D2
	sw	a4,a5,+00000D54
	c.li	a0,00000000

l2303A3E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303A3EC:
	c.lwsp	a2,000000C4
	lui	a0,00042015
	lui	a5,0004200E
	lui	s0,0004200E
	addi	a5,a5,-00000128
	addi	s0,s0,-00000124
	addi	s1,a0,-000006F4
	addi	a2,zero,+00000100
	c.mv	a1,s2
	addi	a0,a0,-000006F4
	c.sw	a5,0(a4)
	c.sw	s0,0(a5)
	sw	zero,s0,+00000004
	jal	ra,00000000230714A8
	lui	a0,00042015
	lui	a4,0004200E
	addi	a5,a0,-00000708
	addi	a4,a4,-0000012C
	sw	zero,a4,+00000000
	c.sw	a5,4(a4)
	c.li	a4,00000002
	c.sw	a5,8(a4)
	c.li	a4,00000004
	sb	zero,s1,+00000100
	c.sw	a5,0(s1)
	c.sw	a5,12(a4)
	c.sw	a5,16(s0)
	addi	a0,a0,-00000708
	c.j	000000002303A3E0

;; lwip_freeaddrinfo: 2303A448
;;   Called from:
;;     2305F402 (in mbedtls_net_connect)
lwip_freeaddrinfo proc
	c.mv	a1,a0
	c.bnez	a0,000000002303A44E

l2303A44C:
	c.jr	ra

l2303A44E:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004

l2303A454:
	c.lw	a1,28(s0)
	c.li	a0,0000000C
	jal	ra,000000002304024E
	c.mv	a1,s0
	c.bnez	s0,000000002303A454

l2303A460:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lwip_getaddrinfo: 2303A468
;;   Called from:
;;     2305F3B6 (in mbedtls_net_connect)
lwip_getaddrinfo proc
	c.bnez	a3,000000002303A472

l2303A46A:
	addi	a5,zero,+000000CA
	c.mv	a0,a5
	c.jr	ra

l2303A472:
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	sw	zero,a3,+00000000
	c.mv	s4,a3
	c.mv	s1,a2
	c.mv	s2,a0
	c.bnez	a0,000000002303A498

l2303A490:
	c.bnez	a1,000000002303A4FA

l2303A492:
	addi	a5,zero,+000000C8
	c.j	000000002303A510

l2303A498:
	c.beqz	a2,000000002303A4FE

l2303A49A:
	lw	s3,s1,+00000004
	addi	a5,zero,+000000CC
	andi	s3,s3,-00000003
	bne	s3,zero,000000002303A510

l2303A4AA:
	c.beqz	a1,000000002303A526

l2303A4AC:
	c.mv	a0,a1
	jal	ra,0000000023070AF0
	c.lui	a4,00010000
	addi	a3,a0,-00000001
	c.addi	a4,FFFFFFFE
	c.mv	s3,a0
	addi	a5,zero,+000000C9
	bltu	a4,a3,000000002303A510

l2303A4C4:
	beq	s2,zero,000000002303A52A

l2303A4C8:
	c.beqz	s1,000000002303A502

l2303A4CA:
	c.lw	s1,0(a5)
	c.andi	a5,00000004
	c.beqz	a5,000000002303A502

l2303A4D0:
	c.addi4spn	a1,0000001C
	c.mv	a0,s2
	jal	ra,000000002303FA94
	c.beqz	a0,000000002303A492

l2303A4DA:
	c.mv	a0,s2
	jal	ra,000000002307132C
	addi	a5,zero,+00000100
	c.mv	s5,a0
	addi	a2,a0,+00000031
	bgeu	a5,a0,000000002303A53C

l2303A4EE:
	c.j	000000002303A50C

l2303A4F0:
	lui	a5,00001000
	addi	a5,a5,+0000007F
	c.j	000000002303A534

l2303A4FA:
	c.bnez	a2,000000002303A49A

l2303A4FC:
	c.j	000000002303A4AC

l2303A4FE:
	c.li	s3,00000000
	c.bnez	a1,000000002303A4AC

l2303A502:
	c.addi4spn	a1,0000001C
	c.mv	a0,s2
	jal	ra,000000002304624C
	c.beqz	a0,000000002303A4DA

l2303A50C:
	addi	a5,zero,+000000CA

l2303A510:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2303A526:
	bne	s2,zero,000000002303A4CA

l2303A52A:
	c.beqz	s1,000000002303A4F0

l2303A52C:
	c.lw	s1,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002303A4F0

l2303A532:
	c.li	a5,00000000

l2303A534:
	c.swsp	a5,0000008C
	c.li	s5,00000000
	addi	a2,zero,+00000030

l2303A53C:
	c.li	a0,0000000C
	c.swsp	a2,00000084
	jal	ra,0000000023040230
	c.mv	s0,a0
	addi	a5,zero,+000000CB
	c.beqz	a0,000000002303A510

l2303A54C:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	addi	s6,s0,+00000020
	jal	ra,0000000023070EB8
	c.lwsp	t3,000000E4
	slli	a0,s3,00000010
	c.srli	a0,00000010
	c.sw	s0,36(a5)
	addi	a5,zero,+00000210
	sh	a5,s0,+00000020
	jal	ra,000000002303C332
	c.li	a5,00000002
	sh	a0,s0,+00000022
	c.sw	s0,4(a5)
	c.beqz	s1,000000002303A580

l2303A578:
	c.lw	s1,8(a5)
	c.sw	s0,8(a5)
	c.lw	s1,12(a5)
	c.sw	s0,12(a5)

l2303A580:
	beq	s2,zero,000000002303A59A

l2303A584:
	addi	a0,s0,+00000030
	c.mv	a2,s5
	c.sw	s0,24(a0)
	c.mv	a1,s2
	jal	ra,0000000023070C7C
	c.lw	s0,24(a5)
	c.add	s5,a5
	sb	zero,s5,+00000000

l2303A59A:
	c.li	a5,00000010
	c.sw	s0,16(a5)
	sw	s6,s0,+00000014
	sw	s0,s4,+00000000
	c.li	a5,00000000
	c.j	000000002303A510

;; netifapi_do_netif_add: 2303A5AA
netifapi_do_netif_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lw	a6,a0,+00000020
	c.lw	a0,28(a5)
	c.lw	a0,24(a4)
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,0000000023040406
	c.beqz	a0,000000002303A5CC

l2303A5C4:
	c.li	a0,00000000

l2303A5C6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2303A5CC:
	c.li	a0,FFFFFFF4
	c.j	000000002303A5C6

;; netifapi_do_netif_set_addr: 2303A5D0
netifapi_do_netif_set_addr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,0000000023040390
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_do_netif_common: 2303A5E8
netifapi_do_netif_common proc
	lw	t1,a0,+00000010
	c.mv	a5,a0
	c.lw	a0,8(a0)
	beq	t1,zero,000000002303A5F6

l2303A5F4:
	c.jr	t1

l2303A5F6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,12(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_netif_add: 2303A606
;;   Called from:
;;     23028288 (in wifi_mgmr_sta_enable)
;;     230284F2 (in wifi_mgmr_ap_enable)
netifapi_netif_add proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002303A614

l2303A60C:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l2303A614:
	c.bnez	a2,000000002303A61E

l2303A616:
	lui	a2,0002308E
	addi	a2,a2,-00000174

l2303A61E:
	c.bnez	a3,000000002303A628

l2303A620:
	lui	a3,0002308E
	addi	a3,a3,-00000174

l2303A628:
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+000005AA
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a6,00000094
	jal	ra,000000002303BE44
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_set_addr: 2303A64A
;;   Called from:
;;     23023F10 (in bl_rx_sm_disconnect_ind)
;;     2302513C (in stateConnectedIPNoEnter)
;;     23025992 (in stateConnectedIPYes_exit)
netifapi_netif_set_addr proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002303A658

l2303A650:
	lui	a1,0002308E
	addi	a1,a1,-00000174

l2303A658:
	c.bnez	a2,000000002303A662

l2303A65A:
	lui	a2,0002308E
	addi	a2,a2,-00000174

l2303A662:
	c.bnez	a3,000000002303A66C

l2303A664:
	lui	a3,0002308E
	addi	a3,a3,-00000174

l2303A66C:
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+000005D0
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	jal	ra,000000002303BE44
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_common: 2303A688
;;   Called from:
;;     23023E18 (in bl_rx_sm_connect_ind)
;;     23023E2A (in bl_rx_sm_connect_ind)
;;     23023F02 (in bl_rx_sm_disconnect_ind)
;;     2302512E (in stateConnectedIPNoEnter)
;;     23025598 (in stateGlobalGuard_AP)
;;     230255AA (in stateGlobalGuard_AP)
;;     23025984 (in stateConnectedIPYes_exit)
;;     23025B9E (in stateGlobalGuard_stop)
;;     23025BBC (in stateGlobalGuard_stop)
;;     23028934 (in wifi_netif_dhcp_start)
netifapi_netif_common proc
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000088
	lui	a0,0002303A
	c.swsp	a1,0000000C
	addi	a0,a0,+000005E8
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a2,0000008C
	jal	ra,000000002303BE44
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; alloc_socket: 2303A6A6
;;   Called from:
;;     2303B216 (in lwip_accept)
;;     2303B7BC (in lwip_socket)
alloc_socket proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s2,s0,-000004F4
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s4,a1
	c.li	s1,00000000
	addi	s0,s0,-000004F4
	c.li	s5,00000015

l2303A6CA:
	jal	ra,000000002303A3A6
	lw	a5,s2,+00000000
	c.bnez	a5,000000002303A71A

l2303A6D4:
	slli	s5,s1,00000004
	add	s2,s0,s5
	sw	s3,s2,+00000000
	jal	ra,000000002303A3B6
	sw	zero,s2,+00000004
	sh	zero,s2,+00000008
	lbu	a5,s3,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303A6FC

l2303A6FA:
	c.li	s4,00000001

l2303A6FC:
	c.add	s0,s5
	sh	s4,s0,+0000000A
	sh	zero,s0,+0000000C

l2303A706:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303A71A:
	c.addi	s1,00000001
	jal	ra,000000002303A3B6
	c.addi	s2,00000010
	bne	s1,s5,000000002303A6CA

l2303A726:
	c.li	s1,FFFFFFFF
	c.j	000000002303A706

;; lwip_link_select_cb: 2303A72A
;;   Called from:
;;     2303B8A8 (in lwip_select)
lwip_link_select_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002303A3A6
	lui	a5,0004200E
	lw	a4,a5,-00000118
	addi	a5,a5,-00000118
	c.sw	s0,0(a4)
	c.beqz	a4,000000002303A748

l2303A746:
	c.sw	a4,4(s0)

l2303A748:
	c.sw	a5,0(s0)
	lui	a5,0004200E
	addi	a5,a5,-0000011C
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303A3B6

;; lwip_unlink_select_cb: 2303A762
;;   Called from:
;;     2303B98C (in lwip_select)
lwip_unlink_select_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002303A3A6
	c.lw	s0,0(a5)
	c.beqz	a5,000000002303A776

l2303A772:
	c.lw	s0,4(a4)
	c.sw	a5,4(a4)

l2303A776:
	lui	a5,0004200E
	addi	a5,a5,-00000118
	c.lw	a5,0(a3)
	c.lw	s0,0(a4)
	bne	a3,s0,000000002303A7A0

l2303A786:
	c.sw	a5,0(a4)
	lui	a5,0004200E
	addi	a5,a5,-0000011C
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303A3B6

l2303A7A0:
	c.lw	s0,4(a5)
	c.j	000000002303A786

;; lwip_selscan: 2303A7A4
;;   Called from:
;;     2303B846 (in lwip_select)
;;     2303B8CA (in lwip_select)
;;     2303B9B0 (in lwip_select)
lwip_selscan proc
	c.addi16sp	FFFFFF90
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.mv	s8,a4
	c.mv	s5,a5
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s7,000000A4
	c.mv	s6,a0
	c.mv	s9,a1
	c.mv	s10,a2
	c.mv	s11,a3
	c.mv	s4,a6
	c.li	a5,00000000
	c.li	a4,00000008

l2303A7D2:
	c.addi4spn	a3,00000018
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002303A7D2

l2303A7E0:
	c.li	a5,00000000
	c.li	a4,00000008

l2303A7E4:
	c.addi4spn	a3,00000020
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002303A7E4

l2303A7F2:
	c.li	a5,00000000
	c.li	a4,00000008

l2303A7F6:
	c.addi4spn	a3,00000028
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,000000002303A7F6

l2303A804:
	lui	s2,00042015
	addi	s2,s2,-000004F4
	c.li	s1,00000000
	c.li	s0,00000000
	c.li	s7,00000014
	c.li	s3,00000001

l2303A814:
	blt	s0,s6,000000002303A83E

l2303A818:
	c.lwsp	s8,000000E4
	sw	a5,s8,+00000000
	c.lwsp	t3,000000E4
	sw	a5,s8,+00000004
	c.lwsp	zero,000001F4
	sw	a5,s5,+00000000
	c.lwsp	tp,000001F4
	sw	a5,s5,+00000004
	c.lwsp	s0,000001F4
	sw	a5,s4,+00000000
	c.lwsp	a2,000001F4
	sw	a5,s4,+00000004
	c.j	000000002303A90E

l2303A83E:
	beq	s9,zero,000000002303A854

l2303A842:
	srli	a4,s0,00000005
	c.slli	a4,02
	c.add	a4,s9
	c.lw	a4,0(a4)
	sll	a5,s3,s0
	c.and	a5,a4
	c.bnez	a5,000000002303A882

l2303A854:
	beq	s10,zero,000000002303A86A

l2303A858:
	srli	a4,s0,00000005
	c.slli	a4,02
	c.add	a4,s10
	c.lw	a4,0(a4)
	sll	a5,s3,s0
	c.and	a5,a4
	c.bnez	a5,000000002303A882

l2303A86A:
	beq	s11,zero,000000002303A902

l2303A86E:
	srli	a7,s0,00000005
	c.slli	a7,02
	c.add	a7,s11
	lw	a5,a7,+00000000
	sll	a0,s3,s0
	c.and	a0,a5
	c.beqz	a0,000000002303A902

l2303A882:
	jal	ra,000000002303A3A6
	bltu	s7,s0,000000002303A908

l2303A88A:
	lhu	a1,s2,+0000000A
	lhu	a2,s2,+0000000C
	lw	a6,s2,+00000004
	lh	a5,s2,+00000008
	c.swsp	a1,00000080
	c.swsp	a2,00000000
	c.swsp	a6,00000084
	c.swsp	a5,00000004
	jal	ra,000000002303A3B6
	c.lwsp	zero,00000084
	c.lwsp	tp,00000064
	beq	s9,zero,000000002303A8CE

l2303A8AE:
	lw	a4,s9,+00000000
	sll	a3,s3,s0
	c.and	a4,a3
	c.beqz	a4,000000002303A8CE

l2303A8BA:
	c.lwsp	a2,00000008
	c.lwsp	s0,000000E4
	bne	a6,zero,000000002303A8C6

l2303A8C2:
	bge	zero,a5,000000002303A8CE

l2303A8C6:
	c.lwsp	s8,000000E4
	c.addi	s1,00000001
	c.or	a5,a3
	c.swsp	a5,0000000C

l2303A8CE:
	beq	s10,zero,000000002303A8E8

l2303A8D2:
	lw	a4,s10,+00000000
	sll	a3,s3,s0
	c.and	a4,a3
	c.beqz	a4,000000002303A8E8

l2303A8DE:
	c.beqz	a1,000000002303A8E8

l2303A8E0:
	c.lwsp	zero,000001F4
	c.addi	s1,00000001
	c.or	a5,a3
	c.swsp	a5,00000010

l2303A8E8:
	beq	s11,zero,000000002303A902

l2303A8EC:
	lw	a4,s11,+00000000
	sll	a3,s3,s0
	c.and	a4,a3
	c.beqz	a4,000000002303A902

l2303A8F8:
	c.beqz	a2,000000002303A902

l2303A8FA:
	c.lwsp	s0,000001F4
	c.addi	s1,00000001
	c.or	a5,a3
	c.swsp	a5,00000014

l2303A902:
	c.addi	s0,00000001
	c.addi	s2,00000010
	c.j	000000002303A814

l2303A908:
	jal	ra,000000002303A3B6
	c.li	s1,FFFFFFFF

l2303A90E:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.mv	a0,s1
	c.lwsp	ra,00000158
	c.lwsp	t0,00000134
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

;; lwip_recv_tcp: 2303A92E
;;   Called from:
;;     2303B508 (in lwip_recvfrom)
lwip_recv_tcp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s3,a0
	c.mv	s5,a1
	c.mv	s4,a3
	c.mv	s1,a2
	bge	a2,zero,000000002303A956

l2303A94E:
	lui	s1,00080000
	xori	s1,s1,-00000001

l2303A956:
	andi	a5,s4,+00000008
	c.li	a2,00000008
	c.beqz	a5,000000002303A960

l2303A95E:
	c.li	a2,0000000C

l2303A960:
	c.li	s0,00000000
	andi	s6,s4,+00000001

l2303A966:
	lw	a5,s3,+00000004
	c.beqz	a5,000000002303A9C8

l2303A96C:
	c.swsp	a5,00000084

l2303A96E:
	c.lwsp	a2,00000044
	lhu	s2,a0,+00000008
	blt	s2,s1,000000002303A980

l2303A978:
	slli	s2,s1,00000010
	srli	s2,s2,00000010

l2303A980:
	c.li	a3,00000000
	c.mv	a2,s2
	add	a1,s5,s0
	add	s7,s2,s0
	jal	ra,0000000023040C4A
	bne	s6,zero,000000002303AA26

l2303A994:
	c.lwsp	a2,00000044
	lhu	a5,a0,+00000008
	sub	a5,a5,s2
	bge	zero,a5,000000002303AA1C

l2303A9A2:
	c.mv	a1,s2
	jal	ra,0000000023040AEA
	sw	a0,s3,+00000004

l2303A9AC:
	sub	s1,s1,s2
	c.li	a2,0000001C
	c.mv	s0,s7
	blt	zero,s1,000000002303A966

l2303A9B8:
	beq	s7,zero,000000002303AA2C

l2303A9BC:
	lw	a0,s3,+00000000
	c.mv	a1,s0
	jal	ra,0000000023045E3C
	c.j	000000002303A9E0

l2303A9C8:
	lw	a0,s3,+00000000
	c.addi4spn	a1,0000000C
	jal	ra,00000000230461E8
	c.mv	s2,a0
	c.beqz	a0,000000002303AA14

l2303A9D6:
	c.beqz	s0,000000002303A9F8

l2303A9D8:
	andi	s4,s4,+00000001
	beq	s4,zero,000000002303A9BC

l2303A9E0:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2303A9F8:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303AA06

l2303A9FE:
	lui	a5,00042020
	sw	a0,a5,+00000D50

l2303AA06:
	addi	s0,s2,+0000000F
	sltu	s0,zero,s0
	sub	s0,zero,s0
	c.j	000000002303A9E0

l2303AA14:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000004
	c.j	000000002303A96E

l2303AA1C:
	sw	zero,s3,+00000004
	jal	ra,0000000023040890
	c.j	000000002303A9AC

l2303AA26:
	c.mv	s0,s7
	bne	s7,zero,000000002303A9E0

l2303AA2C:
	c.li	s0,00000000
	c.j	000000002303A9E0

;; lwip_sock_make_addr.isra.3: 2303AA30
;;   Called from:
;;     2303AB56 (in lwip_recvfrom_udp_raw.isra.6)
;;     2303B52C (in lwip_recvfrom)
lwip_sock_make_addr.isra.3 proc
	c.addi16sp	FFFFFFD0
	addi	a5,zero,+00000210
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	sh	a5,sp,+00000010
	c.mv	s1,a2
	jal	ra,000000002303C332
	c.lw	s0,0(a5)
	sh	a0,sp,+00000012
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	c.swsp	a5,00000088
	jal	ra,0000000023070EB8
	c.lwsp	a2,000000A4
	lbu	a5,sp,+00000010
	c.li	s0,00000001
	c.lw	a3,0(a4)
	bltu	a4,a5,000000002303AA74

l2303AA6C:
	c.li	s0,00000000
	bgeu	a5,a4,000000002303AA74

l2303AA72:
	c.sw	a3,0(a5)

l2303AA74:
	c.lw	a3,0(a2)
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; free_socket: 2303AA8A
;;   Called from:
;;     2303B278 (in lwip_accept)
;;     2303B3EE (in lwip_close)
free_socket proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303A3A6
	c.lw	s0,4(s1)
	lw	s2,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000
	jal	ra,000000002303A3B6
	c.beqz	s1,000000002303AABA

l2303AAB0:
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.beqz	a1,000000002303AACE

l2303AAB6:
	jal	ra,0000000023040890

l2303AABA:
	beq	s2,zero,000000002303AAD4

l2303AABE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023045D42

l2303AACE:
	jal	ra,00000000230473FA
	c.j	000000002303AABA

l2303AAD4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; lwip_recvfrom_udp_raw.isra.6: 2303AAE0
;;   Called from:
;;     2303B56C (in lwip_recvfrom)
lwip_recvfrom_udp_raw.isra.6 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.lw	a2,8(a5)
	c.mv	s7,a0
	c.bnez	a5,000000002303AB02

l2303AAFA:
	c.lw	a2,12(a5)
	c.li	a0,FFFFFFF0
	blt	zero,a5,000000002303AB7E

l2303AB02:
	lw	a5,s7,+00000004
	c.mv	s0,a2
	andi	a2,a1,+00000008
	sltu	a2,zero,a2
	c.swsp	a5,00000084
	c.mv	s5,a3
	c.mv	s2,a1
	c.slli	a2,02
	c.bnez	a5,000000002303AB2C

l2303AB1A:
	lw	a0,s7,+00000000
	c.addi4spn	a1,0000000C
	jal	ra,0000000023046108
	c.bnez	a0,000000002303AB7E

l2303AB26:
	c.lwsp	a2,000000E4
	sw	a5,s7,+00000004

l2303AB2C:
	c.lwsp	a2,000000E4
	c.li	s4,00000000
	c.li	s1,00000000
	c.lw	a5,0(a5)
	lhu	s6,a5,+00000008

l2303AB38:
	c.lw	s0,12(a5)
	bge	s4,a5,000000002303AB42

l2303AB3E:
	bltu	s1,s6,000000002303AB94

l2303AB42:
	c.lw	s0,0(a2)
	c.beqz	a2,000000002303AB5A

l2303AB46:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002303AB5A

l2303AB4A:
	c.lwsp	a2,00000044
	addi	a3,s0,+00000004
	lhu	a1,a0,+0000000C
	c.addi	a0,00000008
	jal	ra,000000002303AA30

l2303AB5A:
	c.lw	s0,16(a5)
	sw	zero,s0,+00000018
	c.beqz	a5,000000002303AB66

l2303AB62:
	sw	zero,s0,+00000014

l2303AB66:
	andi	s2,s2,+00000001
	bne	s2,zero,000000002303AB78

l2303AB6E:
	c.lwsp	a2,00000044
	sw	zero,s7,+00000004
	jal	ra,00000000230473FA

l2303AB78:
	sh	s6,s5,+00000000
	c.li	a0,00000000

l2303AB7E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2303AB94:
	c.lw	s0,8(a4)
	slli	a5,s4,00000003
	sub	s3,s6,s1
	c.add	a5,a4
	c.lw	a5,4(a4)
	c.slli	s3,10
	srli	s3,s3,00000010
	bltu	s3,a4,000000002303ABB4

l2303ABAC:
	slli	s3,a4,00000010
	srli	s3,s3,00000010

l2303ABB4:
	c.lw	a5,0(a1)
	c.lwsp	a2,000000E4
	c.mv	a3,s1
	c.add	s1,s3
	c.lw	a5,0(a0)
	c.mv	a2,s3
	c.slli	s1,10
	jal	ra,0000000023040C4A
	c.srli	s1,00000010
	c.addi	s4,00000001
	c.j	000000002303AB38

;; get_socket: 2303ABCC
;;   Called from:
;;     2303B03E (in event_callback)
;;     2303B1C2 (in lwip_accept)
;;     2303B2F2 (in lwip_bind)
;;     2303B35E (in lwip_close)
;;     2303B38E (in lwip_close)
;;     2303B400 (in lwip_connect)
;;     2303B46E (in lwip_listen)
;;     2303B4EA (in lwip_recvfrom)
;;     2303B5C2 (in lwip_sendto)
;;     2303B6D6 (in lwip_send)
;;     2303BA78 (in lwip_shutdown)
;;     2303BB04 (in lwip_setsockopt)
;;     2303BB76 (in lwip_fcntl)
get_socket proc
	c.li	a5,00000014
	bltu	a5,a0,000000002303ABE4

l2303ABD2:
	slli	a5,a0,00000004
	lui	a0,00042015
	addi	a0,a0,-000004F4
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.bnez	a5,000000002303ABF0

l2303ABE4:
	lui	a5,00042020
	c.li	a4,00000009
	sw	a4,a5,+00000D50
	c.li	a0,00000000

l2303ABF0:
	c.jr	ra

;; lwip_setsockopt_callback: 2303ABF2
lwip_setsockopt_callback proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lw	s3,a0,+00000000
	c.mv	s1,a0
	c.li	a3,00000014
	c.lw	a0,4(s0)
	c.lw	a0,8(a5)
	c.lw	s1,16(a4)
	c.lw	a0,12(a0)
	bltu	a3,s3,000000002303AFD0

l2303AC14:
	lui	a3,00042015
	addi	a2,a3,-000004F4
	slli	s4,s3,00000004
	c.add	a2,s4
	c.lw	a2,0(a2)
	addi	s2,a3,-000004F4
	beq	a2,zero,000000002303AFD0

l2303AC2C:
	c.li	a1,00000006
	beq	s0,a1,000000002303AF4A

l2303AC32:
	c.lui	a3,00001000
	addi	a6,a3,-00000001
	beq	s0,a6,000000002303AC46

l2303AC3C:
	beq	s0,zero,000000002303ADC0

l2303AC40:
	addi	s0,zero,+0000005C
	c.j	000000002303AC7E

l2303AC46:
	addi	a1,a3,+00000005
	beq	a5,a1,000000002303AD0A

l2303AC4E:
	blt	a1,a5,000000002303AC96

l2303AC52:
	c.li	a3,00000008
	beq	a5,a3,000000002303AC66

l2303AC58:
	addi	a3,zero,+00000020
	beq	a5,a3,000000002303AC66

l2303AC60:
	c.li	a3,00000004
	bne	a5,a3,000000002303AC40

l2303AC66:
	addi	a3,zero,+00000020
	bne	a5,a3,000000002303ACCE

l2303AC6E:
	lbu	a3,a2,+00000000
	addi	s0,zero,+0000005C
	andi	a3,a3,+000000F0
	beq	a3,a5,000000002303ACDC

l2303AC7E:
	c.lw	s1,24(a0)
	c.sw	s1,20(s0)
	jal	ra,000000002303A364
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303AC96:
	addi	a1,a3,+0000000A
	beq	a5,a1,000000002303AD2C

l2303AC9E:
	addi	a1,a3,+0000000B
	beq	a5,a1,000000002303AD66

l2303ACA6:
	c.addi	a3,00000006
	bne	a5,a3,000000002303AC40

l2303ACAC:
	c.li	a5,0000000F
	c.li	s0,00000016
	bgeu	a5,a4,000000002303AC7E

l2303ACB4:
	c.lw	a0,8(a4)
	addi	a3,zero,+000003E8
	c.lw	a0,0(a5)
	xor	a4,a4,a3
	add	a5,a3,a5
	c.add	a5,a4
	blt	a5,zero,000000002303AC7E

l2303ACCA:
	c.sw	a2,32(a5)
	c.j	000000002303ACFA

l2303ACCE:
	c.li	a3,00000004
	beq	a5,a3,000000002303ACDC

l2303ACD4:
	c.li	a3,00000008
	beq	a5,a3,000000002303ACDC

l2303ACDA:
	c.li	a5,00000000

l2303ACDC:
	c.li	a3,00000003
	c.li	s0,00000016
	bgeu	a3,a4,000000002303AC7E

l2303ACE4:
	c.lw	a2,4(a3)
	c.beqz	a3,000000002303AC7E

l2303ACE8:
	c.lw	a0,0(s0)
	c.slli	a5,18
	lb	a4,a3,+00000009
	c.srai	a5,00000018
	c.beqz	s0,000000002303ACFE

l2303ACF4:
	c.or	a4,a5
	sb	a4,a3,+00000009

l2303ACFA:
	c.li	s0,00000000
	c.j	000000002303AC7E

l2303ACFE:
	xori	a5,a5,-00000001
	c.and	a4,a5
	sb	a4,a3,+00000009
	c.j	000000002303AC7E

l2303AD0A:
	c.li	a5,0000000F
	c.li	s0,00000016
	bgeu	a5,a4,000000002303AC7E

l2303AD12:
	c.lw	a0,8(a4)
	addi	a3,zero,+000003E8
	c.lw	a0,0(a5)
	xor	a4,a4,a3
	add	a5,a3,a5
	c.add	a5,a4
	blt	a5,zero,000000002303AC7E

l2303AD28:
	c.sw	a2,28(a5)
	c.j	000000002303ACFA

l2303AD2C:
	c.li	a5,00000003
	c.li	s0,00000016
	bgeu	a5,a4,000000002303AC7E

l2303AD34:
	c.lw	a2,4(a4)
	c.beqz	a4,000000002303AC7E

l2303AD38:
	lbu	a5,a2,+00000000
	addi	a3,zero,+00000020
	addi	s0,zero,+0000005C
	andi	a5,a5,+000000F0
	bne	a5,a3,000000002303AC7E

l2303AD4C:
	c.lw	a0,0(s0)
	lbu	a5,a4,+00000010
	c.beqz	s0,000000002303AD5E

l2303AD54:
	ori	a5,a5,+00000001
	sb	a5,a4,+00000010
	c.j	000000002303ACFA

l2303AD5E:
	c.andi	a5,FFFFFFFE
	sb	a5,a4,+00000010
	c.j	000000002303AC7E

l2303AD66:
	c.li	a5,00000005
	c.li	s0,00000016
	bgeu	a5,a4,000000002303AC7E

l2303AD6E:
	lbu	a5,a0,+00000000
	c.li	a1,00000000
	c.beqz	a5,000000002303AD82

l2303AD76:
	jal	ra,00000000230406B4
	c.mv	a1,a0
	c.li	s0,00000013
	beq	a0,zero,000000002303AC7E

l2303AD82:
	add	a3,s2,s4
	c.lw	a3,0(a4)
	addi	a3,zero,+00000020
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,000000002303ADB0

l2303AD98:
	addi	a3,zero,+00000040
	beq	a5,a3,000000002303ADB8

l2303ADA0:
	c.li	a3,00000010
	c.li	s0,00000000
	bne	a5,a3,000000002303AC7E

l2303ADA8:
	c.lw	a4,4(a0)
	jal	ra,0000000023041562
	c.j	000000002303AC7E

l2303ADB0:
	c.lw	a4,4(a0)
	jal	ra,00000000230459A0
	c.j	000000002303ACFA

l2303ADB8:
	c.lw	a4,4(a0)
	jal	ra,0000000023041002
	c.j	000000002303ACFA

l2303ADC0:
	addi	a3,a5,-00000001
	bltu	a1,a3,000000002303AC40

l2303ADC8:
	lui	a1,00023086
	c.slli	a3,02
	addi	a1,a1,+00000120
	c.add	a3,a1
	c.lw	a3,0(a3)
	c.jr	a3
2303ADD8                         8D 47 63 FD E7 1E 5C 42         .Gc...\B
2303ADE0 63 8A 07 1E 18 41 A3 85 E7 00 51 BD 8D 47 63 F3 c....A....Q..Gc.
2303ADF0 E7 1E 5C 42 63 80 07 1E 18 41 23 85 E7 00 41 B5 ..\Bc....A#...A.
2303AE00 63 0A 07 1C 58 42 63 07 07 1C 83 47 06 00 93 06 c...XBc....G....
2303AE10 00 02 93 F7 07 0F E3 95 D7 E2 83 47 05 00 A3 0E ...........G....
2303AE20 F7 00 B1 BD 8D 47 63 F7 E7 1A 58 42 63 04 07 1A .....Gc...XBc...
2303AE30 83 47 06 00 93 06 00 02 93 F7 07 0F E3 92 D7 E0 .G..............
2303AE40 1C 41 1C CF 2D BD 63 07 07 18 58 42 63 04 07 18 .A..-.c...XBc...
2303AE50 83 47 06 00 93 06 00 02 93 F7 07 0F E3 92 D7 DE .G..............
2303AE60 83 46 05 00 83 47 07 01 81 C6 93 E7 87 00 CD BD .F...G..........
2303AE70 DD 9B FD B5 9D 46 63 FF E6 14 58 42 63 0C 07 14 .....Fc...XBc...
2303AE80 03 47 06 00 93 06 00 02 13 77 07 0F E3 1A D7 DA .G.......w......
2303AE90 58 41 3A C4 18 41 3A C6 0D 47 63 99 E7 04 4E 85 XA:..A:..Gc...N.
2303AEA0 EF F0 DF D2 31 C1 B7 57 01 42 93 86 07 A1 01 47 ....1..W.B.....G
2303AEB0 93 87 07 A1 55 46 8C 42 85 E5 B1 46 33 07 D7 02 ....UF.B...F3...
2303AEC0 6C 00 BA 97 22 47 88 C3 28 00 D8 C3 32 47 98 C7 l..."G..(...2G..
2303AED0 EF 40 20 32 2A 89 E3 04 09 DA 13 04 30 06 45 B3 .@ 2*.......0.E.
2303AEE0 05 07 B1 06 E3 19 C7 FC 31 44 51 BB 6C 00 28 00 ........1DQ.l.(.
2303AEF0 EF 40 80 41 2A 89 4E 85 EF F0 5F CD 69 DD A2 45 .@.A*.N..._.i..E
2303AF00 32 48 B7 57 01 42 93 86 07 A1 01 47 93 87 07 A1 2H.W.B.....G....
2303AF10 55 46 83 A8 06 00 63 15 15 03 83 A8 46 00 63 91 UF....c.....F.c.
2303AF20 B8 02 83 A8 86 00 63 9D 08 01 B1 46 33 07 D7 02 ......c....F3...
2303AF30 BA 97 23 A0 07 00 23 A2 07 00 23 A4 07 00 61 BF ..#...#...#...a.
2303AF40 05 07 B1 06 E3 17 C7 FC 79 B7                   ........y.     

l2303AF4A:
	c.li	a3,00000003
	c.li	s0,00000016
	bgeu	a3,a4,000000002303AC7E

l2303AF52:
	c.lw	a2,4(a4)
	beq	a4,zero,000000002303AC7E

l2303AF58:
	lbu	a3,a2,+00000000
	c.li	a2,00000010
	addi	s0,zero,+0000005C
	andi	a3,a3,+000000F0
	bne	a3,a2,000000002303AC7E

l2303AF6A:
	lbu	a2,a4,+00000014
	c.li	a3,00000001
	c.li	s0,00000016
	beq	a2,a3,000000002303AC7E

l2303AF76:
	c.addi	a5,FFFFFFFF
	c.li	a3,00000004
	addi	s0,zero,+0000005C
	bltu	a3,a5,000000002303AC7E

l2303AF82:
	lui	a3,00023086
	c.slli	a5,02
	addi	a3,a3,+0000013C
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.lw	a0,0(s0)
	c.jr	a5
2303AF94             83 57 A7 01 11 C4 93 E7 07 04 23 1D     .W........#.
2303AFA0 F7 00 A1 BB 93 F7 F7 FB 23 1D F7 00 C9 B9 93 07 ........#.......
2303AFB0 80 3E 33 04 F4 02 23 2A 87 08 81 B3 93 07 80 3E .>3...#*.......>
2303AFC0 33 04 F4 02 23 2C 87 08 0D BB 23 2E 87 08 35 B3 3...#,....#...5.

l2303AFD0:
	c.li	s0,00000009
	c.j	000000002303AC7E
2303AFD4             59 44 65 B1                             YDe.       

;; event_callback: 2303AFD8
event_callback proc
	beq	a0,zero,000000002303B1AC

l2303AFDC:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,24(s1)
	c.mv	s2,a1
	c.mv	s0,a0
	bge	s1,zero,000000002303B03C

l2303B002:
	jal	ra,000000002303A3A6
	c.lw	s0,24(s1)
	c.mv	a5,a0
	bge	s1,zero,000000002303B038

l2303B00E:
	bne	s2,zero,000000002303B016

l2303B012:
	c.addi	s1,FFFFFFFF
	c.sw	s0,24(s1)

l2303B016:
	c.mv	a0,a5

l2303B018:
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	jal	zero,000000002303A3B6

l2303B038:
	jal	ra,000000002303A3B6

l2303B03C:
	c.mv	a0,s1
	jal	ra,000000002303ABCC
	c.mv	s0,a0
	beq	a0,zero,000000002303B18E

l2303B048:
	jal	ra,000000002303A3A6
	c.li	a4,00000004
	c.li	a5,00000001
	bltu	a4,s2,000000002303B078

l2303B054:
	lui	a1,00023086
	c.slli	s2,02
	addi	a1,a1,+00000150
	c.add	s2,a1
	lw	a5,s2,+00000000
	c.jr	a5

l2303B066:
	lhu	a5,s0,+00000008
	c.addi	a5,00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,s0,+00000008
	slti	a5,a5,+00000002

l2303B078:
	lbu	a4,s0,+0000000E
	c.beqz	a4,000000002303B018

l2303B07E:
	c.beqz	a5,000000002303B018

l2303B080:
	lh	s3,s0,+00000008
	lhu	s4,s0,+0000000A
	lhu	s2,s0,+0000000C
	jal	ra,000000002303A3B6
	jal	ra,000000002303A3A6
	srli	s10,s1,00000005
	c.li	s11,00000001
	c.mv	a4,a0
	sll	s11,s11,s1
	lui	s6,0004200E
	lui	s8,0004200E
	c.li	s9,00000001
	c.slli	s10,02

l2303B0AC:
	addi	a5,s6,-0000011C
	lw	s5,a5,+00000000
	lw	s0,s8,-00000118
	addi	s7,s6,-0000011C

l2303B0BC:
	c.bnez	s0,000000002303B0EE

l2303B0BE:
	c.mv	a0,a4
	c.j	000000002303B018

l2303B0C2:
	lhu	a5,s0,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000008
	c.li	a5,00000000
	c.j	000000002303B078
2303B0D0 83 57 A4 00 05 47 23 15 E4 00 93 B7 17 00 69 BF .W...G#.......i.
2303B0E0 23 15 04 00 E5 B7 85 47 23 16 F4 00 71 B7       #......G#...q. 

l2303B0EE:
	c.lw	s0,28(a5)
	c.bnez	a5,000000002303B100

l2303B0F2:
	c.lw	s0,20(a5)
	c.beqz	a5,000000002303B146

l2303B0F6:
	c.lw	s0,24(a1)
	c.addi	a5,00000004
	c.li	a3,00000000

l2303B0FC:
	bne	a3,a1,000000002303B11C

l2303B100:
	c.mv	a0,a4
	jal	ra,000000002303A3B6
	jal	ra,000000002303A3A6
	lw	a5,s7,+00000000
	c.mv	a4,a0
	bne	a5,s5,000000002303B0AC

l2303B114:
	lw	s5,s7,+00000000
	c.lw	s0,0(s0)
	c.j	000000002303B0BC

l2303B11C:
	lw	a2,a5,-00000004
	bne	s1,a2,000000002303B140

l2303B124:
	bge	zero,s3,000000002303B130

l2303B128:
	lhu	a2,a5,+00000000
	c.andi	a2,00000001
	c.bnez	a2,000000002303B17C

l2303B130:
	beq	s4,zero,000000002303B13C

l2303B134:
	lhu	a2,a5,+00000000
	c.andi	a2,00000002
	c.bnez	a2,000000002303B17C

l2303B13C:
	bne	s2,zero,000000002303B17C

l2303B140:
	c.addi	a3,00000001
	c.addi	a5,00000008
	c.j	000000002303B0FC

l2303B146:
	bge	zero,s3,000000002303B158

l2303B14A:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002303B158

l2303B14E:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.bnez	a5,000000002303B17C

l2303B158:
	beq	s4,zero,000000002303B16A

l2303B15C:
	c.lw	s0,12(a5)
	c.beqz	a5,000000002303B16A

l2303B160:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.bnez	a5,000000002303B17C

l2303B16A:
	beq	s2,zero,000000002303B100

l2303B16E:
	c.lw	s0,16(a5)
	c.beqz	a5,000000002303B100

l2303B172:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.beqz	a5,000000002303B100

l2303B17C:
	sw	s9,s0,+0000001C
	addi	a0,s0,+00000020
	c.swsp	a4,00000084
	jal	ra,000000002303A364
	c.lwsp	a2,000000C4
	c.j	000000002303B100

l2303B18E:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l2303B1AC:
	c.jr	ra

;; lwip_accept: 2303B1AE
;;   Called from:
;;     23048398 (in TCP_Server)
;;     23048D0A (in iperf_server)
lwip_accept proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s3,a1
	c.mv	s2,a2
	sh	zero,sp,+00000006
	jal	ra,000000002303ABCC
	c.bnez	a0,000000002303B1DA

l2303B1C8:
	c.li	s0,FFFFFFFF

l2303B1CA:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2303B1DA:
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.addi4spn	a1,00000008
	jal	ra,0000000023045F8C
	c.beqz	a0,000000002303B212

l2303B1E6:
	c.lw	s0,0(a5)
	c.li	a3,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,000000002303B204

l2303B1F6:
	lui	a5,00042020
	addi	a4,zero,+0000005F

l2303B1FE:
	sw	a4,a5,+00000D50
	c.j	000000002303B1C8

l2303B204:
	c.li	a5,FFFFFFF1
	bne	a0,a5,000000002303B27E

l2303B20A:
	lui	a5,00042020
	c.li	a4,00000016
	c.j	000000002303B1FE

l2303B212:
	c.lwsp	s0,00000044
	c.li	a1,00000001
	jal	ra,000000002303A6A6
	c.li	a5,FFFFFFFF
	c.mv	s0,a0
	bne	a0,a5,000000002303B234

l2303B222:
	c.lwsp	s0,00000044
	jal	ra,0000000023045D42
	lui	a5,00042020
	c.li	a4,00000017
	sw	a4,a5,+00000D50
	c.j	000000002303B1CA

l2303B234:
	jal	ra,000000002303A3A6
	c.lwsp	s0,000000E4
	c.lw	a5,24(s1)
	c.sw	a5,24(s0)
	jal	ra,000000002303A3B6
	c.lwsp	s0,000000E4
	c.lw	a5,44(a5)
	c.bnez	a5,000000002303B28E

l2303B248:
	beq	s3,zero,000000002303B1CA

l2303B24C:
	beq	s2,zero,000000002303B1CA

l2303B250:
	c.lwsp	s0,00000044
	c.li	a3,00000000
	addi	a2,sp,+00000006
	c.addi4spn	a1,0000000C
	jal	ra,0000000023045D6A
	c.mv	s1,a0
	c.beqz	a0,000000002303B2A8

l2303B262:
	c.lwsp	s0,00000044
	jal	ra,0000000023045D42
	lui	a5,00042015
	addi	a5,a5,-000004F4
	slli	a0,s0,00000004
	c.add	a0,a5
	c.li	a1,00000001
	jal	ra,000000002303AA8A
	c.mv	a0,s1

l2303B27E:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B1C8

l2303B284:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B1C8

l2303B28E:
	xori	s1,s1,-00000001
	c.slli	s1,10
	c.srai	s1,00000010

l2303B296:
	bge	zero,s1,000000002303B248

l2303B29A:
	c.lwsp	s0,00000044
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a0,44(a5)
	c.addi	s1,FFFFFFFF
	c.jalr	a5
	c.j	000000002303B296

l2303B2A8:
	lhu	a0,sp,+00000006
	addi	a5,zero,+00000210
	sh	a5,sp,+00000010
	jal	ra,000000002303C332
	c.lwsp	a2,000000E4
	sh	a0,sp,+00000012
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	c.swsp	a5,00000088
	jal	ra,0000000023070EB8
	lbu	a5,sp,+00000010
	lw	a4,s2,+00000000
	bgeu	a5,a4,000000002303B2DA

l2303B2D6:
	sw	a5,s2,+00000000

l2303B2DA:
	lw	a2,s2,+00000000
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	jal	ra,0000000023070C7C
	c.j	000000002303B1CA

;; lwip_bind: 2303B2E8
;;   Called from:
;;     23048188 (in TCP_Server)
;;     23048A46 (in iperf_client_udp)
;;     23048CAC (in iperf_server)
lwip_bind proc
	c.addi16sp	FFFFFFD0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	jal	ra,000000002303ABCC
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303B300

l2303B2FC:
	c.li	a5,FFFFFFFF
	c.j	000000002303B344

l2303B300:
	c.li	a5,00000010
	bne	a2,a5,000000002303B316

l2303B306:
	lbu	a4,a1,+00000001
	c.li	a5,00000002
	bne	a4,a5,000000002303B316

l2303B310:
	andi	a5,a1,+00000003
	c.beqz	a5,000000002303B328

l2303B316:
	c.li	a0,FFFFFFF0

l2303B318:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B2FC

l2303B31E:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B2FC

l2303B328:
	c.lw	a1,4(a5)
	c.mv	s0,a0
	lhu	a0,a1,+00000002
	c.swsp	a5,0000008C
	jal	ra,000000002303C332
	c.mv	a2,a0
	c.lw	s0,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023045D9C
	c.li	a5,00000000
	c.bnez	a0,000000002303B318

l2303B344:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

;; lwip_close: 2303B34E
;;   Called from:
;;     230006FA (in client_demo.constprop.3)
;;     2302AF5C (in ota_tcp_cmd.part.0)
;;     2302AFBE (in ota_tcp_cmd.part.0)
;;     23047F20 (in tcpc_entry)
;;     23048130 (in TCP_Server)
;;     23048282 (in TCP_Server)
;;     23048348 (in TCP_Server)
;;     23048404 (in TCP_Server)
;;     230484F8 (in TCP_Server)
;;     23048A5E (in iperf_client_udp)
;;     23048BC0 (in iperf_client_udp)
;;     23048CC4 (in iperf_server)
;;     23048E34 (in iperf_server)
;;     23048F42 (in iperf_client_tcp)
;;     23049056 (in iperf_client_tcp)
;;     2305F43A (in mbedtls_net_connect)
;;     2305F66C (in mbedtls_net_free)
lwip_close proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s0,a0
	jal	ra,000000002303ABCC
	c.bnez	a0,000000002303B376

l2303B364:
	c.li	a0,FFFFFFFF

l2303B366:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303B376:
	c.lw	a0,0(a5)
	c.mv	s2,a0
	c.li	s1,00000000
	c.beqz	a5,000000002303B38C

l2303B37E:
	lbu	s1,a5,+00000000
	andi	s1,s1,+000000F0
	c.addi	s1,FFFFFFF0
	sltiu	s1,s1,+00000001

l2303B38C:
	c.mv	a0,s0
	jal	ra,000000002303ABCC
	c.mv	s3,a0
	c.beqz	a0,000000002303B3D0

l2303B396:
	lui	s0,00042015
	addi	s0,s0,-000005F0
	addi	s4,s0,+000000FC

l2303B3A2:
	c.lw	s0,0(a5)
	bne	s3,a5,000000002303B3CA

l2303B3A8:
	c.lw	s0,8(a5)
	sw	zero,s0,+00000000
	sw	zero,s0,+00000008
	c.swsp	a5,00000004
	c.lw	s0,4(a5)
	sw	zero,s0,+00000004
	c.li	a3,00000001
	c.swsp	a5,00000084
	lw	a0,s3,+00000000
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	jal	ra,0000000023046210

l2303B3CA:
	c.addi	s0,0000000C
	bne	s0,s4,000000002303B3A2

l2303B3D0:
	lw	a0,s2,+00000000
	jal	ra,0000000023045D1C
	c.beqz	a0,000000002303B3EA

l2303B3DA:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B364

l2303B3E0:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B364

l2303B3EA:
	c.mv	a0,s2
	c.mv	a1,s1
	jal	ra,000000002303AA8A
	c.li	a0,00000000
	c.j	000000002303B366

;; lwip_connect: 2303B3F6
;;   Called from:
;;     2300067C (in client_demo.constprop.3)
;;     2302AF48 (in ota_tcp_cmd.part.0)
;;     23047F04 (in tcpc_entry)
;;     23048F2A (in iperf_client_tcp)
;;     2305F422 (in mbedtls_net_connect)
lwip_connect proc
	c.addi16sp	FFFFFFD0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	jal	ra,000000002303ABCC
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303B40E

l2303B40A:
	c.li	a5,FFFFFFFF
	c.j	000000002303B420

l2303B40E:
	lbu	a5,a1,+00000001
	c.mv	s0,a0
	c.bnez	a5,000000002303B42A

l2303B416:
	c.lw	a0,0(a0)
	jal	ra,0000000023045DFC

l2303B41C:
	c.li	a5,00000000
	c.bnez	a0,000000002303B43E

l2303B420:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2303B42A:
	c.li	a4,00000010
	bne	a2,a4,000000002303B43C

l2303B430:
	c.li	a4,00000002
	bne	a5,a4,000000002303B43C

l2303B436:
	andi	a5,a1,+00000003
	c.beqz	a5,000000002303B44E

l2303B43C:
	c.li	a0,FFFFFFF0

l2303B43E:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B40A

l2303B444:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B40A

l2303B44E:
	c.lw	a1,4(a5)
	lhu	a0,a1,+00000002
	c.swsp	a5,0000008C
	jal	ra,000000002303C332
	c.mv	a2,a0
	c.lw	s0,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023045DCC
	c.j	000000002303B41C

;; lwip_listen: 2303B466
;;   Called from:
;;     2304819E (in TCP_Server)
;;     23048CCE (in iperf_server)
lwip_listen proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002303ABCC
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303B482

l2303B476:
	c.li	a5,FFFFFFFF

l2303B478:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2303B482:
	c.mv	s0,a0
	bge	a1,zero,000000002303B48A

l2303B488:
	c.li	a1,00000000

l2303B48A:
	addi	a5,zero,+000000FF
	bge	a5,a1,000000002303B496

l2303B492:
	addi	a1,zero,+000000FF

l2303B496:
	c.lw	s0,0(a0)
	andi	a1,a1,+000000FF
	jal	ra,0000000023045E1C
	c.li	a5,00000000
	c.beqz	a0,000000002303B478

l2303B4A4:
	c.lw	s0,0(a5)
	c.li	a4,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303B4C2

l2303B4B4:
	lui	a5,00042020
	addi	a4,zero,+0000005F
	sw	a4,a5,+00000D50
	c.j	000000002303B476

l2303B4C2:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B476

l2303B4C8:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B476

;; lwip_recvfrom: 2303B4D2
;;   Called from:
;;     2303B59C (in lwip_read)
;;     2303B5A4 (in lwip_recv)
lwip_recvfrom proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s4,00000024
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.mv	s0,a3
	c.mv	s4,a4
	c.mv	s1,a5
	jal	ra,000000002303ABCC
	c.beqz	a0,000000002303B580

l2303B4F0:
	c.lw	a0,0(a5)
	c.li	a4,00000010
	c.mv	s3,a0
	lbu	a5,a5,+00000000
	c.lwsp	a2,00000064
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002303B542

l2303B504:
	c.mv	a3,s0
	c.mv	a2,s2
	jal	ra,000000002303A92E
	c.mv	s0,a0
	beq	s4,zero,000000002303B530

l2303B512:
	c.beqz	s1,000000002303B530

l2303B514:
	lw	a0,s3,+00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000001C
	c.addi4spn	a1,00000024
	jal	ra,0000000023045D6A
	lhu	a1,sp,+0000001C
	c.mv	a3,s1
	c.mv	a2,s4
	c.addi4spn	a0,00000024
	jal	ra,000000002303AA30

l2303B530:
	c.mv	a0,s0
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2303B542:
	c.addi4spn	a5,0000001C
	c.swsp	a5,00000094
	c.li	a5,00000001
	c.swsp	a5,00000018
	sh	zero,sp,+0000001A
	c.swsp	a1,0000008C
	c.swsp	s2,00000010
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	c.swsp	s4,00000090
	c.li	a5,00000000
	c.beqz	s1,000000002303B560

l2303B55E:
	c.lw	s1,0(a5)

l2303B560:
	addi	a3,sp,+0000001A
	c.addi4spn	a2,00000024
	c.mv	a1,s0
	c.mv	a0,s3
	c.swsp	a5,00000014
	jal	ra,000000002303AAE0
	c.beqz	a0,000000002303B584

l2303B572:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B580

l2303B578:
	lui	a5,00042020
	sw	a0,a5,+00000D50

l2303B580:
	c.li	s0,FFFFFFFF
	c.j	000000002303B530

l2303B584:
	lhu	s0,sp,+0000001A
	bgeu	s2,s0,000000002303B58E

l2303B58C:
	c.mv	s0,s2

l2303B58E:
	c.beqz	s1,000000002303B530

l2303B590:
	c.lwsp	s0,000001F4
	c.sw	s1,0(a5)
	c.j	000000002303B530

;; lwip_read: 2303B596
;;   Called from:
;;     230006DE (in client_demo.constprop.3)
;;     2302AF9C (in ota_tcp_cmd.part.0)
;;     23047FB8 (in tcpc_entry)
;;     2305F49E (in mbedtls_net_recv)
lwip_read proc
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,000000002303B4D2

;; lwip_recv: 2303B5A0
;;   Called from:
;;     2304832A (in TCP_Server)
;;     23048D5E (in iperf_server)
lwip_recv proc
	c.li	a5,00000000
	c.li	a4,00000000
	jal	zero,000000002303B4D2

;; lwip_sendto: 2303B5A8
;;   Called from:
;;     2303B702 (in lwip_send)
;;     23048BA6 (in iperf_client_udp)
lwip_sendto proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	a5,00000080
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s4,0000001C
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s0,a2
	jal	ra,000000002303ABCC
	c.lwsp	tp,000000E4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002303B5D2

l2303B5CE:
	c.li	a0,FFFFFFFF
	c.j	000000002303B5EC

l2303B5D2:
	c.lw	a0,0(a2)
	c.li	a1,00000010
	c.mv	s1,a0
	lbu	a2,a2,+00000000
	andi	a2,a2,+000000F0
	bne	a2,a1,000000002303B5FC

l2303B5E4:
	c.mv	a2,s0
	c.mv	a1,s2
	c.mv	a0,s3
	c.jal	000000002303B6C8

l2303B5EC:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l2303B5FC:
	c.lui	a3,00010000
	bltu	s0,a3,000000002303B610

l2303B602:
	lui	a5,00042020
	addi	a4,zero,+0000005A
	sw	a4,a5,+00000D50
	c.j	000000002303B5CE

l2303B610:
	slli	s4,s0,00000010
	srli	s4,s4,00000010
	c.bnez	a4,000000002303B6B4

l2303B61A:
	c.beqz	a5,000000002303B62E

l2303B61C:
	c.li	a0,FFFFFFF0
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B5CE

l2303B624:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303B5CE

l2303B62E:
	c.swsp	zero,00000010
	c.swsp	zero,0000008C
	sb	zero,sp,+0000002A
	c.beqz	a4,000000002303B6A4

l2303B638:
	c.lw	a4,4(a5)
	lhu	a0,a4,+00000002
	c.swsp	a5,00000090
	jal	ra,000000002303C332

l2303B644:
	sh	a0,sp,+00000028
	c.mv	a1,s4
	c.addi4spn	a0,0000001C
	jal	ra,0000000023047426
	c.li	s3,FFFFFFFF
	c.beqz	a0,000000002303B686

l2303B654:
	c.lwsp	t3,000000E4
	addi	a4,zero,+00000040
	c.lw	a5,4(a0)
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303B6AA

l2303B66A:
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,000000002303CF46
	c.li	a5,00000002
	sb	a5,sp,+0000002A
	sh	a0,sp,+0000002C

l2303B67C:
	c.lw	s1,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023045E72
	c.mv	s3,a0

l2303B686:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023047460
	c.mv	a0,s3
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B69C

l2303B694:
	lui	a5,00042020
	sw	a0,a5,+00000D50

l2303B69C:
	c.mv	a0,s0
	beq	s3,zero,000000002303B5EC

l2303B6A2:
	c.j	000000002303B5CE

l2303B6A4:
	c.swsp	zero,00000090
	c.li	a0,00000000
	c.j	000000002303B644

l2303B6AA:
	c.mv	a2,s0
	c.mv	a1,s2
	jal	ra,0000000023070C7C
	c.j	000000002303B67C

l2303B6B4:
	bne	a5,a1,000000002303B61C

l2303B6B8:
	lbu	a3,a4,+00000001
	c.li	a5,00000002
	bne	a3,a5,000000002303B61C

l2303B6C2:
	andi	a5,a4,+00000003
	c.j	000000002303B61A

;; lwip_send: 2303B6C8
;;   Called from:
;;     2303B5EA (in lwip_sendto)
;;     2303B7E0 (in lwip_write)
;;     230483EC (in TCP_Server)
;;     230484F2 (in TCP_Server)
;;     23049046 (in iperf_client_tcp)
lwip_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	ra,00000094
	c.mv	s0,a0
	jal	ra,000000002303ABCC
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303B6EC

l2303B6E2:
	c.li	a0,FFFFFFFF

l2303B6E4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2303B6EC:
	c.lw	a0,0(a5)
	c.li	a4,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303B708

l2303B6FC:
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a0,s0
	jal	ra,000000002303B5A8
	c.j	000000002303B6E4

l2303B708:
	andi	a5,a3,+00000010
	c.li	a6,00000003
	c.bnez	a5,000000002303B712

l2303B710:
	c.li	a6,00000001

l2303B712:
	c.swsp	zero,0000008C
	c.srai	a3,00000001
	c.lw	a0,0(a0)
	c.andi	a3,00000004
	c.addi4spn	a4,0000001C
	or	a3,a6,a3
	jal	ra,0000000023045F4C
	c.mv	s0,a0
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303B734

l2303B72C:
	lui	a5,00042020
	sw	a0,a5,+00000D50

l2303B734:
	c.bnez	s0,000000002303B6E2

l2303B736:
	c.lwsp	t3,00000044
	c.j	000000002303B6E4

;; lwip_socket: 2303B73A
;;   Called from:
;;     23000628 (in client_demo.constprop.3)
;;     2302AE3E (in ota_tcp_cmd.part.0)
;;     23047EBC (in tcpc_entry)
;;     230480E0 (in TCP_Server)
;;     230489F4 (in iperf_client_udp)
;;     23048C6A (in iperf_server)
;;     23048EE8 (in iperf_client_tcp)
;;     2305F40E (in mbedtls_net_connect)
lwip_socket proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a4,00000002
	c.mv	a5,a2
	beq	a1,a4,000000002303B786

l2303B74A:
	c.li	a4,00000003
	beq	a1,a4,000000002303B764

l2303B750:
	c.li	a5,00000001
	bne	a1,a5,000000002303B7A2

l2303B756:
	lui	a2,0002303B
	addi	a2,a2,-00000028
	c.li	a1,00000000
	c.li	a0,00000010
	c.j	000000002303B774

l2303B764:
	lui	a2,0002303B
	addi	a2,a2,-00000028
	andi	a1,a5,+000000FF
	addi	a0,zero,+00000040

l2303B774:
	jal	ra,0000000023045CB0
	c.mv	s0,a0
	c.bnez	a0,000000002303B7BA

l2303B77C:
	lui	a5,00042020
	addi	a4,zero,+00000069
	c.j	000000002303B7A8

l2303B786:
	addi	a4,zero,+00000088
	addi	a0,zero,+00000021
	beq	a2,a4,000000002303B796

l2303B792:
	addi	a0,zero,+00000020

l2303B796:
	lui	a2,0002303B
	addi	a2,a2,-00000028
	c.li	a1,00000000
	c.j	000000002303B774

l2303B7A2:
	lui	a5,00042020
	c.li	a4,00000016

l2303B7A8:
	sw	a4,a5,+00000D50
	c.li	s1,FFFFFFFF

l2303B7AE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303B7BA:
	c.li	a1,00000000
	jal	ra,000000002303A6A6
	c.li	a5,FFFFFFFF
	c.mv	s1,a0
	bne	a0,a5,000000002303B7DA

l2303B7C8:
	c.mv	a0,s0
	jal	ra,0000000023045D42
	lui	a5,00042020
	c.li	a4,00000017
	sw	a4,a5,+00000D50
	c.j	000000002303B7AE

l2303B7DA:
	c.sw	s0,24(a0)
	c.j	000000002303B7AE

;; lwip_write: 2303B7DE
;;   Called from:
;;     230006B4 (in client_demo.constprop.3)
;;     23047F82 (in tcpc_entry)
;;     2305F520 (in mbedtls_net_send)
lwip_write proc
	c.li	a3,00000000
	jal	zero,000000002303B6C8

;; lwip_select: 2303B7E4
;;   Called from:
;;     230482D2 (in TCP_Server)
;;     2305F60A (in mbedtls_net_recv_timeout)
lwip_select proc
	c.addi16sp	FFFFFF80
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	addi	a5,zero,+00000040
	bgeu	a5,a0,000000002303B834

l2303B808:
	lui	a5,00042020
	c.li	a4,00000016

l2303B80E:
	sw	a4,a5,+00000D50

l2303B812:
	c.li	s9,FFFFFFFF

l2303B814:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.mv	a0,s9
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.addi16sp	00000080
	c.jr	ra

l2303B834:
	c.mv	s8,a4
	addi	a6,sp,+00000014
	c.addi4spn	a5,0000000C
	c.addi4spn	a4,00000004
	c.mv	s5,a0
	c.mv	s4,a1
	c.mv	s3,a2
	c.mv	s2,a3
	jal	ra,000000002303A7A4
	c.mv	s1,a0
	bge	a0,zero,000000002303B858

l2303B850:
	lui	a5,00042020
	c.li	a4,00000009
	c.j	000000002303B80E

l2303B858:
	c.mv	s9,a0
	bne	a0,zero,000000002303B9B6

l2303B85E:
	beq	s8,zero,000000002303B876

l2303B862:
	lw	a5,s8,+00000000
	lw	a4,s8,+00000004
	c.or	a5,a4
	c.bnez	a5,000000002303B876

l2303B86E:
	lw	s9,s8,+00000008
	beq	s9,zero,000000002303B9B6

l2303B876:
	c.li	a1,00000000
	addi	a2,zero,+00000024
	c.addi4spn	a0,0000001C
	jal	ra,0000000023070EB8
	c.li	a1,00000000
	c.addi4spn	a0,0000003C
	c.swsp	s4,00000090
	c.swsp	s3,00000014
	c.swsp	s2,00000094
	jal	ra,000000002303A21E
	c.beqz	a0,000000002303B89A

l2303B892:
	lui	a5,00042020
	c.li	a4,0000000C
	c.j	000000002303B80E

l2303B89A:
	lui	s6,00042015
	c.addi4spn	a0,0000001C
	addi	s7,s6,-000004F4
	addi	s10,s6,-000004F4
	jal	ra,000000002303A72A
	c.li	s0,00000000
	addi	s6,s6,-000004F4
	c.li	s9,00000014
	c.li	s11,00000001

l2303B8B6:
	bne	s0,s5,000000002303B906

l2303B8BA:
	addi	a6,sp,+00000014
	c.addi4spn	a5,0000000C
	c.addi4spn	a4,00000004
	c.mv	a3,s2
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002303A7A4
	c.mv	s9,a0
	c.li	s6,00000000
	c.bnez	a0,000000002303B97E

l2303B8D4:
	c.li	a1,00000000
	beq	s8,zero,000000002303B8FA

l2303B8DA:
	lw	a4,s8,+00000008
	addi	a3,zero,+000003E8
	lw	a1,s8,+00000000
	addi	a4,a4,+000001F4
	xor	a4,a4,a3
	add	a1,a3,a1
	c.add	a1,a4
	blt	zero,a1,000000002303B8FA

l2303B8F8:
	c.li	a1,00000001

l2303B8FA:
	c.addi4spn	a0,0000003C
	jal	ra,000000002303A28A
	c.mv	s6,a0
	c.mv	s0,s5
	c.j	000000002303B97E

l2303B906:
	beq	s4,zero,000000002303B91C

l2303B90A:
	srli	a4,s0,00000005
	c.slli	a4,02
	c.add	a4,s4
	c.lw	a4,0(a4)
	sll	a5,s11,s0
	c.and	a5,a4
	c.bnez	a5,000000002303B948

l2303B91C:
	beq	s3,zero,000000002303B932

l2303B920:
	srli	a4,s0,00000005
	c.slli	a4,02
	c.add	a4,s3
	c.lw	a4,0(a4)
	sll	a5,s11,s0
	c.and	a5,a4
	c.bnez	a5,000000002303B948

l2303B932:
	beq	s2,zero,000000002303B9EC

l2303B936:
	srli	a4,s0,00000005
	c.slli	a4,02
	c.add	a4,s2
	c.lw	a4,0(a4)
	sll	a5,s11,s0
	c.and	a5,a4
	c.beqz	a5,000000002303B9EC

l2303B948:
	jal	ra,000000002303A3A6
	blt	s9,s0,000000002303B9F2

l2303B950:
	lbu	a5,s10,+0000000E
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s10,+0000000E
	c.bnez	a5,000000002303B9E8

l2303B960:
	slli	a5,s0,00000004
	c.add	s6,a5
	c.li	a5,FFFFFFFF
	sb	a5,s6,+0000000E
	jal	ra,000000002303A3B6
	lui	a5,00042020
	c.li	a4,00000010

l2303B976:
	sw	a4,a5,+00000D50
	c.li	s9,FFFFFFFF
	c.li	s6,00000000

l2303B97E:
	lui	s10,00042020
	c.li	s11,00000009
	c.li	s8,00000001

l2303B986:
	bne	s1,s0,000000002303B9FE

l2303B98A:
	c.addi4spn	a0,0000001C
	jal	ra,000000002303A762
	c.addi4spn	a0,0000003C
	jal	ra,000000002303A2D6
	blt	s9,zero,000000002303B812

l2303B99A:
	c.li	a4,FFFFFFFF
	beq	s6,a4,000000002303B9B6

l2303B9A0:
	addi	a6,sp,+00000014
	c.addi4spn	a5,0000000C
	c.addi4spn	a4,00000004
	c.mv	a3,s2
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002303A7A4
	c.mv	s9,a0

l2303B9B6:
	beq	s4,zero,000000002303B9C6

l2303B9BA:
	c.lwsp	tp,000000C4
	sw	a4,s4,+00000000
	c.lwsp	s0,000000C4
	sw	a4,s4,+00000004

l2303B9C6:
	beq	s3,zero,000000002303B9D6

l2303B9CA:
	c.lwsp	a2,000000C4
	sw	a4,s3,+00000000
	c.lwsp	a6,000000C4
	sw	a4,s3,+00000004

l2303B9D6:
	beq	s2,zero,000000002303B814

l2303B9DA:
	c.lwsp	s4,000000C4
	sw	a4,s2,+00000000
	c.lwsp	s8,000000C4
	sw	a4,s2,+00000004
	c.j	000000002303B814

l2303B9E8:
	jal	ra,000000002303A3B6

l2303B9EC:
	c.addi	s0,00000001
	c.addi	s10,00000010
	c.j	000000002303B8B6

l2303B9F2:
	jal	ra,000000002303A3B6
	lui	a5,00042020
	c.li	a4,00000009
	c.j	000000002303B976

l2303B9FE:
	beq	s4,zero,000000002303BA14

l2303BA02:
	srli	a3,s1,00000005
	c.slli	a3,02
	c.add	a3,s4
	c.lw	a3,0(a3)
	sll	a4,s8,s1
	c.and	a4,a3
	c.bnez	a4,000000002303BA40

l2303BA14:
	beq	s3,zero,000000002303BA2A

l2303BA18:
	srli	a3,s1,00000005
	c.slli	a3,02
	c.add	a3,s3
	c.lw	a3,0(a3)
	sll	a4,s8,s1
	c.and	a4,a3
	c.bnez	a4,000000002303BA40

l2303BA2A:
	beq	s2,zero,000000002303BA5E

l2303BA2E:
	srli	a3,s1,00000005
	c.slli	a3,02
	c.add	a3,s2
	c.lw	a3,0(a3)
	sll	a4,s8,s1
	c.and	a4,a3
	c.beqz	a4,000000002303BA5E

l2303BA40:
	jal	ra,000000002303A3A6
	c.li	a5,00000014
	c.mv	a3,a0
	blt	a5,s1,000000002303BA64

l2303BA4C:
	lbu	a4,s7,+0000000E
	c.beqz	a4,000000002303BA58

l2303BA52:
	c.addi	a4,FFFFFFFF
	sb	a4,s7,+0000000E

l2303BA58:
	c.mv	a0,a3
	jal	ra,000000002303A3B6

l2303BA5E:
	c.addi	s1,00000001
	c.addi	s7,00000010
	c.j	000000002303B986

l2303BA64:
	jal	ra,000000002303A3B6
	c.li	s9,FFFFFFFF
	sw	s11,s10,+00000D50
	c.j	000000002303BA5E

;; lwip_shutdown: 2303BA70
;;   Called from:
;;     2305F666 (in mbedtls_net_free)
lwip_shutdown proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,000000002303ABCC
	c.beqz	a0,000000002303BA9E

l2303BA7E:
	c.lw	a0,0(a0)
	c.beqz	a0,000000002303BAA2

l2303BA82:
	lbu	a5,a0,+00000000
	c.li	a4,00000010
	c.lwsp	a2,00000064
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303BAAC

l2303BA92:
	lui	a5,00042020
	addi	a4,zero,+0000005F

l2303BA9A:
	sw	a4,a5,+00000D50

l2303BA9E:
	c.li	a0,FFFFFFFF
	c.j	000000002303BAE6

l2303BAA2:
	lui	a5,00042020
	addi	a4,zero,+0000006B
	c.j	000000002303BA9A

l2303BAAC:
	c.beqz	a1,000000002303BAC4

l2303BAAE:
	c.li	a5,00000001
	beq	a1,a5,000000002303BAEE

l2303BAB4:
	c.li	a4,00000002
	c.li	a2,00000001
	beq	a1,a4,000000002303BAC8

l2303BABC:
	lui	a5,00042020
	c.li	a4,00000016
	c.j	000000002303BA9A

l2303BAC4:
	c.li	a2,00000000
	c.li	a5,00000001

l2303BAC8:
	c.mv	a1,a5
	jal	ra,0000000023046200
	c.mv	s0,a0
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303BADE

l2303BAD6:
	lui	a5,00042020
	sw	a0,a5,+00000D50

l2303BADE:
	sltu	a0,zero,s0
	sub	a0,zero,a0

l2303BAE6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303BAEE:
	c.li	a2,00000001
	c.li	a5,00000000
	c.j	000000002303BAC8

;; lwip_setsockopt: 2303BAF4
;;   Called from:
;;     23047F4A (in tcpc_entry)
;;     23048112 (in TCP_Server)
;;     23048D44 (in iperf_server)
;;     23048F62 (in iperf_client_tcp)
lwip_setsockopt proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	a4,00000000
	c.swsp	ra,0000009C
	c.mv	s0,a0
	jal	ra,000000002303ABCC
	c.lwsp	zero,000000C4
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303BB16

l2303BB12:
	c.li	a0,FFFFFFFF
	c.j	000000002303BB60

l2303BB16:
	c.bnez	a3,000000002303BB24

l2303BB18:
	lui	a5,00042020
	c.li	a4,0000000E
	sw	a4,a5,+00000D50
	c.j	000000002303BB12

l2303BB24:
	c.swsp	a1,0000000C
	c.swsp	s0,00000088
	c.swsp	a2,0000008C
	c.swsp	a4,00000090
	c.swsp	a3,00000010
	c.swsp	zero,00000014
	c.lw	a0,0(a5)
	lui	a0,0002303B
	c.addi4spn	a1,00000014
	c.addi	a5,0000000C
	addi	a0,a0,-0000040E
	c.swsp	a5,00000094
	c.jal	000000002303BD60
	c.beqz	a0,000000002303BB54

l2303BB44:
	jal	ra,00000000230473D6
	c.beqz	a0,000000002303BB12

l2303BB4A:
	lui	a5,00042020
	sw	a0,a5,+00000D50
	c.j	000000002303BB12

l2303BB54:
	c.lwsp	a2,00000154
	c.li	a1,00000000
	jal	ra,000000002303A28A
	c.lwsp	s0,00000154
	c.bnez	a0,000000002303BB4A

l2303BB60:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; lwip_fcntl: 2303BB68
;;   Called from:
;;     2305F34E (in net_would_block.isra.0)
;;     2305F456 (in mbedtls_net_set_block)
;;     2305F468 (in mbedtls_net_set_block)
lwip_fcntl proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303ABCC
	c.beqz	a0,000000002303BB9A

l2303BB7C:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	c.mv	s2,a0
	beq	a1,a5,000000002303BB9E

l2303BB86:
	c.li	a5,00000004
	c.lwsp	s0,00000084
	beq	a1,a5,000000002303BBF4

l2303BB8E:
	lui	a5,00042020
	addi	a4,zero,+00000026
	sw	a4,a5,+00000D50

l2303BB9A:
	c.li	a0,FFFFFFFF
	c.j	000000002303BBE8

l2303BB9E:
	c.lw	a0,0(a5)
	c.li	a4,00000010
	c.li	s0,00000006
	lbu	a0,a5,+00000024
	lbu	a5,a5,+00000000
	c.srai	a0,00000001
	andi	a5,a5,+000000F0
	andi	s1,a0,+00000001
	bne	a5,a4,000000002303BBE4

l2303BBBA:
	jal	ra,000000002303A3A6
	lw	a5,s2,+00000000
	c.li	s0,00000000
	c.lw	a5,4(a5)
	c.beqz	a5,000000002303BBE0

l2303BBC8:
	lhu	a5,a5,+0000001A
	andi	s0,a5,+00000010
	sltiu	s0,s0,+00000001
	andi	a5,a5,+00000020
	c.slli	s0,01
	c.bnez	a5,000000002303BBE0

l2303BBDC:
	ori	s0,s0,+00000004

l2303BBE0:
	jal	ra,000000002303A3B6

l2303BBE4:
	or	a0,s0,s1

l2303BBE8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303BBF4:
	andi	a0,a2,-00000008
	c.bnez	a0,000000002303BB8E

l2303BBFA:
	lw	a4,s2,+00000000
	c.andi	a2,00000001
	lbu	a5,a4,+00000024
	c.beqz	a2,000000002303BC10

l2303BC06:
	ori	a5,a5,+00000002

l2303BC0A:
	sb	a5,a4,+00000024
	c.j	000000002303BBE8

l2303BC10:
	c.andi	a5,FFFFFFFD
	c.j	000000002303BC0A

;; tcpip_thread: 2303BC14
tcpip_thread proc
	lui	a5,0004200E
	lw	a5,a5,-00000114
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.beqz	a5,000000002303BC38

l2303BC2E:
	lui	a4,0004200E
	lw	a0,a4,-00000110
	c.jalr	a5

l2303BC38:
	lui	s1,00023086
	c.li	s2,FFFFFFFF
	lui	s3,0004200E
	c.li	s5,00000004
	addi	s1,s1,+00000164

l2303BC48:
	jal	ra,00000000230453A8
	c.mv	a2,a0
	bne	a0,s2,000000002303BC72

l2303BC52:
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	addi	a0,s3,-0000010C
	jal	ra,000000002303A190

l2303BC5E:
	c.lwsp	a2,00000004
	c.beqz	s0,000000002303BC48

l2303BC62:
	lbu	a5,s0,+00000000
	bltu	s5,a5,000000002303BC48

l2303BC6A:
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.jr	a5

l2303BC72:
	c.bnez	a0,000000002303BC7A

l2303BC74:
	jal	ra,0000000023045350
	c.j	000000002303BC48

l2303BC7A:
	c.addi4spn	a1,0000000C
	addi	a0,s3,-0000010C
	jal	ra,000000002303A190
	beq	a0,s2,000000002303BC74

l2303BC88:
	c.j	000000002303BC5E
2303BC8A                               03 2A 84 00 5C 40           .*..\@
2303BC90 52 85 82 97 23 00 AA 00 48 44 EF E0 AF EC 6D B7 R...#...HD....m.
2303BCA0 5C 44 0C 44 48 40 82 97 01 C5 48 40 EF 40 50 3E \D.DH@....H@.@P>
2303BCB0 A2 85 25 45 EF 40 A0 59 41 BF 08 44 5C 40 82 97 ..%E.@.YA..D\@..
2303BCC0 A2 85 21 45 C5 BF 5C 40 08 44 82 97 B5 BF       ..!E..\@.D.... 

;; tcpip_inpkt: 2303BCCE
;;   Called from:
;;     2303BD52 (in tcpip_input)
tcpip_inpkt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,-0000010C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002303A210
	c.li	a0,00000009
	jal	ra,0000000023040230
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002303BD10

l2303BCF6:
	lui	a0,00023086
	addi	a0,a0,+00000180
	jal	ra,0000000023052118

l2303BD02:
	c.li	a0,FFFFFFFF

l2303BD04:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303BD10:
	c.li	a5,00000002
	c.sw	a0,8(a1)
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.sw	a0,12(a2)
	c.mv	a1,a0
	addi	a0,s1,-0000010C
	jal	ra,000000002303A15A
	c.beqz	a0,000000002303BD04

l2303BD2C:
	lui	a0,00023086
	addi	a0,a0,+00000194
	jal	ra,0000000023052118
	c.mv	a1,s0
	c.li	a0,00000009
	jal	ra,000000002304024E
	c.j	000000002303BD02

;; tcpip_input: 2303BD42
tcpip_input proc
	lbu	a5,a1,+00000041
	c.andi	a5,00000018
	c.beqz	a5,000000002303BD56

l2303BD4A:
	lui	a2,00023046
	addi	a2,a2,-0000052A

l2303BD52:
	jal	zero,000000002303BCCE

l2303BD56:
	lui	a2,0002303F
	addi	a2,a2,+000004C0
	c.j	000000002303BD52

;; tcpip_callback: 2303BD60
;;   Called from:
;;     2303BB40 (in lwip_setsockopt)
;;     2304916E (in cmd_netstat)
;;     2304A390 (in cmd_sntp_start)
tcpip_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,s0,-0000010C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303A210
	c.li	a0,00000008
	jal	ra,0000000023040230
	c.beqz	a0,000000002303BDA2

l2303BD80:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	sb	a5,a0,+00000000
	c.sw	a0,8(a1)
	c.sw	a0,4(s1)
	c.mv	a1,a0
	addi	a0,s0,-0000010C
	jal	ra,000000002303A132
	c.li	a0,00000000

l2303BD98:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303BDA2:
	c.li	a0,FFFFFFFF
	c.j	000000002303BD98

;; tcpip_try_callback: 2303BDA6
;;   Called from:
;;     23040A02 (in pbuf_alloc)
tcpip_try_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,-0000010C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,000000002303A210
	c.li	a0,00000008
	jal	ra,0000000023040230
	c.beqz	a0,000000002303BDEC

l2303BDC8:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	c.mv	s0,a0
	c.sw	a0,8(a1)
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.mv	a1,a0
	addi	a0,s1,-0000010C
	jal	ra,000000002303A15A
	c.beqz	a0,000000002303BDEE

l2303BDE4:
	c.mv	a1,s0
	c.li	a0,00000008
	jal	ra,000000002304024E

l2303BDEC:
	c.li	a0,FFFFFFFF

l2303BDEE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; tcpip_send_msg_wait_sem: 2303BDFA
;;   Called from:
;;     23045C74 (in netconn_apimsg)
;;     23046282 (in netconn_gethostbyname)
tcpip_send_msg_wait_sem proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a2,00000004
	c.swsp	a1,00000084
	lui	s0,0004200E
	jal	ra,000000002303A2EE
	addi	a0,s0,-0000010C
	jal	ra,000000002303A210
	c.lwsp	a2,00000064
	addi	a0,s0,-0000010C
	c.swsp	s1,00000088
	c.swsp	a1,0000000C
	c.addi4spn	a1,00000010
	sb	zero,sp,+00000010
	jal	ra,000000002303A132
	c.lwsp	s0,00000084
	c.li	a1,00000000
	c.mv	a0,a2
	jal	ra,000000002303A28A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; tcpip_api_call: 2303BE44
;;   Called from:
;;     2303A640 (in netifapi_netif_add)
;;     2303A67E (in netifapi_netif_set_addr)
;;     2303A69C (in netifapi_netif_common)
tcpip_api_call proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a1,+00000004
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	jal	ra,000000002303A21E
	c.bnez	a0,000000002303BE96

l2303BE62:
	lui	s2,0004200E
	addi	a0,s2,-0000010C
	jal	ra,000000002303A210
	c.li	a5,00000001
	c.mv	a1,sp
	addi	a0,s2,-0000010C
	sb	a5,sp,+00000000
	c.swsp	s0,00000004
	c.swsp	s3,00000080
	c.swsp	s1,00000084
	jal	ra,000000002303A132
	c.lwsp	a2,00000044
	c.li	a1,00000000
	jal	ra,000000002303A28A
	c.mv	a0,s1
	jal	ra,000000002303A2D6
	lb	a0,s0,+00000000

l2303BE96:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcpip_init: 2303BEA4
;;   Called from:
;;     2300124A (in bfl_main)
tcpip_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a1,00000004
	jal	ra,000000002303CF66
	c.lwsp	a2,00000044
	c.lwsp	s0,00000064
	lui	a5,0004200E
	sw	a0,a5,+00000EEC
	lui	a5,0004200E
	lui	a0,0004200E
	sw	a1,a5,+00000EF0
	addi	a0,a0,-0000010C
	addi	a1,zero,+00000032
	jal	ra,000000002303A0A8
	c.lwsp	t3,00000020
	c.lui	a3,00001000
	lui	a1,0002303C
	lui	a0,00023086
	c.li	a4,0000001E
	addi	a3,a3,-00000060
	c.li	a2,00000000
	addi	a1,a1,-000003EC
	addi	a0,a0,+00000178
	c.addi16sp	00000020
	jal	zero,000000002303A368

;; altcp_alloc: 2303BEF6
;;   Called from:
;;     2303C2AA (in altcp_tcp_accept)
;;     2303C304 (in altcp_tcp_new_ip_type)
altcp_alloc proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000005
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023040230
	c.mv	s0,a0
	c.beqz	a0,000000002303BF10

l2303BF06:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2303BF10:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; altcp_free: 2303BF1A
;;   Called from:
;;     2303C12E (in altcp_tcp_err)
;;     2303C1E8 (in altcp_tcp_close)
altcp_free proc
	c.beqz	a0,000000002303BF3A

l2303BF1C:
	c.lw	a0,0(a5)
	c.mv	a1,a0
	c.beqz	a5,000000002303BF3C

l2303BF22:
	c.lw	a5,68(a5)
	c.beqz	a5,000000002303BF3C

l2303BF26:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.jalr	a5
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.li	a0,00000005
	c.addi16sp	00000020

l2303BF36:
	jal	zero,000000002304024E

l2303BF3A:
	c.jr	ra

l2303BF3C:
	c.li	a0,00000005
	c.j	000000002303BF36

;; altcp_new_ip_type: 2303BF40
;;   Called from:
;;     2303BF5A (in altcp_new)
altcp_new_ip_type proc
	c.mv	a5,a0
	c.mv	a0,a1
	c.bnez	a5,000000002303BF48

l2303BF46:
	c.j	000000002303C2F2

l2303BF48:
	lw	t1,a5,+00000000
	beq	t1,zero,000000002303BF54

l2303BF50:
	c.lw	a5,4(a0)
	c.jr	t1

l2303BF54:
	c.li	a0,00000000
	c.jr	ra

;; altcp_new: 2303BF58
;;   Called from:
;;     23039A02 (in httpc_init_connection_common.constprop.5)
altcp_new proc
	c.li	a1,00000000
	jal	zero,000000002303BF40

;; altcp_arg: 2303BF5E
;;   Called from:
;;     230394D6 (in httpc_free_state)
;;     23039A1A (in httpc_init_connection_common.constprop.5)
altcp_arg proc
	c.beqz	a0,000000002303BF62

l2303BF60:
	c.sw	a0,8(a1)

l2303BF62:
	c.jr	ra

;; altcp_recv: 2303BF64
;;   Called from:
;;     230394DE (in httpc_free_state)
;;     23039A28 (in httpc_init_connection_common.constprop.5)
altcp_recv proc
	c.beqz	a0,000000002303BF68

l2303BF66:
	c.sw	a0,24(a1)

l2303BF68:
	c.jr	ra

;; altcp_sent: 2303BF6A
;;   Called from:
;;     230394F8 (in httpc_free_state)
;;     23039A54 (in httpc_init_connection_common.constprop.5)
altcp_sent proc
	c.beqz	a0,000000002303BF6E

l2303BF6C:
	c.sw	a0,28(a1)

l2303BF6E:
	c.jr	ra

;; altcp_poll: 2303BF70
;;   Called from:
;;     230394F0 (in httpc_free_state)
;;     23039A46 (in httpc_init_connection_common.constprop.5)
altcp_poll proc
	c.beqz	a0,000000002303BF88

l2303BF72:
	c.lw	a0,0(a5)
	c.sw	a0,32(a1)
	sb	a2,a0,+00000028
	c.beqz	a5,000000002303BF88

l2303BF7C:
	lw	t1,a5,+00000000
	beq	t1,zero,000000002303BF88

l2303BF84:
	c.mv	a1,a2
	c.jr	t1

l2303BF88:
	c.jr	ra

;; altcp_err: 2303BF8A
;;   Called from:
;;     230394E6 (in httpc_free_state)
;;     23039A36 (in httpc_init_connection_common.constprop.5)
altcp_err proc
	c.beqz	a0,000000002303BF8E

l2303BF8C:
	c.sw	a0,36(a1)

l2303BF8E:
	c.jr	ra

;; altcp_recved: 2303BF90
;;   Called from:
;;     2300037E (in cb_altcp_recv_fn)
;;     23039750 (in httpc_tcp_recv)
;;     230397B8 (in httpc_tcp_recv)
altcp_recved proc
	c.beqz	a0,000000002303BFA0

l2303BF92:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303BFA0

l2303BF96:
	lw	t1,a5,+00000004
	beq	t1,zero,000000002303BFA0

l2303BF9E:
	c.jr	t1

l2303BFA0:
	c.jr	ra

;; altcp_connect: 2303BFA2
;;   Called from:
;;     23039496 (in httpc_get_internal_addr)
altcp_connect proc
	c.beqz	a0,000000002303BFB2

l2303BFA4:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303BFB2

l2303BFA8:
	lw	t1,a5,+0000000C
	beq	t1,zero,000000002303BFB2

l2303BFB0:
	c.jr	t1

l2303BFB2:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_abort: 2303BFB6
;;   Called from:
;;     23039506 (in httpc_free_state)
altcp_abort proc
	c.beqz	a0,000000002303BFC6

l2303BFB8:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303BFC6

l2303BFBC:
	lw	t1,a5,+00000014
	beq	t1,zero,000000002303BFC6

l2303BFC4:
	c.jr	t1

l2303BFC6:
	c.jr	ra

;; altcp_close: 2303BFC8
;;   Called from:
;;     230394FE (in httpc_free_state)
altcp_close proc
	c.beqz	a0,000000002303BFD8

l2303BFCA:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303BFD8

l2303BFCE:
	lw	t1,a5,+00000018
	beq	t1,zero,000000002303BFD8

l2303BFD6:
	c.jr	t1

l2303BFD8:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_write: 2303BFDC
;;   Called from:
;;     2303983A (in httpc_tcp_connected)
altcp_write proc
	c.beqz	a0,000000002303BFEC

l2303BFDE:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303BFEC

l2303BFE2:
	lw	t1,a5,+00000020
	beq	t1,zero,000000002303BFEC

l2303BFEA:
	c.jr	t1

l2303BFEC:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_output: 2303BFF0
;;   Called from:
;;     2303985E (in httpc_tcp_connected)
altcp_output proc
	c.beqz	a0,000000002303C000

l2303BFF2:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002303C000

l2303BFF6:
	lw	t1,a5,+00000024
	beq	t1,zero,000000002303C000

l2303BFFE:
	c.jr	t1

l2303C000:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_connected: 2303C004
altcp_tcp_connected proc
	c.mv	a1,a0
	c.beqz	a0,000000002303C014

l2303C008:
	lw	t1,a0,+00000014
	beq	t1,zero,000000002303C014

l2303C010:
	c.lw	a0,8(a0)
	c.jr	t1

l2303C014:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sent: 2303C018
altcp_tcp_sent proc
	c.mv	a1,a0
	c.beqz	a0,000000002303C028

l2303C01C:
	lw	t1,a0,+0000001C
	beq	t1,zero,000000002303C028

l2303C024:
	c.lw	a0,8(a0)
	c.jr	t1

l2303C028:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_poll: 2303C02C
altcp_tcp_poll proc
	c.mv	a1,a0
	c.beqz	a0,000000002303C03C

l2303C030:
	lw	t1,a0,+00000020
	beq	t1,zero,000000002303C03C

l2303C038:
	c.lw	a0,8(a0)
	c.jr	t1

l2303C03C:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_mss: 2303C040
altcp_tcp_mss proc
	c.beqz	a0,000000002303C04A

l2303C042:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000032
	c.jr	ra

l2303C04A:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sndbuf: 2303C04E
altcp_tcp_sndbuf proc
	c.beqz	a0,000000002303C058

l2303C050:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000064
	c.jr	ra

l2303C058:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sndqueuelen: 2303C05C
altcp_tcp_sndqueuelen proc
	c.beqz	a0,000000002303C066

l2303C05E:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000066
	c.jr	ra

l2303C066:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_nagle_disable: 2303C06A
altcp_tcp_nagle_disable proc
	c.beqz	a0,000000002303C07C

l2303C06C:
	c.lw	a0,12(a5)
	c.beqz	a5,000000002303C07C

l2303C070:
	lhu	a4,a5,+0000001A
	ori	a4,a4,+00000040
	sh	a4,a5,+0000001A

l2303C07C:
	c.jr	ra

;; altcp_tcp_nagle_enable: 2303C07E
altcp_tcp_nagle_enable proc
	c.beqz	a0,000000002303C090

l2303C080:
	c.lw	a0,12(a5)
	c.beqz	a5,000000002303C090

l2303C084:
	lhu	a4,a5,+0000001A
	andi	a4,a4,-00000041
	sh	a4,a5,+0000001A

l2303C090:
	c.jr	ra

;; altcp_tcp_nagle_disabled: 2303C092
altcp_tcp_nagle_disabled proc
	c.beqz	a0,000000002303C0A4

l2303C094:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303C0A6

l2303C09A:
	lhu	a0,a5,+0000001A
	c.srli	a0,00000006
	c.andi	a0,00000001
	c.jr	ra

l2303C0A4:
	c.li	a0,00000000

l2303C0A6:
	c.jr	ra

;; altcp_tcp_dealloc: 2303C0A8
altcp_tcp_dealloc proc
	c.jr	ra

;; altcp_tcp_get_ip: 2303C0AA
altcp_tcp_get_ip proc
	c.beqz	a0,000000002303C0B4

l2303C0AC:
	c.lw	a0,12(a0)
	c.beqz	a0,000000002303C0B4

l2303C0B0:
	c.bnez	a1,000000002303C0B4

l2303C0B2:
	c.addi	a0,00000004

l2303C0B4:
	c.jr	ra

;; altcp_tcp_get_port: 2303C0B6
altcp_tcp_get_port proc
	c.beqz	a0,000000002303C0CC

l2303C0B8:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303C0CE

l2303C0BE:
	c.beqz	a1,000000002303C0C6

l2303C0C0:
	lhu	a0,a5,+00000016
	c.jr	ra

l2303C0C6:
	lhu	a0,a5,+00000018
	c.jr	ra

l2303C0CC:
	c.li	a0,00000000

l2303C0CE:
	c.jr	ra

;; altcp_tcp_setup_callbacks: 2303C0D0
;;   Called from:
;;     2303C1C2 (in altcp_tcp_close)
;;     2303C2B4 (in altcp_tcp_accept)
;;     2303C30E (in altcp_tcp_new_ip_type)
altcp_tcp_setup_callbacks proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,0000000023041784
	lui	a1,0002303C
	c.mv	a0,s0
	addi	a1,a1,+00000256
	jal	ra,000000002304178A
	lui	a1,0002303C
	c.mv	a0,s0
	addi	a1,a1,+00000018
	jal	ra,0000000023041792
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002303C
	addi	a1,a1,+00000110
	c.addi	sp,00000010
	jal	zero,000000002304179A

;; altcp_tcp_err: 2303C110
altcp_tcp_err proc
	c.beqz	a0,000000002303C132

l2303C112:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,36(a5)
	sw	zero,a0,+0000000C
	c.mv	s0,a0
	c.beqz	a5,000000002303C126

l2303C122:
	c.lw	a0,8(a0)
	c.jalr	a5

l2303C126:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303BF1A

l2303C132:
	c.jr	ra

;; altcp_tcp_get_tcp_addrinfo: 2303C134
altcp_tcp_get_tcp_addrinfo proc
	c.beqz	a0,000000002303C13C

l2303C136:
	c.lw	a0,12(a0)
	jal	zero,00000000230419A4

l2303C13C:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_setprio: 2303C140
altcp_tcp_setprio proc
	c.beqz	a0,000000002303C148

l2303C142:
	c.lw	a0,12(a0)
	jal	zero,0000000023041752

l2303C148:
	c.jr	ra

;; altcp_tcp_output: 2303C14A
altcp_tcp_output proc
	c.beqz	a0,000000002303C152

l2303C14C:
	c.lw	a0,12(a0)
	jal	zero,0000000023044AD2

l2303C152:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_write: 2303C156
altcp_tcp_write proc
	c.beqz	a0,000000002303C15E

l2303C158:
	c.lw	a0,12(a0)
	jal	zero,00000000230441B6

l2303C15E:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_shutdown: 2303C162
altcp_tcp_shutdown proc
	c.beqz	a0,000000002303C16A

l2303C164:
	c.lw	a0,12(a0)
	jal	zero,0000000023042138

l2303C16A:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_close: 2303C16E
altcp_tcp_close proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.li	s2,FFFFFFFA
	c.beqz	a0,000000002303C1D2

l2303C17E:
	c.lw	a0,12(s0)
	c.mv	s1,a0
	c.beqz	s0,000000002303C1E6

l2303C184:
	c.li	a1,00000000
	c.mv	a0,s0
	lw	s3,s0,+0000008C
	jal	ra,0000000023041784
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304178A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023041792
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304179A
	lbu	a2,s0,+0000001D
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230417B2
	c.mv	a0,s0
	jal	ra,0000000023041FAC
	c.mv	s2,a0
	c.beqz	a0,000000002303C1E2

l2303C1BE:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303C0D0
	lbu	a2,s0,+0000001D
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230417B2

l2303C1D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303C1E2:
	sw	zero,s1,+0000000C

l2303C1E6:
	c.mv	a0,s1
	jal	ra,000000002303BF1A
	c.li	s2,00000000
	c.j	000000002303C1D2

;; altcp_tcp_abort: 2303C1F0
altcp_tcp_abort proc
	c.beqz	a0,000000002303C1FA

l2303C1F2:
	c.lw	a0,12(a0)
	c.beqz	a0,000000002303C1FA

l2303C1F6:
	jal	zero,0000000023041BC0

l2303C1FA:
	c.jr	ra

;; altcp_tcp_listen: 2303C1FC
altcp_tcp_listen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,000000002303C210

l2303C204:
	c.li	s0,00000000

l2303C206:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303C210:
	c.mv	s0,a0
	c.lw	a0,12(a0)
	jal	ra,0000000023041576
	c.beqz	a0,000000002303C204

l2303C21A:
	lui	a1,0002303C
	c.sw	s0,12(a0)
	addi	a1,a1,+00000292
	jal	ra,00000000230417A2
	c.j	000000002303C206

;; altcp_tcp_connect: 2303C22A
altcp_tcp_connect proc
	c.beqz	a0,000000002303C23C

l2303C22C:
	c.sw	a0,20(a3)
	c.lw	a0,12(a0)
	lui	a3,0002303C
	addi	a3,a3,+00000004
	jal	zero,0000000023041800

l2303C23C:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_bind: 2303C240
altcp_tcp_bind proc
	c.beqz	a0,000000002303C248

l2303C242:
	c.lw	a0,12(a0)
	jal	zero,00000000230414B6

l2303C248:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_recved: 2303C24C
altcp_tcp_recved proc
	c.beqz	a0,000000002303C254

l2303C24E:
	c.lw	a0,12(a0)
	jal	zero,00000000230416BC

l2303C254:
	c.jr	ra

;; altcp_tcp_recv: 2303C256
altcp_tcp_recv proc
	c.mv	a1,a0
	c.mv	a0,a2
	c.beqz	a1,000000002303C268

l2303C25C:
	lw	t1,a1,+00000018
	beq	t1,zero,000000002303C268

l2303C264:
	c.lw	a1,8(a0)
	c.jr	t1

l2303C268:
	c.beqz	a0,000000002303C27A

l2303C26A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023040890
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303C27A:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_set_poll: 2303C27E
altcp_tcp_set_poll proc
	c.mv	a2,a1
	c.beqz	a0,000000002303C290

l2303C282:
	c.lw	a0,12(a0)
	lui	a1,0002303C
	addi	a1,a1,+0000002C
	jal	zero,00000000230417B2

l2303C290:
	c.jr	ra

;; altcp_tcp_accept: 2303C292
altcp_tcp_accept proc
	c.beqz	a0,000000002303C2DE

l2303C294:
	c.lw	a0,16(a5)
	c.beqz	a5,000000002303C2DE

l2303C298:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s0,a0
	jal	ra,000000002303BEF6
	c.mv	s1,a0
	c.beqz	a0,000000002303C2E2

l2303C2B2:
	c.mv	a1,s2
	jal	ra,000000002303C0D0
	lui	a5,00023086
	addi	a5,a5,+000001A8
	sw	s2,s1,+0000000C
	c.sw	s1,0(a5)
	lw	t1,s0,+00000010
	c.lw	s0,8(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a2,s3
	c.mv	a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l2303C2DE:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2303C2E2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

;; altcp_tcp_new_ip_type: 2303C2F2
;;   Called from:
;;     2303BF46 (in altcp_new_ip_type)
altcp_tcp_new_ip_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023041E66
	c.li	s0,00000000
	c.beqz	a0,000000002303C31E

l2303C302:
	c.mv	s1,a0
	jal	ra,000000002303BEF6
	c.mv	s0,a0
	c.beqz	a0,000000002303C32A

l2303C30C:
	c.mv	a1,s1
	jal	ra,000000002303C0D0
	lui	a5,00023086
	addi	a5,a5,+000001A8
	c.sw	s0,12(s1)
	c.sw	s0,0(a5)

l2303C31E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303C32A:
	c.mv	a0,s1
	jal	ra,0000000023041FAC
	c.j	000000002303C31E

;; lwip_htons: 2303C332
;;   Called from:
;;     23000650 (in client_demo.constprop.3)
;;     2302AE72 (in ota_tcp_cmd.part.0)
;;     2302C894 (in get_dns_request)
;;     2302C8A0 (in get_dns_request)
;;     2302C926 (in get_dns_request)
;;     2302C934 (in get_dns_request)
;;     2302C93E (in get_dns_request)
;;     2302C948 (in get_dns_request)
;;     2302C952 (in get_dns_request)
;;     2302C95C (in get_dns_request)
;;     2302C9C8 (in get_dns_request)
;;     2302C9D2 (in get_dns_request)
;;     2302C9DE (in get_dns_request)
;;     2302C9E8 (in get_dns_request)
;;     2302C9F2 (in get_dns_request)
;;     2302C9FC (in get_dns_request)
;;     2303A56A (in lwip_getaddrinfo)
;;     2303AA48 (in lwip_sock_make_addr.isra.3)
;;     2303B2B4 (in lwip_accept)
;;     2303B332 (in lwip_bind)
;;     2303B456 (in lwip_connect)
;;     2303B640 (in lwip_sendto)
;;     2303C496 (in dns_send)
;;     2303C6CE (in dns_recv)
;;     2303C6F6 (in dns_recv)
;;     2303C700 (in dns_recv)
;;     2303C9CC (in dns_recv)
;;     2303C9DE (in dns_recv)
;;     2303CD40 (in inet_chksum_pseudo)
;;     2303CD48 (in inet_chksum_pseudo)
;;     2303CE08 (in inet_chksum_pseudo_partial)
;;     2303CE10 (in inet_chksum_pseudo_partial)
;;     2303E73A (in etharp_raw)
;;     2303F53C (in ip4_input)
;;     2303F934 (in ip4_output_if_opt_src)
;;     2303F952 (in ip4_output_if_opt_src)
;;     23042608 (in tcp_oos_insert_segment)
;;     2304268A (in tcp_oos_insert_segment)
;;     230426A2 (in tcp_oos_insert_segment)
;;     23042826 (in tcp_free_acked_segments.isra.3)
;;     23042AD2 (in tcp_receive)
;;     23042AFC (in tcp_receive)
;;     23042B16 (in tcp_receive)
;;     23042B1E (in tcp_receive)
;;     23042B56 (in tcp_receive)
;;     23042B84 (in tcp_receive)
;;     23042BA8 (in tcp_receive)
;;     23042C0C (in tcp_receive)
;;     23042C3A (in tcp_receive)
;;     23042E1E (in tcp_receive)
;;     23042E54 (in tcp_receive)
;;     23042E6A (in tcp_receive)
;;     23042E84 (in tcp_receive)
;;     23042EAE (in tcp_receive)
;;     23042EE0 (in tcp_receive)
;;     23042F00 (in tcp_receive)
;;     23042F16 (in tcp_receive)
;;     23042F5A (in tcp_receive)
;;     23043130 (in tcp_receive)
;;     230431B2 (in tcp_receive)
;;     230431CE (in tcp_receive)
;;     230431D6 (in tcp_receive)
;;     2304322E (in tcp_receive)
;;     23043330 (in tcp_input)
;;     230433AA (in tcp_input)
;;     230433C8 (in tcp_input)
;;     23043476 (in tcp_input)
;;     23043494 (in tcp_input)
;;     23043E5A (in tcp_input)
;;     23043F9E (in tcp_create_segment)
;;     23043FB4 (in tcp_create_segment)
;;     23043FF6 (in tcp_create_segment)
;;     2304404A (in tcp_output_alloc_header_common.constprop.6)
;;     2304405A (in tcp_output_alloc_header_common.constprop.6)
;;     230440A8 (in tcp_output_alloc_header_common.constprop.6)
;;     230440B8 (in tcp_output_alloc_header_common.constprop.6)
;;     2304443A (in tcp_write)
;;     23044586 (in tcp_split_unsent_seg)
;;     23044642 (in tcp_split_unsent_seg)
;;     2304480C (in tcp_send_fin)
;;     23044824 (in tcp_send_fin)
;;     230448D8 (in tcp_rexmit_rto_prepare)
;;     23044C08 (in tcp_output)
;;     23044C58 (in tcp_output)
;;     23044D18 (in tcp_output)
;;     23044D36 (in tcp_output)
;;     23044E50 (in tcp_output)
;;     23044E80 (in tcp_output)
;;     23044F9E (in tcp_output)
;;     230450B8 (in tcp_zero_window_probe)
;;     23045114 (in tcp_zero_window_probe)
;;     23045482 (in udp_input)
;;     23045494 (in udp_input)
;;     23045784 (in udp_sendto_if_src_chksum)
;;     23045794 (in udp_sendto_if_src_chksum)
;;     230457D2 (in udp_sendto_if_src_chksum)
;;     23045BF6 (in ethernet_output)
;;     23047EEE (in tcpc_entry)
;;     23048172 (in TCP_Server)
;;     2304846A (in TCP_Server)
;;     23048A2A (in iperf_client_udp)
;;     23048A82 (in iperf_client_udp)
;;     23048C92 (in iperf_server)
;;     23048D22 (in iperf_server)
;;     23048F14 (in iperf_client_tcp)
;;     230491C6 (in ping_free)
;;     230492A4 (in ping_timeout)
;;     2304936A (in ping_timeout)
;;     23049430 (in ping_recv)
lwip_htons proc
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; lwip_htonl: 2303C340
;;   Called from:
;;     2302CA0A (in get_dns_request)
;;     2302CA18 (in get_dns_request)
;;     2303C8C8 (in dns_recv)
;;     2303D0AC (in dhcp_create_msg)
;;     2303D5E6 (in dhcp_reboot)
;;     2303D776 (in dhcp_select)
;;     2303D7AE (in dhcp_select)
;;     2303D95C (in dhcp_handle_ack.isra.3)
;;     2303D976 (in dhcp_handle_ack.isra.3)
;;     2303D98C (in dhcp_handle_ack.isra.3)
;;     2303D9A2 (in dhcp_handle_ack.isra.3)
;;     2303DA4E (in dhcp_recv)
;;     2303DC06 (in dhcp_recv)
;;     2303DD3C (in dhcp_recv)
;;     2303DE26 (in dhcp_recv)
;;     2303DF46 (in dhcp_arp_reply)
;;     2303E1B0 (in dhcp_release_and_stop)
;;     2303FB70 (in ip4addr_aton)
;;     2304280E (in tcp_free_acked_segments.isra.3)
;;     23042D90 (in tcp_receive)
;;     230433F6 (in tcp_input)
;;     2304343E (in tcp_input)
;;     23043FC8 (in tcp_create_segment)
;;     23044084 (in tcp_output_alloc_header_common.constprop.6)
;;     230445C8 (in tcp_split_unsent_seg)
;;     230448BE (in tcp_rexmit_rto_prepare)
;;     23044984 (in tcp_rexmit)
;;     230449A8 (in tcp_rexmit)
;;     23044A40 (in tcp_rst)
;;     23044A8A (in tcp_send_empty_ack)
;;     23044B7A (in tcp_output)
;;     23044C30 (in tcp_output)
;;     23044C8E (in tcp_output)
;;     23044CCA (in tcp_output)
;;     23044E36 (in tcp_output)
;;     23044EBE (in tcp_output)
;;     23044EE4 (in tcp_output)
;;     23044F1C (in tcp_output)
;;     23044F40 (in tcp_output)
;;     23044F7E (in tcp_output)
;;     2304504E (in tcp_keepalive)
;;     2304514C (in tcp_zero_window_probe)
;;     23047910 (in dhcp_server_recv)
;;     2304791A (in dhcp_server_recv)
;;     23047924 (in dhcp_server_recv)
;;     2304792C (in dhcp_server_recv)
;;     2304817C (in TCP_Server)
;;     23048B8A (in iperf_client_udp)
;;     2304A464 (in sntp_recv)
;;     2304A474 (in sntp_recv)
lwip_htonl proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	lui	a3,00000FF0
	slli	a4,a0,00000008
	c.and	a4,a3
	c.or	a5,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a0,00000008
	c.and	a0,a4
	c.or	a0,a5
	c.jr	ra

;; lwip_strnicmp: 2303C364
;;   Called from:
;;     2303CB46 (in dns_gethostbyname_addrtype)
lwip_strnicmp proc
	c.addi	a2,FFFFFFFF
	c.li	a5,00000000
	c.li	t1,00000019

l2303C36A:
	add	a4,a0,a5
	lbu	a3,a4,+00000000
	add	a4,a1,a5
	lbu	a4,a4,+00000000
	beq	a3,a4,000000002303C396

l2303C37E:
	ori	a7,a3,+00000020
	addi	a6,a7,-00000061
	andi	a6,a6,+000000FF
	bltu	t1,a6,000000002303C3A2

l2303C38E:
	ori	a4,a4,+00000020
	bne	a7,a4,000000002303C3A2

l2303C396:
	beq	a2,a5,000000002303C39E

l2303C39A:
	c.addi	a5,00000001
	c.bnez	a3,000000002303C36A

l2303C39E:
	c.li	a0,00000000
	c.jr	ra

l2303C3A2:
	c.li	a0,00000001
	c.jr	ra

;; dns_call_found: 2303C3A6
;;   Called from:
;;     2303C430 (in dns_send)
;;     2303C64E (in dns_check_entry)
;;     2303C8EA (in dns_recv)
;;     2303C976 (in dns_recv)
dns_call_found proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042015
	c.swsp	s1,00000080
	addi	a4,a5,-000003A4
	slli	s1,a0,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.add	a4,s1
	c.lw	a4,0(a3)
	addi	s0,a5,-000003A4
	c.beqz	a3,000000002303C3DC

l2303C3C4:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.lw	a4,4(a2)
	lui	a4,00042015
	addi	a4,a4,-00000384
	c.addi	a0,0000000F
	c.add	a0,a4
	c.jalr	a3

l2303C3DC:
	add	a5,s0,s1
	sw	zero,a5,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dns_send: 2303C3EE
;;   Called from:
;;     2303C606 (in dns_check_entry)
dns_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	addi	s0,zero,+00000110
	add	s0,a0,s0
	c.swsp	s3,00000094
	lui	s3,00042015
	c.swsp	s2,00000018
	addi	s2,s3,-00000384
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.add	s2,s0
	lbu	a4,s2,+0000000B
	lui	s6,0004200E
	addi	a5,s6,-00000100
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303C458

l2303C42E:
	c.li	a1,00000000
	jal	ra,000000002303C3A6
	c.li	s4,00000000
	sb	zero,s2,+0000000A

l2303C43A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s4
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.lwsp	a6,0000004C
	c.addi16sp	00000040
	c.jr	ra

l2303C458:
	addi	s3,s3,-00000384
	c.addi	s0,0000000F
	c.add	s0,s3
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,000000002307132C
	addi	a1,a0,+00000012
	c.slli	a1,10
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000B6
	jal	ra,0000000023040912
	c.mv	s1,a0
	c.li	s4,FFFFFFFF
	c.beqz	a0,000000002303C43A

l2303C482:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lhu	a0,s2,+00000008
	c.lui	s8,00010000
	addi	s6,s6,-00000100
	jal	ra,000000002303C332
	c.li	a5,00000001
	sh	a0,sp,+00000004
	sb	a5,sp,+00000006
	c.li	a2,0000000C
	addi	a5,zero,+00000100
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	sh	a5,sp,+00000008
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023040CCA
	c.li	s2,0000000C
	addi	s10,zero,+0000002E
	c.addi	s8,FFFFFFFE

l2303C4C0:
	c.addi	s0,00000001
	c.mv	s9,s0
	c.li	a2,00000000

l2303C4C6:
	lbu	a5,s0,+00000000
	bne	a5,s10,000000002303C4EA

l2303C4CE:
	sub	s7,s0,s9
	c.slli	s7,10
	add	s4,s2,a2
	srli	s7,s7,00000010
	bge	s8,s4,000000002303C4F6

l2303C4E0:
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.li	s4,FFFFFFFA
	c.j	000000002303C43A

l2303C4EA:
	c.beqz	a5,000000002303C4CE

l2303C4EC:
	c.addi	a2,00000001
	andi	a2,a2,+000000FF
	c.addi	s0,00000001
	c.j	000000002303C4C6

l2303C4F6:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023040E10
	addi	a3,s2,+00000001
	c.slli	a3,10
	c.srli	a3,00000010
	c.mv	a2,s7
	c.mv	a1,s9
	c.mv	a0,s1
	jal	ra,0000000023040D28
	c.slli	s4,10
	srli	s4,s4,00000010
	lbu	a5,s0,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002303C4C0

l2303C526:
	c.mv	a1,s2
	c.mv	a0,s1
	c.li	a2,00000000
	jal	ra,0000000023040E10
	c.addi	s4,00000002
	slli	a3,s4,00000010
	lui	a5,00001000
	addi	a5,a5,+00000100
	c.mv	a1,sp
	c.srli	a3,00000010
	c.li	a2,00000004
	c.mv	a0,s1
	c.swsp	a5,00000000
	jal	ra,0000000023040D28
	addi	a5,zero,+00000110
	add	s5,s5,a5
	lui	a5,0004200E
	lw	a0,a5,-00000108
	addi	a3,zero,+00000035
	c.mv	a1,s1
	c.add	s3,s5
	lbu	a2,s3,+0000000B
	c.slli	a2,02
	c.add	a2,s6
	jal	ra,0000000023045986
	c.mv	s4,a0
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.j	000000002303C43A

;; dns_check_entry: 2303C57A
;;   Called from:
;;     2303C9B6 (in dns_recv)
;;     2303CA8E (in dns_tmr)
;;     2303CA94 (in dns_tmr)
;;     2303CA9A (in dns_tmr)
;;     2303CAA4 (in dns_tmr)
;;     2303CBE4 (in dns_gethostbyname_addrtype)
dns_check_entry proc
	addi	a4,zero,+00000110
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042015
	addi	a5,s0,-00000384
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	a3,00000002
	addi	s0,s0,-00000384
	c.add	a5,a4
	lbu	a4,a5,+0000000A
	beq	a4,a3,000000002303C60A

l2303C5A2:
	c.li	a3,00000003
	beq	a4,a3,000000002303C670

l2303C5A8:
	c.li	a5,00000001
	bne	a4,a5,000000002303C660

l2303C5AE:
	lui	a5,0004200E
	lhu	a4,a5,-000000F8
	addi	a3,a5,-000000F8
	addi	a2,s0,+00000440
	c.li	a1,00000002

l2303C5C0:
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	c.mv	a5,s0

l2303C5C8:
	lbu	a6,a5,+0000000A
	bne	a6,a1,000000002303C5D8

l2303C5D0:
	lhu	a6,a5,+00000008
	beq	a6,a4,000000002303C5C0

l2303C5D8:
	addi	a5,a5,+00000110
	bne	a2,a5,000000002303C5C8

l2303C5E0:
	addi	a5,zero,+00000110
	add	a5,a0,a5
	sh	a4,a3,+00000000
	c.add	s0,a5
	c.li	a5,00000002
	sh	a5,s0,+0000000A
	c.li	a5,00000001
	sh	a4,s0,+00000008
	sh	a5,s0,+0000000C

l2303C5FE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303C3EE

l2303C60A:
	lbu	a4,a5,+0000000C
	c.addi	a4,FFFFFFFF
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000C
	c.bnez	a4,000000002303C660

l2303C61A:
	lbu	a4,a5,+0000000D
	c.li	a3,00000004
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000D
	bne	a4,a3,000000002303C66A

l2303C62E:
	lbu	a4,a5,+0000000B
	c.bnez	a4,000000002303C64A

l2303C634:
	lui	a4,0004200E
	lw	a4,a4,-000000FC
	c.beqz	a4,000000002303C64A

l2303C63E:
	c.li	a4,00000001
	sb	a4,a5,+0000000B
	sh	a4,a5,+0000000C
	c.j	000000002303C5FE

l2303C64A:
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002303C3A6
	addi	a0,zero,+00000110
	add	a0,s1,a0

l2303C65A:
	c.add	s0,a0
	sb	zero,s0,+0000000A

l2303C660:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303C66A:
	sb	a4,a5,+0000000C
	c.j	000000002303C5FE

l2303C670:
	c.lw	a5,0(a4)
	c.bnez	a4,000000002303C67E

l2303C674:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.j	000000002303C65A

l2303C67E:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.beqz	a4,000000002303C674

l2303C684:
	c.j	000000002303C660

;; dns_recv: 2303C686
dns_recv proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lhu	a4,a2,+00000008
	c.li	a5,0000000F
	c.mv	s1,a2
	bgeu	a5,a4,000000002303C9BA

l2303C6AE:
	c.mv	s7,a3
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,0000000023040C4A
	c.li	a5,0000000C
	c.mv	s0,a0
	bne	a0,a5,000000002303C9BA

l2303C6C4:
	lhu	a0,sp,+00000018
	lui	s3,00042015
	c.li	s2,00000000
	jal	ra,000000002303C332
	addi	a5,s3,-00000384
	c.li	a3,00000002
	addi	s3,s3,-00000384
	c.li	a4,00000004

l2303C6DE:
	lbu	a2,a5,+0000000A
	andi	s6,s2,+000000FF
	bne	a2,a3,000000002303C9F0

l2303C6EA:
	lhu	a2,a5,+00000008
	bne	a2,a0,000000002303C9F0

l2303C6F2:
	lhu	a0,sp,+0000001C
	jal	ra,000000002303C332
	c.mv	s4,a0
	lhu	a0,sp,+0000001E
	jal	ra,000000002303C332
	lb	a5,sp,+0000001A
	c.mv	s5,a0
	bge	a5,zero,000000002303C9BA

l2303C70E:
	c.li	a5,00000001
	bne	s4,a5,000000002303C9BA

l2303C714:
	addi	s4,zero,+00000110
	add	s4,s2,s4
	lui	s8,0004200E
	addi	a5,s8,-00000100
	addi	s8,s8,-00000100
	add	a4,s3,s4
	lbu	a4,a4,+0000000B
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	lw	a4,s7,+00000000
	bne	a4,a5,000000002303C9BA

l2303C73E:
	addi	s7,s4,+0000000F
	c.lui	s9,00010000
	lui	s10,0002308E
	c.add	s7,s3
	c.addi	s9,FFFFFFFF
	addi	s10,s10,-00000393
	c.li	s11,00000001

l2303C752:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023040DCA
	blt	a0,zero,000000002303C9BA

l2303C75E:
	beq	s0,s9,000000002303C9BA

l2303C762:
	c.addi	s0,00000001
	c.slli	s0,10
	andi	a5,a0,+000000C0
	addi	a4,zero,+000000C0
	c.srli	s0,00000010
	beq	a5,a4,000000002303C9BA

l2303C774:
	add	a5,s7,a0

l2303C778:
	bne	s7,a5,000000002303C90E

l2303C77C:
	c.mv	a1,s0
	c.mv	a0,s1
	c.addi	s7,00000001
	jal	ra,0000000023040DCA
	blt	a0,zero,000000002303C9BA

l2303C78A:
	c.bnez	a0,000000002303C752

l2303C78C:
	c.lui	s9,00010000
	addi	a5,s9,-00000001
	beq	s0,a5,000000002303C9BA

l2303C796:
	addi	s7,s0,+00000001
	c.slli	s7,10
	srli	s7,s7,00000010
	beq	s7,a5,000000002303C9BA

l2303C7A4:
	c.mv	a3,s7
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023040C4A
	c.li	a5,00000004
	bne	a0,a5,000000002303C9BA

l2303C7B6:
	lhu	a5,sp,+00000012
	addi	a4,zero,+00000100
	bne	a5,a4,000000002303C9BA

l2303C7C2:
	lhu	a4,sp,+00000010
	bne	a4,a5,000000002303C9BA

l2303C7CA:
	c.addi	s9,FFFFFFFB
	bltu	s9,s7,000000002303C9BA

l2303C7D0:
	lbu	a5,sp,+0000001B
	c.andi	a5,0000000F
	bne	a5,zero,000000002303C95C

l2303C7DA:
	c.addi	s0,00000005
	c.lui	s7,00010000
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s10,zero,+000000C0
	addi	s8,s7,-00000001
	addi	s11,s7,-0000000B
	addi	s9,zero,+00000100

l2303C7F2:
	beq	s5,zero,000000002303C96C

l2303C7F6:
	lhu	a4,s1,+00000008
	bgeu	s0,a4,000000002303C96C

l2303C7FE:
	addi	a0,s0,+00000001
	slli	a3,a0,00000010
	c.srli	a3,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,0000000023040DCA
	blt	a0,zero,000000002303C9BA

l2303C816:
	c.lwsp	a2,000000A4
	beq	a3,zero,000000002303C9BA

l2303C81C:
	andi	a5,a0,+000000C0
	beq	a5,s10,000000002303C9C2

l2303C824:
	lhu	a5,s1,+00000008
	c.add	a0,a3
	bge	a0,a5,000000002303C9BA

l2303C82E:
	slli	s0,a0,00000010
	c.srli	s0,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023040DCA
	blt	a0,zero,000000002303C9BA

l2303C840:
	c.bnez	a0,000000002303C7FE

l2303C842:
	beq	s0,s8,000000002303C9BA

l2303C846:
	addi	a4,s0,+00000001
	c.slli	a4,10
	c.srli	a4,00000010
	beq	a4,s8,000000002303C9BA

l2303C852:
	c.mv	a3,a4
	c.li	a2,0000000A
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	c.swsp	a4,00000084
	jal	ra,0000000023040C4A
	c.li	a3,0000000A
	bne	a0,a3,000000002303C9BA

l2303C866:
	c.lwsp	a2,000000C4
	bltu	s11,a4,000000002303C9BA

l2303C86C:
	addi	a5,s0,+0000000B
	slli	s0,a5,00000010
	lhu	a5,sp,+00000026
	c.srli	s0,00000010
	lhu	a0,sp,+0000002C
	bne	a5,s9,000000002303C9CC

l2303C882:
	lhu	a5,sp,+00000024
	bne	a5,s9,000000002303C9CC

l2303C88A:
	addi	a5,zero,+00000400
	bne	a0,a5,000000002303C9CC

l2303C892:
	c.mv	a3,s0
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,0000000023040C4A
	c.li	a5,00000004
	bne	a0,a5,000000002303C9BA

l2303C8A4:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	lui	s0,00042015
	addi	s3,s0,-00000384
	c.mv	a0,s1
	addi	s0,s0,-00000384
	c.add	s3,a5
	c.lwsp	s4,000000E4
	sw	a5,s3,+00000004
	jal	ra,0000000023040890
	c.lwsp	s0,00000154
	jal	ra,000000002303C340
	c.li	a5,00000003
	sb	a5,s3,+0000000A
	lui	a5,00000094
	addi	a5,a5,-00000580
	bltu	a5,a0,000000002303C9C6

l2303C8DE:
	sw	a0,s3,+00000000

l2303C8E2:
	addi	a1,s4,+00000004
	c.add	a1,s0
	c.mv	a0,s6
	jal	ra,000000002303C3A6
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s2,s0
	lw	a5,s2,+00000000
	c.bnez	a5,000000002303C988

l2303C8FE:
	lbu	a4,s2,+0000000A
	c.li	a5,00000003
	bne	a4,a5,000000002303C988

l2303C908:
	sb	zero,s2,+0000000A
	c.j	000000002303C988

l2303C90E:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a5,00000084
	jal	ra,0000000023040DCA
	blt	a0,zero,000000002303C9BA

l2303C91C:
	lbu	a4,s7,+00000000
	c.lwsp	a2,000000E4
	add	a3,a4,s10
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002303C934

l2303C930:
	addi	a4,a4,+00000020

l2303C934:
	andi	a0,a0,+000000FF
	add	a3,s10,a0
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002303C94A

l2303C946:
	addi	a0,a0,+00000020

l2303C94A:
	bne	a4,a0,000000002303C9BA

l2303C94E:
	beq	s0,s9,000000002303C9BA

l2303C952:
	c.addi	s0,00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s7,00000001
	c.j	000000002303C778

l2303C95C:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	c.add	a5,s3
	lbu	a4,a5,+0000000B
	c.beqz	a4,000000002303C9A6

l2303C96C:
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,000000002303C3A6
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s3,s2
	sb	zero,s3,+0000000A

l2303C988:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l2303C9A6:
	lw	a4,s8,+00000004
	c.beqz	a4,000000002303C96C

l2303C9AC:
	addi	a4,zero,+00000301
	sh	a4,a5,+0000000C
	c.mv	a0,s6
	jal	ra,000000002303C57A

l2303C9BA:
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.j	000000002303C988

l2303C9C2:
	c.mv	s0,a3
	c.j	000000002303C842

l2303C9C6:
	sw	a5,s3,+00000000
	c.j	000000002303C8E2

l2303C9CC:
	jal	ra,000000002303C332
	c.add	a0,s0
	bge	a0,s7,000000002303C9BA

l2303C9D6:
	lhu	a0,sp,+0000002C
	c.addi	s5,FFFFFFFF
	c.slli	s5,10
	jal	ra,000000002303C332
	c.add	a0,s0
	slli	s0,a0,00000010
	c.srli	s0,00000010
	srli	s5,s5,00000010
	c.j	000000002303C7F2

l2303C9F0:
	c.addi	s2,00000001
	addi	a5,a5,+00000110
	bne	s2,a4,000000002303C6DE

l2303C9FA:
	c.j	000000002303C9BA

;; dns_init: 2303C9FC
;;   Called from:
;;     2303CF8A (in lwip_init)
dns_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000108
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,000000002303CA3C

l2303CA0E:
	addi	a0,zero,+0000002E
	jal	ra,0000000023045AA0
	lui	a1,0002308E
	c.li	a2,00000000
	addi	a1,a1,-00000174
	c.sw	s0,0(a0)
	jal	ra,000000002304561A
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002303C
	c.li	a2,00000000
	addi	a1,a1,+00000686
	c.addi	sp,00000010
	jal	zero,0000000023045A3A

l2303CA3C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; dns_setserver: 2303CA44
;;   Called from:
;;     2302510C (in stateConnectedIPNoEnter)
;;     23025116 (in stateConnectedIPNoEnter)
;;     2303D996 (in dhcp_handle_ack.isra.3)
;;     2303D9AC (in dhcp_handle_ack.isra.3)
dns_setserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002303CA5C

l2303CA4A:
	lui	a5,0004200E
	addi	a5,a5,-00000100
	c.slli	a0,02
	c.add	a5,a0
	c.beqz	a1,000000002303CA5E

l2303CA58:
	c.lw	a1,0(a4)

l2303CA5A:
	c.sw	a5,0(a4)

l2303CA5C:
	c.jr	ra

l2303CA5E:
	lui	a4,0002308E
	lw	a4,a4,-00000174
	c.j	000000002303CA5A

;; dns_getserver: 2303CA68
;;   Called from:
;;     230282E8 (in wifi_mgmr_sta_dns_get)
;;     230282F2 (in wifi_mgmr_sta_dns_get)
;;     230291C4 (in netif_status_callback)
;;     230291CE (in netif_status_callback)
dns_getserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002303CA7E

l2303CA6E:
	slli	a5,a0,00000002
	lui	a0,0004200E
	addi	a0,a0,-00000100
	c.add	a0,a5
	c.jr	ra

l2303CA7E:
	lui	a0,0002308E
	addi	a0,a0,-00000174
	c.jr	ra

;; dns_tmr: 2303CA88
dns_tmr proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002303C57A
	c.li	a0,00000001
	jal	ra,000000002303C57A
	c.li	a0,00000002
	jal	ra,000000002303C57A
	c.lwsp	a2,00000020
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002303C57A

;; dns_gethostbyname_addrtype: 2303CAA8
;;   Called from:
;;     2303CC2E (in dns_gethostbyname)
;;     230473AA (in lwip_netconn_do_gethostbyname)
dns_gethostbyname_addrtype proc
	c.bnez	a1,000000002303CAD0

l2303CAAA:
	c.li	a4,FFFFFFF0
	c.mv	a0,a4
	c.jr	ra

l2303CAB0:
	c.li	a4,FFFFFFF0

l2303CAB2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.mv	a0,a4
	c.addi16sp	00000030
	c.jr	ra

l2303CAD0:
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s2,a0
	c.beqz	a0,000000002303CAB0

l2303CAEE:
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002303CAB0

l2303CAF4:
	lui	a5,0004200E
	lw	a5,a5,-00000108
	c.beqz	a5,000000002303CAB0

l2303CAFE:
	c.mv	s5,a3
	c.mv	s4,a2
	c.mv	s7,a1
	jal	ra,000000002307132C
	addi	a5,zero,+000000FF
	c.mv	s3,a0
	bltu	a5,a0,000000002303CAB0

l2303CB12:
	c.mv	a1,s7
	c.mv	a0,s2
	jal	ra,000000002303FA94
	c.li	a4,00000000
	c.bnez	a0,000000002303CAB2

l2303CB1E:
	lui	s0,00042015
	addi	s8,s0,-00000384
	addi	s9,s0,-00000384
	addi	s6,s0,-00000384
	c.li	s1,00000000
	c.li	s10,00000003
	c.li	s0,00000004

l2303CB34:
	lbu	a5,s9,+0000000A
	bne	a5,s10,000000002303CB62

l2303CB3C:
	addi	a2,zero,+00000100
	addi	a1,s9,+0000000F
	c.mv	a0,s2
	jal	ra,000000002303C364
	c.bnez	a0,000000002303CB62

l2303CB4C:
	addi	s0,zero,+00000110
	add	s1,s1,s0
	c.li	a4,00000000
	add	s0,s6,s1
	c.lw	s0,4(a5)
	sw	a5,s7,+00000000
	c.j	000000002303CAB2

l2303CB62:
	c.addi	s1,00000001
	addi	s9,s9,+00000110
	bne	s1,s0,000000002303CB34

l2303CB6C:
	lui	a5,0004200E
	lw	a5,a5,-00000100
	c.li	a4,FFFFFFFA
	c.beqz	a5,000000002303CAB2

l2303CB78:
	lui	s7,0004200E
	lbu	a3,s7,-00000104
	c.li	a5,00000000
	c.li	s1,00000004
	c.li	a2,00000000
	addi	s7,s7,-00000104
	c.li	a6,00000003
	c.li	a0,00000004

l2303CB8E:
	lbu	a4,s8,+0000000A
	andi	a1,a5,+000000FF
	c.bnez	a4,000000002303CBEC

l2303CB98:
	addi	s0,zero,+00000110
	add	a5,a5,s0
	c.mv	s1,a1
	add	s0,s6,a5

l2303CBA6:
	c.li	a5,00000001
	sb	a5,s0,+0000000A
	lui	a5,00042015
	slli	a4,s1,00000003
	addi	a5,a5,-000003A4
	c.add	a5,a4
	sb	a3,s0,+0000000E
	sw	s4,a5,+00000000
	sw	s5,a5,+00000004
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+0000000F
	jal	ra,0000000023070C7C
	lbu	a5,s7,+00000000
	c.add	s0,s3
	sb	zero,s0,+0000000F
	c.addi	a5,00000001
	c.mv	a0,s1
	sb	a5,s7,+00000000
	jal	ra,000000002303C57A
	c.li	a4,FFFFFFFB
	c.j	000000002303CAB2

l2303CBEC:
	bne	a4,a6,000000002303CC04

l2303CBF0:
	lbu	a4,s8,+0000000E
	sub	a4,a3,a4
	andi	a4,a4,+000000FF
	bgeu	a2,a4,000000002303CC04

l2303CC00:
	c.mv	s1,a1
	c.mv	a2,a4

l2303CC04:
	c.addi	a5,00000001
	addi	s8,s8,+00000110
	bne	a5,a0,000000002303CB8E

l2303CC0E:
	c.li	a4,FFFFFFFF
	beq	s1,a5,000000002303CAB2

l2303CC14:
	addi	s0,zero,+00000110
	add	s0,s1,s0
	c.li	a5,00000003
	c.li	a4,FFFFFFFF
	c.add	s0,s6
	lbu	a2,s0,+0000000A
	bne	a2,a5,000000002303CAB2

l2303CC2A:
	c.j	000000002303CBA6

;; dns_gethostbyname: 2303CC2C
;;   Called from:
;;     23039AFC (in httpc_get_file_dns)
;;     2304A62A (in sntp_request)
dns_gethostbyname proc
	c.li	a4,00000000
	jal	zero,000000002303CAA8

;; lwip_standard_chksum: 2303CC32
;;   Called from:
;;     2303CD86 (in inet_chksum_pseudo)
;;     2303CE64 (in inet_chksum_pseudo_partial)
;;     2303CEBA (in inet_chksum)
;;     2303CF16 (in inet_chksum_pbuf)
;;     2303CF62 (in lwip_chksum_copy)
lwip_standard_chksum proc
	c.addi	sp,FFFFFFF0
	sh	zero,sp,+0000000E
	andi	a3,a0,+00000001
	c.beqz	a3,000000002303CC4E

l2303CC3E:
	bge	zero,a1,000000002303CC4E

l2303CC42:
	lbu	a5,a0,+00000000
	c.addi	a1,FFFFFFFF
	c.addi	a0,00000001
	sb	a5,sp,+0000000F

l2303CC4E:
	andi	a5,a0,+00000003
	c.beqz	a5,000000002303CC64

l2303CC54:
	c.li	a4,00000001
	c.li	a5,00000000
	bge	a4,a1,000000002303CC64

l2303CC5C:
	lhu	a5,a0,+00000000
	c.addi	a1,FFFFFFFE
	c.addi	a0,00000002

l2303CC64:
	c.li	a2,00000007

l2303CC66:
	blt	a2,a1,000000002303CCB8

l2303CC6A:
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	c.li	a4,00000001

l2303CC76:
	blt	a4,a1,000000002303CCD4

l2303CC7A:
	bne	a1,a4,000000002303CC86

l2303CC7E:
	lbu	a4,a0,+00000000
	sb	a4,sp,+0000000E

l2303CC86:
	lhu	a0,sp,+0000000E
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.add	a0,a5
	srli	a5,a0,00000010
	c.and	a0,a4
	c.add	a5,a0
	srli	a0,a5,00000010
	c.and	a5,a4
	c.add	a0,a5
	c.beqz	a3,000000002303CCB0

l2303CCA2:
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.and	a4,a5
	andi	a0,a0,+000000FF
	c.or	a0,a4

l2303CCB0:
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

l2303CCB8:
	c.lw	a0,0(a4)
	c.add	a4,a5
	bgeu	a4,a5,000000002303CCC2

l2303CCC0:
	c.addi	a4,00000001

l2303CCC2:
	c.addi	a0,00000008
	lw	a5,a0,-00000004
	c.add	a5,a4
	bgeu	a5,a4,000000002303CCD0

l2303CCCE:
	c.addi	a5,00000001

l2303CCD0:
	c.addi	a1,FFFFFFF8
	c.j	000000002303CC66

l2303CCD4:
	c.addi	a0,00000002
	lhu	a2,a0,-00000002
	c.addi	a1,FFFFFFFE
	c.add	a5,a2
	c.j	000000002303CC76

;; inet_chksum_pseudo: 2303CCE0
;;   Called from:
;;     2303CDB4 (in ip_chksum_pseudo)
inet_chksum_pseudo proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.lw	a4,0(a4)
	c.lw	a3,0(a3)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	and	s0,a4,a5
	c.srli	a4,00000010
	c.add	s0,a4
	and	a4,a3,a5
	c.add	s0,a4
	c.srli	a3,00000010
	c.add	a3,s0
	srli	s0,a3,00000010
	c.and	a3,a5
	c.add	a3,s0
	srli	s0,a3,00000010
	c.and	a3,a5
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s2,a2
	c.add	s0,a3
	c.li	s5,00000000
	c.mv	s1,a5

l2303CD24:
	bne	s3,zero,000000002303CD7E

l2303CD28:
	beq	s5,zero,000000002303CD3E

l2303CD2C:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l2303CD3E:
	c.mv	a0,s4
	jal	ra,000000002303C332
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002303C332
	c.add	a0,s1
	c.lui	a5,00010000
	c.add	s0,a0
	c.addi	a5,FFFFFFFF
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	xori	a0,s0,-00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.slli	a0,10
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.srli	a0,00000010
	c.addi16sp	00000020
	c.jr	ra

l2303CD7E:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	jal	ra,000000002303CC32
	c.add	s0,a0
	srli	a5,s0,00000010
	c.and	s0,s1
	c.add	s0,a5
	lhu	a5,s3,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,000000002303CDAE

l2303CD9C:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s5,s5,+00000001
	c.or	s0,a5

l2303CDAE:
	lw	s3,s3,+00000000
	c.j	000000002303CD24

;; ip_chksum_pseudo: 2303CDB4
;;   Called from:
;;     23043308 (in tcp_input)
;;     23044154 (in tcp_output_control_segment)
;;     2304557C (in udp_input)
;;     23045874 (in udp_sendto_if_src_chksum)
ip_chksum_pseudo proc
	jal	zero,000000002303CCE0

;; inet_chksum_pseudo_partial: 2303CDB8
;;   Called from:
;;     2303CEB2 (in ip_chksum_pseudo_partial)
inet_chksum_pseudo_partial proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s2,a2
	c.lw	a5,0(a2)
	c.lw	a4,0(a4)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	and	s0,a2,a5
	c.srli	a2,00000010
	c.add	s0,a2
	and	a2,a4,a5
	c.add	s0,a2
	c.srli	a4,00000010
	c.add	a4,s0
	srli	s0,a4,00000010
	c.and	a4,a5
	c.add	a4,s0
	srli	s0,a4,00000010
	c.and	a4,a5
	c.mv	s4,a0
	c.mv	s5,a1
	c.add	s0,a4
	c.li	s6,00000000
	c.mv	s1,a5

l2303CDFE:
	bne	s4,zero,000000002303CE48

l2303CE02:
	bne	s6,zero,000000002303CE9E

l2303CE06:
	c.mv	a0,s5
	jal	ra,000000002303C332
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002303C332
	c.add	a0,s1
	c.lui	a5,00010000
	c.add	s0,a0
	c.addi	a5,FFFFFFFF
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	xori	a0,s0,-00000001
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.slli	a0,10
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.srli	a0,00000010
	c.addi16sp	00000030
	c.jr	ra

l2303CE48:
	c.beqz	a3,000000002303CE02

l2303CE4A:
	lhu	a5,s4,+0000000A
	c.mv	s3,a5
	bgeu	a3,a5,000000002303CE56

l2303CE54:
	c.mv	s3,a3

l2303CE56:
	c.slli	s3,10
	lw	a0,s4,+00000004
	srli	s3,s3,00000010
	c.mv	a1,s3
	c.swsp	a3,00000084
	jal	ra,000000002303CC32
	c.add	s0,a0
	srli	a5,s0,00000010
	c.lwsp	a2,000000A4
	c.and	s0,s1
	c.add	s0,a5
	lhu	a5,s4,+0000000A
	sub	s3,a3,s3
	slli	a3,s3,00000010
	c.andi	a5,00000001
	c.srli	a3,00000010
	c.beqz	a5,000000002303CE98

l2303CE86:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s6,s6,+00000001
	c.or	s0,a5

l2303CE98:
	lw	s4,s4,+00000000
	c.j	000000002303CDFE

l2303CE9E:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5
	c.j	000000002303CE06

;; ip_chksum_pseudo_partial: 2303CEB2
;;   Called from:
;;     23044D4E (in tcp_output)
;;     23045800 (in udp_sendto_if_src_chksum)
ip_chksum_pseudo_partial proc
	jal	zero,000000002303CDB8

;; inet_chksum: 2303CEB6
;;   Called from:
;;     2303EDEA (in igmp_send)
;;     2303F038 (in igmp_input)
;;     2303F598 (in ip4_input)
;;     2304455E (in tcp_split_unsent_seg)
;;     230446A4 (in tcp_split_unsent_seg)
;;     2304764A (in icmp_input)
;;     23047758 (in icmp_dest_unreach)
;;     230492BC (in ping_timeout)
inet_chksum proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303CC32
	c.lwsp	a2,00000020
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

;; inet_chksum_pbuf: 2303CECC
;;   Called from:
;;     23047510 (in icmp_input)
inet_chksum_pbuf proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.lui	s2,00010000
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.li	s3,00000000
	c.li	s0,00000000
	c.addi	s2,FFFFFFFF

l2303CEE2:
	c.bnez	s1,000000002303CF10

l2303CEE4:
	beq	s3,zero,000000002303CEFA

l2303CEE8:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l2303CEFA:
	xori	a0,s0,-00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.slli	a0,10
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.srli	a0,00000010
	c.addi16sp	00000020
	c.jr	ra

l2303CF10:
	lhu	a1,s1,+0000000A
	c.lw	s1,4(a0)
	jal	ra,000000002303CC32
	c.add	s0,a0
	srli	a5,s0,00000010
	and	s0,s0,s2
	c.add	s0,a5
	lhu	a5,s1,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,000000002303CF42

l2303CF2E:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	and	a5,a5,s2
	andi	s0,s0,+000000FF
	xori	s3,s3,+00000001
	c.or	s0,a5

l2303CF42:
	c.lw	s1,0(s1)
	c.j	000000002303CEE2

;; lwip_chksum_copy: 2303CF46
;;   Called from:
;;     2303B66E (in lwip_sendto)
;;     23044332 (in tcp_write)
;;     2304447C (in tcp_write)
lwip_chksum_copy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	jal	ra,0000000023070C7C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303CC32

;; lwip_init: 2303CF66
;;   Called from:
;;     2303BEAC (in tcpip_init)
lwip_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023041284
	jal	ra,000000002303A2FC
	jal	ra,000000002303FCB4
	jal	ra,00000000230401DE
	jal	ra,0000000023040340
	jal	ra,00000000230453D6
	jal	ra,0000000023041480
	jal	ra,000000002303EEB4
	jal	ra,000000002303C9FC
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230452DA

;; dhcp_set_state: 2303CF96
;;   Called from:
;;     2303D1AE (in dhcp_discover)
;;     2303D2E8 (in dhcp_check)
;;     2303D3E6 (in dhcp_bind)
;;     2303D568 (in dhcp_reboot)
;;     2303D6F6 (in dhcp_select)
;;     2303DDDC (in dhcp_recv)
;;     2303DEFC (in dhcp_arp_reply)
;;     2303DFC8 (in dhcp_renew)
;;     2303E200 (in dhcp_release_and_stop)
;;     2303E288 (in dhcp_start)
;;     2303E36A (in dhcp_coarse_tmr)
dhcp_set_state proc
	lbu	a5,a0,+00000005
	beq	a5,a1,000000002303CFAA

l2303CF9E:
	sb	a1,a0,+00000005
	sb	zero,a0,+00000006
	sh	zero,a0,+00000008

l2303CFAA:
	c.jr	ra

;; dhcp_option_short: 2303CFAC
;;   Called from:
;;     2303D1FA (in dhcp_discover)
;;     2303D5B8 (in dhcp_reboot)
;;     2303D746 (in dhcp_select)
;;     2303E016 (in dhcp_renew)
;;     2303E3B8 (in dhcp_coarse_tmr)
dhcp_option_short proc
	add	a5,a1,a0
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000002
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_option_long: 2303CFCE
;;   Called from:
;;     2303D5F0 (in dhcp_reboot)
;;     2303D780 (in dhcp_select)
;;     2303D7B8 (in dhcp_select)
;;     2303DF50 (in dhcp_arp_reply)
;;     2303E1BA (in dhcp_release_and_stop)
dhcp_option_long proc
	add	a5,a1,a0
	srli	a4,a2,00000018
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000010
	sb	a4,a5,+00000000
	addi	a5,a0,+00000002
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000004
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_create_msg: 2303D014
;;   Called from:
;;     2303D1BC (in dhcp_discover)
;;     2303D576 (in dhcp_reboot)
;;     2303D704 (in dhcp_select)
;;     2303DF0A (in dhcp_arp_reply)
;;     2303DFD6 (in dhcp_renew)
;;     2303E172 (in dhcp_release_and_stop)
;;     2303E378 (in dhcp_coarse_tmr)
dhcp_create_msg proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.bnez	a0,000000002303D040

l2303D028:
	c.li	s5,00000000

l2303D02A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2303D040:
	c.beqz	a1,000000002303D028

l2303D042:
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s1,a0
	addi	a2,zero,+00000280
	addi	a1,zero,+00000134
	addi	a0,zero,+000000B6
	c.mv	s4,a3
	jal	ra,0000000023040912
	c.mv	s5,a0
	c.beqz	a0,000000002303D028

l2303D05E:
	c.li	a5,00000003
	bne	s2,a5,000000002303D06C

l2303D064:
	lbu	a5,s3,+00000005
	bne	a5,s2,000000002303D086

l2303D06C:
	lbu	a5,s3,+00000006
	lui	s0,0004200E
	addi	s0,s0,-000000EC
	c.bnez	a5,000000002303D080

l2303D07A:
	jal	ra,000000002303404A
	c.sw	s0,0(a0)

l2303D080:
	c.lw	s0,0(a5)
	sw	a5,s3,+00000000

l2303D086:
	lw	s0,s5,+00000004
	addi	a2,zero,+00000134
	c.li	a1,00000000
	c.li	s6,00000001
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	sb	s6,s0,+00000000
	sb	s6,s0,+00000001
	lbu	a5,s1,+00000040
	sb	a5,s0,+00000002
	lw	a0,s3,+00000000
	jal	ra,000000002303C340
	srli	a5,a0,00000008
	sb	a0,s0,+00000004
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000006
	sb	a0,s0,+00000007
	c.li	a5,00000004
	beq	s2,a5,000000002303D0F0

l2303D0D0:
	addi	a5,s2,-00000007
	andi	a5,a5,+000000FF
	bgeu	s6,a5,000000002303D0F0

l2303D0DC:
	c.li	a5,00000003
	bne	s2,a5,000000002303D10C

l2303D0E2:
	lbu	a5,s3,+00000005
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	s6,a5,000000002303D10C

l2303D0F0:
	c.lw	s1,4(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000000C
	sb	a4,s0,+0000000D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000000E
	sb	a5,s0,+0000000F

l2303D10C:
	addi	a5,s1,+0000003A
	addi	a4,s0,+0000001C
	addi	s1,s1,+00000040

l2303D118:
	lbu	a3,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a5,s1,000000002303D118

l2303D128:
	addi	a5,zero,+00000063
	sb	a5,s0,+000000EC
	addi	a4,zero,-0000007E
	sb	a5,s0,+000000EF
	addi	a5,zero,+00000035
	sb	a4,s0,+000000ED
	sb	a5,s0,+000000F0
	addi	a4,zero,+00000053
	c.li	a5,00000001
	sb	a5,s0,+000000F1
	sb	a4,s0,+000000EE
	sb	s2,s0,+000000F2
	c.li	a5,00000003
	sh	a5,s4,+00000000
	c.j	000000002303D02A

;; dhcp_option_trailer: 2303D15E
;;   Called from:
;;     2303D254 (in dhcp_discover)
;;     2303D656 (in dhcp_reboot)
;;     2303D81E (in dhcp_select)
;;     2303DF5C (in dhcp_arp_reply)
;;     2303E07E (in dhcp_renew)
;;     2303E1C6 (in dhcp_release_and_stop)
;;     2303E418 (in dhcp_coarse_tmr)
dhcp_option_trailer proc
	addi	a5,a0,+00000001
	c.slli	a5,10
	add	a4,a1,a0
	c.srli	a5,00000010
	c.li	a3,FFFFFFFF
	sb	a3,a4,+00000000
	c.add	a1,a5
	addi	a4,zero,+00000043

l2303D176:
	bgeu	a4,a5,000000002303D188

l2303D17A:
	addi	a1,a5,+000000F0
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,a2
	jal	zero,0000000023040A70

l2303D188:
	c.addi	a5,00000001
	c.slli	a5,10
	sb	zero,a1,+00000000
	c.srli	a5,00000010
	c.addi	a1,00000001
	c.j	000000002303D176

;; dhcp_discover: 2303D196
;;   Called from:
;;     2303DDF8 (in dhcp_recv)
;;     2303DEBC (in dhcp_network_changed)
;;     2303E2A8 (in dhcp_start)
;;     2303E534 (in dhcp_fine_tmr)
dhcp_discover proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000006
	c.mv	a0,s1
	sw	zero,s1,+0000001C
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000001
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303D014
	c.beqz	a0,000000002303D282

l2303D1C2:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002303CFAC
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,0002308E
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000178
	c.li	a2,00000004

l2303D22C:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303D22C

l2303D250:
	c.mv	a2,s2
	c.mv	a1,s0
	jal	ra,000000002303D15E
	lui	a0,0004200E
	lw	a0,a0,-000000F4
	lui	a5,0002308E
	lui	a2,0002308E
	addi	a5,a5,-00000174
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,-00000170
	c.mv	a1,s2
	jal	ra,0000000023045996
	c.mv	a0,s2
	jal	ra,0000000023040890

l2303D282:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303D294

l2303D28E:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303D294:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002303D2D0

l2303D29E:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303D2B0:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.li	a0,00000000
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303D2D0:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002303D2B0

;; dhcp_check: 2303D2D8
;;   Called from:
;;     2303DD30 (in dhcp_recv)
;;     2303E568 (in dhcp_fine_tmr)
dhcp_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	c.lw	a0,40(s0)
	c.mv	s1,a0
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002303CF96
	c.li	a2,00000000
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,000000002303EAE8
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303D30A

l2303D304:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2303D30A:
	c.li	a5,00000001
	sh	a5,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_bind: 2303D31A
;;   Called from:
;;     2303DDB4 (in dhcp_recv)
;;     2303E56E (in dhcp_fine_tmr)
dhcp_bind proc
	beq	a0,zero,000000002303D454

l2303D31E:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,40(s0)
	c.beqz	s0,000000002303D3F8

l2303D32A:
	c.lw	s0,40(a5)
	sh	zero,s0,+00000012
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303D354

l2303D336:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303D402

l2303D340:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303D408

l2303D350:
	sh	a4,s0,+00000014

l2303D354:
	c.lw	s0,44(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303D382

l2303D35C:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303D410

l2303D366:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303D416

l2303D376:
	sh	a4,s0,+0000000A

l2303D37A:
	lhu	a5,s0,+0000000A
	sh	a5,s0,+0000000E

l2303D382:
	c.lw	s0,48(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002303D3B0

l2303D38A:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002303D41E

l2303D394:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002303D424

l2303D3A4:
	sh	a4,s0,+0000000C

l2303D3A8:
	lhu	a5,s0,+0000000C
	sh	a5,s0,+00000010

l2303D3B0:
	lhu	a5,s0,+0000000C
	lhu	a4,s0,+0000000A
	bltu	a4,a5,000000002303D3C2

l2303D3BC:
	c.beqz	a5,000000002303D3C2

l2303D3BE:
	sh	zero,s0,+0000000A

l2303D3C2:
	lbu	a5,s0,+00000007
	c.beqz	a5,000000002303D42C

l2303D3C8:
	c.lw	s0,32(a5)

l2303D3CA:
	c.swsp	a5,00000004
	c.lw	s0,36(a5)
	c.swsp	a5,00000084
	c.bnez	a5,000000002303D3E0

l2303D3D2:
	c.lwsp	s0,000000C4
	c.lw	s0,28(a5)
	c.and	a5,a4
	lui	a4,00001000
	c.or	a5,a4
	c.swsp	a5,00000084

l2303D3E0:
	c.mv	s1,a0
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002303CF96
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,0000000023040390

l2303D3F8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303D402:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303D350

l2303D408:
	c.li	a5,00000001
	sh	a5,s0,+00000014
	c.j	000000002303D354

l2303D410:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303D376

l2303D416:
	c.li	a5,00000001
	sh	a5,s0,+0000000A
	c.j	000000002303D37A

l2303D41E:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002303D3A4

l2303D424:
	c.li	a5,00000001
	sh	a5,s0,+0000000C
	c.j	000000002303D3A8

l2303D42C:
	lbu	a5,s0,+0000001C
	slli	a4,a5,00000018
	c.srai	a4,00000018
	blt	a4,zero,000000002303D440

l2303D43A:
	addi	a5,zero,+000000FF
	c.j	000000002303D3CA

l2303D440:
	addi	a4,zero,+000000BF
	bgeu	a4,a5,000000002303D450

l2303D448:
	lui	a5,00001000

l2303D44C:
	c.addi	a5,FFFFFFFF
	c.j	000000002303D3CA

l2303D450:
	c.lui	a5,00010000
	c.j	000000002303D44C

l2303D454:
	c.jr	ra

;; dhcp_inc_pcb_refcount: 2303D456
;;   Called from:
;;     2303E26E (in dhcp_start)
dhcp_inc_pcb_refcount proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	lbu	a5,s0,-000000F0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,-000000F0
	c.bnez	a5,000000002303D4BA

l2303D46E:
	lui	s1,0004200E
	jal	ra,0000000023045A72
	addi	s1,s1,-000000F4
	c.sw	s1,0(a0)
	c.li	a4,FFFFFFFF
	c.beqz	a0,000000002303D4C6

l2303D480:
	lbu	a4,a0,+00000009
	lui	s2,0002308E
	addi	a2,zero,+00000044
	ori	a4,a4,+00000020
	sb	a4,a0,+00000009
	addi	a1,s2,-00000174
	jal	ra,000000002304561A
	c.lw	s1,0(a0)
	addi	a2,zero,+00000043
	addi	a1,s2,-00000174
	jal	ra,00000000230459B4
	c.lw	s1,0(a0)
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,-0000062E
	jal	ra,0000000023045A3A

l2303D4BA:
	lbu	a5,s0,+00000000
	c.li	a4,00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000000

l2303D4C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_option_hostname.isra.0: 2303D4D4
;;   Called from:
;;     2303D64A (in dhcp_reboot)
;;     2303D812 (in dhcp_select)
;;     2303E072 (in dhcp_renew)
;;     2303E40C (in dhcp_coarse_tmr)
dhcp_option_hostname.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a2,0(a0)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.beqz	a0,000000002303D52E

l2303D4E4:
	jal	ra,000000002307132C
	c.beqz	a0,000000002303D52E

l2303D4EA:
	c.lwsp	s0,00000084
	addi	a4,zero,+00000041
	c.sub	a4,s0
	c.lw	a2,0(a2)
	c.lwsp	a2,00000064
	bgeu	a0,a4,000000002303D4FC

l2303D4FA:
	c.mv	a4,a0

l2303D4FC:
	add	a5,a1,s0
	c.li	a3,0000000C
	sb	a3,a5,+00000000
	addi	a5,s0,+00000001
	addi	a3,s0,+00000002
	c.slli	a5,10
	c.slli	a3,10
	c.srli	a5,00000010
	c.add	a5,a1
	c.srli	a3,00000010
	sb	a4,a5,+00000000
	add	a0,a2,a4
	c.mv	a5,a3

l2303D522:
	bne	a2,a0,000000002303D538

l2303D526:
	add	s0,a3,a4
	c.slli	s0,10
	c.srli	s0,00000010

l2303D52E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2303D538:
	c.addi	a2,00000001
	lbu	a7,a2,-00000001
	addi	a6,a5,+00000001
	c.add	a5,a1
	sb	a7,a5,+00000000
	slli	a5,a6,00000010
	c.srli	a5,00000010
	c.j	000000002303D522

;; dhcp_reboot: 2303D550
;;   Called from:
;;     2303DECA (in dhcp_network_changed)
;;     2303E582 (in dhcp_fine_tmr)
dhcp_reboot proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303D014
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002303D67E

l2303D580:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	c.slli	a0,10
	sb	a4,a5,+00000000
	addi	a2,zero,+00000240
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002303CFAC
	add	a5,s0,a0
	addi	s4,a0,+00000002
	c.addi	a0,00000001
	c.slli	a0,10
	addi	a4,zero,+00000032
	c.srli	a0,00000010
	sb	a4,a5,+00000000
	c.add	a0,s0
	c.li	s5,00000004
	sb	s5,a0,+00000000
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303CFCE
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,0002308E
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000178
	c.li	a2,00000004

l2303D620:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303D620

l2303D644:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002303D4D4
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303D15E
	lui	a5,0004200E
	lw	a0,a5,-000000F4
	lui	a2,0002308E
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,-00000170
	c.mv	a1,s2
	jal	ra,000000002304598E
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023040890

l2303D67E:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303D690

l2303D68A:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303D690:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002303D6CA

l2303D69A:
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303D6A6:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303D6CA:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.j	000000002303D6A6

;; dhcp_select: 2303D6D2
;;   Called from:
;;     2303DE4E (in dhcp_recv)
;;     2303E548 (in dhcp_fine_tmr)
dhcp_select proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.li	s0,FFFFFFF0
	beq	a0,zero,000000002303D88C

l2303D6E8:
	c.lw	a0,40(s1)
	c.li	s0,FFFFFFFA
	beq	s1,zero,000000002303D88C

l2303D6F0:
	c.mv	s2,a0
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002303D014
	c.mv	s3,a0
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002303D84E

l2303D710:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s2,+00000038
	c.slli	a0,10
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002303CFAC
	addi	a4,zero,+00000032
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	s5,00000004
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303CFCE
	addi	a4,zero,+00000036
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,24(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303CFCE
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,0002308E
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000178
	c.li	a2,00000004

l2303D7E8:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303D7E8

l2303D80C:
	c.mv	a1,s0
	addi	a2,s2,+00000034
	jal	ra,000000002303D4D4
	c.mv	a1,s0
	c.mv	a2,s3
	sh	a0,sp,+0000000E
	jal	ra,000000002303D15E
	lui	a0,0004200E
	lw	a0,a0,-000000F4
	lui	a5,0002308E
	lui	a2,0002308E
	addi	a5,a5,-00000174
	c.mv	a4,s2
	addi	a3,zero,+00000043
	addi	a2,a2,-00000170
	c.mv	a1,s3
	jal	ra,0000000023045996
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,0000000023040890

l2303D84E:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303D860

l2303D85A:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303D860:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002303D8A0

l2303D86A:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303D87C:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	sh	a5,s1,+00000008

l2303D88C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303D8A0:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002303D87C

;; dhcp_dec_pcb_refcount: 2303D8A8
;;   Called from:
;;     2303E20A (in dhcp_release_and_stop)
;;     2303E2A0 (in dhcp_start)
dhcp_dec_pcb_refcount proc
	lui	a4,0004200E
	addi	a4,a4,-000000F0
	lbu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002303D8E0

l2303D8C0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-000000F4
	c.lw	s0,0(a0)
	c.swsp	ra,00000084
	jal	ra,0000000023045A42
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303D8E0:
	c.jr	ra

;; dhcp_handle_ack.isra.3: 2303D8E2
;;   Called from:
;;     2303DD22 (in dhcp_recv)
;;     2303DDAE (in dhcp_recv)
dhcp_handle_ack.isra.3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042020
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	a5,s1,-00000280
	lbu	a5,a5,+00000003
	sw	zero,a0,+00000020
	sw	zero,a0,+00000024
	c.mv	s0,a0
	addi	s1,s1,-00000280
	c.beqz	a5,000000002303D910

l2303D906:
	lui	a5,00042020
	lw	a5,a5,-0000029C
	c.sw	a0,40(a5)

l2303D910:
	lbu	a5,s1,+00000004
	c.beqz	a5,000000002303D9BA

l2303D916:
	lui	a5,00042020
	lw	a5,a5,-00000298

l2303D91E:
	c.sw	s0,44(a5)
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002303D9C0

l2303D926:
	lui	a5,00042020
	lw	a5,a5,-00000294

l2303D92E:
	c.sw	s0,48(a5)
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	lbu	a5,s1,+00000006
	c.beqz	a5,000000002303D9CC

l2303D954:
	lui	a5,00042020
	lw	a0,a5,-00000290
	jal	ra,000000002303C340
	c.li	a5,00000001
	c.sw	s0,32(a0)
	sb	a5,s0,+00000007

l2303D968:
	lbu	a5,s1,+00000007
	c.beqz	a5,000000002303D97C

l2303D96E:
	lui	a5,00042020
	lw	a0,a5,-0000028C
	jal	ra,000000002303C340
	c.sw	s0,36(a0)

l2303D97C:
	lbu	a5,s1,+00000008
	c.beqz	a5,000000002303D9B0

l2303D982:
	lui	s0,00042020
	addi	s0,s0,-000002A8
	c.lw	s0,32(a0)
	jal	ra,000000002303C340
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,000000002303CA44
	lbu	a5,s1,+00000009
	c.beqz	a5,000000002303D9B0

l2303D9A0:
	c.lw	s0,36(a0)
	jal	ra,000000002303C340
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,000000002303CA44

l2303D9B0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2303D9BA:
	c.lw	s0,40(a5)
	c.srli	a5,00000001
	c.j	000000002303D91E

l2303D9C0:
	c.lw	s0,40(a4)
	c.li	a5,00000007
	add	a5,a5,a4
	c.srli	a5,00000003
	c.j	000000002303D92E

l2303D9CC:
	sb	zero,s0,+00000007
	c.j	000000002303D968

;; dhcp_recv: 2303D9D2
dhcp_recv proc
	c.addi16sp	FFFFFF90
	lui	a5,00042020
	c.swsp	s1,000000B0
	lw	s1,a5,-0000013C
	c.swsp	s2,00000030
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lw	s3,s1,+00000028
	c.mv	s2,a2
	beq	s3,zero,000000002303DABA

l2303DA00:
	lbu	a5,s3,+00000004
	c.beqz	a5,000000002303DABA

l2303DA06:
	lhu	a4,a2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002303DABA

l2303DA12:
	c.lw	a2,4(a5)
	c.li	a4,00000002
	lbu	a3,a5,+00000000
	bne	a3,a4,000000002303DABA

l2303DA1E:
	lbu	a2,s1,+00000040
	c.li	a4,00000000
	c.li	a3,00000006

l2303DA26:
	andi	a1,a4,+000000FF
	bgeu	a1,a2,000000002303DA32

l2303DA2E:
	bne	a4,a3,000000002303DAA4

l2303DA32:
	lbu	a0,a5,+00000005
	lbu	a4,a5,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a5,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a5,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303C340
	lw	a5,s3,+00000000
	bne	a0,a5,000000002303DABA

l2303DA5A:
	lui	s4,00042020
	c.li	a2,0000000A
	c.li	a1,00000000
	addi	a0,s4,-00000280
	jal	ra,0000000023070EB8
	lhu	a4,s2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002303DABA

l2303DA76:
	lhu	s8,s2,+00000008
	lui	s5,00042020
	c.swsp	zero,00000084
	addi	s11,zero,+000000F0
	addi	s5,s5,-000002A8

l2303DA88:
	c.mv	s6,s2

l2303DA8A:
	lhu	a5,s6,+0000000A
	bgeu	s11,a5,000000002303DADE

l2303DA92:
	lw	a5,s6,+00000004
	c.lui	s7,00010000
	c.mv	s9,s11
	c.swsp	a5,00000008
	addi	a5,s7,-00000003
	c.swsp	a5,00000088
	c.j	000000002303DCCC

l2303DAA4:
	add	a1,s1,a4
	c.addi	a4,00000001
	add	a0,a5,a4
	lbu	a1,a1,+0000003A
	lbu	a0,a0,+0000001B
	beq	a0,a1,000000002303DA26

l2303DABA:
	c.mv	a0,s2
	jal	ra,0000000023040890
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l2303DADE:
	lw	s6,s6,+00000000
	sub	t1,s11,a5
	sub	t3,s8,a5
	slli	s11,t1,00000010
	slli	s8,t3,00000010
	srli	s11,s11,00000010
	srli	s8,s8,00000010
	bne	s6,zero,000000002303DA8A

l2303DAFE:
	c.j	000000002303DABA

l2303DB00:
	addi	t4,s9,+00000002
	slli	s7,t4,00000010
	srli	s7,s7,00000010
	bltu	s7,s9,000000002303DABA

l2303DB10:
	lhu	a2,s6,+0000000A
	addi	a3,s9,+00000001
	bge	a3,a2,000000002303DB48

l2303DB1C:
	lbu	a4,a4,+00000001

l2303DB20:
	addi	a2,zero,+00000033
	beq	a5,a2,000000002303DC54

l2303DB28:
	bltu	a2,a5,000000002303DB58

l2303DB2C:
	c.li	a2,00000001
	beq	a5,a2,000000002303DB9C

l2303DB32:
	beq	a5,zero,000000002303DC92

l2303DB36:
	c.li	a3,00000003
	beq	a5,a3,000000002303DC2E

l2303DB3C:
	c.li	a3,00000006

l2303DB3E:
	beq	a5,a3,000000002303DC38

l2303DB42:
	c.li	s10,FFFFFFFF
	c.li	s0,00000000
	c.j	000000002303DBA6

l2303DB48:
	lw	a4,s6,+00000000
	beq	a4,zero,000000002303DE54

l2303DB50:
	c.lw	a4,4(a4)
	lbu	a4,a4,+00000000
	c.j	000000002303DB20

l2303DB58:
	addi	a3,zero,+00000036
	beq	a5,a3,000000002303DC78

l2303DB60:
	bltu	a3,a5,000000002303DB80

l2303DB64:
	addi	a3,zero,+00000034
	beq	a5,a3,000000002303DC62

l2303DB6C:
	addi	a3,zero,+00000035

l2303DB70:
	bne	a5,a3,000000002303DB42

l2303DB74:
	c.li	a5,00000001
	bne	a4,a5,000000002303DABA

l2303DB7A:
	c.li	s0,00000001
	c.li	s10,00000001
	c.j	000000002303DBA6

l2303DB80:
	addi	a3,zero,+0000003A
	beq	a5,a3,000000002303DC86

l2303DB88:
	addi	a3,zero,+0000003B

l2303DB8C:
	bne	a5,a3,000000002303DB42

l2303DB90:
	c.li	a5,00000004
	bne	a4,a5,000000002303DABA

l2303DB96:
	c.li	s0,00000004
	c.li	s10,00000005
	c.j	000000002303DBA6

l2303DB9C:
	c.li	a5,00000004
	bne	a4,a5,000000002303DABA

l2303DBA2:
	c.li	s0,00000004
	c.li	s10,00000006

l2303DBA6:
	c.lwsp	s4,000000E4
	add	a6,a4,s9
	blt	a5,a6,000000002303DABA

l2303DBB0:
	c.add	a4,s7
	slli	s9,a4,00000010
	srli	s9,s9,00000010
	c.beqz	s0,000000002303DC9A

l2303DBBC:
	addi	a5,s4,-00000280
	c.swsp	zero,00000094
	c.add	a5,s10

l2303DBC4:
	lbu	a4,a5,+00000000
	c.li	t5,00000004
	c.bnez	a4,000000002303DC9A

l2303DBCC:
	andi	a4,s0,+000000FF
	bgeu	t5,s0,000000002303DBD6

l2303DBD4:
	c.li	a4,00000004

l2303DBD6:
	c.mv	a2,a4
	c.mv	a3,s7
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,0000000023040C4A
	c.lwsp	s8,000000C4
	bne	a4,a0,000000002303DABA

l2303DBEC:
	c.li	t5,00000004
	bgeu	t5,s0,000000002303DD36

l2303DBF2:
	andi	a4,s0,+00000003
	bne	a4,zero,000000002303DABA

l2303DBFA:
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000154
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.swsp	a5,0000000C
	jal	ra,000000002303C340
	slli	a4,s10,00000002
	c.add	a4,s5
	c.sw	a4,0(a0)
	c.lwsp	s8,000000E4
	addi	a4,s7,+00000004
	c.slli	a4,10
	c.addi	s0,FFFFFFFC
	c.srli	a4,00000010
	andi	s0,s0,+000000FF
	c.addi	a5,00000001
	bltu	a4,s7,000000002303DABA

l2303DC28:
	c.addi	s10,00000001
	c.mv	s7,a4
	c.j	000000002303DBC4

l2303DC2E:
	bgeu	a5,a4,000000002303DABA

l2303DC32:
	c.li	s10,00000007
	c.li	s0,00000004
	c.j	000000002303DBA6

l2303DC38:
	andi	a5,a4,+00000003
	bne	a5,zero,000000002303DABA

l2303DC40:
	c.li	a5,00000008
	andi	s0,a4,+000000FF
	bgeu	a5,a4,000000002303DC4C

l2303DC4A:
	c.li	s0,00000008

l2303DC4C:
	bltu	a4,s0,000000002303DABA

l2303DC50:
	c.li	s10,00000008
	c.j	000000002303DBA6

l2303DC54:
	c.li	a5,00000004
	bne	a4,a5,000000002303DABA

l2303DC5A:
	c.li	s0,00000004
	c.li	s10,00000003
	c.j	000000002303DBA6

l2303DC60:
	c.li	a4,00000000

l2303DC62:
	c.li	a5,00000001
	bne	a4,a5,000000002303DABA

l2303DC68:
	addi	a5,zero,+000000F0
	bne	s11,a5,000000002303DABA

l2303DC70:
	c.li	s0,00000001
	c.li	s10,00000000
	c.j	000000002303DBA6

l2303DC76:
	c.li	a4,00000000

l2303DC78:
	c.li	a5,00000004
	bne	a4,a5,000000002303DABA

l2303DC7E:
	c.li	s0,00000004
	c.li	s10,00000002
	c.j	000000002303DBA6

l2303DC84:
	c.li	a4,00000000

l2303DC86:
	c.li	a5,00000004
	bne	a4,a5,000000002303DABA

l2303DC8C:
	c.li	s0,00000004
	c.li	s10,00000004
	c.j	000000002303DBA6

l2303DC92:
	slli	s9,a3,00000010
	srli	s9,s9,00000010

l2303DC9A:
	lhu	a5,s6,+0000000A
	bltu	s9,a5,000000002303DCCC

l2303DCA2:
	sub	a6,s9,a5
	sub	t3,s8,a5
	slli	s9,a6,00000010
	slli	s8,t3,00000010
	srli	s9,s9,00000010
	srli	s8,s8,00000010
	bgeu	s9,s8,000000002303DABA

l2303DCBE:
	lw	s6,s6,+00000000
	beq	s6,zero,000000002303DABA

l2303DCC6:
	lw	a5,s6,+00000004
	c.swsp	a5,00000008

l2303DCCC:
	bgeu	s9,s8,000000002303DCE2

l2303DCD0:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	add	a4,a5,s9
	lbu	a5,a4,+00000000
	bne	a5,a3,000000002303DB00

l2303DCE2:
	addi	a4,s4,-00000280
	lbu	a5,a4,+00000000
	c.bnez	a5,000000002303DD6C

l2303DCEC:
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002303DD80

l2303DCF0:
	lui	a5,00042020
	addi	a5,a5,-00000280
	lbu	a5,a5,+00000001
	beq	a5,zero,000000002303DABA

l2303DD00:
	lui	a5,00042020
	addi	a5,a5,-000002A8
	lbu	a4,a5,+00000004
	c.li	a3,00000005
	lw	a1,s2,+00000004
	bne	a4,a3,000000002303DDBA

l2303DD16:
	lbu	a5,s3,+00000005
	c.li	a4,00000001
	bne	a5,a4,000000002303DDA0

l2303DD20:
	c.lw	s1,40(a0)
	jal	ra,000000002303D8E2
	lbu	a5,s1,+00000041
	c.mv	a0,s1
	c.andi	a5,00000008
	c.beqz	a5,000000002303DDB4

l2303DD30:
	jal	ra,000000002303D2D8
	c.j	000000002303DABA

l2303DD36:
	bne	s0,t5,000000002303DD5E

l2303DD3A:
	c.lwsp	a2,00000154
	jal	ra,000000002303C340
	c.swsp	a0,00000094

l2303DD42:
	lui	a5,00042020
	addi	a5,a5,-00000280
	c.add	a5,s10
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.lwsp	a2,000001F4
	c.slli	s10,02
	c.add	s10,s5
	sw	a5,s10,+00000000
	c.j	000000002303DC9A

l2303DD5E:
	c.li	a5,00000001
	bne	s0,a5,000000002303DABA

l2303DD64:
	lbu	a5,sp,+0000002C
	c.swsp	a5,00000094
	c.j	000000002303DD42

l2303DD6C:
	lw	a5,s5,+00000000
	sb	zero,a4,+00000000
	c.li	a4,00000001
	beq	a5,a4,000000002303DD96

l2303DD7A:
	c.li	a4,00000002
	bne	a5,a4,000000002303DD8C

l2303DD80:
	c.swsp	zero,00000084
	addi	s8,zero,+0000006C
	addi	s11,zero,+0000002C
	c.j	000000002303DA88

l2303DD8C:
	c.li	a4,00000003
	bne	a5,a4,000000002303DCEC

l2303DD92:
	c.li	a5,00000001
	c.swsp	a5,00000084

l2303DD96:
	addi	s8,zero,+000000EC
	addi	s11,zero,+0000006C
	c.j	000000002303DA88

l2303DDA0:
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	bltu	a4,a5,000000002303DABA

l2303DDAC:
	c.lw	s1,40(a0)
	jal	ra,000000002303D8E2
	c.mv	a0,s1

l2303DDB4:
	jal	ra,000000002303D31A
	c.j	000000002303DABA

l2303DDBA:
	c.li	a3,00000006
	bne	a4,a3,000000002303DDFE

l2303DDC0:
	lbu	a4,s3,+00000005
	c.li	a3,00000002
	addi	a5,a4,-00000003
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002303DDD8

l2303DDD2:
	c.li	a5,00000001
	bne	a4,a5,000000002303DABA

l2303DDD8:
	c.lw	s1,40(a0)
	c.li	a1,0000000C
	jal	ra,000000002303CF96
	lui	a1,0002308E
	addi	a3,a1,-00000174
	addi	a2,a1,-00000174
	c.mv	a0,s1
	addi	a1,a1,-00000174
	jal	ra,0000000023040390
	c.mv	a0,s1
	jal	ra,000000002303D196
	c.j	000000002303DABA

l2303DDFE:
	c.li	a2,00000002
	bne	a4,a2,000000002303DABA

l2303DE04:
	lbu	a4,s3,+00000005
	bne	a4,a3,000000002303DABA

l2303DE0C:
	lui	a4,00042020
	addi	a4,a4,-00000280
	lbu	a4,a4,+00000002
	beq	a4,zero,000000002303DABA

l2303DE1C:
	c.lw	s1,40(s0)
	c.swsp	a1,00000084
	sh	zero,s0,+00000008
	c.lw	a5,8(a0)
	jal	ra,000000002303C340
	c.lwsp	a2,00000064
	c.sw	s0,24(a0)
	c.mv	a0,s1
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	jal	ra,000000002303D6D2
	c.j	000000002303DABA

l2303DE54:
	addi	a4,zero,+00000033
	beq	a5,a4,000000002303DABA

l2303DE5C:
	bltu	a4,a5,000000002303DE76

l2303DE60:
	c.li	a4,00000001
	beq	a5,a4,000000002303DABA

l2303DE66:
	beq	a5,zero,000000002303DC92

l2303DE6A:
	c.li	a4,00000003
	beq	a5,a4,000000002303DABA

l2303DE70:
	c.li	a3,00000006
	c.li	a4,00000000
	c.j	000000002303DB3E

l2303DE76:
	addi	a4,zero,+00000036
	beq	a5,a4,000000002303DC76

l2303DE7E:
	bltu	a4,a5,000000002303DE92

l2303DE82:
	addi	a4,zero,+00000034
	beq	a5,a4,000000002303DC60

l2303DE8A:
	addi	a3,zero,+00000035
	c.li	a4,00000000
	c.j	000000002303DB70

l2303DE92:
	addi	a4,zero,+0000003A
	beq	a5,a4,000000002303DC84

l2303DE9A:
	addi	a3,zero,+0000003B
	c.li	a4,00000000
	c.j	000000002303DB8C

;; dhcp_network_changed: 2303DEA2
;;   Called from:
;;     2304064A (in netif_set_link_up)
dhcp_network_changed proc
	c.lw	a0,40(a5)
	c.beqz	a5,000000002303DECE

l2303DEA6:
	lbu	a4,a5,+00000005
	c.li	a3,00000005
	bltu	a3,a4,000000002303DEC0

l2303DEB0:
	c.li	a3,00000003
	bgeu	a4,a3,000000002303DEC6

l2303DEB6:
	c.beqz	a4,000000002303DECE

l2303DEB8:
	sb	zero,a5,+00000006
	jal	zero,000000002303D196

l2303DEC0:
	c.li	a3,0000000A
	bne	a4,a3,000000002303DEB8

l2303DEC6:
	sb	zero,a5,+00000006
	jal	zero,000000002303D550

l2303DECE:
	c.jr	ra

;; dhcp_arp_reply: 2303DED0
;;   Called from:
;;     2303E992 (in etharp_input)
dhcp_arp_reply proc
	c.beqz	a0,000000002303DFB2

l2303DED2:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	c.beqz	s0,000000002303DFA2

l2303DEE4:
	lbu	a4,s0,+00000005
	c.li	a5,00000008
	bne	a4,a5,000000002303DFA2

l2303DEEE:
	c.lw	a1,0(a4)
	c.lw	s0,28(a5)
	bne	a4,a5,000000002303DFA2

l2303DEF6:
	c.mv	s4,a0
	c.li	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000004
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002303D014
	c.mv	s2,a0
	c.beqz	a0,000000002303DF8A

l2303DF12:
	c.lw	a0,4(s1)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000032
	addi	s1,s1,+000000F0
	add	a4,s1,a5
	addi	s3,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s1
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lw	s0,28(a0)
	c.slli	s3,10
	srli	s3,s3,00000010
	sh	s3,sp,+0000000E
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303CFCE
	c.mv	a2,s2
	c.mv	a1,s1
	sh	a0,sp,+0000000E
	jal	ra,000000002303D15E
	lui	a0,0004200E
	lw	a0,a0,-000000F4
	lui	a5,0002308E
	lui	a2,0002308E
	addi	a5,a5,-00000174
	c.mv	a4,s4
	addi	a3,zero,+00000043
	addi	a2,a2,-00000170
	c.mv	a1,s2
	jal	ra,0000000023045996
	c.mv	a0,s2
	jal	ra,0000000023040890

l2303DF8A:
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303DF9C

l2303DF96:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2303DF9C:
	c.li	a5,00000014
	sh	a5,s0,+00000008

l2303DFA2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2303DFB2:
	c.jr	ra

;; dhcp_renew: 2303DFB4
;;   Called from:
;;     2303E4B0 (in dhcp_coarse_tmr)
dhcp_renew proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303D014
	c.li	s0,FFFFFFFF
	c.beqz	a0,000000002303E0A2

l2303DFDE:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002303CFAC
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,0002308E
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000178
	c.li	a2,00000004

l2303E048:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002303E048

l2303E06C:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002303D4D4
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303D15E
	lui	a5,0004200E
	lw	a0,a5,-000000F4
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,s1,+00000018
	c.mv	a1,s2
	jal	ra,000000002304598E
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023040890

l2303E0A2:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303E0B4

l2303E0AE:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303E0B4:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002303E0EA

l2303E0BE:
	addi	a4,zero,+000007D0
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2303E0CA:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2303E0EA:
	c.lui	a5,00005000
	addi	a5,a5,-000001E0
	c.j	000000002303E0CA

;; dhcp_supplied_address: 2303E0F2
;;   Called from:
;;     2303E162 (in dhcp_release_and_stop)
dhcp_supplied_address proc
	c.beqz	a0,000000002303E114

l2303E0F4:
	c.lw	a0,40(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303E116

l2303E0FA:
	lbu	a5,a5,+00000005
	c.li	a4,0000000A
	c.li	a0,00000001
	beq	a5,a4,000000002303E10E

l2303E106:
	addi	a0,a5,-00000004
	sltiu	a0,a0,+00000002

l2303E10E:
	andi	a0,a0,+000000FF
	c.jr	ra

l2303E114:
	c.li	a0,00000000

l2303E116:
	c.jr	ra

;; dhcp_release_and_stop: 2303E118
;;   Called from:
;;     2303E2B2 (in dhcp_start)
;;     2303E32C (in dhcp_coarse_tmr)
;;     2303E54E (in dhcp_fine_tmr)
;;     2303E588 (in dhcp_stop)
dhcp_release_and_stop proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	beq	s0,zero,000000002303E212

l2303E12C:
	lbu	a5,s0,+00000005
	beq	a5,zero,000000002303E212

l2303E134:
	c.lw	s0,24(a5)
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000018
	sw	zero,s0,+00000020
	sw	zero,s0,+00000024
	sw	zero,s0,+00000030
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000028
	sh	zero,s0,+0000000E
	sw	zero,s0,+00000010
	sh	zero,s0,+00000014
	c.mv	s1,a0
	c.swsp	a5,00000084
	jal	ra,000000002303E0F2
	c.beqz	a0,000000002303E1E6

l2303E168:
	addi	a3,sp,+0000000A
	c.li	a2,00000007
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002303D014
	c.mv	s3,a0
	c.beqz	a0,000000002303E1E6

l2303E17A:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000A
	addi	a3,zero,+00000036
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	s4,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lwsp	a2,00000044
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000A
	jal	ra,000000002303C340
	c.mv	a2,a0
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002303CFCE
	c.mv	a2,s3
	c.mv	a1,s2
	sh	a0,sp,+0000000A
	jal	ra,000000002303D15E
	lui	a5,0004200E
	lw	a0,a5,-000000F4
	c.mv	a4,s1
	addi	a3,zero,+00000043
	c.addi4spn	a2,0000000C
	c.mv	a1,s3
	jal	ra,000000002304598E
	c.mv	a0,s3
	jal	ra,0000000023040890

l2303E1E6:
	lui	a1,0002308E
	addi	a3,a1,-00000174
	addi	a2,a1,-00000174
	c.mv	a0,s1
	addi	a1,a1,-00000174
	jal	ra,0000000023040390
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303CF96
	lbu	a5,s0,+00000004
	c.beqz	a5,000000002303E212

l2303E20A:
	jal	ra,000000002303D8A8
	sb	zero,s0,+00000004

l2303E212:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; dhcp_start: 2303E222
;;   Called from:
;;     2303E332 (in dhcp_coarse_tmr)
;;     2303E554 (in dhcp_fine_tmr)
dhcp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002303E28C

l2303E230:
	lbu	a5,a0,+00000041
	c.li	s1,FFFFFFF0
	c.andi	a5,00000001
	c.beqz	a5,000000002303E28C

l2303E23A:
	lhu	a4,a0,+00000038
	addi	a5,zero,+0000023F
	lw	s2,a0,+00000028
	bltu	a5,a4,000000002303E24E

l2303E24A:
	c.li	s1,FFFFFFFF
	c.j	000000002303E28C

l2303E24E:
	c.mv	s0,a0
	bne	s2,zero,000000002303E29A

l2303E254:
	addi	a0,zero,+00000034
	jal	ra,000000002303FFF8
	c.mv	s2,a0
	c.beqz	a0,000000002303E24A

l2303E260:
	c.sw	s0,40(a0)

l2303E262:
	addi	a2,zero,+00000034
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	jal	ra,000000002303D456
	c.mv	s1,a0
	c.bnez	a0,000000002303E24A

l2303E276:
	c.li	a5,00000001
	sb	a5,s2,+00000004
	lbu	a5,s0,+00000041
	c.andi	a5,00000004
	c.bnez	a5,000000002303E2A6

l2303E284:
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002303CF96

l2303E28C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303E29A:
	lbu	a5,s2,+00000004
	c.beqz	a5,000000002303E262

l2303E2A0:
	jal	ra,000000002303D8A8
	c.j	000000002303E262

l2303E2A6:
	c.mv	a0,s0
	jal	ra,000000002303D196
	c.mv	s1,a0
	c.beqz	a0,000000002303E28C

l2303E2B0:
	c.mv	a0,s0
	jal	ra,000000002303E118
	c.j	000000002303E24A

;; dhcp_coarse_tmr: 2303E2B8
dhcp_coarse_tmr proc
	c.addi16sp	FFFFFFC0
	lui	a5,00042020
	c.swsp	s0,0000001C
	lw	s0,a5,-00000270
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.lui	s4,00002000
	lui	s5,0002308E
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s8,0000000C
	c.li	s3,00000001
	addi	s4,s4,+00000710
	addi	s5,s5,-00000178
	lui	s6,0004200E
	lui	s7,0002308E

l2303E2EE:
	c.bnez	s0,000000002303E308

l2303E2F0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l2303E308:
	c.lw	s0,40(a5)
	c.beqz	a5,000000002303E336

l2303E30C:
	lbu	a4,a5,+00000005
	c.beqz	a4,000000002303E336

l2303E312:
	lhu	a3,a5,+00000014
	c.beqz	a3,000000002303E33A

l2303E318:
	lhu	a4,a5,+00000012
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000012
	bne	a3,a4,000000002303E33A

l2303E32A:
	c.mv	a0,s0
	jal	ra,000000002303E118
	c.mv	a0,s0
	jal	ra,000000002303E222

l2303E336:
	c.lw	s0,0(s0)
	c.j	000000002303E2EE

l2303E33A:
	lhu	a4,a5,+00000010
	beq	a4,zero,000000002303E486

l2303E342:
	addi	a3,a4,-00000001
	sh	a3,a5,+00000010
	bne	a4,s3,000000002303E486

l2303E34E:
	c.lw	s0,40(s1)
	c.li	a5,0000000A
	lbu	a4,s1,+00000005
	bltu	a5,a4,000000002303E336

l2303E35A:
	addi	a5,zero,+00000432
	srl	a5,a5,a4
	c.andi	a5,00000001
	c.beqz	a5,000000002303E336

l2303E366:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002303CF96
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303D014
	c.mv	s8,a0
	c.beqz	a0,000000002303E436

l2303E380:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s0,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303CFAC
	add	a5,s2,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	c.li	a3,00000004

l2303E3E2:
	lhu	a4,sp,+0000000E
	add	a2,s5,a5
	lbu	a2,a2,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s2
	c.srli	a0,00000010
	sb	a2,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a3,000000002303E3E2

l2303E406:
	addi	a2,s0,+00000034
	c.mv	a1,s2
	jal	ra,000000002303D4D4
	c.mv	a2,s8
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002303D15E
	lw	a0,s6,-000000F4
	c.mv	a4,s0
	addi	a3,zero,+00000043
	addi	a2,s7,-00000170
	c.mv	a1,s8
	jal	ra,000000002304598E
	c.mv	a0,s8
	jal	ra,0000000023040890

l2303E436:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002303E448

l2303E442:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2303E448:
	lbu	a4,s1,+00000006
	c.li	a3,00000009
	c.mv	a5,s4
	bltu	a3,a4,000000002303E460

l2303E454:
	addi	a5,zero,+000003E8
	add	a5,a4,a5
	c.slli	a5,10
	c.srli	a5,00000010

l2303E460:
	addi	a4,zero,+000001F4
	addi	a5,a5,+000001F3
	xor	a5,a5,a4
	lhu	a4,s1,+00000012
	sh	a5,s1,+00000008
	lhu	a5,s1,+00000014
	c.sub	a5,a4
	bge	s3,a5,000000002303E336

l2303E47E:
	c.srai	a5,00000001
	sh	a5,s1,+00000010
	c.j	000000002303E336

l2303E486:
	lhu	a4,a5,+0000000E
	beq	a4,zero,000000002303E336

l2303E48E:
	addi	a3,a4,-00000001
	sh	a3,a5,+0000000E
	bne	a4,s3,000000002303E336

l2303E49A:
	c.lw	s0,40(s1)
	lbu	a5,s1,+00000005
	andi	a4,a5,+000000FB
	beq	a4,s3,000000002303E4AE

l2303E4A8:
	c.li	a4,0000000A
	bne	a5,a4,000000002303E336

l2303E4AE:
	c.mv	a0,s0
	jal	ra,000000002303DFB4
	lhu	a5,s1,+0000000C
	lhu	a4,s1,+00000012
	c.sub	a5,a4
	bge	s3,a5,000000002303E336

l2303E4C2:
	c.srai	a5,00000001
	sh	a5,s1,+0000000E
	c.j	000000002303E336

;; dhcp_fine_tmr: 2303E4CA
dhcp_fine_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042020
	c.swsp	s0,0000000C
	lw	s0,a5,-00000270
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.li	s1,00000001
	c.li	s2,0000000C
	c.li	s3,00000006
	c.li	s4,00000008
	c.li	s5,00000003
	c.li	s6,00000005

l2303E4F0:
	c.bnez	s0,000000002303E506

l2303E4F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2303E506:
	c.lw	s0,40(a4)
	c.beqz	a4,000000002303E518

l2303E50A:
	lhu	a5,a4,+00000008
	bgeu	s1,a5,000000002303E51C

l2303E512:
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000008

l2303E518:
	c.lw	s0,0(s0)
	c.j	000000002303E4F0

l2303E51C:
	bne	a5,s1,000000002303E518

l2303E520:
	sh	zero,a4,+00000008
	c.lw	s0,40(a4)
	lbu	a5,a4,+00000005
	beq	a5,s2,000000002303E532

l2303E52E:
	bne	a5,s3,000000002303E53A

l2303E532:
	c.mv	a0,s0

l2303E534:
	jal	ra,000000002303D196
	c.j	000000002303E518

l2303E53A:
	bne	a5,s1,000000002303E55A

l2303E53E:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s6,a5,000000002303E54E

l2303E548:
	jal	ra,000000002303D6D2
	c.j	000000002303E518

l2303E54E:
	jal	ra,000000002303E118
	c.mv	a0,s0
	jal	ra,000000002303E222
	c.j	000000002303E518

l2303E55A:
	bne	a5,s4,000000002303E574

l2303E55E:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002303E56E

l2303E568:
	jal	ra,000000002303D2D8
	c.j	000000002303E518

l2303E56E:
	jal	ra,000000002303D31A
	c.j	000000002303E518

l2303E574:
	bne	a5,s5,000000002303E518

l2303E578:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002303E534

l2303E582:
	jal	ra,000000002303D550
	c.j	000000002303E518

;; dhcp_stop: 2303E588
;;   Called from:
;;     23047D5A (in dhcpd_start)
dhcp_stop proc
	jal	zero,000000002303E118

;; etharp_free_entry: 2303E58C
;;   Called from:
;;     2303E676 (in etharp_find_entry)
;;     2303E7E6 (in etharp_cleanup_netif)
;;     2303EA0A (in etharp_tmr)
etharp_free_entry proc
	c.li	a4,00000018
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	lui	a5,00042015
	c.swsp	s2,00000000
	addi	s2,a5,+000000BC
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,a5,+000000BC
	c.add	s2,a4
	lw	a0,s2,+00000000
	c.beqz	a0,000000002303E5BA

l2303E5B2:
	jal	ra,0000000023040890
	sw	zero,s2,+00000000

l2303E5BA:
	c.li	a5,00000018
	add	a5,s1,a5
	c.add	a5,s0
	sb	zero,a5,+00000014
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; etharp_find_entry: 2303E5D2
;;   Called from:
;;     2303E8E4 (in etharp_input)
;;     2303EB22 (in etharp_query)
etharp_find_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s1,00000088
	addi	a3,s0,+000000BC
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	t0,00000000
	c.li	t6,00000000
	c.li	t5,00000000
	c.li	t1,0000000A
	c.li	a5,00000000
	c.li	a4,0000000A
	c.li	a7,0000000A
	c.li	s1,0000000A
	addi	s0,s0,+000000BC
	c.li	t3,0000000A
	c.li	t2,00000001

l2303E5FE:
	lbu	t4,a3,+00000014
	bne	a4,t3,000000002303E63C

l2303E606:
	beq	t4,zero,000000002303E6C4

l2303E60A:
	c.beqz	a0,000000002303E622

l2303E60C:
	lw	s2,a0,+00000000
	lw	a6,a3,+00000004
	bne	s2,a6,000000002303E622

l2303E618:
	c.beqz	a2,000000002303E6A0

l2303E61A:
	lw	a6,a3,+00000008
	beq	a6,a2,000000002303E6A0

l2303E622:
	lhu	a6,a3,+00000012
	bne	t4,t2,000000002303E6BA

l2303E62A:
	lw	t4,a3,+00000000
	beq	t4,zero,000000002303E6B0

l2303E632:
	bltu	a6,t5,000000002303E640

l2303E636:
	c.mv	t5,a6
	c.mv	t1,a5
	c.j	000000002303E640

l2303E63C:
	bne	t4,zero,000000002303E60A

l2303E640:
	c.addi	a5,00000001
	slli	a6,a5,00000010
	srli	a6,a6,00000010
	slli	a5,a6,00000010
	c.addi	a3,00000018
	c.srai	a5,00000010
	bne	a6,t3,000000002303E5FE

l2303E656:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a1,a3,000000002303E6A0

l2303E65E:
	c.mv	s3,a2
	c.mv	s2,a0
	bne	a4,t3,000000002303E67C

l2303E666:
	bne	a7,a4,000000002303E6C8

l2303E66A:
	bne	s1,a7,000000002303E674

l2303E66E:
	beq	t1,s1,000000002303E6A0

l2303E672:
	c.mv	s1,t1

l2303E674:
	c.mv	a0,s1
	jal	ra,000000002303E58C
	c.mv	a4,s1

l2303E67C:
	beq	s2,zero,000000002303E68E

l2303E680:
	c.li	a5,00000018
	add	a5,a4,a5
	lw	a3,s2,+00000000
	c.add	a5,s0
	c.sw	a5,4(a3)

l2303E68E:
	c.li	a5,00000018
	add	a5,a4,a5
	c.add	s0,a5
	sh	zero,s0,+00000012
	sw	s3,s0,+00000008
	c.mv	a5,a4

l2303E6A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2303E6B0:
	bltu	a6,t6,000000002303E640

l2303E6B4:
	c.mv	t6,a6
	c.mv	s1,a5
	c.j	000000002303E640

l2303E6BA:
	bltu	a6,t0,000000002303E640

l2303E6BE:
	c.mv	t0,a6
	c.mv	a7,a5
	c.j	000000002303E640

l2303E6C4:
	c.mv	a4,a5
	c.j	000000002303E640

l2303E6C8:
	c.mv	s1,a7
	c.j	000000002303E674

;; etharp_raw: 2303E6CC
;;   Called from:
;;     2303E988 (in etharp_input)
;;     2303E9B8 (in etharp_request)
;;     2303EAE2 (in etharp_output_to_arp_index)
etharp_raw proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s5,a2
	c.li	a1,0000001C
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	c.swsp	s1,00000098
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	a7,00000084
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s9,a3
	c.mv	s7,a4
	c.mv	s8,a5
	c.mv	s6,a6
	lui	s1,00042020
	jal	ra,0000000023040912
	addi	s1,s1,-00000268
	c.lwsp	a2,00000028
	c.bnez	a0,000000002303E734

l2303E70E:
	lhu	a5,s1,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s1,+00000024

l2303E71A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l2303E734:
	c.lw	a0,4(s0)
	c.mv	s2,a0
	c.mv	a0,a7
	jal	ra,000000002303C332
	sb	a0,s0,+00000006
	c.srli	a0,00000008
	sb	a0,s0,+00000007
	c.li	a2,00000006
	c.mv	a1,s9
	addi	a0,s0,+00000008
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000012
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	c.mv	a1,s7
	addi	a0,s0,+0000000E
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	c.mv	a1,s6
	addi	a0,s0,+00000018
	jal	ra,0000000023070C7C
	c.li	a5,00000001
	sb	a5,s0,+00000001
	c.li	a5,00000008
	sb	a5,s0,+00000002
	c.li	a5,00000006
	sb	a5,s0,+00000004
	c.lui	a4,00001000
	c.li	a5,00000004
	sb	a5,s0,+00000005
	addi	a4,a4,-000007FA
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	sb	zero,s0,+00000000
	sb	zero,s0,+00000003
	c.mv	a0,s3
	jal	ra,0000000023045BDE
	lhu	a5,s1,+00000018
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s1,+00000018
	jal	ra,0000000023040890
	c.li	a0,00000000
	c.j	000000002303E71A

;; etharp_cleanup_netif: 2303E7BE
;;   Called from:
;;     23040580 (in netif_set_down)
etharp_cleanup_netif proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a0
	addi	s0,s0,+000000BC
	c.li	s1,00000000
	c.li	s2,0000000A

l2303E7D8:
	lbu	a5,s0,+00000014
	c.beqz	a5,000000002303E7EA

l2303E7DE:
	c.lw	s0,8(a5)
	bne	a5,s3,000000002303E7EA

l2303E7E4:
	c.mv	a0,s1
	jal	ra,000000002303E58C

l2303E7EA:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s2,000000002303E7D8

l2303E7F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; etharp_input: 2303E800
;;   Called from:
;;     23045BD8 (in ethernet_input)
etharp_input proc
	beq	a1,zero,000000002303E998

l2303E804:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.lw	a0,4(s1)
	lui	s2,00042020
	c.mv	s0,a1
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.mv	s3,a0
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	addi	s2,s2,-00000268
	bne	a5,a4,000000002303E860

l2303E83A:
	lbu	a4,s1,+00000004
	c.li	a5,00000006
	bne	a4,a5,000000002303E860

l2303E844:
	lbu	a4,s1,+00000005
	c.li	a5,00000004
	bne	a4,a5,000000002303E860

l2303E84E:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000008
	beq	a5,a4,000000002303E890

l2303E860:
	lhu	a5,s2,+00000028
	c.addi	a5,00000001
	sh	a5,s2,+00000028
	lhu	a5,s2,+0000001E
	c.addi	a5,00000001
	sh	a5,s2,+0000001E

l2303E874:
	c.mv	a0,s3
	jal	ra,0000000023040890
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2303E890:
	lhu	a5,s2,+0000001A
	c.li	a2,00000004
	addi	a1,s1,+0000000E
	c.addi	a5,00000001
	c.addi4spn	a0,00000008
	sh	a5,s2,+0000001A
	jal	ra,0000000023070C7C
	c.li	a2,00000004
	addi	a1,s1,+00000018
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
	c.lw	s0,4(a5)
	addi	s4,s1,+00000008
	c.beqz	a5,000000002303E8C0

l2303E8BA:
	c.lwsp	a2,000000C4
	beq	a5,a4,000000002303E968

l2303E8C0:
	c.li	s5,00000000
	c.li	s6,00000002

l2303E8C4:
	c.lwsp	s0,00000044
	c.beqz	a0,000000002303E940

l2303E8C8:
	c.mv	a1,s0
	jal	ra,000000002303FA5A
	c.bnez	a0,000000002303E940

l2303E8D0:
	c.lwsp	s0,000000E4
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303E940

l2303E8DE:
	c.mv	a2,s0
	c.mv	a1,s6
	c.addi4spn	a0,00000008
	jal	ra,000000002303E5D2
	blt	a0,zero,000000002303E940

l2303E8EC:
	c.li	a5,00000018
	add	a5,a0,a5
	lui	a4,00042015
	addi	a4,a4,+000000BC
	c.li	a3,00000002
	c.li	a2,00000006
	c.mv	a1,s4
	add	s6,a4,a5
	c.addi	a5,0000000C
	sb	a3,s6,+00000014
	sw	s0,s6,+00000008
	add	a0,a4,a5
	jal	ra,0000000023070C7C
	lw	s7,s6,+00000000
	sh	zero,s6,+00000012
	beq	s7,zero,000000002303E940

l2303E922:
	c.lui	a4,00001000
	sw	zero,s6,+00000000
	addi	a4,a4,-00000800
	c.mv	a3,s4
	addi	a2,s0,+0000003A
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023045BDE
	c.mv	a0,s7
	jal	ra,0000000023040890

l2303E940:
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	beq	a5,a4,000000002303E96E

l2303E954:
	addi	a4,zero,+00000200
	beq	a5,a4,000000002303E98E

l2303E95C:
	lhu	a5,s2,+0000002C
	c.addi	a5,00000001
	sh	a5,s2,+0000002C
	c.j	000000002303E874

l2303E968:
	c.li	s5,00000001
	c.li	s6,00000001
	c.j	000000002303E8C4

l2303E96E:
	beq	s5,zero,000000002303E874

l2303E972:
	addi	a3,s0,+0000003A
	c.li	a7,00000002
	addi	a6,sp,+00000008
	c.mv	a5,s4
	addi	a4,s0,+00000004
	c.mv	a2,s4
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,000000002303E6CC
	c.j	000000002303E874

l2303E98E:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002303DED0
	c.j	000000002303E874

l2303E998:
	c.jr	ra

;; etharp_request: 2303E99A
;;   Called from:
;;     2303EA46 (in etharp_tmr)
;;     2303EA94 (in etharp_output_to_arp_index)
;;     2303EB78 (in etharp_query)
;;     230402C0 (in netif_issue_reports)
etharp_request proc
	addi	a3,a0,+0000003A
	lui	a5,0002308E
	lui	a2,0002308E
	c.mv	a6,a1
	c.li	a7,00000001
	addi	a5,a5,-0000015C
	addi	a4,a0,+00000004
	addi	a2,a2,-00000164
	c.mv	a1,a3
	jal	zero,000000002303E6CC

;; etharp_tmr: 2303E9BC
etharp_tmr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042015
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,+000000BC
	c.li	s1,00000000
	addi	s4,zero,+0000012B
	c.li	s5,00000001
	c.li	s6,00000003
	c.li	s2,00000004
	c.li	s7,00000002
	c.li	s3,0000000A

l2303E9E8:
	lbu	a4,s0,+00000014
	c.beqz	a4,000000002303EA0E

l2303E9EE:
	lhu	a5,s0,+00000012
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000012
	bltu	s4,a5,000000002303EA08

l2303EA00:
	bne	a4,s5,000000002303EA2C

l2303EA04:
	bgeu	s2,a5,000000002303EA40

l2303EA08:
	c.mv	a0,s1
	jal	ra,000000002303E58C

l2303EA0E:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s3,000000002303E9E8

l2303EA16:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2303EA2C:
	bne	a4,s6,000000002303EA36

l2303EA30:
	sb	s2,s0,+00000014
	c.j	000000002303EA0E

l2303EA36:
	bne	a4,s2,000000002303EA0E

l2303EA3A:
	sb	s7,s0,+00000014
	c.j	000000002303EA0E

l2303EA40:
	c.lw	s0,8(a0)
	addi	a1,s0,+00000004
	jal	ra,000000002303E99A
	c.j	000000002303EA0E

;; etharp_output_to_arp_index: 2303EA4C
;;   Called from:
;;     2303ED0A (in etharp_output)
etharp_output_to_arp_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.li	a1,00000018
	add	a2,a2,a1
	lui	a1,00042015
	addi	a1,a1,+000000BC
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.mv	s2,a0
	add	s1,a1,a2
	lbu	a4,s1,+00000014
	addi	s0,a2,+0000000C
	c.add	s0,a1
	addi	s3,a0,+0000003A
	bne	a4,a5,000000002303EAA0

l2303EA84:
	lhu	a5,s1,+00000012
	addi	a4,zero,+0000011C
	bgeu	a4,a5,000000002303EAC0

l2303EA90:
	c.addi	a2,00000004
	c.add	a1,a2
	jal	ra,000000002303E99A

l2303EA98:
	c.bnez	a0,000000002303EAA0

l2303EA9A:
	c.li	a5,00000003
	sb	a5,s1,+00000014

l2303EAA0:
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a2,s3
	c.mv	a1,s4
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023045BDE

l2303EAC0:
	addi	a4,zero,+0000010D
	bgeu	a4,a5,000000002303EAA0

l2303EAC8:
	c.addi	a2,00000004
	lui	a5,0002308E
	add	a6,a1,a2
	c.li	a7,00000001
	addi	a5,a5,-0000015C
	addi	a4,a0,+00000004
	c.mv	a3,s3
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,000000002303E6CC
	c.j	000000002303EA98

;; etharp_query: 2303EAE8
;;   Called from:
;;     2303D2F4 (in dhcp_check)
;;     2303ED50 (in etharp_output)
etharp_query proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.swsp	s2,00000008
	c.mv	a1,a0
	c.mv	s2,a0
	lw	a0,s4,+00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a2
	jal	ra,000000002303FA5A
	bne	a0,zero,000000002303EC02

l2303EB0A:
	lw	a5,s4,+00000000
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	beq	a3,a4,000000002303EC02

l2303EB1A:
	c.beqz	a5,000000002303EC02

l2303EB1C:
	c.mv	a2,s2
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,000000002303E5D2
	bge	a0,zero,000000002303EB52

l2303EB2A:
	c.beqz	s0,000000002303EB3E

l2303EB2C:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000024
	c.addi	a4,00000001
	sh	a4,a5,+00000024

l2303EB3E:
	c.slli	a0,18
	c.srai	a0,00000018

l2303EB42:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2303EB52:
	andi	s3,a0,+000000FF
	c.li	a4,00000018
	add	a4,s3,a4
	lui	s1,00042015
	addi	a5,s1,+000000BC
	addi	s1,s1,+000000BC
	c.add	a5,a4
	lbu	a4,a5,+00000014
	c.beqz	a4,000000002303EBBE

l2303EB70:
	c.li	a0,FFFFFFFF
	c.bnez	s0,000000002303EB7E

l2303EB74:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002303E99A
	c.beqz	s0,000000002303EB42

l2303EB7E:
	c.li	a3,00000018
	add	a3,s3,a3
	add	a5,s1,a3
	lbu	a4,a5,+00000014
	c.li	a5,00000001
	bgeu	a5,a4,000000002303EBCA

l2303EB92:
	lui	a5,0004200E
	c.addi	a3,0000000C
	c.mv	a1,s0
	c.lwsp	s8,00000004
	sb	s3,a5,+00000F18
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.add	a3,s1
	addi	a2,s2,+0000003A
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023045BDE

l2303EBBE:
	c.li	a4,00000001
	sb	a4,a5,+00000014
	sw	s2,a5,+00000008
	c.j	000000002303EB74

l2303EBCA:
	bne	a4,a5,000000002303EB42

l2303EBCE:
	c.mv	a5,s0

l2303EBD0:
	lbu	a4,a5,+0000000C
	andi	a4,a4,+00000040
	c.bnez	a4,000000002303EC06

l2303EBDA:
	c.lw	a5,0(a5)
	c.bnez	a5,000000002303EBD0

l2303EBDE:
	c.mv	a0,s0
	jal	ra,0000000023040B3E

l2303EBE4:
	c.li	a5,00000018
	add	a5,s3,a5
	c.add	a5,s1
	c.lw	a5,0(a0)
	c.beqz	a0,000000002303EBF4

l2303EBF0:
	jal	ra,0000000023040890

l2303EBF4:
	c.li	a0,00000018
	add	a0,s3,a0
	c.add	s1,a0
	c.sw	s1,0(s0)
	c.li	a0,00000000
	c.j	000000002303EB42

l2303EC02:
	c.li	a0,FFFFFFF0
	c.j	000000002303EB42

l2303EC06:
	c.mv	a2,s0
	addi	a1,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,0000000023040DA0
	c.mv	s0,a0
	c.bnez	a0,000000002303EBE4

l2303EC18:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000024
	c.j	000000002303EB42

;; etharp_output: 2303EC2E
etharp_output proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a1,a0
	c.lw	a2,0(a0)
	c.mv	s1,a2
	jal	ra,000000002303FA5A
	bne	a0,zero,000000002303ED56

l2303EC4A:
	c.lw	s1,0(a5)
	addi	a3,zero,+000000E0
	andi	a2,a5,+000000F0
	bne	a2,a3,000000002303EC98

l2303EC58:
	c.li	a5,00000001
	sh	a5,sp,+00000008
	addi	a5,zero,+0000005E
	sb	a5,sp,+0000000A
	lbu	a5,s1,+00000001
	c.addi4spn	a3,00000008
	andi	a5,a5,+0000007F
	sb	a5,sp,+0000000B
	lbu	a5,s1,+00000002
	sb	a5,sp,+0000000C
	lbu	a5,s1,+00000003
	sb	a5,sp,+0000000D

l2303EC84:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	addi	a2,s0,+0000003A
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023045BDE
	c.j	000000002303ED0E

l2303EC98:
	c.lw	s0,4(a3)
	c.lw	s0,8(a2)
	c.mv	a4,a0
	c.xor	a3,a5
	c.and	a3,a2
	c.beqz	a3,000000002303ECBC

l2303ECA4:
	c.slli	a5,10
	c.lui	a3,00010000
	c.srli	a5,00000010
	addi	a3,a3,-00000157
	beq	a5,a3,000000002303ECBC

l2303ECB2:
	c.lw	s0,12(a5)
	c.li	a0,FFFFFFFC
	c.beqz	a5,000000002303ED0E

l2303ECB8:
	addi	s1,s0,+0000000C

l2303ECBC:
	lui	a1,0004200E
	lbu	a2,a1,-000000E8
	c.li	a0,00000018
	lui	a5,00042015
	add	a0,a2,a0
	addi	a3,a5,+000000BC
	addi	a1,a1,-000000E8
	addi	a5,a5,+000000BC
	c.add	a3,a0
	lbu	a6,a3,+00000014
	c.li	a0,00000001
	bgeu	a0,a6,000000002303ED1A

l2303ECE6:
	c.lw	a3,8(a0)
	bne	a0,s0,000000002303ED1A

l2303ECEC:
	c.lw	s1,0(a0)
	c.lw	a3,4(a3)
	bne	a0,a3,000000002303ED1A

l2303ECF4:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+0000002E
	c.addi	a4,00000001
	sh	a4,a5,+0000002E

l2303ED06:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303EA4C

l2303ED0E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2303ED1A:
	c.li	a2,00000001
	c.li	a3,0000000A

l2303ED1E:
	lbu	a0,a5,+00000014
	bgeu	a2,a0,000000002303ED3E

l2303ED26:
	c.lw	a5,8(a0)
	bne	a0,s0,000000002303ED3E

l2303ED2C:
	lw	a6,s1,+00000000
	c.lw	a5,4(a0)
	bne	a6,a0,000000002303ED3E

l2303ED36:
	sb	a4,a1,+00000000
	c.mv	a2,a4
	c.j	000000002303ED06

l2303ED3E:
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.addi	a5,00000018
	bne	a4,a3,000000002303ED1E

l2303ED4A:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303EAE8
	c.j	000000002303ED0E

l2303ED56:
	lui	a3,0002308E
	addi	a3,a3,-00000164
	c.j	000000002303EC84

;; igmp_send: 2303ED60
;;   Called from:
;;     2303F1B6 (in igmp_joingroup_netif)
;;     2303F2CE (in igmp_leavegroup_netif)
;;     2303F3F6 (in igmp_tmr)
igmp_send proc
	lui	a5,0002308E
	lw	a5,a5,-00000174
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s4,a0
	c.mv	s3,a1
	c.mv	s5,a2
	c.li	a1,00000008
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	a5,00000014
	lui	s1,00042020
	jal	ra,0000000023040912
	addi	s1,s1,-00000268
	c.beqz	a0,000000002303EE54

l2303ED98:
	lw	a5,s4,+00000004
	c.li	a2,00000016
	c.mv	s2,a0
	c.swsp	a5,00000014
	lw	a5,s3,+00000004
	c.lw	a0,4(s0)
	andi	a1,a5,+000000FF
	srli	a3,a5,00000008
	srli	a4,a5,00000010
	c.srli	a5,00000018
	bne	s5,a2,000000002303EE3A

l2303EDBA:
	sb	a5,s0,+00000007
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	c.li	a5,00000001
	addi	a2,s3,+00000004
	sb	a5,s3,+00000008

l2303EDD4:
	c.li	a1,00000008
	sb	s5,s0,+00000000
	sb	zero,s0,+00000001
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	c.mv	a0,s0
	c.swsp	a2,0000008C
	jal	ra,000000002303CEB6
	sb	a0,s0,+00000002
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,zero,+00000494
	c.swsp	a5,00000094
	lhu	a5,s1,+00000060
	c.lwsp	t3,00000084
	addi	a7,sp,+0000002C
	c.addi	a5,00000001
	sh	a5,s1,+00000060
	c.li	a5,00000004
	c.swsp	a5,00000000
	c.mv	a6,s4
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000001
	c.addi4spn	a1,00000028
	c.mv	a0,s2
	jal	ra,000000002303FA1C
	c.mv	a0,s2
	jal	ra,0000000023040890

l2303EE28:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2303EE3A:
	lui	a2,0004200E
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	sb	a5,s0,+00000007
	addi	a2,a2,-000000E4
	c.j	000000002303EDD4

l2303EE54:
	lhu	a5,s1,+0000006A
	c.addi	a5,00000001
	sh	a5,s1,+0000006A
	c.j	000000002303EE28

;; igmp_delaying_member: 2303EE60
;;   Called from:
;;     2303EF30 (in igmp_report_groups)
;;     2303F0F4 (in igmp_input)
;;     2303F116 (in igmp_input)
igmp_delaying_member proc
	lbu	a5,a0,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002303EE7A

l2303EE6A:
	c.li	a4,00000001
	bne	a5,a4,000000002303EEB2

l2303EE70:
	lhu	a5,a0,+0000000A
	c.beqz	a5,000000002303EE7A

l2303EE76:
	bgeu	a1,a5,000000002303EEB2

l2303EE7A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a1
	c.mv	s1,a0
	bltu	a5,a1,000000002303EEA2

l2303EE8C:
	c.li	a5,00000001
	sh	a5,s1,+0000000A

l2303EE92:
	c.li	a5,00000001
	sb	a5,s1,+00000009
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303EEA2:
	jal	ra,000000002303404A
	and	s0,a0,s0
	sh	s0,s1,+0000000A
	c.beqz	s0,000000002303EE8C

l2303EEB0:
	c.j	000000002303EE92

l2303EEB2:
	c.jr	ra

;; igmp_init: 2303EEB4
;;   Called from:
;;     2303CF86 (in lwip_init)
igmp_init proc
	lui	a5,00001000
	lui	a4,0004200E
	addi	a5,a5,+000000E0
	sw	a5,a4,+00000F20
	lui	a5,00002000
	lui	a4,0004200E
	addi	a5,a5,+000000E0
	sw	a5,a4,+00000F1C
	c.jr	ra

;; igmp_stop: 2303EED6
;;   Called from:
;;     230405D8 (in netif_remove)
igmp_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.lw	a0,44(s0)
	c.mv	s1,a0
	sw	zero,a0,+0000002C

l2303EEE8:
	c.bnez	s0,000000002303EEF8

l2303EEEA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2303EEF8:
	c.lw	s1,72(a5)
	lw	s2,s0,+00000000
	c.beqz	a5,000000002303EF0A

l2303EF00:
	c.li	a2,00000000
	addi	a1,s0,+00000004
	c.mv	a0,s1
	c.jalr	a5

l2303EF0A:
	c.mv	a1,s0
	c.li	a0,0000000A
	jal	ra,000000002304024E
	c.mv	s0,s2
	c.j	000000002303EEE8

;; igmp_report_groups: 2303EF16
;;   Called from:
;;     230402D6 (in netif_issue_reports)
igmp_report_groups proc
	c.lw	a0,44(a5)
	c.beqz	a5,000000002303EF38

l2303EF1A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,0(s0)

l2303EF22:
	c.bnez	s0,000000002303EF2C

l2303EF24:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2303EF2C:
	c.mv	a0,s0
	c.li	a1,00000005
	jal	ra,000000002303EE60
	c.lw	s0,0(s0)
	c.j	000000002303EF22

l2303EF38:
	c.jr	ra

;; igmp_lookfor_group: 2303EF3A
;;   Called from:
;;     2303EF5A (in igmp_lookup_group)
;;     2303F054 (in igmp_input)
;;     2303F102 (in igmp_input)
;;     2303F28E (in igmp_leavegroup_netif)
;;     2303F626 (in ip4_input)
igmp_lookfor_group proc
	c.lw	a0,44(a0)

l2303EF3C:
	c.bnez	a0,000000002303EF40

l2303EF3E:
	c.jr	ra

l2303EF40:
	c.lw	a0,4(a4)
	c.lw	a1,0(a5)
	beq	a4,a5,000000002303EF3E

l2303EF48:
	c.lw	a0,0(a0)
	c.j	000000002303EF3C

;; igmp_lookup_group: 2303EF4C
;;   Called from:
;;     2303EFAC (in igmp_start)
;;     2303F17C (in igmp_joingroup_netif)
igmp_lookup_group proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,000000002303EF3A
	c.bnez	a0,000000002303EF86

l2303EF60:
	c.li	a0,0000000A
	c.lw	s1,44(s0)
	jal	ra,0000000023040230
	c.beqz	a0,000000002303EF86

l2303EF6A:
	c.li	a5,00000000
	beq	s2,zero,000000002303EF74

l2303EF70:
	lw	a5,s2,+00000000

l2303EF74:
	c.sw	a0,4(a5)
	sw	zero,a0,+00000008
	sb	zero,a0,+0000000C
	c.bnez	s0,000000002303EF92

l2303EF80:
	sw	zero,a0,+00000000
	c.sw	s1,44(a0)

l2303EF86:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303EF92:
	c.lw	s0,0(a5)
	c.sw	a0,0(a5)
	c.sw	s0,0(a0)
	c.j	000000002303EF86

;; igmp_start: 2303EF9A
;;   Called from:
;;     23040502 (in netif_add)
igmp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	addi	a1,s1,-000000E0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002303EF4C
	c.beqz	a0,000000002303EFDE

l2303EFB2:
	c.li	a5,00000002
	sb	a5,a0,+00000009
	lbu	a5,a0,+0000000C
	c.addi	a5,00000001
	sb	a5,a0,+0000000C
	c.lw	s0,72(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002303EFD4

l2303EFC8:
	c.li	a2,00000001
	addi	a1,s1,-000000E0
	c.mv	a0,s0
	c.jalr	a5
	c.li	a0,00000000

l2303EFD4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2303EFDE:
	c.li	a0,FFFFFFFF
	c.j	000000002303EFD4

;; igmp_input: 2303EFE2
;;   Called from:
;;     2303F7CA (in ip4_input)
igmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,00042020
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	addi	s0,s3,-00000268
	lhu	a5,s0,+00000062
	c.mv	s5,a1
	c.addi	a5,00000001
	sh	a5,s0,+00000062
	lhu	a1,a0,+0000000A
	c.li	a5,00000007
	bltu	a5,a1,000000002303F030

l2303F010:
	jal	ra,0000000023040890
	lhu	a5,s0,+00000068
	c.addi	a5,00000001
	sh	a5,s0,+00000068

l2303F01E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2303F030:
	c.lw	a0,4(s1)
	c.mv	s2,a0
	c.mv	s4,a2
	c.mv	a0,s1
	jal	ra,000000002303CEB6
	c.beqz	a0,000000002303F050

l2303F03E:
	c.mv	a0,s2
	jal	ra,0000000023040890
	lhu	a5,s0,+00000066
	c.addi	a5,00000001
	sh	a5,s0,+00000066
	c.j	000000002303F01E

l2303F050:
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002303EF3A
	c.bnez	a0,000000002303F06C

l2303F05A:
	c.mv	a0,s2
	jal	ra,0000000023040890
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002303F01E

l2303F06C:
	lbu	a5,s1,+00000000
	c.li	a4,00000011
	beq	a5,a4,000000002303F088

l2303F076:
	c.li	a4,00000016
	beq	a5,a4,000000002303F128

l2303F07C:
	lhu	a5,s0,+0000006C
	c.addi	a5,00000001
	sh	a5,s0,+0000006C
	c.j	000000002303F0DA

l2303F088:
	lbu	a4,s1,+00000005
	lbu	a5,s1,+00000004
	lw	a3,s4,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000006
	addi	s3,s3,-00000268
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000007
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,0004200E
	lw	a4,a4,-000000E0
	bne	a3,a4,000000002303F144

l2303F0B8:
	c.bnez	a5,000000002303F0FC

l2303F0BA:
	lbu	a5,s1,+00000001
	c.bnez	a5,000000002303F0E2

l2303F0C0:
	lhu	a5,s0,+0000006E
	c.addi	a5,00000001
	sh	a5,s0,+0000006E
	c.li	a5,0000000A
	sb	a5,s1,+00000001

l2303F0D0:
	lw	a5,s5,+0000002C
	c.beqz	a5,000000002303F0DA

l2303F0D6:
	c.lw	a5,0(s0)

l2303F0D8:
	c.bnez	s0,000000002303F0EE

l2303F0DA:
	c.mv	a0,s2
	jal	ra,0000000023040890
	c.j	000000002303F01E

l2303F0E2:
	lhu	a5,s0,+00000072
	c.addi	a5,00000001
	sh	a5,s0,+00000072
	c.j	000000002303F0D0

l2303F0EE:
	lbu	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,000000002303EE60
	c.lw	s0,0(s0)
	c.j	000000002303F0D8

l2303F0FC:
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	c.swsp	a5,00000084
	jal	ra,000000002303EF3A
	c.beqz	a0,000000002303F11C

l2303F108:
	lhu	a5,s3,+00000070
	c.addi	a5,00000001
	sh	a5,s3,+00000070
	lbu	a1,s1,+00000001
	jal	ra,000000002303EE60
	c.j	000000002303F0DA

l2303F11C:
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002303F0DA

l2303F128:
	lhu	a5,s0,+00000074
	c.addi	a5,00000001
	sh	a5,s0,+00000074
	lbu	a4,a0,+00000009
	c.li	a5,00000001
	bne	a4,a5,000000002303F0DA

l2303F13C:
	addi	a5,zero,+00000200
	c.sw	a0,8(a5)
	c.j	000000002303F0DA

l2303F144:
	c.beqz	a5,000000002303F07C

l2303F146:
	c.j	000000002303F108

;; igmp_joingroup_netif: 2303F148
;;   Called from:
;;     2303F24C (in igmp_joingroup)
igmp_joingroup_netif proc
	c.lw	a1,0(a3)
	addi	a5,zero,+000000E0
	andi	a2,a3,+000000F0
	bne	a2,a5,000000002303F1EC

l2303F156:
	lui	a5,0004200E
	lw	a2,a5,-000000E0
	c.li	a5,FFFFFFFA
	beq	a3,a2,000000002303F1EE

l2303F164:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	a3,a0,+00000041
	c.mv	s1,a0
	andi	a3,a3,+00000020
	c.beqz	a3,000000002303F1DE

l2303F17A:
	c.mv	s2,a1
	jal	ra,000000002303EF4C
	c.mv	s0,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002303F1DE

l2303F186:
	lbu	a5,a0,+00000009
	c.bnez	a5,000000002303F1D2

l2303F18C:
	lbu	a5,a0,+0000000C
	c.bnez	a5,000000002303F19E

l2303F192:
	c.lw	s1,72(a5)
	c.beqz	a5,000000002303F19E

l2303F196:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2303F19E:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000076
	c.li	a2,00000016
	c.mv	a1,s0
	c.addi	a4,00000001
	c.mv	a0,s1
	sh	a4,a5,+00000076
	jal	ra,000000002303ED60
	jal	ra,000000002303404A
	c.li	a5,00000005
	and	a0,a0,a5
	c.bnez	a0,000000002303F1C8

l2303F1C6:
	c.li	a0,00000001

l2303F1C8:
	c.li	a5,00000001
	sh	a0,s0,+0000000A
	sb	a5,s0,+00000009

l2303F1D2:
	lbu	a5,s0,+0000000C
	c.addi	a5,00000001
	sb	a5,s0,+0000000C
	c.li	a5,00000000

l2303F1DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303F1EC:
	c.li	a5,FFFFFFFA

l2303F1EE:
	c.mv	a0,a5
	c.jr	ra

;; igmp_joingroup: 2303F1F2
;;   Called from:
;;     2304736A (in lwip_netconn_do_join_leave_group)
igmp_joingroup proc
	c.lw	a1,0(a5)
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002303F256

l2303F200:
	lui	a4,0004200E
	lw	a4,a4,-000000E0
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.li	a0,FFFFFFFA
	beq	a5,a4,000000002303F226

l2303F21A:
	lui	a5,00042020
	lw	s0,a5,-00000270
	c.mv	s2,a1

l2303F224:
	c.bnez	s0,000000002303F232

l2303F226:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2303F232:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002303F252

l2303F23C:
	c.beqz	s1,000000002303F248

l2303F23E:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303F248

l2303F242:
	c.lw	s0,4(a4)
	bne	a5,a4,000000002303F252

l2303F248:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303F148
	c.bnez	a0,000000002303F226

l2303F252:
	c.lw	s0,0(s0)
	c.j	000000002303F224

l2303F256:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; igmp_leavegroup_netif: 2303F25A
;;   Called from:
;;     2303F36E (in igmp_leavegroup)
igmp_leavegroup_netif proc
	c.lw	a1,0(a4)
	addi	a5,zero,+000000E0
	andi	a3,a4,+000000F0
	bne	a3,a5,000000002303F302

l2303F268:
	lui	a5,0004200E
	lw	a3,a5,-000000E0
	c.li	a5,FFFFFFFA
	beq	a4,a3,000000002303F304

l2303F276:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	a4,a0,+00000041
	c.mv	s1,a0
	andi	a4,a4,+00000020
	c.beqz	a4,000000002303F2E8

l2303F28C:
	c.mv	s2,a1
	jal	ra,000000002303EF3A
	c.mv	s0,a0
	c.li	a5,FFFFFFFA
	c.beqz	a0,000000002303F2E8

l2303F298:
	lbu	a5,a0,+0000000C
	c.li	a4,00000001
	bltu	a4,a5,000000002303F2FA

l2303F2A2:
	c.lw	s1,44(a5)

l2303F2A4:
	c.beqz	a5,000000002303F2B0

l2303F2A6:
	c.lw	a5,0(a4)
	bne	s0,a4,000000002303F2F6

l2303F2AC:
	c.lw	s0,0(a4)
	c.sw	a5,0(a4)

l2303F2B0:
	lbu	a5,s0,+00000008
	c.beqz	a5,000000002303F2D2

l2303F2B6:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000078
	c.li	a2,00000017
	c.mv	a1,s0
	c.addi	a4,00000001
	c.mv	a0,s1
	sh	a4,a5,+00000078
	jal	ra,000000002303ED60

l2303F2D2:
	c.lw	s1,72(a5)
	c.beqz	a5,000000002303F2DE

l2303F2D6:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2303F2DE:
	c.mv	a1,s0
	c.li	a0,0000000A
	jal	ra,000000002304024E

l2303F2E6:
	c.li	a5,00000000

l2303F2E8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2303F2F6:
	c.mv	a5,a4
	c.j	000000002303F2A4

l2303F2FA:
	c.addi	a5,FFFFFFFF
	sb	a5,a0,+0000000C
	c.j	000000002303F2E6

l2303F302:
	c.li	a5,FFFFFFFA

l2303F304:
	c.mv	a0,a5
	c.jr	ra

;; igmp_leavegroup: 2303F308
;;   Called from:
;;     23047380 (in lwip_netconn_do_join_leave_group)
igmp_leavegroup proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,0(a5)
	addi	a4,zero,+000000E0
	c.li	s1,FFFFFFFA
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002303F340

l2303F324:
	lui	a4,0004200E
	lw	a4,a4,-000000E0
	c.li	s1,FFFFFFFA
	beq	a5,a4,000000002303F340

l2303F332:
	lui	a5,00042020
	lw	s0,a5,-00000270
	c.mv	s3,a1
	c.mv	s2,a0

l2303F33E:
	c.bnez	s0,000000002303F350

l2303F340:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303F350:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002303F376

l2303F35A:
	beq	s2,zero,000000002303F36A

l2303F35E:
	lw	a5,s2,+00000000
	c.beqz	a5,000000002303F36A

l2303F364:
	c.lw	s0,4(a4)
	bne	a5,a4,000000002303F376

l2303F36A:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002303F25A
	c.beqz	s1,000000002303F376

l2303F374:
	c.mv	s1,a0

l2303F376:
	c.lw	s0,0(s0)
	c.j	000000002303F33E

;; igmp_tmr: 2303F37A
igmp_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042020
	c.swsp	s1,00000088
	lw	s1,a5,-00000270
	c.swsp	s2,00000008
	lui	s2,00042020
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	s3,00000001
	lui	s4,0004200E
	c.li	s5,00000002
	addi	s2,s2,-00000268

l2303F3A2:
	c.bnez	s1,000000002303F3B6

l2303F3A4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2303F3B6:
	c.lw	s1,44(s0)

l2303F3B8:
	c.bnez	s0,000000002303F3BE

l2303F3BA:
	c.lw	s1,0(s1)
	c.j	000000002303F3A2

l2303F3BE:
	lhu	a5,s0,+0000000A
	c.beqz	a5,000000002303F3FA

l2303F3C4:
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000000A
	c.bnez	a5,000000002303F3FA

l2303F3D0:
	lbu	a5,s0,+00000009
	bne	a5,s3,000000002303F3FA

l2303F3D8:
	c.lw	s0,4(a4)
	lw	a5,s4,-000000E0
	beq	a4,a5,000000002303F3FA

l2303F3E2:
	sb	s5,s0,+00000009
	lhu	a5,s2,+0000007A
	c.li	a2,00000016
	c.mv	a1,s0
	c.addi	a5,00000001
	c.mv	a0,s1
	sh	a5,s2,+0000007A
	jal	ra,000000002303ED60

l2303F3FA:
	c.lw	s0,0(s0)
	c.j	000000002303F3B8

;; ip4_input_accept: 2303F3FE
;;   Called from:
;;     2303F688 (in ip4_input)
;;     2303F6B2 (in ip4_input)
ip4_input_accept proc
	lbu	a5,a0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,000000002303F42E

l2303F406:
	c.lw	a0,4(a4)
	c.mv	a1,a0
	c.li	a0,00000000
	c.beqz	a4,000000002303F432

l2303F40E:
	lui	a5,00042020
	lw	a5,a5,-0000012C
	c.li	a0,00000001
	beq	a4,a5,000000002303F432

l2303F41C:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a5
	c.swsp	ra,00000084
	c.jal	000000002303FA5A
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l2303F42E:
	c.li	a0,00000000
	c.jr	ra

l2303F432:
	c.jr	ra

;; ip4_route: 2303F434
;;   Called from:
;;     23041192 (in raw_sendto)
;;     23041876 (in tcp_connect)
;;     230438F0 (in tcp_input)
;;     23043A5C (in tcp_input)
;;     230441A8 (in tcp_output_control_segment)
;;     23044BBA (in tcp_output)
;;     2304591C (in udp_sendto_chksum)
;;     23045964 (in udp_sendto_chksum)
;;     23047742 (in icmp_dest_unreach)
ip4_route proc
	c.lw	a0,0(a5)
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002303F44C

l2303F442:
	lui	a4,0004200E
	lw	a0,a4,-000000DC
	c.bnez	a0,000000002303F4BE

l2303F44C:
	lui	a4,00042020
	lw	a0,a4,-00000270

l2303F454:
	c.bnez	a0,000000002303F490

l2303F456:
	lui	a4,00042020
	lw	a4,a4,-00000274
	c.beqz	a4,000000002303F47C

l2303F460:
	lbu	a3,a4,+00000041
	c.li	a2,00000005
	c.andi	a3,00000005
	bne	a3,a2,000000002303F47C

l2303F46C:
	c.lw	a4,4(a3)
	c.beqz	a3,000000002303F47C

l2303F470:
	andi	a5,a5,+000000FF
	addi	a3,zero,+0000007F
	bne	a5,a3,000000002303F4BC

l2303F47C:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+0000003E
	c.addi	a4,00000001
	sh	a4,a5,+0000003E
	c.jr	ra

l2303F490:
	lbu	a3,a0,+00000041
	andi	a4,a3,+00000001
	c.beqz	a4,000000002303F4B8

l2303F49A:
	srli	a4,a3,00000002
	c.andi	a4,00000001
	c.beqz	a4,000000002303F4B8

l2303F4A2:
	c.lw	a0,4(a4)
	c.beqz	a4,000000002303F4B8

l2303F4A6:
	c.lw	a0,8(a2)
	c.xor	a4,a5
	c.and	a4,a2
	c.beqz	a4,000000002303F4BE

l2303F4AE:
	c.andi	a3,00000002
	c.bnez	a3,000000002303F4B8

l2303F4B2:
	c.lw	a0,12(a4)
	beq	a5,a4,000000002303F4BE

l2303F4B8:
	c.lw	a0,0(a0)
	c.j	000000002303F454

l2303F4BC:
	c.mv	a0,a4

l2303F4BE:
	c.jr	ra

;; ip4_input: 2303F4C0
;;   Called from:
;;     23045BC2 (in ethernet_input)
ip4_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042020
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	addi	s1,s0,-00000268
	lhu	a5,s1,+00000032
	c.addi	a5,00000001
	sh	a5,s1,+00000032
	lw	s3,a0,+00000004
	c.li	a5,00000004
	lbu	s6,s3,+00000000
	srli	a4,s6,00000004
	beq	a4,a5,000000002303F52C

l2303F4FA:
	jal	ra,0000000023040890
	lhu	a5,s1,+00000044
	c.addi	a5,00000001
	sh	a5,s1,+00000044
	lhu	a5,s1,+00000036
	c.addi	a5,00000001
	sh	a5,s1,+00000036

l2303F512:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2303F52C:
	lbu	a5,s3,+00000003
	c.mv	s2,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.mv	s4,a1
	c.or	a0,a5
	jal	ra,000000002303C332
	andi	s6,s6,+0000000F
	lhu	a5,s2,+00000008
	c.slli	s6,02
	slli	s1,s6,00000010
	addi	s0,s0,-00000268
	c.srli	s1,00000010
	c.mv	s5,a0
	bgeu	a0,a5,000000002303F562

l2303F55A:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023040A70

l2303F562:
	lhu	a5,s2,+0000000A
	bltu	a5,s1,000000002303F578

l2303F56A:
	lhu	a5,s2,+00000008
	bltu	a5,s5,000000002303F578

l2303F572:
	c.li	a5,00000013
	bltu	a5,s1,000000002303F594

l2303F578:
	c.mv	a0,s2
	jal	ra,0000000023040890
	lhu	a5,s0,+0000003A
	c.addi	a5,00000001
	sh	a5,s0,+0000003A

l2303F588:
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	c.j	000000002303F512

l2303F594:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002303CEB6
	c.beqz	a0,000000002303F5B0

l2303F59E:
	c.mv	a0,s2
	jal	ra,0000000023040890
	lhu	a5,s0,+00000038
	c.addi	a5,00000001
	sh	a5,s0,+00000038
	c.j	000000002303F588

l2303F5B0:
	lbu	a4,s3,+00000011
	lbu	a5,s3,+00000010
	lui	s1,00042020
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s3,+00000012
	addi	a2,s1,-00000140
	addi	s1,s1,-00000140
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	a2,20(a5)
	lbu	a3,s3,+0000000D
	lbu	a4,s3,+0000000C
	andi	a5,a5,+000000F0
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,s3,+0000000E
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,s3,+0000000F
	c.slli	a4,18
	c.or	a4,a3
	c.sw	a2,16(a4)
	addi	a4,zero,+000000E0
	bne	a5,a4,000000002303F686

l2303F604:
	lbu	a5,s4,+00000041
	andi	a5,a5,+00000020
	c.bnez	a5,000000002303F61C

l2303F60E:
	lbu	a4,s3,+00000009
	c.li	a5,00000011
	beq	a4,a5,000000002303F6C0

l2303F618:
	c.li	s5,00000000
	c.j	000000002303F63E

l2303F61C:
	lui	a1,00042020
	addi	a1,a1,-0000012C
	c.mv	a0,s4
	jal	ra,000000002303EF3A
	c.beqz	a0,000000002303F60E

l2303F62C:
	c.lw	s1,20(a3)
	lui	a5,00001000
	addi	a5,a5,+000000E0
	c.lw	s1,16(a4)
	beq	a3,a5,000000002303F65E

l2303F63C:
	c.mv	s5,s4

l2303F63E:
	c.lw	s1,16(a0)
	c.beqz	a0,000000002303F6DC

l2303F642:
	c.mv	a1,s4
	c.jal	000000002303FA5A
	c.bnez	a0,000000002303F656

l2303F648:
	c.lw	s1,16(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002303F6DC

l2303F656:
	c.mv	a0,s2
	jal	ra,0000000023040890
	c.j	000000002303F588

l2303F65E:
	c.mv	s5,s4
	c.bnez	a4,000000002303F63C

l2303F662:
	lbu	a5,s3,+00000006
	lbu	a4,s3,+00000007
	andi	a5,a5,+0000003F
	c.slli	a4,08
	c.or	a5,a4
	c.beqz	a5,000000002303F6F2

l2303F674:
	c.mv	a0,s2
	jal	ra,0000000023040890
	lhu	a5,s0,+00000042
	c.addi	a5,00000001
	sh	a5,s0,+00000042
	c.j	000000002303F588

l2303F686:
	c.mv	a0,s4
	jal	ra,000000002303F3FE
	c.bnez	a0,000000002303F6BA

l2303F68E:
	lbu	a4,s1,+00000014
	addi	a5,zero,+0000007F
	beq	a4,a5,000000002303F60E

l2303F69A:
	lui	a5,00042020
	lw	s5,a5,-00000270

l2303F6A2:
	beq	s5,zero,000000002303F60E

l2303F6A6:
	bne	s5,s4,000000002303F6B0

l2303F6AA:
	lw	s5,s5,+00000000
	c.j	000000002303F6A2

l2303F6B0:
	c.mv	a0,s5
	jal	ra,000000002303F3FE
	c.beqz	a0,000000002303F6AA

l2303F6B8:
	c.j	000000002303F63E

l2303F6BA:
	bne	s4,zero,000000002303F63C

l2303F6BE:
	c.j	000000002303F60E

l2303F6C0:
	add	a4,s3,s6
	lbu	a5,a4,+00000003
	lbu	a3,a4,+00000002
	c.lui	a4,00004000
	c.slli	a5,08
	c.or	a5,a3
	addi	a4,a4,+00000400
	bne	a5,a4,000000002303F618

l2303F6DA:
	c.mv	s5,s4

l2303F6DC:
	bne	s5,zero,000000002303F662

l2303F6E0:
	lhu	a5,s0,+00000036
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	jal	ra,0000000023040890
	c.j	000000002303F512

l2303F6F2:
	sw	s5,s1,+00000000
	sw	s4,s1,+00000004
	sw	s3,s1,+00000008
	lbu	a5,s3,+00000000
	c.mv	a1,s4
	c.mv	a0,s2
	c.andi	a5,0000000F
	c.slli	a5,02
	sh	a5,s1,+0000000C
	c.li	s8,00000001
	jal	ra,0000000023040F22
	c.mv	s7,a0
	beq	a0,s8,000000002303F790

l2303F71A:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,000000002304082E
	lbu	a5,s3,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002303F7BE

l2303F72C:
	bltu	a4,a5,000000002303F77C

l2303F730:
	beq	a5,s8,000000002303F7B4

l2303F734:
	c.li	a5,00000002
	beq	s7,a5,000000002303F774

l2303F73A:
	c.lw	s1,20(a0)
	c.mv	a1,s5
	c.jal	000000002303FA5A
	c.bnez	a0,000000002303F760

l2303F742:
	c.lw	s1,20(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002303F760

l2303F750:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,000000002304087E
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,00000000230476CE

l2303F760:
	lhu	a5,s0,+00000040
	c.addi	a5,00000001
	sh	a5,s0,+00000040
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036

l2303F774:
	c.mv	a0,s2
	jal	ra,0000000023040890
	c.j	000000002303F790

l2303F77C:
	c.li	a4,00000006
	beq	a5,a4,000000002303F7AA

l2303F782:
	c.li	a4,00000011
	bne	a5,a4,000000002303F734

l2303F788:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,00000000230453F4

l2303F790:
	sw	zero,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000008
	sh	zero,s1,+0000000C
	sw	zero,s1,+00000010
	sw	zero,s1,+00000014
	c.j	000000002303F512

l2303F7AA:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002304325C
	c.j	000000002303F790

l2303F7B4:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002304748C
	c.j	000000002303F790

l2303F7BE:
	lui	a2,00042020
	addi	a2,a2,-0000012C
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002303EFE2
	c.j	000000002303F790

;; ip4_output_if_opt_src: 2303F7D0
;;   Called from:
;;     2303FA32 (in ip4_output_if_opt)
;;     2303FA50 (in ip4_output_if_src)
ip4_output_if_opt_src proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.mv	s8,a0
	c.mv	s3,a6
	lhu	s9,sp,+00000050
	beq	a2,zero,000000002303F9EC

l2303F7F4:
	c.mv	s4,a1
	c.mv	s2,a2
	c.mv	s6,a3
	c.mv	s5,a4
	c.mv	s7,a5
	beq	s9,zero,000000002303F9E0

l2303F802:
	addi	a5,zero,+00000028
	bgeu	a5,s9,000000002303F838

l2303F80A:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFA
	c.addi	a4,00000001
	sh	a4,a5,+00000044

l2303F81E:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.addi16sp	00000050
	c.jr	ra

l2303F838:
	addi	s0,s9,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s1,s0,+00000014
	c.mv	a1,s0
	c.swsp	a7,00000084
	c.slli	s1,10
	jal	ra,0000000023040828
	c.srli	s1,00000010
	c.lwsp	a2,00000028
	c.beqz	a0,000000002303F86C

l2303F856:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFE
	c.addi	a4,00000001
	sh	a4,a5,+00000044
	c.j	000000002303F81E

l2303F86C:
	lw	a0,s8,+00000004
	c.mv	a2,s9
	c.mv	a1,a7
	jal	ra,0000000023070C7C
	bgeu	s9,s0,000000002303F88C

l2303F87C:
	lw	a0,s8,+00000004
	sub	a2,s0,s9
	c.li	a1,00000000
	c.add	a0,s9
	jal	ra,0000000023070EB8

l2303F88C:
	lw	a3,s8,+00000004
	c.srli	s0,00000001
	c.li	a5,00000000
	c.li	s9,00000000

l2303F896:
	slli	a4,a5,00000001
	c.add	a4,a3
	lhu	a4,a4,+00000000
	c.addi	a5,00000001
	c.add	s9,a4
	blt	a5,s0,000000002303F896

l2303F8A8:
	c.li	a1,00000014
	c.mv	a0,s8
	jal	ra,0000000023040828
	c.bnez	a0,000000002303F856

l2303F8B2:
	lw	s0,s8,+00000004
	sb	s6,s0,+00000008
	sb	s7,s0,+00000009
	lw	a5,s2,+00000000
	c.slli	s6,08
	or	s7,s6,s7
	srli	a4,a5,00000008
	srli	a3,a5,00000018
	sb	a5,s0,+00000010
	sb	a4,s0,+00000011
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	sb	a4,s0,+00000012
	srli	a4,s1,00000002
	ori	a4,a4,+00000040
	andi	a4,a4,+000000FF
	sb	a4,s0,+00000000
	slli	a0,s7,00000008
	c.slli	a4,08
	srai	s7,s7,00000008
	or	a4,a4,s5
	or	a0,a0,s7
	slli	s1,a4,00000008
	c.slli	a0,10
	c.srai	a4,00000008
	c.or	a4,s1
	c.srli	a0,00000010
	c.add	a0,a5
	slli	s1,a4,00000010
	sb	a3,s0,+00000013
	sb	s5,s0,+00000001
	c.add	a0,s9
	c.srli	s1,00000010
	c.add	s1,a0
	lhu	a0,s8,+00000008
	lui	s5,0004200E
	addi	s5,s5,-000000D8
	jal	ra,000000002303C332
	srli	a5,a0,00000008
	sb	a0,s0,+00000002
	c.add	s1,a0
	lhu	a0,s5,+00000000
	sb	a5,s0,+00000003
	sb	zero,s0,+00000006
	sb	zero,s0,+00000007
	jal	ra,000000002303C332
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	lhu	a5,s5,+00000000
	sb	a0,s0,+00000004
	c.add	a0,s1
	c.addi	a5,00000001
	sh	a5,s5,+00000000
	bne	s4,zero,000000002303F9E6

l2303F972:
	lui	a5,0002308E
	lw	a4,a5,-00000174

l2303F97A:
	srli	a3,a4,00000018
	sb	a3,s0,+0000000F
	c.lui	a3,00010000
	srli	a5,a4,00000008
	c.addi	a3,FFFFFFFF
	sb	a4,s0,+0000000C
	sb	a5,s0,+0000000D
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a0
	c.add	a4,a5
	sb	a5,s0,+0000000E
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a5
	srli	a5,a4,00000010
	c.add	a5,a4
	xori	a5,a5,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+0000000A
	c.srli	a5,00000008
	sb	a5,s0,+0000000B

l2303F9C0:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+00000030
	c.mv	a2,s2
	c.mv	a1,s8
	c.addi	a4,00000001
	sh	a4,a5,+00000030
	lw	a5,s3,+00000014
	c.mv	a0,s3
	c.jalr	a5
	c.j	000000002303F81E

l2303F9E0:
	c.li	s1,00000014
	c.li	s9,00000000
	c.j	000000002303F8A8

l2303F9E6:
	lw	a4,s4,+00000000
	c.j	000000002303F97A

l2303F9EC:
	lhu	a4,a0,+0000000A
	c.li	a5,00000013
	bgeu	a5,a4,000000002303F856

l2303F9F6:
	c.lw	a0,4(a3)
	addi	s2,sp,+0000001C
	lbu	a4,a3,+00000011
	lbu	a5,a3,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,0000008C
	c.j	000000002303F9C0

;; ip4_output_if_opt: 2303FA1C
;;   Called from:
;;     2303EE1E (in igmp_send)
;;     2303FA3E (in ip4_output_if)
ip4_output_if_opt proc
	lhu	t1,sp,+00000000
	c.beqz	a2,000000002303FA30

l2303FA22:
	c.beqz	a1,000000002303FA2C

l2303FA24:
	lw	t3,a1,+00000000
	bne	t3,zero,000000002303FA30

l2303FA2C:
	addi	a1,a6,+00000004

l2303FA30:
	c.swsp	t1,00000000
	jal	zero,000000002303F7D0

;; ip4_output_if: 2303FA36
;;   Called from:
;;     2304108C (in raw_sendto_if_src)
;;     2304112A (in raw_sendto_if_src)
;;     23044188 (in tcp_output_control_segment)
;;     23044DB8 (in tcp_output)
;;     23047678 (in icmp_input)
;;     23047788 (in icmp_dest_unreach)
ip4_output_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002303FA1C
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_output_if_src: 2303FA48
;;   Called from:
;;     23045844 (in udp_sendto_if_src_chksum)
ip4_output_if_src proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002303F7D0
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_addr_isbroadcast_u32: 2303FA5A
;;   Called from:
;;     2303E8CA (in etharp_input)
;;     2303EB02 (in etharp_query)
;;     2303EC42 (in etharp_output)
;;     2303F422 (in ip4_input_accept)
;;     2303F644 (in ip4_input)
;;     2303F73E (in ip4_input)
;;     23040F4A (in raw_input)
;;     230432C4 (in tcp_input)
;;     23045470 (in udp_input)
;;     230474FE (in icmp_input)
ip4_addr_isbroadcast_u32 proc
	addi	a3,a0,-00000001
	c.li	a5,FFFFFFFD
	c.mv	a4,a0
	bltu	a5,a3,000000002303FA90

l2303FA66:
	lbu	a5,a1,+00000041
	andi	a0,a5,+00000002
	c.beqz	a0,000000002303FA92

l2303FA70:
	c.lw	a1,4(a5)
	c.li	a0,00000000
	beq	a5,a4,000000002303FA92

l2303FA78:
	c.lw	a1,8(a3)
	c.xor	a5,a4
	c.and	a5,a3
	c.bnez	a5,000000002303FA92

l2303FA80:
	xori	a3,a3,-00000001
	and	a0,a3,a4
	c.sub	a0,a3
	sltiu	a0,a0,+00000001
	c.jr	ra

l2303FA90:
	c.li	a0,00000001

l2303FA92:
	c.jr	ra

;; ip4addr_aton: 2303FA94
;;   Called from:
;;     2303A4D4 (in lwip_getaddrinfo)
;;     2303CB16 (in dns_gethostbyname_addrtype)
;;     2303FBF8 (in ipaddr_addr)
;;     23047DF2 (in dhcpd_start)
;;     23047E16 (in dhcpd_start)
;;     23055DE8 (in set_if)
;;     23055DFE (in set_if)
;;     23055E12 (in set_if)
ip4addr_aton proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	lbu	a5,a0,+00000000
	c.addi4spn	a4,00000010
	lui	a6,0002308E
	c.mv	t3,a4
	addi	a6,a6,-00000393
	addi	t4,zero,+00000030
	addi	t5,zero,+00000058
	c.li	t6,00000010
	c.li	t0,00000002
	addi	t2,zero,+0000002E
	c.addi4spn	s0,0000001C

l2303FABC:
	add	a3,a5,a6
	lbu	a3,a3,+00000000
	c.andi	a3,00000004
	beq	a3,zero,000000002303FBEE

l2303FACA:
	c.li	a7,0000000A
	bne	a5,t4,000000002303FAE0

l2303FAD0:
	lbu	a5,a0,+00000001
	andi	a3,a5,+000000DF
	beq	a3,t5,000000002303FB06

l2303FADC:
	c.addi	a0,00000001
	c.li	a7,00000008

l2303FAE0:
	c.mv	a2,a0
	c.li	a0,00000000

l2303FAE4:
	add	a3,a6,a5
	lbu	a3,a3,+00000000
	andi	t1,a3,+00000004
	beq	t1,zero,000000002303FB10

l2303FAF4:
	add	a0,a7,a0
	c.add	a0,a5
	addi	a0,a0,-00000030

l2303FAFE:
	lbu	a5,a2,+00000001
	c.addi	a2,00000001
	c.j	000000002303FAE4

l2303FB06:
	lbu	a5,a0,+00000002
	c.li	a7,00000010
	c.addi	a0,00000002
	c.j	000000002303FAE0

l2303FB10:
	bne	a7,t6,000000002303FB36

l2303FB14:
	andi	t1,a3,+00000044
	beq	t1,zero,000000002303FB36

l2303FB1C:
	c.andi	a3,00000003
	c.slli	a0,04
	c.addi	a5,0000000A
	addi	t1,zero,+00000061
	beq	a3,t0,000000002303FB2E

l2303FB2A:
	addi	t1,zero,+00000041

l2303FB2E:
	sub	a5,a5,t1
	c.or	a0,a5
	c.j	000000002303FAFE

l2303FB36:
	bne	a5,t2,000000002303FB4E

l2303FB3A:
	beq	a4,s0,000000002303FBEE

l2303FB3E:
	c.addi	a4,00000004
	sw	a0,a4,+00000FFC
	lbu	a5,a2,+00000001
	addi	a0,a2,+00000001
	c.j	000000002303FABC

l2303FB4E:
	c.beqz	a5,000000002303FB56

l2303FB50:
	c.andi	a3,00000008
	c.li	s0,00000000
	c.beqz	a3,000000002303FB78

l2303FB56:
	sub	s0,a4,t3
	c.srai	s0,00000002
	c.addi	s0,00000001
	c.li	a5,00000002
	beq	s0,a5,000000002303FBB4

l2303FB64:
	blt	a5,s0,000000002303FB82

l2303FB68:
	c.beqz	s0,000000002303FB78

l2303FB6A:
	c.swsp	a1,00000084
	c.li	s0,00000001
	c.beqz	a1,000000002303FB78

l2303FB70:
	jal	ra,000000002303C340
	c.lwsp	a2,00000064
	c.sw	a1,0(a0)

l2303FB78:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2303FB82:
	c.li	a5,00000003
	beq	s0,a5,000000002303FBCE

l2303FB88:
	c.li	a5,00000004
	bne	s0,a5,000000002303FB6A

l2303FB8E:
	addi	a2,zero,+000000FF
	c.li	s0,00000000
	bltu	a2,a0,000000002303FB78

l2303FB98:
	c.lwsp	a6,000000E4
	bltu	a2,a5,000000002303FB78

l2303FB9E:
	c.lwsp	s4,000000A4
	bltu	a2,a3,000000002303FB78

l2303FBA4:
	c.lwsp	s8,000000C4
	bltu	a2,a4,000000002303FB78

l2303FBAA:
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	c.slli	a4,08
	c.j	000000002303FBEA

l2303FBB4:
	lui	a5,00001000
	c.li	s0,00000000
	bgeu	a0,a5,000000002303FB78

l2303FBBE:
	c.lwsp	a6,000000E4
	addi	a4,zero,+000000FF
	bltu	a4,a5,000000002303FB78

l2303FBC8:
	c.slli	a5,18

l2303FBCA:
	c.or	a0,a5
	c.j	000000002303FB6A

l2303FBCE:
	c.lui	a5,00010000
	c.li	s0,00000000
	bgeu	a0,a5,000000002303FB78

l2303FBD6:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	bltu	a3,a5,000000002303FB78

l2303FBE0:
	c.lwsp	s4,000000C4
	bltu	a3,a4,000000002303FB78

l2303FBE6:
	c.slli	a5,18
	c.slli	a4,10

l2303FBEA:
	c.or	a5,a4
	c.j	000000002303FBCA

l2303FBEE:
	c.li	s0,00000000
	c.j	000000002303FB78

;; ipaddr_addr: 2303FBF2
;;   Called from:
;;     23023E68 (in bl_rx_sm_disconnect_ind)
;;     23027E8C (in wifi_sta_ip_set_cmd)
;;     23027E94 (in wifi_sta_ip_set_cmd)
;;     23027E9C (in wifi_sta_ip_set_cmd)
;;     23027EA4 (in wifi_sta_ip_set_cmd)
;;     23027EB0 (in wifi_sta_ip_set_cmd)
;;     23047EF8 (in tcpc_entry)
;;     23048638 (in iperf_server_udp)
;;     23048A3A (in iperf_client_udp)
;;     23048A8C (in iperf_client_udp)
;;     23048F1E (in iperf_client_tcp)
ipaddr_addr proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002303FA94
	c.beqz	a0,000000002303FC06

l2303FBFE:
	c.lwsp	a2,00000044

l2303FC00:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2303FC06:
	c.li	a0,FFFFFFFF
	c.j	000000002303FC00

;; ip4addr_ntoa_r: 2303FC0A
;;   Called from:
;;     23027EBE (in wifi_sta_ip_set_cmd)
;;     23027EE4 (in wifi_sta_ip_set_cmd)
;;     23027F0A (in wifi_sta_ip_set_cmd)
;;     23027F30 (in wifi_sta_ip_set_cmd)
;;     23027F56 (in wifi_sta_ip_set_cmd)
;;     2303FCB0 (in ip4addr_ntoa)
;;     23041318 (in stats_netstat)
;;     23041334 (in stats_netstat)
;;     2304135E (in stats_netstat)
;;     2304137A (in stats_netstat)
;;     23041398 (in stats_netstat)
;;     230413B0 (in stats_netstat)
ip4addr_ntoa_r proc
	c.lw	a0,0(a5)
	c.addi	sp,FFFFFFF0
	c.mv	t4,a1
	c.swsp	a5,00000084
	c.li	a0,00000000
	c.addi4spn	a3,0000000C
	c.li	t5,0000000A
	c.li	t0,00000009
	addi	t2,zero,+000000FF
	addi	t6,zero,+0000002E

l2303FC22:
	lbu	a6,a3,+00000000
	c.li	a5,00000000

l2303FC28:
	and	t1,a6,t5
	addi	a7,sp,+00000010
	c.add	a7,a5
	addi	t3,a5,+00000001
	andi	t3,t3,+000000FF
	srl	a4,a6,t5
	addi	t1,t1,+00000030
	sb	t1,a7,+00000FF8
	andi	a4,a4,+000000FF
	bltu	t0,a6,000000002303FC7A

l2303FC4E:
	sb	a4,a3,+00000000
	c.mv	a6,a0
	c.mv	a4,t4

l2303FC56:
	c.addi	a0,00000001
	bne	a5,t2,000000002303FC80

l2303FC5C:
	bge	a6,a2,000000002303FCA2

l2303FC60:
	sb	t6,a4,+00000000
	c.addi	a3,00000001
	c.addi4spn	a5,00000010
	addi	t4,a4,+00000001
	bne	a3,a5,000000002303FC22

l2303FC70:
	sb	zero,a4,+00000000
	c.mv	a0,a1

l2303FC76:
	c.addi	sp,00000010
	c.jr	ra

l2303FC7A:
	c.mv	a6,a4
	c.mv	a5,t3
	c.j	000000002303FC28

l2303FC80:
	addi	a7,a5,-00000001
	andi	a7,a7,+000000FF
	bge	a6,a2,000000002303FCA2

l2303FC8C:
	addi	a6,sp,+00000010
	c.add	a5,a6
	lbu	a5,a5,-00000008
	c.addi	a4,00000001
	c.mv	a6,a0
	sb	a5,a4,+00000FFF
	c.mv	a5,a7
	c.j	000000002303FC56

l2303FCA2:
	c.li	a0,00000000
	c.j	000000002303FC76

;; ip4addr_ntoa: 2303FCA6
;;   Called from:
;;     23000664 (in client_demo.constprop.3)
;;     23027B34 (in wifi_sta_ip_info)
;;     23027B48 (in wifi_sta_ip_info)
;;     23027B5C (in wifi_sta_ip_info)
;;     23027B70 (in wifi_sta_ip_info)
;;     23027B84 (in wifi_sta_ip_info)
;;     2302915C (in netif_status_callback)
;;     23029172 (in netif_status_callback)
;;     23029188 (in netif_status_callback)
;;     2302AE86 (in ota_tcp_cmd.part.0)
;;     23048460 (in TCP_Server)
;;     23048D12 (in iperf_server)
;;     23049426 (in ping_recv)
ip4addr_ntoa proc
	lui	a1,00042015
	c.li	a2,00000010
	addi	a1,a1,+000001AC
	jal	zero,000000002303FC0A

;; mem_init: 2303FCB4
;;   Called from:
;;     2303CF72 (in lwip_init)
mem_init proc
	lui	a5,00042048
	addi	a5,a5,-0000003D
	c.andi	a5,FFFFFFFC
	lui	a4,0004200E
	sw	a5,a4,+00000F34
	c.lui	a4,00002000
	add	a3,a5,a4
	lui	a2,0004200E
	c.sw	a5,0(a4)
	sb	zero,a5,+00000004
	sw	a3,a2,+00000F38
	lui	a2,00020002
	c.sw	a3,0(a2)
	c.li	a2,00000001
	sb	a2,a3,+00000004
	lui	a0,0004200E
	lui	a3,0004200E
	sw	a5,a3,+00000F2C
	addi	a0,a0,-000000D0
	lui	a5,00042020
	sh	a4,a5,+00000E46
	jal	zero,000000002303A306

;; mem_free: 2303FD02
;;   Called from:
;;     230394C0 (in httpc_free_state)
;;     2304090C (in pbuf_free)
;;     23047BBE (in dhcp_server_recv)
;;     23047D3C (in dhcp_server_stop)
mem_free proc
	beq	a0,zero,000000002303FE6C

l2303FD06:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lui	s2,00042020
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	andi	a5,a0,+00000003
	c.mv	s0,a0
	addi	s2,s2,-00000268
	c.beqz	a5,000000002303FD48

l2303FD26:
	jal	ra,000000002303A3A6
	lhu	a5,s2,+000000B4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a5,00000001
	sh	a5,s2,+000000B4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002303A3B6

l2303FD48:
	lui	s4,0004200E
	addi	s4,s4,-000000CC
	lw	a5,s4,+00000000
	addi	s1,a0,-00000008
	bltu	s1,a5,000000002303FD26

l2303FD5C:
	lui	a5,0004200E
	lw	a3,a5,-000000C8
	addi	a4,a0,+0000000C
	addi	s3,a5,-000000C8
	bltu	a3,a4,000000002303FD26

l2303FD70:
	lui	s5,0004200E
	addi	a0,s5,-000000D0
	jal	ra,000000002303A352
	lbu	a5,s0,-00000004
	c.bnez	a5,000000002303FD8C

l2303FD82:
	addi	a0,s5,-000000D0
	jal	ra,000000002303A358
	c.j	000000002303FD26

l2303FD8C:
	lhu	a1,s0,-00000008
	c.lui	a5,00002000
	bltu	a5,a1,000000002303FD82

l2303FD96:
	lhu	a4,s0,-00000006
	bltu	a5,a4,000000002303FD82

l2303FD9E:
	lw	a5,s4,+00000000
	sub	a2,s1,a5
	c.slli	a2,10
	c.srli	a2,00000010
	beq	a2,a4,000000002303FDB8

l2303FDAE:
	c.add	a4,a5
	lhu	a4,a4,+00000000
	bne	a4,a2,000000002303FD82

l2303FDB8:
	lw	a6,s3,+00000000
	add	a4,a5,a1
	beq	a4,a6,000000002303FDCC

l2303FDC4:
	lhu	a4,a4,+00000002
	bne	a4,a2,000000002303FD82

l2303FDCC:
	lui	a4,0004200E
	lw	a3,a4,-000000D4
	sb	zero,s0,+00000FFC
	addi	a4,a4,-000000D4
	bgeu	s1,a3,000000002303FDE2

l2303FDE0:
	c.sw	a4,0(s1)

l2303FDE2:
	lhu	a3,s2,+000000B0
	c.sub	a3,a1
	c.add	a3,a2
	sh	a3,s2,+000000B0
	lhu	a3,s0,-00000008
	c.add	a3,a5
	beq	s1,a3,000000002303FE22

l2303FDF8:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002303FE22

l2303FDFE:
	beq	a6,a3,000000002303FE22

l2303FE02:
	c.lw	a4,0(a1)
	bne	a3,a1,000000002303FE0A

l2303FE08:
	c.sw	a4,0(s1)

l2303FE0A:
	lhu	a1,a3,+00000000
	sh	a1,s0,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a1,00002000
	beq	a3,a1,000000002303FE22

l2303FE1C:
	c.add	a3,a5
	sh	a2,a3,+00000002

l2303FE22:
	lhu	a2,s0,-00000006
	add	a3,a5,a2
	beq	s1,a3,000000002303FE54

l2303FE2E:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002303FE54

l2303FE34:
	c.lw	a4,0(a1)
	bne	s1,a1,000000002303FE3C

l2303FE3A:
	c.sw	a4,0(a3)

l2303FE3C:
	lhu	a4,s0,-00000008
	sh	a4,a3,+00000000
	lhu	a4,s0,-00000008
	c.lui	a3,00002000
	beq	a4,a3,000000002303FE54

l2303FE4E:
	c.add	a5,a4
	sh	a2,a5,+00000002

l2303FE54:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,s5,-000000D0
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002303A358

l2303FE6C:
	c.jr	ra

;; mem_trim: 2303FE6E
;;   Called from:
;;     23040AB0 (in pbuf_realloc)
mem_trim proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	addi	s0,a1,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.srli	s0,00000010
	c.li	a5,0000000B
	c.mv	s4,a0
	bgeu	a5,s0,000000002303FE9C

l2303FE92:
	c.lui	a5,00002000
	bgeu	a5,s0,000000002303FE9E

l2303FE98:
	c.li	s4,00000000
	c.j	000000002303FED8

l2303FE9C:
	c.li	s0,0000000C

l2303FE9E:
	bltu	s0,a1,000000002303FE98

l2303FEA2:
	lui	s5,0004200E
	addi	s5,s5,-000000CC
	lw	a5,s5,+00000000
	bltu	s4,a5,000000002303FEBE

l2303FEB2:
	lui	a4,0004200E
	lw	a4,a4,-000000C8
	bltu	s4,a4,000000002303FEEE

l2303FEBE:
	jal	ra,000000002303A3A6
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000B4
	c.addi	a4,00000001
	sh	a4,a5,+000000B4
	jal	ra,000000002303A3B6

l2303FED8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2303FEEE:
	lhu	s2,s4,-00000008
	addi	s1,s4,-00000008
	c.sub	s1,a5
	c.addi	s2,FFFFFFF8
	c.slli	s1,10
	c.slli	s2,10
	c.srli	s1,00000010
	srli	s2,s2,00000010
	sub	s3,s2,s1
	c.slli	s3,10
	srli	s3,s3,00000010
	bltu	s3,s0,000000002303FE98

l2303FF12:
	beq	s3,s0,000000002303FED8

l2303FF16:
	lui	s6,0004200E
	addi	a0,s6,-000000D0
	jal	ra,000000002303A352
	lw	a5,s5,+00000000
	lhu	a2,s4,-00000008
	c.add	a2,a5
	lbu	a4,a2,+00000004
	c.bnez	a4,000000002303FF98

l2303FF32:
	lui	a1,0004200E
	addi	a4,s1,+00000008
	addi	a1,a1,-000000D4
	c.add	a4,s0
	lw	a7,a1,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	lhu	a6,a2,+00000000
	add	a3,a5,a4
	bne	a7,a2,000000002303FF56

l2303FF54:
	c.sw	a1,0(a3)

l2303FF56:
	sb	zero,a3,+00000004
	sh	a6,a3,+00000000
	sh	s1,a3,+00000002
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002303FF76

l2303FF70:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2303FF76:
	lui	a5,00042020
	addi	a5,a5,-00000268
	sub	s2,s1,s2
	lhu	s1,a5,+000000B0
	c.add	s2,s1
	c.add	s0,s2

l2303FF8A:
	sh	s0,a5,+000000B0

l2303FF8E:
	addi	a0,s6,-000000D0
	jal	ra,000000002303A358
	c.j	000000002303FED8

l2303FF98:
	addi	a4,s0,+00000014
	bltu	s3,a4,000000002303FF8E

l2303FFA0:
	addi	a4,s1,+00000008
	lui	a2,0004200E
	c.add	a4,s0
	addi	a2,a2,-000000D4
	c.slli	a4,10
	c.lw	a2,0(a1)
	c.srli	a4,00000010
	add	a3,a5,a4
	bgeu	a3,a1,000000002303FFBE

l2303FFBC:
	c.sw	a2,0(a3)

l2303FFBE:
	sb	zero,a3,+00000004
	lhu	a2,s4,-00000008
	sh	s1,a3,+00000002
	sh	a2,a3,+00000000
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002303FFE2

l2303FFDC:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2303FFE2:
	lui	a5,00042020
	addi	a5,a5,-00000268
	sub	s1,s1,s2
	lhu	s2,a5,+000000B0
	c.add	s1,s2
	c.add	s0,s1
	c.j	000000002303FF8A

;; mem_malloc: 2303FFF8
;;   Called from:
;;     230399A2 (in httpc_init_connection_common.constprop.5)
;;     2303E258 (in dhcp_start)
;;     23040980 (in pbuf_alloc)
;;     2304794A (in dhcp_server_recv)
;;     23047C6A (in dhcp_server_start)
mem_malloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.beqz	a0,0000000023040080

l23040002:
	addi	s1,a0,+00000003
	c.andi	s1,FFFFFFFC
	c.slli	s1,10
	c.srli	s1,00000010
	c.li	a5,0000000B
	bgeu	a5,s1,0000000023040026

l23040012:
	c.lui	a5,00002000
	c.li	s0,00000000
	bgeu	a5,s1,0000000023040028

l2304001A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23040026:
	c.li	s1,0000000C

l23040028:
	c.li	s0,00000000
	bltu	s1,a0,000000002304001A

l2304002E:
	lui	s0,0004200E
	addi	a0,s0,-000000D0
	jal	ra,000000002303A352
	lui	a4,0004200E
	lui	a5,0004200E
	lw	a6,a4,-000000D4
	lw	a7,a5,-000000CC
	c.lui	t1,00002000
	addi	t3,a4,-000000D4
	sub	a5,a6,a7
	slli	a3,a5,00000010
	c.srli	a3,00000010
	c.mv	a0,s0
	sub	a4,t1,s1
	c.li	a1,FFFFFFF8

l23040062:
	bltu	a3,a4,0000000023040084

l23040066:
	lui	a5,00042020
	addi	a5,a5,-00000268
	lhu	a4,a5,+000000AC
	addi	a0,a0,-000000D0
	c.addi	a4,00000001
	sh	a4,a5,+000000AC
	jal	ra,000000002303A358

l23040080:
	c.li	s0,00000000
	c.j	000000002304001A

l23040084:
	add	s0,a7,a3
	lbu	a2,s0,+00000004
	lhu	a5,s0,+00000000
	c.bnez	a2,0000000023040150

l23040092:
	sub	a2,a1,a3
	c.add	a2,a5
	bltu	a2,s1,0000000023040150

l2304009C:
	lui	a4,00042020
	addi	a1,s1,+00000014
	addi	a4,a4,-00000268
	bltu	a2,a1,0000000023040124

l230400AC:
	addi	a5,s1,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	add	a2,a7,a5
	sb	zero,a2,+00000004
	lhu	a1,s0,+00000000
	sh	a3,a2,+00000002
	c.li	a3,00000001
	sh	a1,a2,+00000000
	sh	a5,s0,+00000000
	sb	a3,s0,+00000004
	lhu	a3,a2,+00000000
	beq	a3,t1,00000000230400E2

l230400DC:
	c.add	a3,a7
	sh	a5,a3,+00000002

l230400E2:
	lhu	a5,a4,+000000B0
	c.addi	a5,00000008
	c.add	s1,a5
	c.slli	s1,10
	lhu	a5,a4,+000000B2
	c.srli	s1,00000010
	sh	s1,a4,+000000B0
	bgeu	a5,s1,00000000230400FE

l230400FA:
	sh	s1,a4,+000000B2

l230400FE:
	bne	a6,s0,0000000023040118

l23040102:
	lui	a5,0004200E
	lw	a5,a5,-000000C8

l2304010A:
	lbu	a4,a6,+00000004
	c.beqz	a4,0000000023040114

l23040110:
	bne	a5,a6,0000000023040148

l23040114:
	sw	a6,t3,+00000000

l23040118:
	addi	a0,a0,-000000D0
	jal	ra,000000002303A358
	c.addi	s0,00000008
	c.j	000000002304001A

l23040124:
	c.li	a2,00000001
	sb	a2,s0,+00000004
	lhu	a2,a4,+000000B0
	c.add	a5,a2
	c.sub	a5,a3
	c.slli	a5,10
	lhu	a3,a4,+000000B2
	c.srli	a5,00000010
	sh	a5,a4,+000000B0
	bgeu	a3,a5,00000000230400FE

l23040142:
	sh	a5,a4,+000000B2
	c.j	00000000230400FE

l23040148:
	lhu	a6,a6,+00000000
	c.add	a6,a7
	c.j	000000002304010A

l23040150:
	c.mv	a3,a5
	c.j	0000000023040062

;; do_memp_malloc_pool: 23040154
;;   Called from:
;;     23040246 (in memp_malloc)
do_memp_malloc_pool proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,000000002303A3A6
	c.lw	s0,12(a5)
	c.lw	a5,0(s1)
	c.beqz	s1,000000002304019E

l23040168:
	c.lw	s1,0(a4)
	c.mv	a3,a0
	c.sw	a5,0(a4)
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,00000001
	sh	a5,a4,+00000004
	c.lw	s0,0(a5)
	lhu	a4,a5,+00000004
	lhu	a2,a5,+00000006
	bgeu	a2,a4,000000002304018C

l23040188:
	sh	a4,a5,+00000006

l2304018C:
	c.mv	a0,a3

l2304018E:
	jal	ra,000000002303A3B6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304019E:
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000000
	c.addi	a5,00000001
	sh	a5,a4,+00000000
	c.j	000000002304018E

;; memp_init_pool: 230401AC
;;   Called from:
;;     23040210 (in memp_init)
memp_init_pool proc
	c.lw	a0,12(a5)
	c.li	a4,00000000
	sw	zero,a5,+00000000
	c.lw	a0,8(a5)
	c.addi	a5,00000003
	c.andi	a5,FFFFFFFC

l230401BA:
	lhu	a3,a0,+00000006
	blt	a4,a3,00000000230401CA

l230401C2:
	c.lw	a0,0(a5)
	sh	a3,a5,+00000002
	c.jr	ra

l230401CA:
	c.lw	a0,12(a3)
	c.addi	a4,00000001
	c.lw	a3,0(a3)
	c.sw	a5,0(a3)
	c.lw	a0,12(a3)
	c.sw	a3,0(a5)
	lhu	a3,a0,+00000004
	c.add	a5,a3
	c.j	00000000230401BA

;; memp_init: 230401DE
;;   Called from:
;;     2303CF76 (in lwip_init)
memp_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s0,00042020
	lui	s2,00023086
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	addi	s0,s0,-00000268
	c.li	s1,00000000
	addi	s2,s2,+000002EC
	addi	s4,zero,+0000003C

l23040202:
	add	a5,s2,s1
	lw	s3,a5,+00000000
	c.addi	s1,00000004
	c.addi	s0,00000004
	c.mv	a0,s3
	jal	ra,00000000230401AC
	lw	a5,s3,+00000000
	sw	a5,s0,+000000B4
	bne	s1,s4,0000000023040202

l23040220:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; memp_malloc: 23040230
;;   Called from:
;;     2303A540 (in lwip_getaddrinfo)
;;     2303BCEC (in tcpip_inpkt)
;;     2303BD7A (in tcpip_callback)
;;     2303BDC2 (in tcpip_try_callback)
;;     2303BEFE (in altcp_alloc)
;;     2303EF64 (in igmp_lookup_group)
;;     230407C4 (in pbuf_alloc_reference)
;;     230409D2 (in pbuf_alloc)
;;     23041214 (in raw_new)
;;     230415A0 (in tcp_listen_with_backlog_and_err)
;;     23041764 (in tcp_seg_copy)
;;     23041CA6 (in tcp_alloc)
;;     23041CD8 (in tcp_alloc)
;;     23041CE8 (in tcp_alloc)
;;     23041CF8 (in tcp_alloc)
;;     23041D12 (in tcp_alloc)
;;     23043F26 (in tcp_create_segment)
;;     230451BA (in sys_timeout_abs)
;;     23045A7A (in udp_new)
;;     230462F8 (in recv_udp)
;;     23046930 (in recv_raw)
;;     23046B7A (in netconn_alloc)
memp_malloc proc
	c.li	a5,0000000E
	bltu	a5,a0,000000002304024A

l23040236:
	slli	a5,a0,00000002
	lui	a0,00023086
	addi	a0,a0,+000002EC
	c.add	a0,a5
	c.lw	a0,0(a0)
	jal	zero,0000000023040154

l2304024A:
	c.li	a0,00000000
	c.jr	ra

;; memp_free: 2304024E
;;   Called from:
;;     2303A458 (in lwip_freeaddrinfo)
;;     2303BD3C (in tcpip_inpkt)
;;     2303BDE8 (in tcpip_try_callback)
;;     2303BF36 (in altcp_free)
;;     2303EF0E (in igmp_stop)
;;     2303F2E2 (in igmp_leavegroup_netif)
;;     23040902 (in pbuf_free)
;;     230411F2 (in raw_remove)
;;     230414B2 (in tcp_free)
;;     2304172C (in tcp_seg_free)
;;     23041F80 (in tcp_close_shutdown)
;;     2304534C (in sys_untimeout)
;;     2304538C (in sys_check_timeouts)
;;     23045A5A (in udp_remove)
;;     23045D08 (in netconn_new_with_proto_and_callback)
;;     23046BCE (in netconn_alloc)
;;     23046C40 (in netconn_free)
;;     2304741C (in netbuf_delete)
memp_free proc
	c.li	a5,0000000E
	bltu	a5,a0,0000000023040294

l23040254:
	c.beqz	a1,0000000023040294

l23040256:
	lui	a5,00023086
	addi	a5,a5,+000002EC
	c.slli	a0,02
	c.addi	sp,FFFFFFF0
	c.add	a0,a5
	c.swsp	s1,00000080
	c.lw	a0,0(s1)
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002303A3A6
	c.lw	s1,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000004
	c.lw	s1,12(a5)
	c.lw	a5,0(a5)
	c.sw	s0,0(a5)
	c.lw	s1,12(a5)
	c.sw	a5,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303A3B6

l23040294:
	c.jr	ra

;; netif_null_output_ip4: 23040296
netif_null_output_ip4 proc
	c.li	a0,FFFFFFF4
	c.jr	ra

;; netif_issue_reports: 2304029A
;;   Called from:
;;     23040322 (in netif_do_set_ipaddr)
;;     23040552 (in netif_set_up)
;;     23040652 (in netif_set_link_up)
netif_issue_reports proc
	lbu	a4,a0,+00000041
	c.li	a3,00000005
	andi	a2,a4,+00000005
	bne	a2,a3,00000000230402E2

l230402A8:
	c.andi	a1,00000001
	c.beqz	a1,00000000230402E2

l230402AC:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a3)
	c.mv	s0,a0
	c.beqz	a3,00000000230402DA

l230402B8:
	c.andi	a4,00000008
	c.beqz	a4,00000000230402C4

l230402BC:
	addi	a1,a0,+00000004
	jal	ra,000000002303E99A

l230402C4:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230402DA

l230402CE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303EF16

l230402DA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230402E2:
	c.jr	ra

;; netif_do_set_ipaddr: 230402E4
;;   Called from:
;;     23040354 (in netif_set_ipaddr)
;;     230403D0 (in netif_set_addr)
;;     230403F6 (in netif_set_addr)
netif_do_set_ipaddr proc
	c.lw	a0,4(a5)
	c.lw	a1,0(a4)
	beq	a4,a5,000000002304033C

l230402EC:
	c.addi	sp,FFFFFFE0
	c.sw	a2,0(a5)
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a0,a2
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	c.swsp	a4,00000084
	c.swsp	s1,00000088
	c.mv	s1,a2
	jal	ra,0000000023041C02
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023045AA4
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023041252
	lw	a5,s2,+00000000
	c.li	a1,00000001
	c.mv	a0,s0
	c.sw	s0,4(a5)
	jal	ra,000000002304029A
	c.lw	s0,28(a5)
	c.beqz	a5,000000002304032E
