# Makefile - makefile for wump

include ../Makeconfig

PROG = wump

WUMPINFOFILE = $(SHAREDIR)/wump.info
PAGERFILE    = /usr/bin/less

LIBS = $(NCURSES_LIB) $(BSD_LIB)

INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -D_PATH_PAGER=\"$(PAGERFILE)\" \
	-D_PATH_WUMPINFO=\"$(WUMPINFOFILE)\"

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) wump.info $(INSTALL_PREFIX)$(WUMPINFOFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
