#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	morse

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)

test:	$(PROG)
	echo "Eat at Joe's" | ./morse ; \
	echo -n ""

clean:
	rm -f $(PROG) core *.o
