DESTDIR=/usr/games
MANDIR=/usr/man/man6
SCOREDIR=/usr/games/lib
PROG=	canfield
LIBS=	-lcurses -ltermcap -lbsd
CFLAGS= -O

all: canfield

canfield: canfield.c pathnames.h
	cc -o canfield ${CFLAGS} canfield.c ${LIBS}

clean:
	rm -f canfield a.out core *.o

install: canfield
	install -g bin -o root -m 555 canfield ${DESTDIR}
	install -g bin -o root -m 444 canfield.6 ${MANDIR}
	touch ${SCOREDIR}/cfscores
	chmod 666 ${SCOREDIR}/cfscores
