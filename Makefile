ALLDIRS=arithmetic atc backgammon battlestar bcd bog caesar canfield cribbage \
	factor fish fortune hangman hunt mille monop morse number paranoia \
	pom ppt primes rain robots sail snake trek wargames worm worms wump

TESTDIRS=bcd caesar factor morse primes number pom ppt wargames

SRCROOT=/usr1/src/bsd-games
SRCTAR=	bsd-games.src-1.3.tar
BINTAR=	bsd-games.bin-1.3.tar

# Edit this to define where things should be installed
GAMESROOT=	/usr

# The following are inherited by the sub-Makefiles
DESTDIR=$(GAMESROOT)/games
LIBDIR=	$(DESTDIR)/lib
MANDIR=	$(GAMESROOT)/man/man6
CC=	gcc
CFLAGS=	-O

all:
	for i in $(ALLDIRS); do \
		echo "Making all in $$i"; \
		( cd $$i; make DESTDIR=$(DESTDIR) LIBDIR=$(LIBDIR) \
		  MANDIR=$(MANDIR) CFLAGS=$(CFLAGS) ) ; \
	done

install:
	@echo "Creating base directories:"
	@echo "	$(DESTDIR)"
	@echo "	$(LIBDIR)"
	@echo "	$(MANDIR)"
	@echo "If directory creation fails, you can create the directories \
	      by hand."
	@echo ""
	if [ ! -d $(DESTDIR) ] ; then \
		mkdir -p $(DESTDIR) ; \
	fi
	if [ ! -d $(LIBDIR) ] ; then \
		mkdir -p $(LIBDIR) ; \
	fi
	if [ ! -d $(MANDIR) ] ; then \
		mkdir -p $(MANDIR) ; \
	fi
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

test:
	for i in $(TESTDIRS); do \
		echo "Making test in $$i"; \
		( cd $$i; make test ) ; \
	done

tar.src:	clean
	(cd $(SRCROOT) ; \
	rm $(SRCROOT)/$(SRCTAR).gz ; \
	tar cvf - games | gzip -c > $(SRCROOT)/$(SRCTAR).gz)

tar.bin:
	(cd / ; \
	rm $(SRCROOT)/$(BINTAR).gz ; \
	tar cvf - $(DESTDIR)/arithmetic $(MANDIR)/arithmetic.6 \
		  $(DESTDIR)/atc $(LIBDIR)/atc $(MANDIR)/atc.6 \
		  $(DESTDIR)/backgammon $(MANDIR)/backgammon.6 \
		  	$(DESTDIR)/teachgammon \
		  $(DESTDIR)/battlestar $(MANDIR)/battlestar.6 \
		  	$(LIBDIR)/battlestar.log \
		  $(DESTDIR)/bcd $(MANDIR)/bcd.6 \
		  $(DESTDIR)/bog $(MANDIR)/bog.6 \
		  	$(LIBDIR)/bog \
		  $(DESTDIR)/caesar $(MANDIR)/caesar.6 \
		  $(DESTDIR)/canfield $(MANDIR)/canfield.6 \
		  	$(LIBDIR)/cfscores $(DESTDIR)/cfscores \
		  $(DESTDIR)/cribbage $(MANDIR)/cribbage.6 \
		  	$(LIBDIR)/criblog $(LIBDIR)/cribbage.instr \
		  $(DESTDIR)/factor $(MANDIR)/factor.6 \
		  $(DESTDIR)/fish $(MANDIR)/fish.6 \
		  	$(LIBDIR)/fish.instr \
		  $(DESTDIR)/fortune $(MANDIR)/fortune.6 \
		  	$(DESTDIR)/fortunes \
		  $(DESTDIR)/hangman $(MANDIR)/hangman.6 \
		  	$(LIBDIR)/hangman-words \
		  $(DESTDIR)/hunt $(LIBDIR)/huntd $(MANDIR)/hunt.6 \
		  	$(MANDIR)/huntd.6 \
		  $(DESTDIR)/mille $(MANDIR)/mille.6 \
		  $(DESTDIR)/monop $(MANDIR)/monop.6 \
		  	$(LIBDIR)/cards.pck \
		  $(DESTDIR)/morse \
		  $(DESTDIR)/number $(MANDIR)/number.6\
		  $(DESTDIR)/paranoia \
		  $(DESTDIR)/pom $(MANDIR)/pom.6 \
		  $(DESTDIR)/ppt $(MANDIR)/ppt.6 \
		  $(DESTDIR)/primes $(MANDIR)/primes.6 \
		  $(DESTDIR)/rain $(MANDIR)/rain.6 \
		  $(DESTDIR)/robots $(MANDIR)/robots.6 \
		  	$(LIBDIR)/robots_roll \
		  $(DESTDIR)/sail $(MANDIR)/sail.6 \
		  	$(LIBDIR)/saillog \
		  $(DESTDIR)/snake $(DESTDIR)/snscore \
		  	$(MANDIR)/snake.6 $(LIBDIR)/snakerawscores \
		  	$(LIBDIR)/snake.log \
		  $(DESTDIR)/trek \
		  $(DESTDIR)/wargames \
		  $(DESTDIR)/worm $(MANDIR)/worm.6 \
		  $(DESTDIR)/worms $(MANDIR)/worms.6 \
		  $(DESTDIR)/wump $(MANDIR)/wump.6 \
		  	$(LIBDIR)/wump.info \
	    | gzip -c > $(SRCROOT)/$(BINTAR).gz)

