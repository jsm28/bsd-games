ALLDIRS=arithmetic atc battlestar bcd bog caesar canfield cribbage factor \
	fish fortune hangman hunt mille monop morse number paranoia pom ppt \
	primes rain robots sail snake trek wargames worm worms wump

TESTDIRS=bcd caesar factor morse primes number pom ppt wargames

SRCROOT=/usr1/local/src/bsd-games
SRCTAR=	bsd-games.src-1.2.tar
BINTAR=	bsd-games.bin-1.2.tar

all:
	-for i in $(ALLDIRS); do \
		echo "Making all in $$i"; \
		(cd $$i; make) ; \
	done

install:
	-for i in $(ALLDIRS); do \
		echo "Making install in $$i"; \
		(cd $$i; make install) ; \
	done

clean:
	-for i in $(ALLDIRS); do \
		echo "Making clean in $$i"; \
		(cd $$i; make clean) ; \
	done

test:
	-for i in $(TESTDIRS); do \
		echo "Making test in $$i"; \
		(cd $$i; make test) ; \
	done

tar.src:	clean
	(cd $(SRCROOT) ; \
	rm $(SRCROOT)/$(SRCTAR).gz ; \
	tar cvf - games | gzip -c > $(SRCROOT)/$(SRCTAR).gz)

tar.bin:
	(cd / ; \
	rm $(SRCROOT)/$(BINTAR).gz ; \
	tar cvf - /usr/games/arithmetic /usr/man/man6/arithmetic.6 \
		  /usr/games/atc /usr/games/lib/atc /usr/man/man6/atc.6 \
		  /usr/games/battlestar /usr/man/man6/battlestar.6 \
		  	/usr/games/lib/battlestar.log \
		  /usr/games/bcd /usr/man/man6/bcd.6 \
		  /usr/games/bog /usr/man/man6/bog.6 \
		  	/usr/games/lib/bog \
		  /usr/games/caesar /usr/man/man6/caesar.6 \
		  /usr/games/canfield /usr/man/man6/canfield.6 \
		  	/usr/games/lib/cfscores /usr/games/cfscores \
		  /usr/games/cribbage /usr/man/man6/cribbage.6 \
		  	/usr/games/lib/criblog /usr/games/lib/cribbage.instr \
		  /usr/games/factor /usr/man/man6/factor.6 \
		  /usr/games/fish /usr/man/man6/fish.6 \
		  	/usr/games/lib/fish.instr \
		  /usr/games/fortune /usr/man/man6/fortune.6 \
		  	/usr/games/fortunes \
		  /usr/games/hangman /usr/man/man6/hangman.6 \
		  	/usr/games/lib/hangman-words \
		  /usr/games/hunt /usr/games/lib/huntd /usr/man/man6/hunt.6 \
		  	/usr/man/man6/huntd.6 \
		  /usr/games/mille /usr/man/man6/mille.6 \
		  /usr/games/monop /usr/man/man6/monop.6 \
		  	/usr/games/lib/cards.pck \
		  /usr/games/morse \
		  /usr/games/number /usr/man/man6/number.6\
		  /usr/games/paranoia \
		  /usr/games/pom /usr/man/man6/pom.6 \
		  /usr/games/ppt /usr/man/man6/ppt.6 \
		  /usr/games/primes /usr/man/man6/primes.6 \
		  /usr/games/rain /usr/man/man6/rain.6 \
		  /usr/games/robots /usr/man/man6/robots.6 \
		  	/usr/games/lib/robots_roll \
		  /usr/games/sail /usr/man/man6/sail.6 \
		  	/usr/games/lib/saillog \
		  /usr/games/snake /usr/games/snscore \
		  	/usr/man/man6/snake.6 /usr/games/lib/snakerawscores \
		  	/usr/games/lib/snake.log \
		  /usr/games/trek \
		  /usr/games/wargames \
		  /usr/games/worm /usr/man/man6/worm.6 \
		  /usr/games/worms /usr/man/man6/worms.6 \
		  /usr/games/wump /usr/man/man6/wump.6 \
		  	/usr/games/lib/wump.info \
	    | gzip -c > $(SRCROOT)/$(BINTAR).gz)

