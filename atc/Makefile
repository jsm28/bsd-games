# Makefile - makefile for atc

include ../Makeconfig

PROG		= atc

ATCDIR		= $(SHAREDIR)/atc/
SCOREFILE	= $(VARLIBDIR)/atc_score

YACC		= bison
YFLAGS		= -d -y

LEX		= flex

SRCS=	extern.c grammar.c graphics.c input.c lex.c list.c log.c \
	main.c tunable.c update.c
OBJS=	extern.o grammar.o graphics.o input.o lex.o list.o log.o \
	main.o tunable.o update.o

LIBS=	-lm $(NCURSES_LIB) $(BSD_LIB) -ll

GAMES=	Game_List Killer crossover default easy game_2

INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -DBSD -D_PATH_GAMES=\"$(ATCDIR)\" \
	-D_PATH_SCORE=\"$(SCOREFILE)\"

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

grammar.c:	grammar.y
	$(YACC) $(YFLAGS) grammar.y
	mv y.tab.c grammar.c

lex.c:	lex.l
	$(LEX) lex.l
	mv lex.yy.c lex.c

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	def.h extern.h include.h pathnames.h struct.h tunable.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	test -d $(INSTALL_PREFIX)$(ATCDIR) || \
	    install -d $(INSTALL_PREFIX)$(ATCDIR)
	(set -e; cd games; \
	    $(INSTALL_DATA) $(GAMES) $(INSTALL_PREFIX)$(ATCDIR) )
	touch $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) grammar.c y.tab.h lex.c core *.o
