#

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc

FORTDIR=\"$(DESTDIR)\"

all: fortune

fortune:fortune.c pathnames.h
	$(CC) -O2 -DFORTDIR=$(FORTDIR) -o fortune -I../strfile \
		-I/usr/include/bsd fortune.c -lbsd

test:fortune.c pathnames.h
	$(CC) -O2 -DTEST -DFORTDIR=\"..\" -o fortune.test -I../strfile \
		-I/usr/include/bsd fortune.c -lbsd

install: all
	install -g bin -m 555 -o root fortune ${DESTDIR}
	install -g bin -m 444 -o root fortune.6 ${MANDIR}

clean:
	rm -f *.o core a.out fortune fortune.test
