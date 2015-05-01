/**
 * events.h
 *
 * events functionality
 */

#pragma once

#include <poll.h>
#include <sys/poll.h>
#include <poll.h>
#include "utils.h"
#include "vector.h"
#include "sockets.h"

typedef struct pollsocket_{
    vector* sockets;
    struct pollfd* pfds;
    unsigned int size;
} pollsocket_t;

pollsocket_t* pollsocket_create(vector* sockets);
pollsocket_t* pollsocket_validate(pollsocket_t* ps);
int poll_sockets(pollsocket_t* ps, int timeout);
