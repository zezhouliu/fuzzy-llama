#include "socket-systems.h"

/*@
    requires length >= 0;

    behavior invalid:
        assumes socket < 0;
        assigns \nothing;
        ensures \result == -1;

    behavior valid_error:
		assumes socket >= 0;
	    ensures (0 <= \result <= length) || (\result == -1);

    complete behaviors invalid, valid_error;
    disjoint behaviors invalid, valid_error;
*/
ssize_t
recv(int socket, void *buffer, size_t length, int flags);

/*@
    requires length >= 0;
    assigns \nothing;

    behavior invalid:
        assumes sockfd < 0 || !\valid((char*)buffer + (0..length-1));
        ensures \result == -1;

    behavior valid_error:
		assumes sockfd >= 0 && \valid((char*)buffer + (0..length-1));
	    ensures (0 <= \result <= length) || (\result == -1);

    complete behaviors invalid, valid_error;
    disjoint behaviors invalid, valid_error;

*/
ssize_t send(int sockfd, const void * buffer, size_t length, int flags);


/*@
    requires \valid(socket);
    requires \valid((char *) buffer);
    requires length >= 0;

    behavior invalid:
        assumes socket->status != SOCKET_OPEN;
        assigns \nothing;
        ensures \result == 0;

    behavior valid_error_no_socket:
        assumes (socket->status == SOCKET_OPEN && (socket->fd < 0)); 
        ensures \result == -1;

    behavior valid_error:
        assumes socket->status == SOCKET_OPEN && (socket->fd >= 0); 
	    ensures \result <= length;

    disjoint behaviors invalid, valid_error_no_socket, valid_error;
*/
ssize_t io_recv(socket_t* socket, void* buffer, size_t length, int flags)
{
    if (socket->status != SOCKET_OPEN)
    {
        return 0;
    }

    if (socket->status == SOCKET_OPEN)
    {
        return recv (socket->fd, buffer, length, flags);
    }

    return 0;

}

/*@
    requires \valid(socket);
    requires \valid((char*)buffer + (0..length-1));
    requires length >= 0;
    assigns \nothing;

    behavior invalid:
        assumes socket->status != SOCKET_OPEN;
        ensures \result == 0;

    behavior valid_error_no_socket:
        assumes socket->status == SOCKET_OPEN && socket->fd < 0;
        ensures \result == -1;

    behavior valid_error:
        assumes socket->status == SOCKET_OPEN && socket->fd >= 0; 
	    ensures (0 <= \result <= length) || (\result == -1);

    disjoint behaviors invalid, valid_error_no_socket, valid_error;

*/
ssize_t io_send(socket_t* socket, const void* buffer, size_t length, int flags)
{
    if (socket->status != SOCKET_OPEN)
    {
        return 0;
    }

    if (socket->status == SOCKET_OPEN)
    {
        return send (socket->fd, buffer, length, flags);
    }

    return 0;
}

