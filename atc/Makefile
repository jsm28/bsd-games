# Makefile - makefile for atc

include ../Makeconfig

PROG		= atc

SRCS=	extern.c grammar.c graphics.c input.c lex.c list.c log.c \
	main.c tunable.c update.c
OBJS=	extern.o grammar.o graphics.o input.o lex.o list.o log.o \
	main.o tunable.o update.o

LIBS=	-lm $(NCURSES_LIB) $(LEX_LIB)

GAMES = Game_List default easy crossover Killer game_2 Atlantis OHare \
	Tic-Tac-Toe airports box crosshatch game_3 game_4 novice two-corners

INCS = -I../include $(NCURSES_INCS)
DEFS = -DBSD -DYY_NO_UNPUT

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

grammar.c grammar.h:	grammar.y
	$(YACC) -d grammar.y
	mv y.tab.c grammar.c
	mv y.tab.h grammar.h

lex.c:	lex.l
	$(LEX) lex.l
	mv lex.yy.c lex.c

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

lex.o:	grammar.h

$(OBJS):	def.h extern.h include.h pathnames.h struct.h tunable.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	test -d $(INSTALL_PREFIX)$(ATC_DIR) || \
	    install -d $(INSTALL_PREFIX)$(ATC_DIR)
	(set -e; cd games; \
	    $(INSTALL_DATA) $(GAMES) $(INSTALL_PREFIX)$(ATC_DIR) )
	$(INSTALL_SCORE_FILE) $(ATC_SCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) grammar.c grammar.h y.tab.* lex.c lex.yy.c core *.o
