#include "socket-systems.h"

/*@
    behavior null:
        assumes !\valid(socket) || length <= 0 || !\valid((char*)buffer + (0..length-1));
        assigns \nothing;
        ensures \result == 0;
    behavior valid_open:
        assumes \valid(socket) && length > 0 && \valid((char*) buffer + (0..length-1));
        assumes socket->status == SOCKET_OPEN;
        assigns ((char*) buffer)[0..length-1];
        ensures \result == length;
    behavior valid_closed:
        assumes \valid(socket) && length > 0 && \valid((char*) buffer + (0..length-1));
        assumes socket->status != SOCKET_OPEN;
        assigns ((char*) buffer)[0..length-1];
        ensures \result == 0;

    complete behaviors null, valid_open, valid_closed;
    disjoint behaviors null, valid_open, valid_closed;
*/
ssize_t io_recv(socket_t* socket, void* buffer, size_t length, int flags)
{
    if (socket && buffer && socket_get_status(socket) == SOCKET_OPEN)
    {
        return recv (socket_get_fd(socket), buffer, length, flags);
    }

    return 0;

}

/*@
    behavior null:
        assumes !\valid(socket) || length <= 0 || !\valid((char*)buffer + (0..length-1));
        assigns \nothing;
        ensures \result == 0;
    behavior valid_open:
        assumes \valid(socket) && length > 0 && \valid((char*) buffer + (0..length-1));
        assumes socket->status == SOCKET_OPEN;
        assigns \nothing;
        ensures \result == length;
    behavior valid_closed:
        assumes \valid(socket) && length > 0 && \valid((char*) buffer + (0..length-1));
        assumes socket->status != SOCKET_OPEN;
        assigns \nothing;
        ensures \result == 0;

    complete behaviors null, valid_open, valid_closed;
    disjoint behaviors null, valid_open, valid_closed;
*/
ssize_t io_send(socket_t* socket, const void* buffer, size_t length, int flags)
{
    if (socket && buffer && socket_get_status(socket) == SOCKET_OPEN)
    {
        return send (socket_get_fd(socket), buffer, length, flags);
    }

    return 0;
}

