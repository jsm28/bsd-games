# Makefile - makefile for cribbage

include ../Makeconfig

PROG      = cribbage

SCOREFILE = $(VARLIBDIR)/criblog
INSTRFILE = $(SHAREDIR)/cribbage.instr
PAGERFILE = /usr/bin/less

SRCS=	extern.c crib.c cards.c instr.c io.c score.c support.c
OBJS=	extern.o crib.o cards.o instr.o io.o score.o support.o

LIBS = $(NCURSES_LIB) $(BSD_LIB)
INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -D_PATH_LOG=\"$(SCOREFILE)\" \
	-D_PATH_INSTR=\"$(INSTRFILE)\" -D_PATH_MORE=\"$(PAGERFILE)\"

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	cribbage.h cribcur.h deck.h pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) $(PROG).n $(INSTALL_PREFIX)$(INSTRFILE)
	touch $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core *.o
