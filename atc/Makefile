#	@(#)Makefile	5.7 (Berkeley) 6/27/90
PROG=	atc

DESTDIR=/usr/games
LIBDIR=	$(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=	gcc

ATCDIR=	$(LIBDIR)/atc/
SCOREDIR=	$(ATCDIR)atc_score
_PATH_GAMES=	\"$(ATCDIR)\"
_PATH_SCORE=	\"$(SCOREDIR)\"

override CFLAGS= -O -DBSD
INCS=	 -I/usr/include -I/usr/include/bsd

YACC=	bison
YFLAGS= -d -y

LEX=	flex

SRCS=	extern.c grammar.c graphics.c input.c lex.c list.c log.c \
	main.c tunable.c update.c
OBJS=	extern.o grammar.o graphics.o input.o lex.o list.o log.o \
	main.o tunable.o update.o

LIBS=	-lm -lcurses -ltermcap -lbsd
GAMES=	ATC_scores Game_List Killer crossover default easy game_2
CLEANFILES=grammar.c y.tab.h lex.c

all:	$(PROG)

$(PROG):	grammar.c lex.c $(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

grammar.c:	grammar.y
	$(YACC) $(YFLAGS) grammar.y
	mv y.tab.c grammar.c

lex.c:		lex.l
	$(LEX) lex.l
	mv lex.yy.c lex.c

$(OBJS):	def.h extern.h include.h pathnames.h struct.h tunable.h
	$(CC) $(CFLAGS) -c -D_PATH_GAMES=$(_PATH_GAMES) \
		-D_PATH_SCORE=$(_PATH_SCORE) $(INCS) $*.c -o $@

install:	all
	install -c -o bin -g root -m 775 $(PROG) $(DESTDIR)
	-mkdir $(ATCDIR)
	chown bin $(ATCDIR)
	chmod 755 $(ATCDIR)
	(cd games; install -c -o bin -g root -m 444 \
	    ${GAMES} $(ATCDIR) )
	touch $(SCOREDIR)
	chown bin $(SCOREDIR)
	chmod 666 $(SCOREDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) $(CLEANFILES) core *.o
