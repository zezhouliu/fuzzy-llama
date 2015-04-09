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
	behavior null:
		assumes !\valid(s);
		ensures \result == -1;
	behavior valid:
		assumes \valid(s);
		ensures \result > 0;

	complete behaviors null, valid;
	disjoint behaviors null, valid;
*/
sstatus_t socket_get_status(socket_t* s)
{
    if(s)
    {
    	return socket_get_status(s);
    }

    return -1;
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
	behavior null:
		assumes !\valid(s);
		ensures \result == -1;
	behavior valid:
		assumes \valid(s) && s->status == SOCKET_OPEN;
		ensures \result > 0;

	complete behaviors null, valid;
	disjoint behaviors null, valid;
*/
int socket_get_fd(socket_t* s)
{
    if(s && socket_get_status(s) == SOCKET_OPEN)
    {
        return s->fd;
    }

    return -1;
}

