#include "socket-systems.h"

/*@
    requires length > 0;

    behavior invalid:
<<<<<<< HEAD
      assumes socket <= 0 || !\valid((char*)buffer + (0..length-1));
      assigns \nothing;
      ensures \result == -1;

    behavior valid_error:
			assumes socket > 0 && \valid((char*)buffer + (0..length-1));
			assigns errno;
			assigns ((char *) buffer)[0 .. length-1];
			ensures (0 < \result <= length) || (\result == -1 && errno != 0);
=======
      assumes socket < 0 || !\valid((char*)buffer + (0..length-1));
      assigns errno;
      ensures \result == -1;

    behavior valid_error:
		assumes socket >= 0 && \valid((char*)buffer + (0..length-1));
		assigns errno;
		assigns ((char *) buffer)[0 .. \result - 1];
		ensures (0 <= \result <= length) || (\result == -1 && errno != 0);
>>>>>>> f94204346f9adef2b835868333baaab74d58d996

    complete behaviors;
		disjoint behaviors;
*/
ssize_t
recv(int socket, void *buffer, size_t length, int flags);

<<<<<<< HEAD

=======
>>>>>>> f94204346f9adef2b835868333baaab74d58d996
/*@
 	requires length >= 0;
 	assigns errno;

 	behavior valid_error:
 		assumes sockfd > 0 && \valid((char *)buffer + (0..length-1));
		ensures (0 < \result <= length) || (\result == -1 && errno != 0);

 	behavior invalid:
 		assumes sockfd <= 0 || !\valid((char *) buffer + (0 .. length - 1));
 		ensures \result == -1;


  complete behaviors;
  disjoint behaviors;
*/
ssize_t send(int sockfd, const void * buffer, size_t length, int flags);


/*@
    requires \valid(socket);
    requires length > 0;
    requires \valid((char*)buffer + (0..length-1));

    behavior invalid:
        assumes socket->status != SOCKET_OPEN;
        assigns \nothing;
        ensures \result == 0;
    behavior valid_error:
        assumes socket->status == SOCKET_OPEN;
        ensures \result >= 0 || \result == -1;

    complete behaviors;
    disjoint behaviors;
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
    requires \valid(socket);
    requires length > 0;
    requires \valid((char*)buffer + (0..length-1));
    assigns \nothing;

    behavior invalid:
        assumes socket->status != SOCKET_OPEN;
        ensures \result == 0;
    behavior valid:
        assumes socket->status == SOCKET_OPEN;
        ensures \result == length;

    complete behaviors invalid, valid;
    disjoint behaviors invalid, valid;

*/
ssize_t io_send(socket_t* socket, const void* buffer, size_t length, int flags)
{
    if (socket && buffer && socket_get_status(socket) == SOCKET_OPEN)
    {
        return send (socket_get_fd(socket), buffer, length, flags);
    }

    return 0;
}

