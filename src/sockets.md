Sockets Interface
-----

##Possible Socket States
- SOCKET_OPEN
-- The socket is open and can be read and written

- SOCKET_CLOSED
-- The socket is closed properly, cannot be operated upon

- SOCKET_INVALID
-- The socket is no longer valid, should only be closed

- SOCKET_CLOSED
-- The socket has been closed legally, do not use in further operations

