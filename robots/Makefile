# Makefile - makefile for robots

include ../Makeconfig

PROG = robots

SRCS=	extern.c init_field.c main.c make_level.c move.c move_robs.c \
	play_level.c query.c rnd_pos.c score.c flush_in.c
OBJS=	extern.o init_field.o main.o make_level.o move.o move_robs.o \
	play_level.o query.o rnd_pos.o score.o flush_in.o

SCOREFILE = $(VARLIBDIR)/robots_roll

LIBS = $(NCURSES_LIB) $(BSD_LIB)
INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -DFANCY -DMAX_PER_UID=5 -D_PATH_SCORE=\"$(SCOREFILE)\"

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	robots.h
score.o:	pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	touch $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
