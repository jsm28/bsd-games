# Makefile - makefile for wargames

include ../Makeconfig

PROG = wargames

all:	$(PROG)

$(PROG):

install:	$(PROG)
	@echo Ignore any warning from strip about trying to strip a shell \
	    script...
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)

test:	$(PROG)
	echo "test" | ./$(PROG)

clean:
