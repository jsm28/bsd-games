DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

ALLDIRS=strfile fortune datfiles 
ALLINST=fortune datfiles

all:
	for i in strfile fortune datfiles; do \
		echo "Making all in $$i"; \
	        ( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

install:
#	strfile does not get installed by default, just made
	for i in strfile fortune datfiles; do \
		echo "Making install in $$i"; \
	        ( cd $$i; make install DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

clean:
	for i in strfile fortune unstr datfiles; do \
		echo "Making clean in $$i"; \
	        ( cd $$i; make clean DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

test:	all
	cd strfile; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	cd fortune; make test DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	cd datfiles; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	ln -sf datfiles fortunes



