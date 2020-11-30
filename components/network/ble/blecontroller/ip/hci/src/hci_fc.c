/**
* @file hci_fc.c
* Source file for BL602
*/
#include "hci_fc.h"


struct host_set_fc {
    bool acl_flow_cntl_en;
 // +0
    uint16_t acl_pkt_len;
 // +2
    uint16_t acl_pkt_nb;
 // +4
    uint16_t curr_pkt_nb;
 // +6
};

struct counter_fc {
    uint16_t acl_pkt_sent;
 // +0
};

struct hci_fc_tag {
    struct host_set_fc host_set;
 // +0
    struct counter_fc cntr;
 // +8
};

struct hci_fc_tag hci_fc_env;

void hci_fc_acl_packet_sent(void);
void hci_fc_host_nb_acl_pkts_complete(uint16_t acl_pkt_nb);
uint16_t hci_fc_check_host_available_nb_acl_packets(void);




/** hci_fc_acl_packet_sent
 */
void hci_fc_acl_packet_sent(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_fc_host_nb_acl_pkts_complete
 */
void hci_fc_host_nb_acl_pkts_complete(uint16_t acl_pkt_nb)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_fc_check_host_available_nb_acl_packets
 */
uint16_t hci_fc_check_host_available_nb_acl_packets(void)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}
