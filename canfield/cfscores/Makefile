DESTDIR=/usr/games
MANDIR=/usr/man/man6
PROG=	cfscores
LIBS=	-lncurses -ltermcap -lbsd
CFLAGS= -O -I../canfield

all: cfscores

cfscores: ../canfield/pathnames.h cfscores.c
	cc -o cfscores ${CFLAGS} cfscores.c ${LIBS}

clean:
	rm -f cfscores a.out core *.o

install: cfscores
	install -g bin -o root -m 555 cfscores ${DESTDIR}


