# Makefile - makefile for wump

include ../Makeconfig

PROG = wump

LIBS = 

INCS = -I../include
DEFS = 

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) wump.info $(INSTALL_PREFIX)$(WUMP_INFOFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
