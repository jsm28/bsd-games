#	@(#)Makefile	5.10 (Berkeley) 5/11/90

PROG=	snake

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SRCS=	move.c snake.c
OBJS=	move.o snake.o
INCS=	-I/usr/include/bsd
LIBS=	-lm -lcurses -ltermcap -lbsd
SCOREDIR=	$(LIBDIR)/snake.log
RAWSCOREDIR=	$(LIBDIR)/snakerawscores
_PATH_LOGFILE=		\"$(SCOREDIR)\"
_PATH_RAWSCORES=	\"$(RAWSCOREDIR)\"

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):
	$(CC) -O -c $(CFLAGS) $(INCS) -D_PATH_LOGFILE=$(_PATH_LOGFILE) \
		-D_PATH_RAWSCORES=$(_PATH_RAWSCORES) $*.c -o $@

install:	$(PROG)
	touch $(SCOREDIR)
	chmod 666 $(SCOREDIR)
	chown bin $(SCOREDIR)
	touch $(RAWSCOREDIR)
	chmod 666 $(RAWSCOREDIR)
	chown bin $(RAWSCOREDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
