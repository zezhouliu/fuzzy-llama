
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

/**
 requires valid_vector(sockets);
 */
pollsocket_t* pollsocket_create(vector* sockets){

    if (sockets == NULL){
        return NULL;
    }

    size_t num_sockets = vector_count(sockets);

    // Validate all sockets before adding
    unsigned int valid_count = 0;
    size_t valid_indices[num_sockets];

    for (size_t i = 0; i < num_sockets; ++i){
        socket_t* s = vector_get(sockets, i);
        sstatus_t socket_status = socket_get_status(s);

        if (socket_status == SOCKET_OPEN)
        {
            valid_indices[valid_count] = i;
            ++valid_count;
        }
    }

    // Create a pollsocket_t* with valid descriptors
    pollsocket_t* ps = calloc(1, sizeof(pollsocket_t));
    if (ps == NULL){
        log_error("%s, %d: Could not malloc for pollsocket_t\n", __func__, __LINE__);
        return NULL;
    }


    // Track the count and sockets vector
    ps->size = valid_count;
    ps->sockets = sockets;

    // Malloc valid_count number of pollfds
    ps->pfds = calloc(valid_count, sizeof(struct pollfd));

    for (unsigned int i = 0; i < valid_count; ++i){
        unsigned int idx = valid_indices[i];

        // Match corresponding socket
        socket_t* s = vector_get(sockets, idx);
        (ps->pfds[i]).fd = socket_get_fd(s);
        (ps->pfds[i]).revents = 0;
    }

    return ps;
}

/*@
 requires \valid(ps);
 requires valid_vector(ps->sockets);
 requires \valid(ps->pfds);
*/
pollsocket_t* pollsocket_validate(pollsocket_t* ps){
    // Safety checks together
    if (!ps || !(ps->sockets) || !(ps->pfds)){
        return NULL;
    }

    // validate all the sockets (that they're valid)
    vector* sockets = ps->sockets;
    long num_sockets = vector_count(sockets);

    // Validate all sockets before adding
    unsigned int invalid_count = 0;
    long invalid_indices[num_sockets];

    for (long i = 0; i < num_sockets; ++i){
        socket_t* s = vector_get(sockets, i);
        sstatus_t socket_status = socket_get_status(s);

        if (socket_status != SOCKET_OPEN) {
            invalid_indices[invalid_count] = i;
            ++invalid_count;
        }
    }

    // Remove all the invalid indices, going from high->low
    for (unsigned int i = 0; i < invalid_count; ++i)
    {
        unsigned int idx = invalid_indices[invalid_count - i - 1];
        printf("[D]: %d\n", socket_get_fd(vector_get(sockets, idx)));
        vector_delete(sockets, idx);
    }

    unsigned int valid_count = num_sockets - invalid_count;
    // If the size is different from the previous size, we want
    // to malloc to resize the number of pfds
    if (ps->size != valid_count) {
        free(ps->pfds);
        ps->pfds = calloc(valid_count, sizeof(struct pollfd));
        ps->size = valid_count;
    }

    for (unsigned int i = 0; i < valid_count; ++i){
        unsigned int idx = i;

        // Match corresponding socket
        socket_t* s = vector_get(sockets, idx);
        (ps->pfds[i]).fd = socket_get_fd(s);
        (ps->pfds[i]).revents = 0;

        // First one is ALWAYS the listener (since its the accepter) ,
        // else everyone else is both listener and reader
        if (i == 0){
            (ps->pfds[i]).events = POLLIN;
        } else {
            (ps->pfds[i]).events = POLLIN;
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
int poll_sockets(pollsocket_t* ps, int timeout){

    // if valid pollsockets and count > 0
    if (!ps){
        log_error("%s, %d: Error invalid ufds\n", __func__, __LINE__);
        return -1;
    }

    pollsocket_validate(ps);

    int result = 0;

    printf("Polling on...\n");

    for (unsigned i = 0; i < ps->size; ++i)
    {
        printf("    S(%d)\n", ps->pfds[i].fd);
    }

    result = poll (ps->pfds, ps->size, timeout);
    return result;
}

vector* poll_response(pollsocket_t* ps)
{
    if (ps == NULL)
    {
        log_error("%s, %d: Error invalid ps\n", __func__, __LINE__);
        return NULL;
    }
    vector* sockets = ps->sockets;
    struct pollfd* pfds = ps->pfds;
    if (sockets == NULL || pfds == NULL)
    {
        return NULL;
    }

    // Track all the sockets that need to be handled
    long int num_responses = 0;
    for (unsigned i = 0; i < ps->size; ++i)
    {
        if (pfds[i].revents != 0)
        {
            ++num_responses;
        }
    }

    vector* response_sockets = vector_create_with_size(num_responses);

    // Iterate through all of the sockets and check which ones are valid
    for (unsigned i = 0; i < ps->size; ++i)
    {
        // Only handle sockets that have a return event
        if (pfds[i].revents == 0)
        {
            continue;
        }

        if (pfds[i].revents == POLLERR)
        {
            log_out("POLLING ERROR on S(%d)\n", pfds[i].fd);
            continue;
        }

        socket_t* s = vector_get(sockets, i);

        // Only handle the socket if it's valid
        if (s != NULL && socket_get_status(s) == SOCKET_OPEN)
        {
            vector_push(response_sockets, s);
        }
    }

    return response_sockets;
}