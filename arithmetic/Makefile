# Makefile - makefile for arithmetic

include ../Makeconfig

PROG = arithmetic

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
