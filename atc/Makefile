#	@(#)Makefile	5.7 (Berkeley) 6/27/90
DESTDIR=/usr/games
MANDIR= /usr/man/man6
DATADIR=/usr/games/lib/atc
SCOREFILE=	/usr/games/lib/atc/ATC_scores
PROG=	atc
CFLAGS= -DBSD -I/usr/include -O
YACC=	bison
YFLAGS= -d -y
LEX=	flex
SRCS=	extern.c grammar.c graphics.c input.c lex.c list.c log.c \
	main.c tunable.c update.c
OBJS=	extern.o grammar.o graphics.o input.o lex.o list.o log.o \
	main.o tunable.o update.o
MAN6=	atc.6
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
	$(CC) $(CFLAGS) -c $*.c -o $@

install:	all
	install -c -o bin -g root -m 775 $(PROG) $(DESTDIR)
	-mkdir $(DATADIR)
	chown bin $(DATADIR)
	chmod 755 $(DATADIR)
	(cd games; install -c -o bin -g root -m 444 \
	    ${GAMES} $(DATADIR) )
	touch $(SCOREFILE)
	chown bin $(SCOREFILE)
	chmod 666 $(SCOREFILE)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) $(CLEANFILES) core *.o
