#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <signal.h>

#include "utils.h"
#include "sockets.h"

void sigint_handler(int signum);

// Global socket connection
socket_t* s;

int main(int argc, char *argv[])
{
    // Silence compiler warnings (in case later on we want to use them)
    (void) argc; 
    (void) argv;

    // Local addr for now
    unsigned short port = SERVER_PORT;
    char* addr = "127.0.0.1";
    // char* addr = NULL;

    s = socket_connect(port, addr);

    signal(SIGINT, sigint_handler);

    printf("Connected at %p\n", (void*) s);
    while(1)
    {
        // printf("Sending...\n");
        // Just hang for now
        socket_send(s, "Hi\n", 2, 0);
        // printf("RES: %d\n", res);
    }

    return 0;
}

void sigint_handler(int signum)
{
    // do cleanups here and free all existing variables and stuff
    log_out("Closing client on: %d...\n", socket_get_fd(s));
    socket_close(s);
    exit(signum);
}
