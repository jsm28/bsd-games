#	@(#)Makefile	5.7 (Berkeley) 5/11/90

PROG=	wump

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

INFO=	wump.info
INFODIR=$(LIBDIR)
_PATH_PAGER=	\"/usr/bin/less\"
_PATH_WUMPINFO=	\"$(INFODIR)/$(INFO)\"

LIBS=	-lcurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	pathnames.h
	$(CC) $(CFLAGS) -D_PATH_PAGER=$(_PATH_PAGER) \
		-D_PATH_WUMPINFO=$(_PATH_WUMPINFO) -o $(PROG) $(PROG).c $(LIBS)

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 444 $(INFO) $(INFODIR)/$(INFO)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
