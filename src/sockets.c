#include "sockets.h"

/** Private methods **/


/**
 * socket_startup(port)
 *
 * @Brief: Starts up a socket at a [opt] port
 * @param[in]: port, unsigned short containing port to connect to
 * @pre: port is not already occupied by another socket
 * @post: port will be occupied by this socket
 * @return: socket_t* wrapper containing socket info
 **/

/*@
   requires errno == 0;
   behavior null:
       ensures \result == \null && errno != 0;
   behavior success:
       assumes errno == 0;
       allocates \result;
       ensures \fresh{Old, Here}(\result, sizeof(socket_t));
       ensures \result->port == port && \result->status == SOCKET_OPEN;
  
   complete behaviors null, success;
   disjoint behaviors null, success;
  
 */
socket_t* socket_startup(unsigned short port)
{
    // Basic initialization routine
    socket_t * s = (socket_t *) calloc(1, sizeof(socket_t));
    if(!s)
    {
        //  First failure, we cannot allocate our structure due to lack of memory
        return NULL;
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
        log_error("%s:L %d: could not create socket", __func__, __LINE__);
        assert(0);
    }

    // Try to bind the socket
    if (bind(s->fd, (struct sockaddr *)&(s->name), sizeof(s->name)) < 0)
    {
        log_error("%s:L %d: could not bind socket", __func__, __LINE__);
        assert(0);
    }

    // Try to listen, with backlog of 5
    // NOTE: If s.fd is valid socket, this call CANNOT fail
    if (listen(s->fd, 5) < 0)
    {
        log_error("%s:L %d: could not listen to invalid socket: %d", __func__, __LINE__, s->fd);
        assert(0);
    }

    // If all succeeds, assign server status as OPEN
    s->status = SOCKET_OPEN;

    log_out("Server started at port: %d\n", s->port);

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
    assert(s->status == SOCKET_OPEN);

    // Create new socket wrapper for the connecting socket
    socket_t * new_socket = (socket_t *) calloc(1, sizeof(socket_t));
    if(!new_socket)
    {
        //  First failure, we cannot allocate our structure due to lack of memory
        return NULL;
    }

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
    assert(s->status == SOCKET_OPEN);

    return s->fd;
}

/**
 * socket_read_line(s, buf, size)
 *
 * @Brief: Read a line from a socket one character at a time.
 *  Terminates the string read with a null character.
 *  If any line terminators is read, the last character of the
 *  string will be a linefeed and the string will be terminated with a
 *  null character.
 *
 * @param[in]: s, socket_t* to read from
 * @param[in]: buf, char* to write into
 * @param[in]: size of buf
 * @return size read
 */
int socket_read_line(socket_t* s, char* buf, int size)
{
    // Track the counter
    char c = '\0';
    int i;
    // Read until it's the end of the buffer or endline
    for (i = 0; i < size - 1 && c != '\n'; ++i)
    {
        int n = recv(socket_get_fd(s), &c, 1, 0);
        if (n > 0)
        {
            if (c == '\r')
            {
                n = recv(socket_get_fd(s), &c, 1, MSG_PEEK);

                if ((n > 0) && (c == '\n'))
                {
                    recv(socket_get_fd(s), &c, 1, 0);
                }
                else
                {
                    c = '\n';
                }
            }
            buf[i] = c;
        }
        else
        {
            c = '\n';
        }
    }

    // Mark the end of the string
    buf[i] = '\0';

    return i;
}

/**
 * socket_send(s, buf, size, flags)
 *
 * @Brief: Wrapper for send()
 *
 * @param[in]: s, socket_t* to send through
 * @param[in]: buf, char* to send across socket
 * @param[in]: size, int of buffer
 * @param[in]: flags, int of flags to send
 * @return n success, these calls return the number of characters sent.
 *  On error, -1 is returned, and errno is set appropriately.
 */
ssize_t socket_send(socket_t* s, char* buf, int size, int flags)
{
    assert(s);
    assert(s->status == SOCKET_OPEN);

    return send(socket_get_fd(s), buf, size, flags);
}

/**
 * socket_recv(s, buf, size, flags)
 *
 * @Brief: Wrapper for recv()
 *
 * @param[in]: s, socket_t* to recv from
 * @param[in]: buf, char* to receive from socket
 * @param[in]: size, int of buffer
 * @param[in]: flags, int of flags to send
 * @return n success, these calls return the number of characters received.
 *  On error, -1 is returned, and errno is set appropriately.
 */
ssize_t socket_recv(socket_t* s, char* buf, int size, int flags)
{
    assert(s);
    assert(s->status == SOCKET_OPEN);

    return recv(socket_get_fd(s), buf, size, flags);
}

/**
 * socket_connect(port, addr)
 *
 * @Brief: Starts up a socket at a [opt] port
 * @param[in]: port, unsigned short containing port to connect to
 * @param[in]: addr, char* representing address to bind to
 * @pre: port is not already occupied by another socket
 * @post: port will be occupied by this socket
 * @return: socket_t* wrapper containing socket info
 **/
socket_t* socket_connect(unsigned short port, char* addr)
{
    // Basic initialization routine
    socket_t * s = (socket_t *) calloc(1, sizeof(socket_t));
    if(s == NULL)
    {
        //  First failure, we cannot allocate our structure due to lack of memory
        return NULL;
    }
    s->status = SOCKET_CLOSED;

    // 9734 default port
    s->port = port ? port : SERVER_PORT;
    s->name.sin_port = htons(s->port);

    s->name.sin_family = AF_INET;
    s->name.sin_addr.s_addr = addr ? inet_addr(addr) : htonl(INADDR_ANY);

    // Assign a file descriptor and validate
    s->fd = socket(AF_INET, SOCK_STREAM, 0);
    if (s->fd == -1)
    {
        log_error("%s:L %d: could not create socket\n", __func__, __LINE__);
        assert(0);
    }

    int result = connect(s->fd, (struct sockaddr *)&(s->name), sizeof(s->name));
    // Try to bind the socket
    if (result < 0)
    {
        log_error("%s:L %d: could not connect client, %d\n", __func__, __LINE__, result);
        assert(0);
    }

    // If all succeeds, assign server status as OPEN
    s->status = SOCKET_OPEN;

    return s;
}