/**
 * events.h
 *
 * events functionality
 */

#pragma once

#include <poll.h>
#include "utils.h"
#include "sockets.h"

typedef struct pollsocket_
{
	socket_t* s;
	pollfd pfd;
} pollsocket_t;