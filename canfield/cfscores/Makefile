PROG=	cfscores

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SCOREDIR=$(LIBDIR)
_PATH_SCORE=    \"${SCOREDIR}\"

LIBS=	-lncurses -ltermcap -lbsd
INCS= -I../canfield $(CFLAGS)

all: cfscores

cfscores: ../canfield/pathnames.h cfscores.c
	cc -o cfscores ${CFLAGS} ${INCS} -D_PATH_SCORE=${_PATH_SCORE} \
		cfscores.c ${LIBS}

clean:
	rm -f cfscores a.out core *.o

install: cfscores
	install -g bin -o root -m 555 cfscores ${DESTDIR}


