/**
 * sockets.h
 *
 * @Brief: Sockets wrapper
 */

#ifndef __SOCKETS_H__
#define __SOCKETS_H__

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>

#include "utils.h"

// sstatus_t = socket status type
typedef enum {
    SOCKET_OPEN,
    SOCKET_CLOSED,
    SOCKET_UNKNOWN,
    SOCKET_INVALID
} sstatus_t;

// socket_t = our socket wrapper
typedef struct socket_ {
    int fd;
    sstatus_t status;
    struct sockaddr_in name;
    u_short port;
} socket_t;


// Public interface
socket_t* socket_startup(u_short port);
void socket_close(socket_t* s);

#endif /* __SOCKETS_H__ */
