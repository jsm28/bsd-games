#	@(#)Makefile	5.10 (Berkeley) 5/11/90

PROG=	snake
SRCS=	move.c snake.c
OBJS=	move.o snake.o
MAN6=	snake.6
LIBS=	-lm -lcurses -ltermcap -lbsd
DESTDIR=/usr/games
MANDIR= /usr/man/man6
SCOREDIR=	/usr/games/lib/snake.log
RAWSCOREDIR=	/usr/games/lib/snakerawscores

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):
	$(CC) -O -c $(CFLAGS) $*.c -o $@

install:	$(PROG)
	touch $(SCOREDIR)
	chmod 666 $(SCOREDIR)
	chown bin $(SCOREDIR)
	touch $(RAWSCOREDIR)
	chmod 666 $(RAWSCOREDIR)
	chown bin $(RAWSCOREDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) core *.o
