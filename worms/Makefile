# Makefile - makefile for worms

include ../Makeconfig

PROG = worms

LIBS = $(NCURSES_LIB)
INCS = -I../include $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS)

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(LDFLAGS) $(CFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
