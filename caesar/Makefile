#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	caesar
MAN6=	caesar.6
DESTDIR=/usr/games
MANDIR= /usr/man/man6
CFLAGS= -O
LIBS=	-lm

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

test:	$(PROG)
	./caesar < ../fortune/datfiles/fortunes-o.fake.rot13

clean:
	rm -f $(PROG) core *.o
