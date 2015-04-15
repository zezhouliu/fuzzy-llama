
#include "events.h"

/**
 * poll_sockets(ufds, nfds, timeout)
 *
 * @Brief: Wrapper for poll(struct pollfd *ufds,unsigned int nfds,int timeout)
 * 		Instead, we apply verification before we allow for polling
 * @param[in]: ufds, pollsocket_t* containing wrapper 
 * @param[in]: nfds, unsigned int count of fds
 * @param[in]: timeout, int
 */
poll_sockets(pollsocket_t* ufds, unsigned int nfds, int timeout)
{
	
	// if valid pollsockets and count > 0
	if (ufds && nfds > 0)
	{
		for (unsigned int i = 0; i < nfds; ++i)
		{
			pollsocket_t p = ufds[i];
			
		}
	}
}