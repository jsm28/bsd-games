# Makefile - makefile for random

include ../Makeconfig

PROG = random

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) -I../include $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core *.o
