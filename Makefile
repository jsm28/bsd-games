# Makefile - makefile for bsd-games

include Makeconfig

# Directories we can do `make test' in
TESTDIRS=bcd caesar factor morse primes number pom ppt wargames

all:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd $(SRCDIR); \
	done

install:
	@echo "If directory creation fails, you can create the directories \
	      by hand."
	@echo "Creating base directories:"
	@set -e; for i in $(GAMESDIR) $(SBINDIR) $(SOCKETDIR) $(USRBINDIR) \
	    $(MAN6DIR) $(MAN8DIR) $(LIBDIR) $(SHAREDIR) $(VARLIBDIR); do \
	    echo " $(INSTALL_PREFIX)$$i"; \
	    test -d $(INSTALL_PREFIX)$$i || \
	    install -d $(INSTALL_PREFIX)$$i; \
	done
	@echo ""
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd $(SRCDIR); \
	done

clean:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd $(SRCDIR); \
	done

distclean:	clean
	rm -f subst.sed Makeconfig install-man install-score hide-game
	rm -f backgammon/backgammon/backgammon.6 bog/bog.6
	rm -f canfield/canfield/canfield.6 cribbage/cribbage.6
	rm -f hangman/hangman.6 hunt/hunt.6 hunt/huntd.6 mille/mille.6
	rm -f monop/monop.6 robots/robots.6 snake/snake/snake.6
	rm -f tetris/tetris.6 trek/trek.6

test:
	@set -e; for i in $(TESTDIRS); do \
	    echo "Making test in $$i"; \
	    cd $$i; \
	    make test; \
	    cd $(SRCDIR); \
	done
