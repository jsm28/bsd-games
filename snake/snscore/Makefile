#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	snscore

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SCOREDIR=       $(LIBDIR)/snake.log
RAWSCOREDIR=    $(LIBDIR)/snakerawscores
_PATH_LOGFILE=          \"$(SCOREDIR)\"
_PATH_RAWSCORES=        \"$(RAWSCOREDIR)\"

LIBS=	-lbsd
INC=	-I../snake

$(PROG):	../snake/pathnames.h
	$(CC) $(INC) -D_PATH_LOGFILE=$(_PATH_LOGFILE) \
		-D_PATH_RAWSCORES=$(_PATH_RAWSCORES) -o $(PROG) $(PROG).c \
		$(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)

clean:
	rm -f $(PROG) core *.o
