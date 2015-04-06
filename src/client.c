#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

#include "utils.h"
#include "sockets.h"

int main(int argc, char *argv[])
{
	// Silence compiler warnings (in case later on we want to use them)
	(void) argc; 
	(void) argv;

	// Local addr for now
	unsigned short port = 9734;
	char* addr = "127.0.0.1";

	socket_t* s = socket_connect(port, addr);

	printf("Connected at %p\n", (void*) s);
}
