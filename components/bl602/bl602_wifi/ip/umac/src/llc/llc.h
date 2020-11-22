
typedef struct llc_snap llc_snap, *llc_snap;

typedef ushort uint16_t;

struct llc_snap {
    uint16_t dsap_ssap;
    uint16_t control_oui0;
    uint16_t oui1_2;
    uint16_t proto_id;
};

typedef struct llc_snap_short llc_snap_short, *llc_snap_short;

struct llc_snap_short {
    uint16_t dsap_ssap;
    uint16_t control_oui0;
    uint16_t oui1_2;
};

