ALLDIRS=canfield cfscores

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

all:
	for i in $(ALLDIRS); do \
		echo "Making all in $$i"; \
		( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
		MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

install:
	for i in $(ALLDIRS); do \
		echo "Making install in $$i"; \
		( cd $$i; make install DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
		MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

clean:
	for i in $(ALLDIRS); do \
		echo "Making clean in $$i"; \
		( cd $$i; make clean DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
		MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done
