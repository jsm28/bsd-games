# Makefile - makefile for countmail

include ../Makeconfig

PROG = countmail

all:	$(PROG)

$(PROG):

install:	$(PROG)
	$(INSTALL_SCRIPT) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:
