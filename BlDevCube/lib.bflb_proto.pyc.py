# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_proto.py
import os, sys

def cli_proto_tx_11b(rate, short_preamble):
    b_rate = rate
    b_pre_type = 'b' if short_preamble == 1 else 'B'
    return b_pre_type + str(b_rate)


def cli_proto_tx_11g(rate, short_preamble):
    g_rate = rate
    g_pre_type = 'g' if short_preamble == 1 else 'G'
    return g_pre_type + str(g_rate)


def cli_proto_tx_11n(mcs, short_gi, mod_type, bw):
    gi = 'l'
    mod = 'm'
    bandwidth = '2'
    if short_gi == 'Short':
        gi = 's'
    elif short_gi == 'Long':
        gi = 'l'
    if mod_type == 'HT-MF':
        mod = 'm'
    elif mod_type == 'HT-GF':
        mod = 'g'
    if bw == 'HT20':
        bandwidth = '2'
    elif bw == 'HT40':
        bandwidth = '4'
    return 'm' + gi + mod + bandwidth + str(mcs)


def cli_ble_tx_power(tx_power):
    return 'EP' + str(tx_power)


def cli_ble_tx_start(tx_channel, length_of_test_data, packet_payload):
    return 'ET' + str(tx_channel).upper() + str(length_of_test_data).upper() + str(packet_payload).upper()


def cli_ble_rx_start(rx_channel):
    return 'ER' + str(rx_channel).upper()


def cli_ble_stop():
    return 'EE'


def cli_proto_capcode(vale):
    return 'x' + str(vale)


def cli_proto_mfgmode(vale):
    return 'M' + str(vale)


def cli_proto_channel_setting(channel):
    return 'c' + str(channel)


def cli_proto_tx_power_setting(dbm):
    return 'p' + str(dbm)


def cli_proto_save_power_setting(ch, dbm):
    return 'SFPD' + str(ch) + ',' + str(dbm)


def cli_proto_read_power_setting(dbm):
    return 'RFPD' + str(dbm)


def cli_proto_tx_duty_setting(duty):
    return 'd' + str(duty)


def cli_proto_tx_len_setting(len):
    return 'l' + str(len)


def cli_proto_freq_setting(tick):
    return 'f' + str(tick)


def cli_proto_log_setting(enable):
    return 'a:d' + str(enable)


def cli_proto_wakeup_keep_time_setting(time_ms):
    return 'a:w' + str(time_ms)


def cli_proto_hbn(time_sec):
    return 'hr' + str(time_sec)


def cli_proto_pds(dtim, exit_cnt):
    return 's:' + str(dtim) + str(exit_cnt)


def cli_proto_pds_forever():
    return 'sa'


def cli_proto_version_get():
    return 'y:v'


def cli_proto_build_date_get():
    return 'y:d'


def cli_proto_power_get():
    return 'y:p'


def cli_proto_duty_get():
    return 'y:i'


def cli_proto_channel_get():
    return 'y:c'


def cli_proto_tx_status_get():
    return 'y:t'


def cli_proto_freq_get():
    return 'y:f'


def cli_proto_capcode_get():
    return 'y:x'


def cli_proto_mfgmode_get():
    return 'y:M'


def cli_tx_enable():
    return 't1'


def cli_tx_disable():
    return 't0'


def cli_rx_start():
    return 'r:s'


def cli_rx_stop():
    return 'r:p'


def cli_rx_sen_get():
    return 'r:g'
# okay decompiling lib.bflb_proto.pyc
