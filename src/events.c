
#include "events.h"

#define POLL_TIMEOUT 10000
/**
 * pollsocket_create(sockets)
 *
 * @Brief: Creates pollsocket_t to handle socket polling
 * 
 * @param  sockets, vector* containing socket_t*
 * @post:  all socket_t* contained contain valid ufds
 * @return pollsocket_t* wrapper for socket
 */
pollsocket_t* pollsocket_create(vector* sockets)
{

    long num_sockets = vector_count(sockets);

    // Validate all sockets before adding 
    unsigned int valid_count = 0;
    long valid_indices[num_sockets];

    for (long i = 0; i < num_sockets; ++i)
    {
        socket_t* s = vector_get(sockets, i);
        sstatus_t socket_status = socket_get_status(s);

        if (socket_status == SOCKET_OPEN)
        {
            valid_indices[valid_count] = i;
            ++valid_count;
        }
    }

    // Create a pollsocket_t* with valid descriptors
    pollsocket_t* ps = (pollsocket_t *) malloc(sizeof(pollsocket_t));
    if (!ps)
    {
        log_error("%s, %d: Could not malloc for pollsocket_t\n", __func__, __LINE__);       
    }

    // Track the count
    ps->size = valid_count;

    // Malloc valid_count number of pollfds
    ps->pfds = malloc(sizeof(struct pollfd) * valid_count);

    for (unsigned int i = 0; i < valid_count; ++i)
    {
        unsigned int idx = valid_indices[i];

        // Match corresponding socket
        socket_t* s = vector_get(sockets, idx);
        (ps->pfds[i]).fd = socket_get_fd(s);
    }

    return ps;
}

pollsocket_t* pollsocket_validate(pollsocket_t* ps)
{
    // Safety checks together
    if (!ps || !(ps->sockets) || !(ps->pfds))
    {
        return NULL;
    }

    // validate all the sockets (that they're valid)
    vector* sockets = ps->sockets;
    long num_sockets = vector_count(sockets);

    // Validate all sockets before adding 
    unsigned int valid_count = 0;
    long valid_indices[num_sockets];

    for (long i = 0; i < num_sockets; ++i)
    {
        socket_t* s = vector_get(sockets, i);
        sstatus_t socket_status = socket_get_status(s);

        if (socket_status == SOCKET_OPEN)
        {
            valid_indices[valid_count] = i;
            ++valid_count;
        }
    }

    // If the size is different from the previous size, we want
    // to malloc to resize the number of pfds
    if (ps->size != valid_count)
    {
        free(ps->pfds);
        ps->pfds = malloc(sizeof(struct pollfd) * valid_count);
    }
    
    for (unsigned int i = 0; i < valid_count; ++i)
    {
        unsigned int idx = valid_indices[i];

        // Match corresponding socket
        socket_t* s = vector_get(sockets, idx);
        (ps->pfds[i]).fd = socket_get_fd(s);

        // First one is ALWAYS the listener (since its the accepter) , 
        // else everyone else is both listener and reader
        if (i == 0)
        {
            (ps->pfds[i]).events = POLLIN;
        }
        else
        {
            (ps->pfds[i]).events = POLLIN | POLLOUT;
        }
    }

    return ps;

}

/**
 * poll_sockets(ufds, nfds, timeout)
 *
 * @Brief: Wrapper for poll(struct pollfd *ufds,unsigned int nfds,int timeout)
 *      Instead, we apply verification before we allow for polling
 * @param[in]: ufds, pollsocket_t* containing wrapper 
 * @param[in]: nfds, unsigned int count of fds
 * @param[in]: timeout, int
 */
int poll_sockets(pollsocket_t* ps, int timeout)
{

    // if valid pollsockets and count > 0
    if (!ps)
    {
        log_error("%s, %d: Error invalid ufds\n", __func__, __LINE__);
        return -1;
    }
    
    pollsocket_validate(ps);


    int result = 0;

    printf("Polling on...\n");
    
    for (unsigned i = 0; i < ps->size; ++i)
    {
        printf("%d\n", ps->pfds[i].fd);
    }
    result = poll (ps->pfds, ps->size, timeout);

    return result;
}