#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	wargames
DESTDIR=/usr/games

$(PROG):

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)

test:	$(PROG)
	echo "test" | ./wargames

clean:
