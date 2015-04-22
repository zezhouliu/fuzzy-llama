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
  behavior null:
        assumes !is_allocable((unsigned int)sizeof(socket_t));
        ensures \result == \null && errno != 0;
  behavior success:
        assumes is_allocable((unsigned int)sizeof(socket_t));
        allocates \result;
        ensures \fresh{Old, Here}(\result, sizeof(socket_t));
        ensures (\result->port == port || port == 0) && \result->status == SOCKET_OPEN;
        ensures errno == 0;
        ensures (\result->fd >= 0);

    complete behaviors;
    disjoint behaviors;
*/
socket_t * socket_startup(unsigned short port)
{

    errno = 0;

    // Basic initialization routine
    socket_t * s = calloc(1, sizeof(socket_t));
    if(s == NULL)
    {
        // First failure, we cannot allocate our structure due to lack of memory
        // we should set errno to set failure
        errno = ENOMEM;
        return NULL;
    }

    // Mark our own port and socket status
    s->port = port;
    s->status = SOCKET_CLOSED;

    // Mark the socket
    // s->name.sin_family = AF_INET;
    // s->name.sin_port = htons(s->port);
    // s->name.sin_addr.s_addr = htonl(INADDR_ANY);

    // Instead of manually marking all of it, we use getaddryinfo
    struct addrinfo hints, *res;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    getaddrinfo("127.0.0.1", "8080", &hints, &res);

    // Assign a file descriptor and validate
    // s->fd = socket(PF_INET, SOCK_STREAM, 0);
    s->fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (s->fd < 0)
    {
        log_error("%s:L %d: could not create socket", __func__, __LINE__);
        goto failure;
    }

    // Set the socket as non-blocking
    // int result_nonblocking = fcntl(s->fd, F_SETFL, O_NONBLOCK);
    // if (result_nonblocking < 0)
    // {
    //     log_error("%s:L %d: could not set non-blocking\n", __func__, __LINE__);
    // }

    // Try to bind the socket
    // if (bind(s->fd, (struct sockaddr *)&(s->name), sizeof(s->name)) < 0)
    if (bind(s->fd, res->ai_addr, res->ai_addrlen) < 0)
    {
        log_error("%s:L %d: could not bind socket", __func__, __LINE__);
        goto failure;
    }

    // Try to listen, with backlog of 5
    // NOTE: If s.fd is valid socket, this call CANNOT fail
    if (listen(s->fd, 5) < 0)
    {
        log_error("%s:L %d: could not listen to invalid socket: %d", __func__, __LINE__, s->fd);
        goto failure;
    }

    // If all succeeds, assign server status as OPEN
    s->status = SOCKET_OPEN;

    log_out("Server: 127.0.0.1 @%d\n", s->port);

    return s;

    // Here we handle all error cases
    failure:
        log_out("Failure in socket_startup\n");
        if (s->fd >= 0)
        {
            close(s->fd);
        }
        free(s);

        return NULL;
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


/*@
    behavior open:
        assumes \valid(s) && s->status == SOCKET_OPEN;
        ensures s->status == SOCKET_CLOSED;
    behavior null:
        assumes s == \null;
        ensures errno == 0;
    behavior other:
        assumes \valid(s);
        assigns \nothing;
        ensures errno == 0;

    complete behaviors;
    disjoint behaviors;
*/
void socket_close(socket_t* s){

    if(!s)
    {
        errno = 1;
        return;
    }

    // If open, then close
    if (socket_get_status(s) == SOCKET_OPEN && socket_get_fd(s) >= 0)
    {
        close(s->fd);
        s->status = SOCKET_CLOSED;
    }

    // Should possibly free socket?
    // free(s);
    errno = 0;
    free(s);
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
    printf("socket_accept()\n");

    // Check preconditions
    assert(s->status == SOCKET_OPEN);

    // Create new socket wrapper for the connecting socket
    socket_t * new_socket = calloc(1, sizeof(socket_t));
    if(!new_socket)
    {
        //  First failure, we cannot allocate our structure due to lack of memory
        return NULL;
    }

    printf("server socket is... %d\n", socket_get_fd(s));

    struct sockaddr_storage their_addr;
    socklen_t addr_size = sizeof(their_addr);
    new_socket->fd = accept(socket_get_fd(s), (struct sockaddr *)&their_addr, &addr_size);

    // unsigned client_name_len = sizeof(new_socket->name);
    // new_socket->fd = accept(socket_get_fd(s),
    //     (struct sockaddr *)&(new_socket->name), &(client_name_len));

    // Error?
    if (new_socket->fd < 0)
    {
        log_error("%s, %d: Could not create socket\n", __func__, __LINE__);
        free(new_socket);
        return NULL;
    }

    // If everything is fine, mark socket as valid and open
    new_socket->status = SOCKET_OPEN;

    printf("Accepted @%d\n", new_socket->fd);

    return new_socket;
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

/*@
    requires \valid(s) && \valid(buf) && size > 0;
    requires \valid(buf + (0..size - 1));
        requires s->status == SOCKET_OPEN && s->fd >= 0;
    ensures \result > 0 && \result <= size;
*/
int socket_read_line(socket_t* s, char* buf, int size)
{
    // Track the counter
    char c = '\0';
    int i;
    // Read until it's the end of the buffer or endline
    for (i = 0; i < size - 1 && c != '\n'; ++i){
        int n = io_recv(s, &c, 1, 0);
        if (n > 0){
            if (c == '\r'){
                n = io_recv(s, &c, 1, MSG_PEEK);

                if ((n > 0) && (c == '\n')){
                    io_recv(s, &c, 1, 0);
                } else {
                    c = '\n';
                }
            }
            buf[i] = c;
        } else {
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

/*@
    requires \valid(s) && \valid(buf) && size > 0;
    requires \valid(buf + (0..size - 1));
        requires s->status == SOCKET_OPEN;
    assigns \nothing;
    ensures \result > 0 && \result == size;
*/
ssize_t socket_send(socket_t* s, char* buf, int size, int flags)
{
    assert(s);
    assert(s->status == SOCKET_OPEN);

    return io_send(s, buf, size, flags);
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

/*@
    requires \valid(s) && \valid(buf) && size > 0;
    requires \valid(buf + (0..size - 1));
    assigns buf[0..size-1];
    ensures \result > 0 && \result == size;
*/
ssize_t socket_recv(socket_t* s, char* buf, int size, int flags){
    assert(s);
    assert(s->status == SOCKET_OPEN);

    return io_recv(s, buf, size, flags);
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

 /*@
    behavior null_addr:
        requires !\valid(addr);
    behavior addr:
        requires \valid(addr);

    complete behaviors null_addr, addr;
    disjoint behaviors null_addr, addr;
*/
socket_t* socket_connect(unsigned short port, char* addr){
    (void) port;

    // Basic initialization routine
    socket_t * s = calloc(1, sizeof(socket_t));
    if(s == NULL)
    {
        //  First failure, we cannot allocate our structure due to lack of memory
        return NULL;
    }

    s->status = SOCKET_CLOSED;

    // New way of getting socket info using getaddrinfo
    struct addrinfo hints, *res;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    getaddrinfo(addr, "8080", &hints, &res);

    // 9734 default port
    // s->port = port ? port : SERVER_PORT;
    // printf("sport: %d\n", s->port);
    // s->name.sin_port = htons(s->port);
    // s->name.sin_addr.s_addr = inet_addr(addr);
    // s->name.sin_family = AF_INET;
    // inet_pton(AF_INET, addr, &(s->name.sin_addr));

    // Assign a file descriptor and validate
    // s->fd = socket(PF_INET, SOCK_STREAM, 0);

    s->fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (s->fd == -1)
    {
        log_error("%s:L %d: could not create socket\n", __func__, __LINE__);
        assert(0);
    }


    int result = connect(s->fd, res->ai_addr, res->ai_addrlen);
    // Try to bind the socket
    if (result < 0)
    {
        log_error("%s:L %d: could not connect client, %d\n", __func__, __LINE__, result);
        assert(0);
    }

    printf("Connected to 127.0.0.1 @%d\n", s->port);
    // If all succeeds, assign server status as OPEN
    s->status = SOCKET_OPEN;

    return s;
}
