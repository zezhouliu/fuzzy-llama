#include "socket-systems.h"

ssize_t io_recv(socket_t* socket, void* buffer, size_t length, int flags)
{
    assert(socket);
    assert(buffer);
    if (socket_get_status(socket) == SOCKET_OPEN)
    {
        return recv (socket_get_fd(socket), buffer, length, flags);
    }
    return 0;

}
ssize_t io_send(socket_t* socket, const void* buffer, size_t length, int flags)
{
    assert(socket);
    assert(buffer);
    if (socket_get_status(socket) == SOCKET_OPEN)
    {
        return send (socket_get_fd(socket), buffer, length, flags);
    }
    return 0;
}

