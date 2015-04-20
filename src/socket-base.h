/**
 * socket-base.h
 *
 * @Brief: Base for socket wrapper
 */

#pragma once

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <netdb.h>

#include "utils.h"

// sstatus_t = socket status type
typedef enum {
    SOCKET_OPEN = 1,
    SOCKET_CLOSED = 2,
    SOCKET_INVALID = 3
} sstatus_t;

// socket_t = our socket wrapper
typedef struct socket_ {
    int fd;
    sstatus_t status;
    struct sockaddr_in name;
    unsigned short port;
} socket_t;

sstatus_t socket_get_status(socket_t* s);
int socket_get_fd(socket_t* s);
