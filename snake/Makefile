ALLDIRS=snake snscore

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SCOREDIR=       $(LIBDIR)/snake.log
RAWSCOREDIR=    $(LIBDIR)/snakerawscores

all:
	for i in $(ALLDIRS); do \
		echo "Making all in $$i"; \
	        ( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) SCOREDIR=$(SCOREDIR) \
	        RAWSCOREDIR=$(RAWSCOREDIR) ) ; \
	done

install:
	for i in $(ALLDIRS); do \
		echo "Making install in $$i"; \
	        ( cd $$i; make install DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) SCOREDIR=$(SCOREDIR) \
	        RAWSCOREDIR=$(RAWSCOREDIR) ) ; \
	done

clean:
	for i in $(ALLDIRS); do \
		echo "Making clean in $$i"; \
	        ( cd $$i; make clean DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
	        MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) SCOREDIR=$(SCOREDIR) \
	        RAWSCOREDIR=$(RAWSCOREDIR) ) ; \
	done
