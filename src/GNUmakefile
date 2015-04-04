# Default optimization level
O ?= 3

all: utils sockets server

LIBS = -lm

-include build/rules.mk

%.o: %.c $(BUILDSTAMP)
	$(call run,$(CC) $(CFLAGS) -O$(O) $(DEPCFLAGS) -o $@ -c,COMPILE,$<)

utils: utils.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o utils.o -c utils.c

sockets: sockets.o
	$(call,$(CC) $(CFLAGS) $(DEPCFLAGS) -o sockets.o -c sockets.c

server: server.o
	$(call run,$(CC) $(CFLAGS) $(DEPCFLAGS) $(MATHFLAGS) -lm -o $@ utils.o sockets.o $^ $(LDFLAGS) $(LIBS),LINK $@)

clean: clean-main
clean-main:
	$(call run,rm -f server *.o *~ *.bak core *.core,CLEAN)
	$(call run,rm -rf $(DEPSDIR))

distclean: clean

.PRECIOUS: %.o
.PHONY: all
.PHONY: clean clean-main clean-hook distclean check check-% prepare-check
