# Makefile - makefile for fish

include ../Makeconfig

PROG = fish

DEFS = 
INCS = -I../include

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) fish.instr $(INSTALL_PREFIX)$(FISH_INSTRFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
