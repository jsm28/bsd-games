# Makefile - makefile for bsd-games

include Makeconfig

# Directories we can do `make test' in
TESTDIRS=bcd factor morse primes number pom ppt wargames

all:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd $(SRCDIR); \
	done

install:
	@echo "Creating installation directories:"
	@set -e; for i in $(GAMESDIR) $(SBINDIR) $(USRBINDIR) \
	    $(MAN5DIR) $(MAN6DIR) $(MAN8DIR) $(LIBDIR) $(SHAREDIR) \
	    $(VARLIBDIR); do \
	    echo " $(INSTALL_PREFIX)$$i"; \
	    test -d $(INSTALL_PREFIX)$$i || \
	    install -d $(INSTALL_PREFIX)$$i; \
	done
	@echo
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install $(DEFS_TO_PASS); \
	    cd $(SRCDIR); \
	done

install-strip:
	@$(MAKE) install $(DEFS_TO_PASS_STRIP)

clean:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd $(SRCDIR); \
	done

distclean:	clean
	rm -f subst.sed hide-game
	rm -f `cat substfiles`

test:
	@set -e; for i in $(TESTDIRS); do \
	    echo "Making test in $$i"; \
	    cd $$i; \
	    make test; \
	    cd $(SRCDIR); \
	done
