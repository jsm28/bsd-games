#	@(#)Makefile	5.5 (Berkeley) 1/18/91

PROG=	fish

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

_PATH_INSTR=	\"$(LIBDIR)/fish.instr\"
_PATH_MORE=	\"/usr/bin/less\"

$(PROG):
	$(CC) $(CFLAGS) -D_PATH_INSTR=$(_PATH_INSTR) \
		-D_PATH_MORE=$(_PATH_MORE) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 444 fish.instr $(LIBDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
