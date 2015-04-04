#include "sockets.h"


/**
 * socket_startup()
 *
 * @Brief: Starts up a socket at a [opt] port
 * @param[in]: port, u_short containing port to connect to
 * @pre: port is not already occupied by another socket
 * @post: port will be occupied by this socket
 * @return: socket_t* wrapper containing socket info
 **/

/*@
 * ensures
 *
 *
 *
 */
socket_t* socket_startup(uint16_t port)
{
    // Basic initialization routine
    socket_t * s = (socket_t *) calloc(1, sizeof(socket_t));
	if(s == NULL){
		//First failure, we cannot allocate our structure due to lack of memory
		assert(false);
	}

    s->port = port;
    s->status = SOCKET_CLOSED;
    s->name.sin_family = AF_INET;
    s->name.sin_port = htons(s->port);
    s->name.sin_addr.s_addr = htonl(INADDR_ANY);

    // Assign a file descriptor and validate
    s->fd = socket(PF_INET, SOCK_STREAM, 0);
    if (s->fd == -1)
    {
        log_error(stderr, "%s:L %d: could not create socket", __func__, __LINE__);
        assert(0);
    }

    // Try to bind the socket
    if (bind(s->fd, (struct sockaddr *)&(s->name), sizeof(s->name)) < 0)
    {
        log_error(stderr, "%s:L %d: could not bind socket", __func__, __LINE__);
        assert(0);
    }

    // Check if dynamically allocating the port
    if (!port)
    {
        unsigned namelen = sizeof(s->name);
        if (getsockname(s->fd, (struct sockaddr *)&(s->name), &namelen) == -1)
        {
            log_error(stderr, "%s:L %d: could not get socket name", __func__, __LINE__);
            assert(0);
        }

        s->port = ntohs(s->name.sin_port);

    }

    // Try to listen, with backlog of 5
    // NOTE: If s.fd is valid socket, this call CANNOT fail
    if (listen(s->fd, 5) < 0)
    {
        log_error(stderr, "%s:L %d: could not listen to invalid socket: %d", __func__, __LINE__, s->fd);
        assert(0);
    }

    // If all succeeds, assign server status as OPEN
    s->status = SOCKET_OPEN;

    return s;
}

/**
* socket_close()
*
* @Brief: Closes the socket associated with s
* @param[in]: s, socket_t* to be closed
* @post: s.status = SOCKET_CLOSED
* @post: s is invalidated
* @return: void
**/
void socket_close(socket_t* s)
{
    // If open, then close
    if (s->status == SOCKET_OPEN)
    {
        close(s->fd);
    }

    s->status = SOCKET_CLOSED;

    // Should possibly free socket?
    // free(s);

    return;
}

/**
* socket_accept(s)
*
* @Brief: Accepts the first connection on the queue of pending connections from s
*   creates a new socket with the same socket type and protocol and address family 
*   as the specified socket.
*   Allocates a new file descriptor for that socket.
* @param[in]: s, socket_t* to accept a connection from
* @pre: s.status = SOCKET_OPEN
* @post: new_socket.status = SOCKET_OPEN
* @post: new_socket.fd != s.fd
* @return: void
**/
socket_t* socket_accept(socket_t* s)
{
    // Check preconditions
    assert(s.status == SOCKET_OPEN);

    // Create new socket wrapper for the connecting socket
    socket_t* new_socket = (socket_t *)malloc(sizeof(socket_t));
    
    unsigned client_name_len = sizeof(new_socket->name);
    new_socket->fd = accept(socket_get_fd(s), 
        (struct sockaddr *)&(new_socket->name), &(client_name_len));

    // Error?
    if (new_socket->fd == -1)
    {
        log_error("%s, %d: Could not create socket\n", __func__, __LINE__);
    }

    return new_socket;
}

/**
* socket_get_fd(s)
* 
* @Brief returns the file descriptor associated with s
* @param[in]: s, socket_t* 
* @pre: s is a valid socket_t* 
* @pre: s.status = SOCKET_OPEN
* return: int fd
**/
int socket_get_fd(socket_t* s)
{
    assert(s);
    assert(s.status == SOCKET_OPEN);

    return s->fd;
}