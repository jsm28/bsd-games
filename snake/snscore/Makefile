#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	snscore
DESTDIR=/usr/games
LIBS=	-lbsd
INC=	-I../snake

$(PROG):	../snake/pathnames.h
	$(CC) $(INC) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)

clean:
	rm -f $(PROG) core *.o
