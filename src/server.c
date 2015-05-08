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
#define STATIC_PATH "static"

// Buffer size defines (handle more elegantly later...)
#define BUF_SIZE 1024
#define MAX_LENGTH 255
#define MAX_PATH 512 

#define HTTP_STATUS_OK 200
#define HTTP_STATUS_FORBIDDEN 403
#define HTTP_STATUS_NOT_FOUND 404


// Prototypes
void bad_request(socket_t*);
void cannot_execute(socket_t*);
void error_die(const char *);
void execute_cgi(socket_t*, const char *, const char *, const char *);
void unimplemented(socket_t*);
void parse_request(socket_t*);

// Global to handle closing sockets
socket_t* server_sock;

/**
 * [response_header  description]
 * @return  [description]
 */
char* response_header (int status, int content_length)
{
    char* hd1 = "";
    if (status == HTTP_STATUS_OK)
    {
        // 200 okay status.
        hd1 = "HTTP/1.1 200 OK\r\n";
    }
    else if (status == HTTP_STATUS_FORBIDDEN)
    {
        // 403 forbidden status.
        hd1 = "HTTP/1.1 403 Forbidden";
    }
    else if (status == HTTP_STATUS_NOT_FOUND)
    {
        // 404 not found status.
        hd1 = "HTTP/1.1 404 Not Found\r\n";
    }

    char* hd2 = SERVER_STRING;
    char* hd3 = "Content-Type: text/html\r\n";
    char* hd4 = "Connection: Keep-Alive\r\n";
    char* hd5 = "\r\n";

    if (content_length > 0)
    {

        // Create the content-length string if it's needed
        char* length_prefix = "Content-Length: ";
        int length_str_size = strlen(length_prefix) + content_length;
        char clen_str[length_str_size + 1];
        clen_str[length_str_size] = '\0';
        snprintf(clen_str, length_str_size, "Content-Length: %d\r\n", content_length);

        int total_len = strlen(hd1) + strlen(hd2) + strlen(hd3) + strlen(hd4) + strlen(hd5) + length_str_size + 1;

        char* buf = malloc(total_len);
        buf[total_len - 1] = '\0';

        strncpy(buf, hd1, strlen(hd1));
        strncat(buf, hd2, strlen(hd2));
        strncat(buf, hd3, strlen(hd3));
        strncat(buf, clen_str, length_str_size);
        strncat(buf, hd4, strlen(hd4));
        strncat(buf, hd5, strlen(hd5));

        return buf;
    }

    int total_len = strlen(hd1) + strlen(hd2) + strlen(hd3) + strlen(hd4) + strlen(hd5) + 1;

    char* buf = malloc(total_len);
    buf[total_len - 1] = '\0';

    strncpy(buf, hd1, strlen(hd1));
    strncat(buf, hd2, strlen(hd2));
    strncat(buf, hd3, strlen(hd3));
    strncat(buf, hd4, strlen(hd4));
    strncat(buf, hd5, strlen(hd5));
    return buf;
}

/**
 * url_cb(p, at, len)
 *
 * @Brief: urb_cb is called when the URL has been parsed from request string.
 *     Given the URL, url_cb creates the appropriate response header and tries 
 *     to serve the file if it exists and permissions are granted.  
 *     Else, returns 404 not found.
 * @param  p   http_parser* associated with url parsing
 * @param  at  const char* pointing to start of URL string
 * @param  len size_t of length of the URL string
 * @return     0 if success, else 1
 */
