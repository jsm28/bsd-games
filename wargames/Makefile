# Makefile - makefile for wargames

include ../Makeconfig

PROG = wargames

all:	$(PROG)

$(PROG):

install:	$(PROG)
	$(INSTALL_SCRIPT) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)

test:	$(PROG)
	echo "test" | ./$(PROG)

clean:
