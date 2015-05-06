/* Minimal verified web server
 * CS260r Project
 * Adapted from tinyhttpd
 */

#include <unistd.h>
#include <ctype.h>
#include <strings.h>
#include <string.h>

#include <sys/socket.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <poll.h>

#include "utils.h"
#include "sockets.h"
#include "events.h"
#include "http-parser/http_parser.h"

#define ISspace(x) isspace((int)(x))

#define SERVER_STRING "Server: httpd/0.1.0\r\n"

// Buffer size defines (handle more elegantly later...)
#define BUF_SIZE 1024
#define MAX_LENGTH 255
#define MAX_PATH 512 

// Prototypes
void accept_request(socket_t*);
void bad_request(socket_t*);
void cat(socket_t*, FILE *);
void cat1(int client, FILE *resource);
void cannot_execute(socket_t*);
void error_die(const char *);
void execute_cgi(socket_t*, const char *, const char *, const char *);
void headers(socket_t*, const char *);
void headers1(int, const char *);
void not_found(socket_t*);
void serve_file(socket_t*, const char *);
void serve_file1(int client, const char *filename);
void unimplemented(socket_t*);
void accept_request1(int fd);

// Global to handle closing sockets
socket_t* server_sock;
socket_t* client_sock;


char* response_header (void)
{
    char* hd1 = "HTTP/1.0 200 OK\r\n";
    char* hd2 = SERVER_STRING;
    char* hd3 = "Content-Type: text/html\r\n";
    char* hd4 = "\r\n";

    int total_len = strlen(hd1) + strlen(hd2) + strlen(hd3) + strlen(hd4) + 1;

    char* buf = malloc(total_len);
    buf[total_len - 1] = '\0';

    strncpy(buf, hd1, strlen(hd1));
    strncat(buf, hd2, strlen(hd2));
    strncat(buf, hd3, strlen(hd3));
    strncat(buf, hd4, strlen(hd4));
    // send(client, buf, strlen(buf), 0);

    return buf;
}

int route_file(int client, const char* filename)
{
    (void) client;
    (void) filename;
    response_header();

    return 0;
}

int url_cb (http_parser *p, const char *at, size_t len)
{
    char* buf = malloc(len + 1);
    buf[len] = '\0';
    for (size_t i = 0; i < len; ++i)
    {
        buf[i] = at[i];
    }

    printf("URL: %s\n", buf);
    if (p->method == 1)
    {
        // If it is a GET-method, then we should try to serve it
        char* r_head = response_header();
        char* path = "static";

        // If it's looking for the home file, then redirect to index
        if (strncmp(buf, "/", 1) == 0)
        {
            buf = "/index.html";
        }
        
        // Serve the files requested if it exists.
        int total_len = strlen(path) + strlen(buf) + 1;
        char* filepath = malloc(total_len);
        filepath[total_len - 1] = '\0';
        strncpy(filepath, path, strlen(path));
        strncat(filepath, buf, strlen(buf));

        // Get client fd
        int* client_fd = (int *) p->data;
        int client = *client_fd;

        // Check permissions of files
        struct stat st;
        if (stat(filepath, &st) == -1) {
            // Cannot find permissions for file!
        }
        else
        {
            printf("Trying to send... %s\n", filepath);
            // If it is a base directory, then we should serve base index.html
            if ((st.st_mode & S_IFMT) == S_IFDIR) {
                char* homefile = "/index.html";
                strncat(filepath, homefile, strlen(homefile));
            }
            if ((st.st_mode & S_IRUSR) || (st.st_mode & S_IRGRP) || (st.st_mode & S_IROTH)) {
                // Check for read permissions
                // Send the headers then the file
                FILE *resource = NULL;
                resource = fopen(filepath, "r");
                if (resource == NULL) {
                    // Cannot open file!
                }
                else
                {
                    // First send the headers
                    send(client, r_head, strlen(r_head), 0);
                    char filebuf[BUF_SIZE];

                    if (fgets(filebuf, sizeof(filebuf), resource) != NULL)
                    {
                        while (!feof(resource))
                        {
                            send(client, filebuf, strlen(filebuf), 0);
                            if (fgets(filebuf, sizeof(filebuf), resource) == NULL)
                            {
                                // Error
                            }
                        }
                    }
                }
                fclose(resource);
            }
        }
    }

    return 0;
}

void accept_request1(int fd)
{
    printf("Parsing request...\n");
    http_parser_settings settings =
    {
        .on_message_begin = 0,
        .on_header_field = 0,
        .on_header_value = 0,
        .on_url = url_cb,
        .on_status = 0,
        .on_body = 0,
        .on_headers_complete = 0,
        .on_message_complete = 0,
    };
    // settings.on_url = my_url_callback;
    // settings.on_header_field = my_header_field_callback;
    // settings.on_header_value = my_header_value_callback;

    http_parser *parser = malloc(sizeof(http_parser));
    http_parser_init(parser, HTTP_REQUEST);
    parser->data = &fd;

    size_t len = 80 * 1024, nparsed;
    char buf[len];
    memset(buf, 0, len);
    ssize_t recved;
    recved = recv(fd, buf, len, 0);
    printf("---------------\n");
    if (recved < 0)
    {
        // Error
    }

    nparsed = http_parser_execute(parser, &settings, buf, recved);
    (void) nparsed;
    printf("---------------\n");
    printf("Original Request:\n");
    printf("---------------\n");
    printf("%s", buf);
    printf("---------------\n");
    // serve_file1(fd, "static/index.html");
}

/**********************************************************************/
/* A request has caused a call to accept() on the server port to
 * return.  Process the request appropriately.
 * Parameters: the socket connected to the client */
/**********************************************************************/
void accept_request(socket_t* client)
{
    char buf[BUF_SIZE];
    int numchars;
    char method[MAX_LENGTH];
    char url[MAX_LENGTH];
    char path[MAX_PATH];
    size_t i, j;
    struct stat st;

    int cgi = 0;      /* becomes true if server decides this is a CGI
                       * program */

    char *query_string = NULL;

    numchars = socket_read_line(client, buf, sizeof(buf));

    i = 0; j = 0;
    while (!ISspace(buf[j]) && (i < sizeof(method) - 1))
    {
        method[i] = buf[j];
        i++; j++;
    }
    method[i] = '\0';

    if (strcasecmp(method, "GET") && strcasecmp(method, "POST"))
    {
        unimplemented(client);
        return;
    }

    if (strcasecmp(method, "POST") == 0)
        cgi = 1;

    i = 0;
    while (ISspace(buf[j]) && (j < sizeof(buf)))
        j++;
    while (!ISspace(buf[j]) && (i < sizeof(url) - 1) && (j < sizeof(buf)))
    {
        url[i] = buf[j];
        i++; j++;
    }
    url[i] = '\0';

    if (strcasecmp(method, "GET") == 0)
    {
        query_string = url;
        while ((*query_string != '?') && (*query_string != '\0'))
            query_string++;
        if (*query_string == '?')
        {
            cgi = 1;
            *query_string = '\0';
            query_string++;
        }
    }

    sprintf(path, "htdocs%s", url);
    if (path[strlen(path) - 1] == '/')
        strcat(path, "index.html");
    if (stat(path, &st) == -1) {
        while ((numchars > 0) && strcmp("\n", buf))  /* read & discard headers */
            numchars = socket_read_line(client, buf, sizeof(buf));
        not_found(client);
    }
    else
    {
        if ((st.st_mode & S_IFMT) == S_IFDIR)
            strcat(path, "/index.html");
        if ((st.st_mode & S_IXUSR) ||
            (st.st_mode & S_IXGRP) ||
            (st.st_mode & S_IXOTH))
            cgi = 1;
        if (!cgi)
            serve_file(client, path);
        else
            execute_cgi(client, path, method, query_string);
    }

    socket_close(client);
}

/**********************************************************************/
/* Inform the client that a request it has made has a problem.
 * Parameters: client socket */
/**********************************************************************/
void bad_request(socket_t* client)
{
    char buf[BUF_SIZE];

    sprintf(buf, "HTTP/1.0 400 BAD REQUEST\r\n");
    socket_send(client, buf, sizeof(buf), 0);
    sprintf(buf, "Content-type: text/html\r\n");
    socket_send(client, buf, sizeof(buf), 0);
    sprintf(buf, "\r\n");
    socket_send(client, buf, sizeof(buf), 0);
    sprintf(buf, "<P>Your browser sent a bad request, ");
    socket_send(client, buf, sizeof(buf), 0);
    sprintf(buf, "such as a POST without a Content-Length.\r\n");
    socket_send(client, buf, sizeof(buf), 0);
}

/**********************************************************************/
/* Put the entire contents of a file out on a socket.  This function
 * is named after the UNIX "cat" command, because it might have been
 * easier just to do something like pipe, fork, and exec("cat").
 * Parameters: the client socket descriptor
 *             FILE pointer for the file to cat */
/**********************************************************************/
void cat(socket_t* client, FILE *resource)
{
    char buf[BUF_SIZE];

    if (fgets(buf, sizeof(buf), resource) != NULL)
    {
        while (!feof(resource))
        {
            socket_send(client, buf, strlen(buf), 0);
            if (fgets(buf, sizeof(buf), resource) == NULL)
            {
                // Error
            }
        }
    }
    
}