int url_cb (http_parser *p, const char *at, size_t len)
{
    // Parse our the url string
    char* url_string = malloc(len + 1);
    url_string[len] = '\0';
    strncpy(url_string, at, len);

    printf("URL: %s\n", url_string);
    if (p->method == 1)
    {
        // If it is a GET-method, then we should try to serve it
        char* path = STATIC_PATH;

        // If it's looking for the home file, then redirect to index
        if (len == 1 && strncmp(url_string, "/", 1) == 0)
        {
            free(url_string);
            url_string = "/index.html";
        }
        
        // Serve the files requested if it exists.
        int total_len = strlen(path) + strlen(url_string) + 1;
        char* filepath = malloc(total_len);
        filepath[total_len - 1] = '\0';
        strncpy(filepath, path, strlen(path));
        strncat(filepath, url_string, strlen(url_string));

        // Get client socket
        socket_t* client_socket = (socket_t*) p->data;

        // Create header pointer
        char* r_head = NULL;

        // Check permissions of files
        struct stat st;
        if (stat(filepath, &st) == -1) 
        {
            // Cannot find permissions for file! Return 404 Not Found
            r_head = response_header(HTTP_STATUS_NOT_FOUND, 0);
            socket_send(client_socket, r_head, strlen(r_head), 0);
            printf("%d: File not found.\n", HTTP_STATUS_NOT_FOUND);
        }
        else
        {
            printf("Trying to send... %s\n", filepath);
            // If it is a base directory, then we should serve base index.html
            if ((st.st_mode & S_IFMT) == S_IFDIR) {
                char* homefile = "/index.html";
                strncat(filepath, homefile, strlen(homefile));
            }

            // Check for read-permissions
            if (!((st.st_mode & S_IRUSR) || (st.st_mode & S_IRGRP) || (st.st_mode & S_IROTH))) 
            {
                // If not permissions, then return forbidden
                r_head = response_header(HTTP_STATUS_FORBIDDEN, 0);
                socket_send(client_socket, r_head, strlen(r_head), 0);
                printf("%d: Permission denied.\n", HTTP_STATUS_FORBIDDEN);

            }
            else 
            {
                // If permissions, then serve the file if possible
                FILE *resource = NULL;
                resource = fopen(filepath, "r");
                if (resource == NULL) 
                {
                    // Cannot open file! Return 404 Not Found
                    r_head = response_header(HTTP_STATUS_NOT_FOUND, 0);
                    socket_send(client_socket, r_head, strlen(r_head), 0);
                    printf("%d: File not found.\n", HTTP_STATUS_NOT_FOUND);
                }
                else
                {

                    fseek(resource, 0L, SEEK_END);
                    long sz = ftell(resource);
                    fseek(resource, 0L, SEEK_SET);
                    // First send the headers
                    char filebuf[BUF_SIZE];

                    r_head = response_header(HTTP_STATUS_OK, sz);
                    socket_send(client_socket, r_head, strlen(r_head), 0);

                    if (fgets(filebuf, sizeof(filebuf), resource) != NULL)
                    {
                        while (!feof(resource))
                        {
                            socket_send(client_socket, filebuf, strlen(filebuf), 0);
                            if (fgets(filebuf, sizeof(filebuf), resource) == NULL)
                            {
                                // Error
                            }
                        }
                    }
                    fclose(resource);
                }
            }
        }

        if (r_head)
        {

            free(r_head);
            printf("%d\n", __LINE__);
        }
        if (filepath)
        {
            free(filepath);
            printf("%d\n", __LINE__);
        }
    }

    if (len != 1 && url_string)
    {
        free(url_string);
        printf("%d\n", __LINE__);
    }

    return 0;
}

/**
 * parse_request(s)
 *
 * @Brief: Parses the request from socket s using HTTP-Parser.
 * @param[s]: s, socket_t* from which to receive the request.
 * 
 **/
void parse_request(socket_t* s)
{
    printf("Parsing request...\n");

    // Basic socket API features
    if (s == NULL || socket_get_status(s) != SOCKET_OPEN)
    {
        return;
    }

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

    http_parser *parser = malloc(sizeof(http_parser));
    http_parser_init(parser, HTTP_REQUEST);
    parser->data = s;

    size_t len = 80 * 1024, nparsed;
    char buf[len];
    memset(buf, 0, len);
    ssize_t recved = socket_recv(s, buf, len, 0);
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
            vector* response_sockets = poll_response(ps);
            for (long unsigned int i = 0; i < vector_count(response_sockets); ++i)
            {
                socket_t* s = vector_get(response_sockets, i);
                if (s == NULL)
                {
                    log_error("Invalid socket\n");
                }

                // First socket MAY be the listening socket
                if (s == server_sock)
                {
                    socket_t* client_sock = socket_accept(server_sock);
                    vector_push(sockets, client_sock);
                }
                else
                {
                    printf("Request: S(%d)\n", socket_get_fd(s));
                    parse_request(s);
                    // socket_close(s);
                }
            }

        }
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
