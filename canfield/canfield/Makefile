PROG=	canfield

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SCOREDIR=$(LIBDIR)
_PATH_SCORE=	\"${SCOREDIR}\"
LIBS=	-lcurses -ltermcap -lbsd

all: canfield

canfield: canfield.c pathnames.h
	$(CC) -o canfield ${CFLAGS} -D_PATH_SCORE=${_PATH_SCORE} canfield.c \
		${LIBS}

clean:
	rm -f canfield a.out core *.o

install: canfield
	install -g bin -o root -m 555 canfield ${DESTDIR}
	install -g bin -o root -m 444 canfield.6 ${MANDIR}
	touch ${SCOREDIR}/cfscores
	chmod 666 ${SCOREDIR}/cfscores
