# Makefile - makefile for canfield/cfscores

include ../../Makeconfig

SCOREFILE = $(VARLIBDIR)/cfscores

DEFS = -D_PATH_SCORE=\"$(SCOREFILE)\" $(BSD_DEFS)
INCS= -I../canfield $(BSD_INCS) $(NCURSES_INCS)

all:	cfscores

cfscores:	../canfield/pathnames.h cfscores.c
	$(CC) $(LDFLAGS) $(CFLAGS) $(DEFS) $(INCS) \
	     -o cfscores cfscores.c

clean:
	rm -f cfscores a.out core *.o

install:	cfscores
	$(INSTALL_BINARY) cfscores $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) cfscores
	$(INSTALL_MANUAL) canfield.6 cfscores.6
