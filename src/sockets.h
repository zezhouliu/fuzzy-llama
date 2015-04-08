/**
 * sockets.h
 *
 * @Brief: Sockets wrapper
 */

#ifndef __SOCKETS_H__
#define __SOCKETS_H__

#include "utils.h"
#include "socket-base.h"
#include "socket-systems.h"

// Public interface
socket_t* socket_startup(unsigned short port);
socket_t* socket_connect(unsigned short port, char* addr);
void socket_close(socket_t* s);
socket_t* socket_accept(socket_t* s);
int socket_read_line(socket_t* s, char* buf, int size);
ssize_t socket_send(socket_t* s, char* buf, int size, int flags);
ssize_t socket_recv(socket_t* s, char* buf, int size, int flags);

#endif /* __SOCKETS_H__ */
