# Makefile - makefile for phantasia

include ../Makeconfig

PROG = phantasia

OBJS = main.o fight.o io.o interplayer.o gamesupport.o misc.o phantglobs.o

LIBS = -lm $(NCURSES_LIB)
INCS = $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS)

VFILES = gold lastdead mess monsters motd characs scoreboard void

all:	$(PROG) setup

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

setup:	phantglobs.o setup.o
	$(CC) $(LDFLAGS) phantglobs.o setup.o -lm -o setup

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	include.h macros.h phantdefs.h phantstruct.h phantglobs.h pathnames.h

install:	$(PROG) setup monsters.asc
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	test -d $(INSTALL_PREFIX)$(PHANTASIA_DIR) || \
	    install -d $(INSTALL_PREFIX)$(PHANTASIA_DIR)
	DESTDIR=$(INSTALL_PREFIX) ./setup -m monsters.asc
	(set -e; for f in $(VFILES); do $(INSTALL_SCORE_FILE) \
	    $(PHANTASIA_DIR)/$$f; done)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) setup core *.o
