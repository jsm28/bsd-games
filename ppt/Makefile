#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	ppt

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

MAN6SRC=   bcd.6

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	ln -s $(MANDIR)/$(MAN6SRC) $(MANDIR)/$(PROG).6

test:	$(PROG)
	date | ./$(PROG)

clean:
	rm -f $(PROG) core *.o
