# Makefile - makefile for canfield/canfield

include ../../Makeconfig

LIBS = $(NCURSES_LIB) $(BSD_LIB)

DEFS = -D_PATH_SCORE=\"$(CANFIELD_SCOREFILE)\" $(BSD_DEFS)
INCS = $(BSD_INCS) $(NCURSES_INCS)

all:	canfield

canfield:	canfield.c pathnames.h
	$(CC) $(LDFLAGS) $(CFLAGS) $(DEFS) $(INCS) \
	    -o canfield canfield.c $(LIBS)

clean:
	rm -f canfield a.out core *.o

install: canfield
	$(INSTALL_SCORE_GAME) canfield $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) canfield
	$(INSTALL_MANUAL) canfield.6
	$(INSTALL_SCORE_FILE) $(CANFIELD_SCOREFILE)
