#include <co_string.h>
#include <ke_task.h>

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



/** hci_fc_init
 */
void hci_fc_init(void)
{
	(*ble_memset_ptr)(&hci_fc_env, 0, sizeof(hci_fc_env));
}

/** hci_fc_acl_packet_sent
 */
void hci_fc_acl_packet_sent(void)
{
	if (hci_fc_env.host_set.acl_flow_cntl_en)
	{
		++hci_fc_env.cntr.acl_pkt_sent;
	}
}

/** hci_fc_host_nb_acl_pkts_complete
 */
void hci_fc_host_nb_acl_pkts_complete(uint16_t acl_pkt_nb)
{
	if (acl_pkt_nb < hci_fc_env.cntr.acl_pkt_sent)
	{
		hci_fc_env.cntr.acl_pkt_sent -= acl_pkt_nb;
	}
	else
	{
		hci_fc_env.cntr.acl_pkt_sent = 0;
	}
}

/** hci_fc_check_host_available_nb_acl_packets
 */
uint16_t hci_fc_check_host_available_nb_acl_packets(void)
{
	if (!hci_fc_env.host_set.acl_flow_cntl_en)
	{
		return 0xFFFF;
	}
	if (hci_fc_env.cntr.acl_pkt_sent < hci_fc_env.host_set.acl_pkt_nb)
	{
		return hci_fc_env.host_set.acl_pkt_nb - hci_fc_env.cntr.acl_pkt_sent;
	}
	return 0;
}

//TODO uint8_t hci_fc_acl_en(bool flow_enable)
//TODO uint8_t hci_fc_acl_buf_size_set(uint16_t acl_pkt_len,uint16_t nb_acl_pkts)
