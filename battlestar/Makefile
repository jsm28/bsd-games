# Makefile - makefile for battlestar

include ../Makeconfig

PROG = battlestar

SCOREFILE = $(VARLIBDIR)/battlestar.log

SRCS=	battlestar.c com1.c com2.c com3.c com4.c com5.c com6.c com7.c \
	init.c cypher.c getcom.c parse.c room.c save.c fly.c misc.c \
	globals.c dayfile.c nightfile.c dayobjs.c nightobjs.c words.c
OBJS=	battlestar.o com1.o com2.o com3.o com4.o com5.o com6.o com7.o \
	init.o cypher.o getcom.o parse.o room.o save.o fly.o misc.o \
	globals.o dayfile.o nightfile.o dayobjs.o nightobjs.o words.o

LIBS = $(NCURSES_LIB) $(BSD_LIB)

INCS = $(BSD_INCS) $(NCURSES_INCS)

DEFS = $(BSD_DEFS) -D_PATH_SCORE=\"$(SCOREFILE)\"

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	externs.h

com6.o:	pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6
	touch $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(SCOREFILE)

clean:
	rm -f $(PROG) core *.o
