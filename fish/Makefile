# Makefile - makefile for fish

include ../Makeconfig

PROG = fish

INSTRFILE = $(SHAREDIR)/fish.instr
PAGERFILE = /usr/bin/less

DEFS = -D_PATH_INSTR=\"$(INSTRFILE)\" -D_PATH_MORE=\"$(PAGERFILE)\"

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) fish.instr $(INSTALL_PREFIX)$(INSTRFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
