
typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef char int8_t;

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

typedef struct scan_env_tag scan_env_tag, *scan_env_tag;

typedef struct hal_dma_desc_tag hal_dma_desc_tag, *hal_dma_desc_tag;

typedef struct scan_start_req scan_start_req, *scan_start_req;

typedef ulong uint32_t;

typedef uint16_t ke_task_id_t;

typedef bool _Bool;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct dma_desc dma_desc, *dma_desc;

void cb_dma_func_ptr(void * , int );
typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct mac_addr mac_addr, *mac_addr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct mac_addr {
    uint16_t array[3];
};

struct scan_start_req {
    struct scan_chan_tag chan[42];
    struct mac_ssid ssid[2];
    struct mac_addr bssid;
    undefined field_0x146;
    undefined field_0x147;
    uint32_t add_ies;
    uint16_t add_ie_len;
    uint8_t vif_idx;
    uint8_t chan_cnt;
    uint8_t ssid_cnt;
    _Bool no_cck;
    undefined field_0x152;
    undefined field_0x153;
};

struct hal_dma_desc_tag {
    struct co_list_hdr hdr;
    struct dma_desc * dma_desc;
    void (* cb)(void *, int);
    void * env;
};

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

struct scan_env_tag {
    struct hal_dma_desc_tag dma_desc;
    struct scan_start_req * param;
    uint32_t ds_ie;
    ke_task_id_t req_id;
    uint8_t chan_idx;
    _Bool abort;
};

void scan_ie_download(void);
void scan_init(void);
typedef struct scan_probe_req_ie_tag scan_probe_req_ie_tag, *scan_probe_req_ie_tag;

typedef struct tx_pbd tx_pbd, *tx_pbd;

struct tx_pbd {
    uint32_t upatterntx;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint32_t bufctrlinfo;
};

struct scan_probe_req_ie_tag {
    struct dma_desc dma_desc;
    struct tx_pbd pbd;
    uint32_t buf[50];
};

void scan_send_cancel_cfm(void);
