typedef struct ipc_a2e_msg ipc_a2e_msg, *ipc_a2e_msg;

typedef ulong uint32_t;

struct ipc_a2e_msg {
    uint32_t dummy_word;
    uint32_t msg[127];
};

typedef struct ipc_e2a_msg ipc_e2a_msg, *ipc_e2a_msg;

typedef ushort uint16_t;

typedef uint16_t u16_l;

typedef uint32_t u32_l;

struct ipc_e2a_msg {
    u16_l id;
    u16_l dummy_dest_id;
    u16_l dummy_src_id;
    u16_l param_len;
    u32_l param[245];
    u32_l pattern;
};

typedef struct ipc_shared_env_tag ipc_shared_env_tag, *ipc_shared_env_tag;

typedef struct txdesc_host txdesc_host, *txdesc_host;

typedef struct hostdesc hostdesc, *hostdesc;

typedef struct mac_addr mac_addr, *mac_addr;

struct mac_addr {
    u8_l array[6];
};

struct hostdesc {
    uint32_t pbuf_addr;
    u32_l packet_addr;
    u16_l packet_len;
    undefined field_0xa;
    undefined field_0xb;
    u32_l status_addr;
    struct mac_addr eth_dest_addr;
    struct mac_addr eth_src_addr;
    u16_l ethertype;
    u16_l pn[4];
    u16_l sn;
    u16_l timestamp;
    u8_l tid;
    u8_l vif_idx;
    u8_l staid;
    undefined field_0x2d;
    u16_l flags;
    u32_l pbuf_chained_ptr[4];
    u32_l pbuf_chained_len[4];
};

struct txdesc_host {
    uint32_t ready;
    struct hostdesc host;
    uint32_t pad_txdesc[55];
    uint32_t pad_buf[128];
};

struct ipc_shared_env_tag {
    struct ipc_a2e_msg msg_a2e_buf;
    uint32_t pattern_addr;
    struct txdesc_host txdesc0[4];
};

