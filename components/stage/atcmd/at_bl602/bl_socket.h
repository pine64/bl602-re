/**
* @file bl_socket.h
* Header file for BL602
*/
#ifndef __BL_SOCKET_H__
#define __BL_SOCKET_H__

struct server_arg {
    s16 port; // +0
    s32 protocol; // +4
};
typedef struct {
    u32 flag; // +0
    s16 port; // +4
    s32 protocol; // +8
    u32 auth_mode; // +12
    const char *cert; // +16
    const char *key; // +20
    const char *ca; // +24
    const char **alpn; // +28
    union {
        struct udp_pcb *udp;
        struct altcp_pcb *tcp;
        struct {
            struct altcp_pcb *pcb; // +0
            struct altcp_tls_config *config; // +4
        } tls;
    } pcb; // +32
} server_ctrl_t;
enum socket_state {
    SOCK_IDLE_CLOSE = 0,
    SOCK_SERVER_LISTENING = 1,
    SOCK_CLIENT_CONNECTING = 2,
    SOCK_CLIENT_CONNECTED = 3,
};
enum socket_type {
    SOCK_TYPE_TCP = 1,
    SOCK_TYPE_UDP = 2,
    SOCK_TYPE_TLS = 3,
};
enum auth_mode {
    NO_AUTH = 0,
    SERVER_AUTH_CERT_KEY = 1,
    CLIENT_AUTH_CA = 2,
    BOTH_AUTH = 3,
};
typedef struct {
    char ip[16]; // +0
    u32 port; // +16
    enum socket_type protocol; // +20
    enum auth_mode auth_mode; // +21
    const char *sni; // +24
    const char *ca; // +28
    const char *cert; // +32
    const char *key; // +36
    const char **alpn; // +40
    union {
        struct udp_pcb *udp;
        struct altcp_pcb *tcp;
        struct {
            struct altcp_pcb *pcb; // +0
            struct altcp_tls_config *config; // +4
        } tls;
    } pcb; // +44
    enum socket_state status; // +52
} connect_t;
typedef struct {
    s32 count; // +0
    connect_t connect[5]; // +4
} network_t;

#endif // __BL_SOCKET_H__
