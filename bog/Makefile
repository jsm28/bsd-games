
# See bog.h for configuration

PROG=	bog

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc

BOGDIR=		$(LIBDIR)/bog
DICT=		\"$(BOGDIR)/dict\"
DICTINDEX=	\"$(BOGDIR)/dict.ind\"
HELPFILE=	\"$(BOGDIR)/helpfile\"

OBJS=	bog.o help.o mach.o prtable.o timer.o word.o
#
# Defining PURE causes this program to be compiled with the default BSD 
# behavior.  Not defining it will allow any Linux "improvements" to be
# included.
#
override CFLAGS= -O -I/usr/include/bsd # -DPURE
LIBS=	-lcurses -ltermcap -lbsd
CLEANFILES=	dict dict.ind


# DICTSRC is the dictionary that will be used to construct the word list used
# by bog
DICTSRC=../hangman/words

all: $(PROG) mkdict mkindex dict

$(PROG):	$(OBJS)
	$(CC) $(CFLAGS) -s -o $(PROG) $(OBJS) $(LIBS)

mkdict: mkdict.c
	$(CC) -s $(CFLAGS) -o mkdict mkdict.c

mkindex: mkindex.c
	$(CC) -s $(CFLAGS) -o mkindex mkindex.c

showdict: showdict.o word.o
	$(CC) -s $(CFLAGS) -o showdict showdict.o word.o
	rm -f showdict.o

dict: mkdict mkindex
	./mkdict < $(DICTSRC) > dict
	./mkindex < dict > dict.ind

$(OBJS): bog.h
	$(CC) $(CFLAGS) -c -DDICT=$(DICT) -DDICTINDEX=$(DICTINDEX) \
		-DHELPFILE=$(HELPFILE) $*.c -o $@

install: all
	-mkdir $(BOGDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 644 dict dict.ind helpfile $(BOGDIR)
	install -c -o root -g root -m 444 $(PROG).man $(MANDIR)/$(PROG).6

clean:
	rm -f *.o core $(PROG) $(CLEANFILES) mkdict mkindex
