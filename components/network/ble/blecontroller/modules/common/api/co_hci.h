/**
* @file co_hci.h
* Header file for BL602
*/
#ifndef __CO_HCI_H__
#define __CO_HCI_H__

enum hci_opcode {
    HCI_NO_OPERATION_CMD_OPCODE = 0,
    HCI_INQ_CMD_OPCODE = 1025,
    HCI_INQ_CANCEL_CMD_OPCODE = 1026,
    HCI_PER_INQ_MODE_CMD_OPCODE = 1027,
    HCI_EXIT_PER_INQ_MODE_CMD_OPCODE = 1028,
    HCI_CREATE_CON_CMD_OPCODE = 1029,
    HCI_DISCONNECT_CMD_OPCODE = 1030,
    HCI_CREATE_CON_CANCEL_CMD_OPCODE = 1032,
    HCI_ACCEPT_CON_REQ_CMD_OPCODE = 1033,
    HCI_REJECT_CON_REQ_CMD_OPCODE = 1034,
    HCI_LK_REQ_REPLY_CMD_OPCODE = 1035,
    HCI_LK_REQ_NEG_REPLY_CMD_OPCODE = 1036,
    HCI_PIN_CODE_REQ_REPLY_CMD_OPCODE = 1037,
    HCI_PIN_CODE_REQ_NEG_REPLY_CMD_OPCODE = 1038,
    HCI_CHG_CON_PKT_TYPE_CMD_OPCODE = 1039,
    HCI_AUTH_REQ_CMD_OPCODE = 1041,
    HCI_SET_CON_ENC_CMD_OPCODE = 1043,
    HCI_CHG_CON_LK_CMD_OPCODE = 1045,
    HCI_MASTER_LK_CMD_OPCODE = 1047,
    HCI_REM_NAME_REQ_CMD_OPCODE = 1049,
    HCI_REM_NAME_REQ_CANCEL_CMD_OPCODE = 1050,
    HCI_RD_REM_SUPP_FEATS_CMD_OPCODE = 1051,
    HCI_RD_REM_EXT_FEATS_CMD_OPCODE = 1052,
    HCI_RD_REM_VER_INFO_CMD_OPCODE = 1053,
    HCI_RD_CLK_OFF_CMD_OPCODE = 1055,
    HCI_RD_LMP_HDL_CMD_OPCODE = 1056,
    HCI_SETUP_SYNC_CON_CMD_OPCODE = 1064,
    HCI_ACCEPT_SYNC_CON_REQ_CMD_OPCODE = 1065,
    HCI_REJECT_SYNC_CON_REQ_CMD_OPCODE = 1066,
    HCI_IO_CAP_REQ_REPLY_CMD_OPCODE = 1067,
    HCI_USER_CFM_REQ_REPLY_CMD_OPCODE = 1068,
    HCI_USER_CFM_REQ_NEG_REPLY_CMD_OPCODE = 1069,
    HCI_USER_PASSKEY_REQ_REPLY_CMD_OPCODE = 1070,
    HCI_USER_PASSKEY_REQ_NEG_REPLY_CMD_OPCODE = 1071,
    HCI_REM_OOB_DATA_REQ_REPLY_CMD_OPCODE = 1072,
    HCI_REM_OOB_DATA_REQ_NEG_REPLY_CMD_OPCODE = 1075,
    HCI_IO_CAP_REQ_NEG_REPLY_CMD_OPCODE = 1076,
    HCI_ENH_SETUP_SYNC_CON_CMD_OPCODE = 1085,
    HCI_ENH_ACCEPT_SYNC_CON_CMD_OPCODE = 1086,
    HCI_TRUNC_PAGE_CMD_OPCODE = 1087,
    HCI_TRUNC_PAGE_CAN_CMD_OPCODE = 1088,
    HCI_SET_CON_SLV_BCST_CMD_OPCODE = 1089,
    HCI_SET_CON_SLV_BCST_REC_CMD_OPCODE = 1090,
    HCI_START_SYNC_TRAIN_CMD_OPCODE = 1091,
    HCI_REC_SYNC_TRAIN_CMD_OPCODE = 1092,
    HCI_REM_OOB_EXT_DATA_REQ_REPLY_CMD_OPCODE = 1093,
    HCI_HOLD_MODE_CMD_OPCODE = 2049,
    HCI_SNIFF_MODE_CMD_OPCODE = 2051,
    HCI_EXIT_SNIFF_MODE_CMD_OPCODE = 2052,
    HCI_PARK_STATE_CMD_OPCODE = 2053,
    HCI_EXIT_PARK_STATE_CMD_OPCODE = 2054,
    HCI_QOS_SETUP_CMD_OPCODE = 2055,
    HCI_ROLE_DISCOVERY_CMD_OPCODE = 2057,
    HCI_SWITCH_ROLE_CMD_OPCODE = 2059,
    HCI_RD_LINK_POL_STG_CMD_OPCODE = 2060,
    HCI_WR_LINK_POL_STG_CMD_OPCODE = 2061,
    HCI_RD_DFT_LINK_POL_STG_CMD_OPCODE = 2062,
    HCI_WR_DFT_LINK_POL_STG_CMD_OPCODE = 2063,
    HCI_FLOW_SPEC_CMD_OPCODE = 2064,
    HCI_SNIFF_SUB_CMD_OPCODE = 2065,
    HCI_SET_EVT_MASK_CMD_OPCODE = 3073,
    HCI_RESET_CMD_OPCODE = 3075,
    HCI_SET_EVT_FILTER_CMD_OPCODE = 3077,
    HCI_FLUSH_CMD_OPCODE = 3080,
    HCI_RD_PIN_TYPE_CMD_OPCODE = 3081,
    HCI_WR_PIN_TYPE_CMD_OPCODE = 3082,
    HCI_CREATE_NEW_UNIT_KEY_CMD_OPCODE = 3083,
    HCI_RD_STORED_LK_CMD_OPCODE = 3085,
    HCI_WR_STORED_LK_CMD_OPCODE = 3089,
    HCI_DEL_STORED_LK_CMD_OPCODE = 3090,
    HCI_WR_LOCAL_NAME_CMD_OPCODE = 3091,
    HCI_RD_LOCAL_NAME_CMD_OPCODE = 3092,
    HCI_RD_CON_ACCEPT_TO_CMD_OPCODE = 3093,
    HCI_WR_CON_ACCEPT_TO_CMD_OPCODE = 3094,
    HCI_RD_PAGE_TO_CMD_OPCODE = 3095,
    HCI_WR_PAGE_TO_CMD_OPCODE = 3096,
    HCI_RD_SCAN_EN_CMD_OPCODE = 3097,
    HCI_WR_SCAN_EN_CMD_OPCODE = 3098,
    HCI_RD_PAGE_SCAN_ACT_CMD_OPCODE = 3099,
    HCI_WR_PAGE_SCAN_ACT_CMD_OPCODE = 3100,
    HCI_RD_INQ_SCAN_ACT_CMD_OPCODE = 3101,
    HCI_WR_INQ_SCAN_ACT_CMD_OPCODE = 3102,
    HCI_RD_AUTH_EN_CMD_OPCODE = 3103,
    HCI_WR_AUTH_EN_CMD_OPCODE = 3104,
    HCI_RD_CLASS_OF_DEV_CMD_OPCODE = 3107,
    HCI_WR_CLASS_OF_DEV_CMD_OPCODE = 3108,
    HCI_RD_VOICE_STG_CMD_OPCODE = 3109,
    HCI_WR_VOICE_STG_CMD_OPCODE = 3110,
    HCI_RD_AUTO_FLUSH_TO_CMD_OPCODE = 3111,
    HCI_WR_AUTO_FLUSH_TO_CMD_OPCODE = 3112,
    HCI_RD_NB_BDCST_RETX_CMD_OPCODE = 3113,
    HCI_WR_NB_BDCST_RETX_CMD_OPCODE = 3114,
    HCI_RD_HOLD_MODE_ACTIVITY_CMD_OPCODE = 3115,
    HCI_WR_HOLD_MODE_ACTIVITY_CMD_OPCODE = 3116,
    HCI_RD_TX_PWR_LVL_CMD_OPCODE = 3117,
    HCI_RD_SYNC_FLOW_CTRL_EN_CMD_OPCODE = 3118,
    HCI_WR_SYNC_FLOW_CTRL_EN_CMD_OPCODE = 3119,
    HCI_SET_CTRL_TO_HOST_FLOW_CTRL_CMD_OPCODE = 3121,
    HCI_HOST_BUF_SIZE_CMD_OPCODE = 3123,
    HCI_HOST_NB_CMP_PKTS_CMD_OPCODE = 3125,
    HCI_RD_LINK_SUPV_TO_CMD_OPCODE = 3126,
    HCI_WR_LINK_SUPV_TO_CMD_OPCODE = 3127,
    HCI_RD_NB_SUPP_IAC_CMD_OPCODE = 3128,
    HCI_RD_CURR_IAC_LAP_CMD_OPCODE = 3129,
    HCI_WR_CURR_IAC_LAP_CMD_OPCODE = 3130,
    HCI_SET_AFH_HOST_CH_CLASS_CMD_OPCODE = 3135,
    HCI_RD_INQ_SCAN_TYPE_CMD_OPCODE = 3138,
    HCI_WR_INQ_SCAN_TYPE_CMD_OPCODE = 3139,
    HCI_RD_INQ_MODE_CMD_OPCODE = 3140,
    HCI_WR_INQ_MODE_CMD_OPCODE = 3141,
    HCI_RD_PAGE_SCAN_TYPE_CMD_OPCODE = 3142,
    HCI_WR_PAGE_SCAN_TYPE_CMD_OPCODE = 3143,
    HCI_RD_AFH_CH_ASSESS_MODE_CMD_OPCODE = 3144,
    HCI_WR_AFH_CH_ASSESS_MODE_CMD_OPCODE = 3145,
    HCI_RD_EXT_INQ_RSP_CMD_OPCODE = 3153,
    HCI_WR_EXT_INQ_RSP_CMD_OPCODE = 3154,
    HCI_REFRESH_ENC_KEY_CMD_OPCODE = 3155,
    HCI_RD_SP_MODE_CMD_OPCODE = 3157,
    HCI_WR_SP_MODE_CMD_OPCODE = 3158,
    HCI_RD_LOC_OOB_DATA_CMD_OPCODE = 3159,
    HCI_RD_INQ_RSP_TX_PWR_LVL_CMD_OPCODE = 3160,
    HCI_WR_INQ_TX_PWR_LVL_CMD_OPCODE = 3161,
    HCI_RD_DFT_ERR_DATA_REP_CMD_OPCODE = 3162,
    HCI_WR_DFT_ERR_DATA_REP_CMD_OPCODE = 3163,
    HCI_ENH_FLUSH_CMD_OPCODE = 3167,
    HCI_SEND_KEYPRESS_NOTIF_CMD_OPCODE = 3168,
    HCI_SET_EVT_MASK_PAGE_2_CMD_OPCODE = 3171,
    HCI_RD_FLOW_CNTL_MODE_CMD_OPCODE = 3174,
    HCI_WR_FLOW_CNTL_MODE_CMD_OPCODE = 3175,
    HCI_RD_ENH_TX_PWR_LVL_CMD_OPCODE = 3176,
    HCI_RD_LE_HOST_SUPP_CMD_OPCODE = 3180,
    HCI_WR_LE_HOST_SUPP_CMD_OPCODE = 3181,
    HCI_SET_MWS_CHANNEL_PARAMS_CMD_OPCODE = 3182,
    HCI_SET_EXTERNAL_FRAME_CONFIG_CMD_OPCODE = 3183,
    HCI_SET_MWS_SIGNALING_CMD_OPCODE = 3184,
    HCI_SET_MWS_TRANSPORT_LAYER_CMD_OPCODE = 3185,
    HCI_SET_MWS_SCAN_FREQ_TABLE_CMD_OPCODE = 3186,
    HCI_SET_MWS_PATTERN_CONFIG_CMD_OPCODE = 3187,
    HCI_SET_RES_LT_ADDR_CMD_OPCODE = 3188,
    HCI_DEL_RES_LT_ADDR_CMD_OPCODE = 3189,
    HCI_SET_CON_SLV_BCST_DATA_CMD_OPCODE = 3190,
    HCI_RD_SYNC_TRAIN_PARAM_CMD_OPCODE = 3191,
    HCI_WR_SYNC_TRAIN_PARAM_CMD_OPCODE = 3192,
    HCI_RD_SEC_CON_HOST_SUPP_CMD_OPCODE = 3193,
    HCI_WR_SEC_CON_HOST_SUPP_CMD_OPCODE = 3194,
    HCI_RD_AUTH_PAYL_TO_CMD_OPCODE = 3195,
    HCI_WR_AUTH_PAYL_TO_CMD_OPCODE = 3196,
    HCI_RD_LOC_OOB_EXT_DATA_CMD_OPCODE = 3197,
    HCI_RD_EXT_PAGE_TO_CMD_OPCODE = 3198,
    HCI_WR_EXT_PAGE_TO_CMD_OPCODE = 3199,
    HCI_RD_EXT_INQ_LEN_CMD_OPCODE = 3200,
    HCI_WR_EXT_INQ_LEN_CMD_OPCODE = 3201,
    HCI_RD_LOCAL_VER_INFO_CMD_OPCODE = 4097,
    HCI_RD_LOCAL_SUPP_CMDS_CMD_OPCODE = 4098,
    HCI_RD_LOCAL_SUPP_FEATS_CMD_OPCODE = 4099,
    HCI_RD_LOCAL_EXT_FEATS_CMD_OPCODE = 4100,
    HCI_RD_BUFF_SIZE_CMD_OPCODE = 4101,
    HCI_RD_BD_ADDR_CMD_OPCODE = 4105,
    HCI_RD_LOCAL_SUPP_CODECS_CMD_OPCODE = 4107,
    HCI_RD_FAIL_CONTACT_CNT_CMD_OPCODE = 5121,
    HCI_RST_FAIL_CONTACT_CNT_CMD_OPCODE = 5122,
    HCI_RD_LINK_QUAL_CMD_OPCODE = 5123,
    HCI_RD_RSSI_CMD_OPCODE = 5125,
    HCI_RD_AFH_CH_MAP_CMD_OPCODE = 5126,
    HCI_RD_CLK_CMD_OPCODE = 5127,
    HCI_RD_ENC_KEY_SIZE_CMD_OPCODE = 5128,
    HCI_GET_MWS_TRANSPORT_LAYER_CONFIG_CMD_OPCODE = 5132,
    HCI_RD_LOOPBACK_MODE_CMD_OPCODE = 6145,
    HCI_WR_LOOPBACK_MODE_CMD_OPCODE = 6146,
    HCI_EN_DUT_MODE_CMD_OPCODE = 6147,
    HCI_WR_SP_DBG_MODE_CMD_OPCODE = 6148,
    HCI_WR_SEC_CON_TEST_MODE_CMD_OPCODE = 6154,
    HCI_LE_SET_EVT_MASK_CMD_OPCODE = 8193,
    HCI_LE_RD_BUFF_SIZE_CMD_OPCODE = 8194,
    HCI_LE_RD_LOCAL_SUPP_FEATS_CMD_OPCODE = 8195,
    HCI_LE_SET_RAND_ADDR_CMD_OPCODE = 8197,
    HCI_LE_SET_ADV_PARAM_CMD_OPCODE = 8198,
    HCI_LE_RD_ADV_CHNL_TX_PW_CMD_OPCODE = 8199,
    HCI_LE_SET_ADV_DATA_CMD_OPCODE = 8200,
    HCI_LE_SET_SCAN_RSP_DATA_CMD_OPCODE = 8201,
    HCI_LE_SET_ADV_EN_CMD_OPCODE = 8202,
    HCI_LE_SET_SCAN_PARAM_CMD_OPCODE = 8203,
    HCI_LE_SET_SCAN_EN_CMD_OPCODE = 8204,
    HCI_LE_CREATE_CON_CMD_OPCODE = 8205,
    HCI_LE_CREATE_CON_CANCEL_CMD_OPCODE = 8206,
    HCI_LE_RD_WLST_SIZE_CMD_OPCODE = 8207,
    HCI_LE_CLEAR_WLST_CMD_OPCODE = 8208,
    HCI_LE_ADD_DEV_TO_WLST_CMD_OPCODE = 8209,
    HCI_LE_RMV_DEV_FROM_WLST_CMD_OPCODE = 8210,
    HCI_LE_CON_UPDATE_CMD_OPCODE = 8211,
    HCI_LE_SET_HOST_CH_CLASS_CMD_OPCODE = 8212,
    HCI_LE_RD_CHNL_MAP_CMD_OPCODE = 8213,
    HCI_LE_RD_REM_USED_FEATS_CMD_OPCODE = 8214,
    HCI_LE_ENC_CMD_OPCODE = 8215,
    HCI_LE_RAND_CMD_OPCODE = 8216,
    HCI_LE_START_ENC_CMD_OPCODE = 8217,
    HCI_LE_LTK_REQ_REPLY_CMD_OPCODE = 8218,
    HCI_LE_LTK_REQ_NEG_REPLY_CMD_OPCODE = 8219,
    HCI_LE_RD_SUPP_STATES_CMD_OPCODE = 8220,
    HCI_LE_RX_TEST_CMD_OPCODE = 8221,
    HCI_LE_TX_TEST_CMD_OPCODE = 8222,
    HCI_LE_TEST_END_CMD_OPCODE = 8223,
    HCI_LE_REM_CON_PARAM_REQ_REPLY_CMD_OPCODE = 8224,
    HCI_LE_REM_CON_PARAM_REQ_NEG_REPLY_CMD_OPCODE = 8225,
    HCI_LE_SET_DATA_LEN_CMD_OPCODE = 8226,
    HCI_LE_RD_SUGGTED_DFT_DATA_LEN_CMD_OPCODE = 8227,
    HCI_LE_WR_SUGGTED_DFT_DATA_LEN_CMD_OPCODE = 8228,
    HCI_LE_RD_LOC_P256_PUB_KEY_CMD_OPCODE = 8229,
    HCI_LE_GEN_DHKEY_CMD_OPCODE = 8230,
    HCI_LE_ADD_DEV_TO_RSLV_LIST_CMD_OPCODE = 8231,
    HCI_LE_RMV_DEV_FROM_RSLV_LIST_CMD_OPCODE = 8232,
    HCI_LE_CLEAR_RSLV_LIST_CMD_OPCODE = 8233,
    HCI_LE_RD_RSLV_LIST_SIZE_CMD_OPCODE = 8234,
    HCI_LE_RD_PEER_RSLV_ADDR_CMD_OPCODE = 8235,
    HCI_LE_RD_LOC_RSLV_ADDR_CMD_OPCODE = 8236,
    HCI_LE_SET_ADDR_RESOL_EN_CMD_OPCODE = 8237,
    HCI_LE_SET_RSLV_PRIV_ADDR_TO_CMD_OPCODE = 8238,
    HCI_LE_RD_MAX_DATA_LEN_CMD_OPCODE = 8239,
    HCI_LE_RD_TRANS_PWR_CMD_OPCODE = 8267,
    HCI_LE_RD_RFPATH_CPS_CMD_OPCODE = 8268,
    HCI_LE_WR_RFPATH_CPS_CMD_OPCODE = 8269,
    HCI_DBG_RD_MEM_CMD_OPCODE = 64513,
    HCI_DBG_WR_MEM_CMD_OPCODE = 64514,
    HCI_DBG_DEL_PAR_CMD_OPCODE = 64515,
    HCI_DBG_ID_FLASH_CMD_OPCODE = 64517,
    HCI_DBG_ER_FLASH_CMD_OPCODE = 64518,
    HCI_DBG_WR_FLASH_CMD_OPCODE = 64519,
    HCI_DBG_RD_FLASH_CMD_OPCODE = 64520,
    HCI_DBG_RD_PAR_CMD_OPCODE = 64521,
    HCI_DBG_WR_PAR_CMD_OPCODE = 64522,
    HCI_DBG_WLAN_COEX_CMD_OPCODE = 64523,
    HCI_DBG_WLAN_COEXTST_SCEN_CMD_OPCODE = 64525,
    HCI_DBG_BT_SEND_LMP_CMD_OPCODE = 64526,
    HCI_DBG_SET_LOCAL_CLOCK_CMD_OPCODE = 64527,
    HCI_DBG_RD_KE_STATS_CMD_OPCODE = 64528,
    HCI_DBG_PLF_RESET_CMD_OPCODE = 64529,
    HCI_DBG_RD_MEM_INFO_CMD_OPCODE = 64530,
    HCI_DBG_HW_REG_RD_CMD_OPCODE = 64560,
    HCI_DBG_HW_REG_WR_CMD_OPCODE = 64561,
    HCI_DBG_SET_BD_ADDR_CMD_OPCODE = 64562,
    HCI_DBG_SET_TYPE_PUB_CMD_OPCODE = 64563,
    HCI_DBG_SET_TYPE_RAND_CMD_OPCODE = 64564,
    HCI_DBG_SET_CRC_CMD_OPCODE = 64565,
    HCI_DBG_LLCP_DISCARD_CMD_OPCODE = 64566,
    HCI_DBG_RESET_RX_CNT_CMD_OPCODE = 64567,
    HCI_DBG_RESET_TX_CNT_CMD_OPCODE = 64568,
    HCI_DBG_RF_REG_RD_CMD_OPCODE = 64569,
    HCI_DBG_RF_REG_WR_CMD_OPCODE = 64570,
    HCI_DBG_SET_TX_PW_CMD_OPCODE = 64571,
    HCI_DBG_RF_SWITCH_CLK_CMD_OPCODE = 64572,
    HCI_DBG_RF_WR_DATA_TX_CMD_OPCODE = 64573,
    HCI_DBG_RF_RD_DATA_RX_CMD_OPCODE = 64574,
    HCI_DBG_RF_CNTL_TX_CMD_OPCODE = 64575,
    HCI_DBG_RF_SYNC_P_CNTL_CMD_OPCODE = 64576,
    HCI_TESTER_SET_LE_PARAMS_CMD_OPCODE = 64576,
    HCI_DBG_WR_DLE_DFT_VALUE_CMD_OPCODE = 64577,
    HCI_DBG_BLE_TST_LLCP_PT_EN_CMD_OPCODE = 64578,
    HCI_DBG_BLE_TST_SEND_LLCP_CMD_OPCODE = 64579,
    HCI_VS_AUDIO_ALLOCATE_CMD_OPCODE = 64592,
    HCI_VS_AUDIO_CONFIGURE_CMD_OPCODE = 64593,
    HCI_VS_AUDIO_SET_MODE_CMD_OPCODE = 64594,
    HCI_VS_AUDIO_RESET_CMD_OPCODE = 64595,
    HCI_VS_AUDIO_SET_POINTER_CMD_OPCODE = 64596,
    HCI_VS_AUDIO_GET_BUFFER_RANGE_CMD_OPCODE = 64597,
    HCI_DBG_MWS_COEX_CMD_OPCODE = 64581,
    HCI_DBG_MWS_COEXTST_SCEN_CMD_OPCODE = 64582,
    HCI_SET_TX_PWR_CMD_OPCODE = 64609,
};
enum hci_evt_code {
    HCI_INQ_CMP_EVT_CODE = 1,
    HCI_INQ_RES_EVT_CODE = 2,
    HCI_CON_CMP_EVT_CODE = 3,
    HCI_CON_REQ_EVT_CODE = 4,
    HCI_DISC_CMP_EVT_CODE = 5,
    HCI_AUTH_CMP_EVT_CODE = 6,
    HCI_REM_NAME_REQ_CMP_EVT_CODE = 7,
    HCI_ENC_CHG_EVT_CODE = 8,
    HCI_CHG_CON_LK_CMP_EVT_CODE = 9,
    HCI_MASTER_LK_CMP_EVT_CODE = 10,
    HCI_RD_REM_SUPP_FEATS_CMP_EVT_CODE = 11,
    HCI_RD_REM_VER_INFO_CMP_EVT_CODE = 12,
    HCI_QOS_SETUP_CMP_EVT_CODE = 13,
    HCI_CMD_CMP_EVT_CODE = 14,
    HCI_CMD_STATUS_EVT_CODE = 15,
    HCI_HW_ERR_EVT_CODE = 16,
    HCI_FLUSH_OCCURRED_EVT_CODE = 17,
    HCI_ROLE_CHG_EVT_CODE = 18,
    HCI_NB_CMP_PKTS_EVT_CODE = 19,
    HCI_MODE_CHG_EVT_CODE = 20,
    HCI_RETURN_LINK_KEYS_EVT_CODE = 21,
    HCI_PIN_CODE_REQ_EVT_CODE = 22,
    HCI_LK_REQ_EVT_CODE = 23,
    HCI_LK_NOTIF_EVT_CODE = 24,
    HCI_DATA_BUF_OVFLW_EVT_CODE = 26,
    HCI_MAX_SLOT_CHG_EVT_CODE = 27,
    HCI_RD_CLK_OFF_CMP_EVT_CODE = 28,
    HCI_CON_PKT_TYPE_CHG_EVT_CODE = 29,
    HCI_QOS_VIOL_EVT_CODE = 30,
    HCI_PAGE_SCAN_REPET_MODE_CHG_EVT_CODE = 32,
    HCI_FLOW_SPEC_CMP_EVT_CODE = 33,
    HCI_INQ_RES_WITH_RSSI_EVT_CODE = 34,
    HCI_RD_REM_EXT_FEATS_CMP_EVT_CODE = 35,
    HCI_SYNC_CON_CMP_EVT_CODE = 44,
    HCI_SYNC_CON_CHG_EVT_CODE = 45,
    HCI_SNIFF_SUB_EVT_CODE = 46,
    HCI_EXT_INQ_RES_EVT_CODE = 47,
    HCI_ENC_KEY_REFRESH_CMP_EVT_CODE = 48,
    HCI_IO_CAP_REQ_EVT_CODE = 49,
    HCI_IO_CAP_RSP_EVT_CODE = 50,
    HCI_USER_CFM_REQ_EVT_CODE = 51,
    HCI_USER_PASSKEY_REQ_EVT_CODE = 52,
    HCI_REM_OOB_DATA_REQ_EVT_CODE = 53,
    HCI_SP_CMP_EVT_CODE = 54,
    HCI_LINK_SUPV_TO_CHG_EVT_CODE = 56,
    HCI_ENH_FLUSH_CMP_EVT_CODE = 57,
    HCI_USER_PASSKEY_NOTIF_EVT_CODE = 59,
    HCI_KEYPRESS_NOTIF_EVT_CODE = 60,
    HCI_REM_HOST_SUPP_FEATS_NOTIF_EVT_CODE = 61,
    HCI_LE_META_EVT_CODE = 62,
    HCI_MAX_EVT_MSK_PAGE_1_CODE = 64,
    HCI_SYNC_TRAIN_CMP_EVT_CODE = 79,
    HCI_SYNC_TRAIN_REC_EVT_CODE = 80,
    HCI_CON_SLV_BCST_REC_EVT_CODE = 81,
    HCI_CON_SLV_BCST_TO_EVT_CODE = 82,
    HCI_TRUNC_PAGE_CMP_EVT_CODE = 83,
    HCI_SLV_PAGE_RSP_TO_EVT_CODE = 84,
    HCI_CON_SLV_BCST_CH_MAP_CHG_EVT_CODE = 85,
    HCI_AUTH_PAYL_TO_EXP_EVT_CODE = 87,
    HCI_MAX_EVT_MSK_PAGE_2_CODE = 88,
    HCI_DBG_META_EVT_CODE = 255,
    HCI_LE_CON_CMP_EVT_SUBCODE = 1,
    HCI_LE_ADV_REPORT_EVT_SUBCODE = 2,
    HCI_LE_CON_UPDATE_CMP_EVT_SUBCODE = 3,
    HCI_LE_RD_REM_USED_FEATS_CMP_EVT_SUBCODE = 4,
    HCI_LE_LTK_REQUEST_EVT_SUBCODE = 5,
    HCI_LE_REM_CON_PARAM_REQ_EVT_SUBCODE = 6,
    HCI_LE_DATA_LEN_CHG_EVT_SUBCODE = 7,
    HCI_LE_RD_LOC_P256_PUB_KEY_CMP_EVT_SUBCODE = 8,
    HCI_LE_GEN_DHKEY_CMP_EVT_SUBCODE = 9,
    HCI_LE_ENH_CON_CMP_EVT_SUBCODE = 10,
    HCI_LE_DIR_ADV_REP_EVT_SUBCODE = 11,
    HCI_LE_CH_SEL_ALGO_EVT_SUBCODE = 20,
};
enum hci_evt_mask_page {
    HCI_PAGE_0 = 0,
    HCI_PAGE_1 = 1,
    HCI_PAGE_2 = 2,
    HCI_PAGE_DFT = 3,
};
struct hci_acl_data_rx {
    uint16_t conhdl; // +0
    uint8_t pb_bc_flag; // +2
    uint16_t length; // +4
    uint8_t rx_hdl; // +6
};
struct hci_acl_data_tx {
    uint16_t conhdl; // +0
    uint8_t pb_bc_flag; // +2
    uint16_t length; // +4
    struct em_buf_node *buf; // +8
};
struct hci_basic_conhdl_cmd {
    uint16_t conhdl; // +0
};
struct hci_disconnect_cmd {
    uint16_t conhdl; // +0
    uint8_t reason; // +2
};
struct hci_le_generate_dh_key_cmd {
    uint8_t public_key[64]; // +0
};
struct hci_set_evt_mask_cmd {
    struct evt_mask event_mask; // +0
};
struct hci_flush_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
};
struct hci_set_ctrl_to_host_flow_ctrl_cmd {
    uint8_t flow_cntl; // +0
};
struct hci_host_buf_size_cmd {
    uint16_t acl_pkt_len; // +0
    uint8_t sync_pkt_len; // +2
    uint16_t nb_acl_pkts; // +4
    uint16_t nb_sync_pkts; // +6
};
struct hci_host_nb_cmp_pkts_cmd {
    uint8_t nb_of_hdl; // +0
    uint16_t con_hdl[3]; // +2
    uint16_t nb_comp_pkt[3]; // +8
};
struct hci_rd_auth_payl_to_cmd {
    uint16_t conhdl; // +0
};
struct hci_rd_auth_payl_to_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    uint16_t auth_payl_to; // +4
};
struct hci_rd_local_ver_info_cmd_cmp_evt {
    uint8_t status; // +0
    uint8_t hci_ver; // +1
    uint16_t hci_rev; // +2
    uint8_t lmp_ver; // +4
    uint16_t manuf_name; // +6
    uint16_t lmp_subver; // +8
};
struct hci_rd_local_supp_cmds_cmd_cmp_evt {
    uint8_t status; // +0
    struct supp_cmds local_cmds; // +1
};
struct hci_rd_local_supp_feats_cmd_cmp_evt {
    uint8_t status; // +0
    struct features feats; // +1
};
struct hci_rd_buff_size_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t hc_data_pk_len; // +2
    uint8_t hc_sync_pk_len; // +4
    uint16_t hc_tot_nb_data_pkts; // +6
    uint16_t hc_tot_nb_sync_pkts; // +8
};
struct hci_rd_bd_addr_cmd_cmp_evt {
    uint8_t status; // +0
    struct bd_addr local_addr; // +1
};
struct hci_rd_rssi_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    int8_t rssi; // +4
};
struct hci_le_set_evt_mask_cmd {
    struct evt_mask le_mask; // +0
};
struct hci_le_set_rand_addr_cmd {
    struct bd_addr rand_addr; // +0
};
struct hci_le_set_adv_param_cmd {
    uint16_t adv_intv_min; // +0
    uint16_t adv_intv_max; // +2
    uint8_t adv_type; // +4
    uint8_t own_addr_type; // +5
    uint8_t peer_addr_type; // +6
    struct bd_addr peer_addr; // +7
    uint8_t adv_chnl_map; // +13
    uint8_t adv_filt_policy; // +14
};
struct hci_le_set_adv_data_cmd {
    uint8_t adv_data_len; // +0
    struct adv_data data; // +1
};
struct hci_le_set_scan_rsp_data_cmd {
    uint8_t scan_rsp_data_len; // +0
    struct scan_rsp_data data; // +1
};
struct hci_le_set_adv_en_cmd {
    uint8_t adv_en; // +0
};
struct hci_le_set_scan_param_cmd {
    uint8_t scan_type; // +0
    uint16_t scan_intv; // +2
    uint16_t scan_window; // +4
    uint8_t own_addr_type; // +6
    uint8_t scan_filt_policy; // +7
};
struct hci_le_set_scan_en_cmd {
    uint8_t scan_en; // +0
    uint8_t filter_duplic_en; // +1
};
struct hci_le_create_con_cmd {
    uint16_t scan_intv; // +0
    uint16_t scan_window; // +2
    uint8_t init_filt_policy; // +4
    uint8_t peer_addr_type; // +5
    struct bd_addr peer_addr; // +6
    uint8_t own_addr_type; // +12
    uint16_t con_intv_min; // +14
    uint16_t con_intv_max; // +16
    uint16_t con_latency; // +18
    uint16_t superv_to; // +20
    uint16_t ce_len_min; // +22
    uint16_t ce_len_max; // +24
};
struct hci_le_wr_rfpath_cps_cmd {
    uint16_t rf_txpath_compensation_value; // +0
    uint16_t rf_rxpath_compensation_value; // +2
};
struct hci_le_add_dev_to_wlst_cmd {
    uint8_t dev_addr_type; // +0
    struct bd_addr dev_addr; // +1
};
struct hci_le_set_host_ch_class_cmd {
    struct le_chnl_map chmap; // +0
};
struct hci_le_rx_test_cmd {
    uint8_t rx_freq; // +0
};
struct hci_le_tx_test_cmd {
    uint8_t tx_freq; // +0
    uint8_t test_data_len; // +1
    uint8_t pk_payload_type; // +2
};
struct hci_le_enc_cmd {
    struct ltk key; // +0
    uint8_t plain_data[16]; // +16
};
struct hci_le_con_update_cmd {
    uint16_t conhdl; // +0
    uint16_t con_intv_min; // +2
    uint16_t con_intv_max; // +4
    uint16_t con_latency; // +6
    uint16_t superv_to; // +8
    uint16_t ce_len_min; // +10
    uint16_t ce_len_max; // +12
};
struct hci_le_start_enc_cmd {
    uint16_t conhdl; // +0
    struct rand_nb nb; // +2
    uint16_t enc_div; // +10
    struct ltk ltk; // +12
};
struct hci_le_ltk_req_reply_cmd {
    uint16_t conhdl; // +0
    struct ltk ltk; // +2
};
struct hci_le_rem_con_param_req_reply_cmd {
    uint16_t conhdl; // +0
    uint16_t interval_min; // +2
    uint16_t interval_max; // +4
    uint16_t latency; // +6
    uint16_t timeout; // +8
    uint16_t min_ce_len; // +10
    uint16_t max_ce_len; // +12
};
struct hci_le_rem_con_param_req_neg_reply_cmd {
    uint16_t conhdl; // +0
    uint8_t reason; // +2
};
struct hci_le_set_data_len_cmd {
    uint16_t conhdl; // +0
    uint16_t tx_octets; // +2
    uint16_t tx_time; // +4
};
struct hci_le_wr_suggted_dft_data_len_cmd {
    uint16_t suggted_max_tx_octets; // +0
    uint16_t suggted_max_tx_time; // +2
};
struct hci_vsc_set_tx_pwr_cmd {
    int8_t power; // +0
};
struct hci_disc_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    uint8_t reason; // +4
};
struct hci_basic_cmd_cmp_evt {
    uint8_t status; // +0
};
struct hci_basic_conhdl_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
};
struct hci_cmd_stat_event {
    uint8_t status; // +0
};
struct hci_nb_cmp_pkts_evt {
    uint8_t nb_of_hdl; // +0
    uint16_t conhdl[1]; // +2
    uint16_t nb_comp_pkt[1]; // +4
};
struct hci_data_buf_ovflw_evt {
    uint8_t link_type; // +0
};
struct hci_enc_change_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    uint8_t enc_stat; // +4
};
struct hci_enc_key_ref_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
};
struct hci_auth_payl_to_exp_evt {
    uint16_t conhdl; // +0
};
struct hci_flush_occurred_evt {
    uint16_t conhdl; // +0
};
struct hci_rd_rem_ver_info_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    uint8_t vers; // +4
    uint16_t compid; // +6
    uint16_t subvers; // +8
};
struct hci_le_rd_local_supp_feats_cmd_cmp_evt {
    uint8_t status; // +0
    struct le_features feats; // +1
};
struct hci_rd_adv_chnl_tx_pw_cmd_cmp_evt {
    uint8_t status; // +0
    int8_t adv_tx_pw_lvl; // +1
};
struct hci_rd_wlst_size_cmd_cmp_evt {
    uint8_t status; // +0
    uint8_t wlst_size; // +1
};
struct hci_le_rd_buff_size_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t hc_data_pk_len; // +2
    uint8_t hc_tot_nb_data_pkts; // +4
};
struct hci_le_rand_cmd_cmp_evt {
    uint8_t status; // +0
    struct rand_nb nb; // +1
};
struct hci_rd_supp_states_cmd_cmp_evt {
    uint8_t status; // +0
    struct le_states states; // +1
};
struct hci_rd_trans_pwr_cmd_cmp_evt {
    uint8_t status; // +0
    char min_tx_pwr; // +1
    char max_tx_pwr; // +2
};
struct hci_rd_rfpath_cps_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t rf_txpath_compensation_value; // +2
    uint16_t rf_rxpath_compensation_value; // +4
};
struct hci_test_end_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t nb_packet_received; // +2
};
struct hci_le_enc_cmd_cmp_evt {
    uint8_t status; // +0
    uint8_t encrypted_data[16]; // +1
};
struct hci_le_adv_report_evt {
    uint8_t subcode; // +0
    uint8_t nb_reports; // +1
    struct adv_report adv_rep[1]; // +2
};
struct hci_le_rd_chnl_map_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    struct le_chnl_map ch_map; // +4
};
struct hci_le_rd_suggted_dft_data_len_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t suggted_max_tx_octets; // +2
    uint16_t suggted_max_tx_time; // +4
};
struct hci_le_rd_max_data_len_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t suppted_max_tx_octets; // +2
    uint16_t suppted_max_tx_time; // +4
    uint16_t suppted_max_rx_octets; // +6
    uint16_t suppted_max_rx_time; // +8
};
struct hci_wr_auth_payl_to_cmd {
    uint16_t conhdl; // +0
    uint16_t auth_payl_to; // +2
};
struct hci_wr_auth_payl_to_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
};
struct hci_le_con_update_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    uint16_t conhdl; // +2
    uint16_t con_interval; // +4
    uint16_t con_latency; // +6
    uint16_t sup_to; // +8
};
struct hci_le_con_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    uint16_t conhdl; // +2
    uint8_t role; // +4
    uint8_t peer_addr_type; // +5
    struct bd_addr peer_addr; // +6
    uint16_t con_interval; // +12
    uint16_t con_latency; // +14
    uint16_t sup_to; // +16
    uint8_t clk_accuracy; // +18
};
struct hci_le_rd_rem_used_feats_cmd {
    uint16_t conhdl; // +0
};
struct hci_le_rd_rem_used_feats_cmd_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    uint16_t conhdl; // +2
    struct le_features feats_used; // +4
};
struct hci_rd_tx_pwr_lvl_cmd {
    uint16_t conhdl; // +0
    uint8_t type; // +2
};
struct hci_rd_tx_pwr_lvl_cmd_cmp_evt {
    uint8_t status; // +0
    uint16_t conhdl; // +2
    uint8_t tx_pow_lvl; // +4
};
struct hci_rd_rem_ver_info_cmd {
    uint16_t conhdl; // +0
};
struct hci_le_rem_con_param_req_evt {
    uint8_t subcode; // +0
    uint16_t conhdl; // +2
    uint16_t interval_min; // +4
    uint16_t interval_max; // +6
    uint16_t latency; // +8
    uint16_t timeout; // +10
};
struct hci_le_enh_con_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    uint16_t conhdl; // +2
    uint8_t role; // +4
    uint8_t peer_addr_type; // +5
    struct bd_addr peer_addr; // +6
    struct bd_addr loc_rslv_priv_addr; // +12
    struct bd_addr peer_rslv_priv_addr; // +18
    uint16_t con_interval; // +24
    uint16_t con_latency; // +26
    uint16_t sup_to; // +28
    uint8_t clk_accuracy; // +30
};
struct hci_le_dir_adv_rep_evt {
    uint8_t subcode; // +0
    uint8_t nb_reports; // +1
    struct dir_adv_report adv_rep[1]; // +2
};
struct hci_le_ltk_request_evt {
    uint8_t subcode; // +0
    uint16_t conhdl; // +2
    struct rand_nb rand; // +4
    uint16_t ediv; // +12
};
struct hci_le_data_len_chg_evt {
    uint8_t subcode; // +0
    uint16_t conhdl; // +2
    uint16_t max_tx_octets; // +4
    uint16_t max_tx_time; // +6
    uint16_t max_rx_octets; // +8
    uint16_t max_rx_time; // +10
};
struct hci_le_generate_dhkey_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    uint8_t dh_key[32]; // +2
};
struct hci_le_generate_p256_public_key_cmp_evt {
    uint8_t subcode; // +0
    uint8_t status; // +1
    t_public_key public_key; // +2
};
struct hci_le_ch_sel_algo_evt {
    uint8_t subcode; // +0
    uint16_t conhdl; // +2
    uint8_t chSel; // +4
};

#endif // __CO_HCI_H__
