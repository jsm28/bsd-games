# Makefile - makefile for bog
# See bog.h for configuration

include ../Makeconfig

PROG   = bog

BOGDIR = $(SHAREDIR)/bog

OBJS   = bog.o help.o mach.o prtable.o timer.o word.o
#
# Defining PURE causes this program to be compiled with the default BSD 
# behavior.  Not defining it will allow any Linux "improvements" to be
# included.
#
DEFS = $(BSD_DEFS) -DDICT=\"$(BOGDIR)/dict\" \
	-DDICTINDEX=\"$(BOGDIR)/dict.ind\" \
	-DHELPFILE=\"$(BOGDIR)/helpfile\" # -DPURE
LIBS   = $(NCURSES_LIB) $(BSD_LIB)
INCS   = $(BSD_INCS) $(NCURSES_INCS)

# DICTSRC is the dictionary that will be used to construct the word list used
# by bog
DICTSRC=../hangman/words

all:	$(PROG) dict dict.ind

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

mkdict: mkdict.c bog.h
	$(CC) $(LDFLAGS) $(CFLAGS) -o mkdict mkdict.c

mkindex: mkindex.c bog.h
	$(CC) $(LDFLAGS) $(CFLAGS) -o mkindex mkindex.c

showdict: showdict.o word.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o showdict showdict.o word.o

showdict.o:	bog.h

dict: mkdict
	./mkdict < $(DICTSRC) > dict

dict.ind:	mkindex dict
	./mkindex < dict > dict.ind

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	bog.h

install:	all
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	test -d $(INSTALL_PREFIX)$(BOGDIR) || \
	    install -d $(INSTALL_PREFIX)$(BOGDIR)
	$(INSTALL_DATA) dict dict.ind helpfile $(INSTALL_PREFIX)$(BOGDIR)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f *.o core $(PROG) dict dict.ind mkdict mkindex showdict
