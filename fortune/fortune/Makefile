#

DESTDIR=/usr/games
MANDIR=/usr/man/man6

all: fortune

fortune:fortune.c pathnames.h
	gcc -O2 -o fortune -I../strfile -I/usr/include/bsd fortune.c -lbsd

test:fortune.c pathnames.h
	gcc -O2 -DTEST -o fortune.test -I../strfile -I/usr/include/bsd \
	fortune.c -lbsd

install: all
	install -g bin -m 555 -o root fortune ${DESTDIR}
	install -g bin -m 444 -o root fortune.6 ${MANDIR}

clean:
	rm -f *.o core a.out fortune