void cat1(int client, FILE *resource)
{
    char buf[BUF_SIZE];

    if (fgets(buf, sizeof(buf), resource) != NULL)
    {
        while (!feof(resource))
        {
            send(client, buf, strlen(buf), 0);
            if (fgets(buf, sizeof(buf), resource) == NULL)
            {
                // Error
            }
        }
    }
    
}

/**********************************************************************/
/* Inform the client that a CGI script could not be executed.
 * Parameter: the client socket descriptor. */
/**********************************************************************/
void cannot_execute(socket_t* client)
{
    char buf[BUF_SIZE];

    sprintf(buf, "HTTP/1.0 500 Internal Server Error\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "Content-type: text/html\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "<P>Error prohibited CGI execution.\r\n");
    socket_send(client, buf, strlen(buf), 0);
}

/**********************************************************************/
/* Print out an error message with perror() (for system errors; based
 * on value of errno, which indicates system call errors) and exit the
 * program indicating an error. */
/**********************************************************************/
void error_die(const char *sc)
{
    perror(sc);
    exit(1);
}

/**********************************************************************/
/* Execute a CGI script.  Will need to set environment variables as
 * appropriate.
 * Parameters: client socket descriptor
 *             path to the CGI script */
/**********************************************************************/
void execute_cgi(socket_t* client, const char *path,
    const char *method, const char *query_string)
{
    char buf[BUF_SIZE];
    int cgi_output[2];
    int cgi_input[2];
    pid_t pid;
    int status;
    int i;
    char c;
    int numchars = 1;
    int content_length = -1;

    buf[0] = 'A'; buf[1] = '\0';
    if (strcasecmp(method, "GET") == 0)
        while ((numchars > 0) && strcmp("\n", buf))  /* read & discard headers */
            numchars = socket_read_line(client, buf, sizeof(buf));
    else    /* POST */
    {
        numchars = socket_read_line(client, buf, sizeof(buf));
        while ((numchars > 0) && strcmp("\n", buf))
        {
            buf[15] = '\0';
            if (strcasecmp(buf, "Content-Length:") == 0)
                content_length = atoi(&(buf[16]));
            numchars = socket_read_line(client, buf, sizeof(buf));
        }
        if (content_length == -1) {
            bad_request(client);
            return;
        }
    }

    sprintf(buf, "HTTP/1.0 200 OK\r\n");
    socket_send(client, buf, strlen(buf), 0);

    if (pipe(cgi_output) < 0) {
        cannot_execute(client);
        return;
    }
    if (pipe(cgi_input) < 0) {
        cannot_execute(client);
        return;
    }

    if ((pid = fork()) < 0) {
        cannot_execute(client);
        return;
    }
    if (pid == 0)  /* child: CGI script */
    {
        char meth_env[MAX_LENGTH];
        char query_env[MAX_LENGTH];
        char length_env[MAX_LENGTH];

        dup2(cgi_output[1], 1);
        dup2(cgi_input[0], 0);
        close(cgi_output[0]);
        close(cgi_input[1]);
        sprintf(meth_env, "REQUEST_METHOD=%s", method);
        putenv(meth_env);
        if (strcasecmp(method, "GET") == 0) {
            sprintf(query_env, "QUERY_STRING=%s", query_string);
            putenv(query_env);
        }
        else {   /* POST */
            sprintf(length_env, "CONTENT_LENGTH=%d", content_length);
            putenv(length_env);
        }
        execl(path, path, NULL);
        exit(0);
    }
    else {    /* parent */
        close(cgi_output[1]);
        close(cgi_input[0]);
        if (strcasecmp(method, "POST") == 0)
            for (i = 0; i < content_length; i++) {
                socket_recv(client, &c, 1, 0);
                int r = write(cgi_input[1], &c, 1);
                // Fix compiler warning, but should later check for return value
                (void) r;
            }
        while (read(cgi_output[0], &c, 1) > 0)
            socket_send(client, &c, 1, 0);

        close(cgi_output[0]);
        close(cgi_input[1]);
        waitpid(pid, &status, 0);
    }
}

/**********************************************************************/
/* Return the informational HTTP headers about a file. */
/* Parameters: the socket to print the headers on
 *             the name of the file */
/**********************************************************************/
void headers(socket_t* client, const char *filename)
{
    char buf[BUF_SIZE];
    (void)filename;  /* could use filename to determine file type */

    strcpy(buf, "HTTP/1.0 200 OK\r\n");
    socket_send(client, buf, strlen(buf), 0);
    strcpy(buf, SERVER_STRING);
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "Content-Type: text/html\r\n");
    socket_send(client, buf, strlen(buf), 0);
    strcpy(buf, "\r\n");
    socket_send(client, buf, strlen(buf), 0);
}

