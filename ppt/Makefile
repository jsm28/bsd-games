#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	ppt
DESTDIR=/usr/games
MANDIR= /usr/man/man6
MAN6=   ppt.6
MAN6SRC=   bcd.6
CFLAGS=	-O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	ln -s $(MANDIR)/$(MAN6SRC) $(MANDIR)/$(MAN6)

test:	$(PROG)
	date | ./ppt

clean:
	rm -f $(PROG) core *.o
