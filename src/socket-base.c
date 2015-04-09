#include "socket-base.h"

/**
* socket_get_status(s)
*
* @Brief returns the status of s
* @param[in]: s, socket_t*
* @pre: s is a valid socket_t*
* return: sstatus_t representing status of s
**/
/*@
	requires \valid(s);
	assigns \nothing;
*/
sstatus_t socket_get_status(socket_t* s)
{
    if(!s)
    {
    	return SOCKET_INVALID;
    }

    return s->status;
}

/**
* socket_get_fd(s)
*
* @Brief returns the file descriptor associated with s
* @param[in]: s, socket_t*
* @pre: s is a valid socket_t*
* @pre: s.status = SOCKET_OPEN
* return: int fd if valid, else -1
**/

/*@
	requires \valid(s);

	behavior valid_closed:
		assumes \valid(s) && s->status != SOCKET_OPEN;
		assigns \nothing;
		ensures \result == -1;
	behavior valid_open:
		assumes \valid(s) && s->status == SOCKET_OPEN;
		assigns \nothing;

	complete behaviors valid_closed, valid_open;
	disjoint behaviors valid_closed, valid_open;
*/
int socket_get_fd(socket_t* s)
{
    if(s && s->status == SOCKET_OPEN)
    {
        return s->fd;
    }

    return -1;
}

