
# See bog.h for configuration

OBJS=	bog.o help.o mach.o prtable.o timer.o word.o
DESTDIR=/usr/games
LIBDIR=	/usr/games/lib
PROG=	bog
CFLAGS=	-O -I/usr/include/bsd
LIBS=	-lcurses -ltermcap -lbsd
MAN6=	bog.6
MANDIR=	/usr/man/man6
CLEANFILES=	dict dict.ind


# DICT is the dictionary that will be used to construct the word list used
# by bog
DICT=../hangman/words

all: bog mkdict mkindex dict

$(PROG):	$(OBJS)
	cc $(CFLAGS) -s -o $(PROG) $(OBJS) $(LIBS)

mkdict: mkdict.c
	cc -s -O -o mkdict mkdict.c

mkindex: mkindex.c
	cc -s -O -o mkindex mkindex.c

showdict: showdict.o word.o
	cc -s -O -o showdict showdict.o word.o
	rm -f showdict.o

dict: mkdict mkindex
	./mkdict < $(DICT) > dict
	./mkindex < dict > dict.ind

$(OBJS): bog.h

install: all
	-mkdir $(LIBDIR)/bog
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 644 dict dict.ind helpfile $(LIBDIR)/bog
	install -c -o root -g root -m 444 $(PROG).man $(MANDIR)/$(MAN6)

clean:
	rm -f *.o core $(PROG) $(CLEANFILES) mkdict mkindex
