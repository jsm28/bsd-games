DESTDIR=	/usr/games
LIBDIR=	$(DESTDIR)/lib
MANDIR=	/usr/man/man6
CC=	gcc
CFLAGS=	-O

RULES=  \"$(LIBDIR)/backrules\"

override CFLAGS="-O -DRULES=$(RULES)"

all: backgammon/backgammon teachgammon/teachgammon


backgammon/backgammon:
	for i in common_source backgammon ; do \
	        echo "Making all in $$i"; \
	        ( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

teachgammon/teachgammon:
	for i in common_source teachgammon ; do \
	        echo "Making all in $$i"; \
	        ( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

install:
	for i in backgammon teachgammon ; do \
	        echo "Making install in $$i"; \
	        ( cd $$i; make install DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

clean: 
	for i in backgammon teachgammon common_source ; do \
	        echo "Making clean in $$i"; \
	        ( cd $$i; make clean DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