/**********************************************************************/
/* Give a client a 404 not found status message. */
/**********************************************************************/
void not_found(socket_t* client)
{
    char buf[BUF_SIZE];

    sprintf(buf, "HTTP/1.0 404 NOT FOUND\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, SERVER_STRING);
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "Content-Type: text/html\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "<HTML><TITLE>Not Found</TITLE>\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "<BODY><P>The server could not fulfill\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "your request because the resource specified\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "is unavailable or nonexistent.\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "</BODY></HTML>\r\n");
    socket_send(client, buf, strlen(buf), 0);
}

/**********************************************************************/
/* Send a regular file to the client.  Use headers, and report
 * errors to client if they occur.
 * Parameters: a pointer to a file structure produced from the socket
 *              file descriptor
 *             the name of the file to serve */
/**********************************************************************/
void serve_file(socket_t* client, const char *filename)
{
    FILE *resource = NULL;
    int numchars = 1;
    char buf[BUF_SIZE];

    buf[0] = 'A'; buf[1] = '\0';
    while ((numchars > 0) && strcmp("\n", buf))  /* read & discard headers */
        numchars = socket_read_line(client, buf, sizeof(buf));

    resource = fopen(filename, "r");
    if (resource == NULL)
        not_found(client);
    else
    {
        headers(client, filename);
        cat(client, resource);
    }
    fclose(resource);
}

void serve_file1(int client, const char *filename)
{
    FILE *resource = NULL;
    (void) client;
    (void)filename;
    // int numchars = 1;
    // char buf[BUF_SIZE];

    // buf[0] = 'A'; buf[1] = '\0';
    // while ((numchars > 0) && strcmp("\n", buf))  /* read & discard headers */
        // numchars = socket_read_line(client, buf, sizeof(buf));

    resource = fopen(filename, "r");
    if (resource == NULL)
    {
        // not_found(client);
    }
    else
    {
        // headers1(client, filename);
        // cat1(client, resource);
    }
    fclose(resource);
}

/**********************************************************************/
/* Inform the client that the requested web method has not been
 * implemented.
 * Parameter: the client socket */
/**********************************************************************/
void unimplemented(socket_t* client)
{
    char buf[BUF_SIZE];

    sprintf(buf, "HTTP/1.0 501 Method Not Implemented\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, SERVER_STRING);
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "Content-Type: text/html\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "<HTML><HEAD><TITLE>Method Not Implemented\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "</TITLE></HEAD>\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "<BODY><P>HTTP request method not supported.\r\n");
    socket_send(client, buf, strlen(buf), 0);
    sprintf(buf, "</BODY></HTML>\r\n");
    socket_send(client, buf, strlen(buf), 0);
}

/**********************************************************************/

int main(void)
{
    // Get a server socket
    unsigned short port = SERVER_PORT;
    server_sock = socket_startup(port);

    // 1 Acceptor, 4 Clients
    vector* sockets = vector_create_with_size(5);
    vector_push(sockets, server_sock);

    pollsocket_t* ps = pollsocket_create(sockets);
    (void) ps;

    int count = 0;

    while (1)
    {
        ++count;
        printf("Rep %d\n", count);

        int result = poll_sockets(ps, 5000);
        if (result < 0)
        {
            log_error("%s, %d: polling error!\n", __func__, __LINE__);
        }
        else if (result == 0)
        {
            log_out("%s, %d: No response from poll!\n", __func__, __LINE__);
        }
        else
        {
            printf("     Got a response!\n");
            // vector* response_sockets = poll_response(ps);
            // Check for events on the different sockets

            struct pollfd* pfds = ps->pfds;

            for (unsigned int i = 0; i < ps->size; ++i)
            {
                // Skip if the socket has no response
                if (pfds[i].revents == 0)
                {
                    continue;
                }   

                printf("pfds[%d]: %d\n", i, pfds[i].revents);

                // Listening server: accept new connections here
                if (i == 0)
                {
                    struct pollfd pfd = pfds[0];
                    if (pfd.revents & POLLIN)
                    {
                        client_sock = socket_accept(server_sock);
                
                        // Track our added sockets
                        vector_push(sockets, client_sock);
                    }
                }
                else if (pfds[i].revents && pfds[i].revents & POLLIN)
                {
                    printf("Response from S(%d)\n", pfds[i].fd);
                    // Other sockets, we need to handle the incoming data
                    accept_request1(pfds[i].fd);
                    close(pfds[i].fd);
                    vector_delete(sockets, 1);
                }
                else if (pfds[i].revents & POLLERR)
                {
                    printf("Error with socket %d\n", pfds[i].fd);
                }
            }

        }

       
        /* Single threaded for now... */
        // accept_request(client_sock);
    }

    socket_close(server_sock);

    return(0);
}

void sigint_handler(int signum)
{
    // do cleanups here and free all existing variables and stuff
    log_out("Closing server on:...\n", socket_get_fd(server_sock));
    socket_close(server_sock);
    exit(signum);
}
