# Makefile - makefile for rain

include ../Makeconfig

PROG = rain

LIBS = $(NCURSES_LIB) $(BSD_LIB)
INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS)

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
