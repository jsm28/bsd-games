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

INCS = $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS) -DBSD -D_PATH_GAMES=\"$(ATC_DIR)/\" \
	-D_PATH_SCORE=\"$(ATC_SCOREFILE)\"

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

grammar.c:	grammar.y
	$(YACC) -d grammar.y
	mv y.tab.c grammar.c

lex.c:	lex.l
	$(LEX) lex.l
	mv lex.yy.c lex.c

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

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
	rm -f $(PROG) grammar.c y.tab.h lex.c core *.o
