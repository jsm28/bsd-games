# Makefile - makefile for bcd

include ../Makeconfig

PROG = bcd

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

test:	$(PROG)
	date | ./bcd

clean:
	rm -f $(PROG) core *.o
