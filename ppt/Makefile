# Makefile - makefile for ppt

include ../Makeconfig

PROG = ppt

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) bcd.6 $(PROG).6

test:	$(PROG)
	date | ./$(PROG)

clean:
	rm -f $(PROG) core *.o
