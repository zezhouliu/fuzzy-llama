# Default optimization level
O ?= 3

all: utils vector socket-base socket-systems sockets events client server

LIBS = -lm

-include build/rules.mk

%.o: %.c $(BUILDSTAMP)
	$(call run,$(CC) $(CFLAGS) -O$(O) $(DEPCFLAGS) -o $@ -c,COMPILE,$<)

utils: utils.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o utils.o -c utils.c)

vector: vector.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o vector.o -c vector.c)

socket-base: socket-base.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o socket-base.o -c socket-base.c)

socket-systems: socket-systems.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o socket-systems.o -c socket-systems.c)

sockets: sockets.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o sockets.o -c sockets.c)

events: events.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o events.o -c events.c)

client: client.o
	$(call run,$(CC) $(CFLAGS) $(DEPCFLAGS) $(MATHFLAGS) -lm -o $@ utils.o socket-base.o socket-systems.o sockets.o $^ $(LDFLAGS) $(LIBS),LINK $@)

server: server.o
	$(call run,$(CC) $(CFLAGS) $(DEPCFLAGS) $(MATHFLAGS) -lm -o $@ utils.o vector.o socket-base.o socket-systems.o sockets.o events.o $^ $(LDFLAGS) $(LIBS),LINK $@)

clean: clean-main
clean-main:
	$(call run,rm -f client server *.o *~ *.bak core *.core,CLEAN)
	$(call run,rm -rf $(DEPSDIR))

distclean: clean

.PRECIOUS: %.o
.PHONY: all
.PHONY: clean clean-main clean-hook distclean check check-% prepare-check
